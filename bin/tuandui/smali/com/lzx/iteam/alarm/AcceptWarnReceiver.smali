.class public Lcom/lzx/iteam/alarm/AcceptWarnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AcceptWarnReceiver.java"


# instance fields
.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private onSend(Landroid/content/Context;Lcom/lzx/iteam/bean/ScheduleData;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alarm"    # Lcom/lzx/iteam/bean/ScheduleData;

    .prologue
    .line 61
    :try_start_0
    const-string v3, "alarm"

    const-string v4, "\u53d1\u9001"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/lzx/iteam/alarm/AlarmService;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v1, "mIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 64
    const-string v3, "alarm"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 65
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v3, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 66
    .local v2, "sender":Landroid/app/PendingIntent;
    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v1    # "mIntent":Landroid/content/Intent;
    .end local v2    # "sender":Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    new-instance v17, Lcom/lzx/iteam/provider/CloudDBOperation;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/alarm/AcceptWarnReceiver;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 25
    const-string v17, "com.lzx.iteam.alarm.accept.action"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 26
    const-string v17, "alarm"

    const-string v18, "\u63a5\u53d7"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 29
    .local v9, "currentTime":Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/lzx/iteam/util/DateUtil;->getYear(J)I

    move-result v16

    .line 30
    .local v16, "year":I
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/lzx/iteam/util/DateUtil;->getMonth(J)I

    move-result v14

    .line 31
    .local v14, "month":I
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/lzx/iteam/util/DateUtil;->getDay(J)I

    move-result v10

    .line 32
    .local v10, "day":I
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/lzx/iteam/util/DateUtil;->getHour(J)I

    move-result v11

    .line 33
    .local v11, "hour":I
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/lzx/iteam/util/DateUtil;->getMinute(J)I

    move-result v13

    .line 34
    .local v13, "minute":I
    const-string v17, "alarm"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "--current"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\u5e74"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\u6708"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\u65e5"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\u65f6"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\u5206"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/alarm/AcceptWarnReceiver;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lzx/iteam/provider/CloudDBOperation;->getAlarmWarnData()Ljava/util/ArrayList;

    move-result-object v8

    .line 37
    .local v8, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ScheduleData;>;"
    const/4 v12, 0x0

    .line 38
    .local v12, "isRemind":Z
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_2

    .line 57
    .end local v8    # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ScheduleData;>;"
    .end local v9    # "currentTime":Ljava/lang/Long;
    .end local v10    # "day":I
    .end local v11    # "hour":I
    .end local v12    # "isRemind":Z
    .end local v13    # "minute":I
    .end local v14    # "month":I
    .end local v16    # "year":I
    :cond_1
    :goto_0
    return-void

    .line 38
    .restart local v8    # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ScheduleData;>;"
    .restart local v9    # "currentTime":Ljava/lang/Long;
    .restart local v10    # "day":I
    .restart local v11    # "hour":I
    .restart local v12    # "isRemind":Z
    .restart local v13    # "minute":I
    .restart local v14    # "month":I
    .restart local v16    # "year":I
    :cond_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/ScheduleData;

    .line 39
    .local v2, "alarm":Lcom/lzx/iteam/bean/ScheduleData;
    invoke-virtual {v2}, Lcom/lzx/iteam/bean/ScheduleData;->getAlertTime()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    mul-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 40
    .local v15, "time":Ljava/lang/Long;
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/lzx/iteam/util/DateUtil;->getYear(J)I

    move-result v7

    .line 41
    .local v7, "alarmYear":I
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/lzx/iteam/util/DateUtil;->getMonth(J)I

    move-result v6

    .line 42
    .local v6, "alarmMonth":I
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/lzx/iteam/util/DateUtil;->getDay(J)I

    move-result v3

    .line 43
    .local v3, "alarmDay":I
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/lzx/iteam/util/DateUtil;->getHour(J)I

    move-result v4

    .line 44
    .local v4, "alarmHour":I
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/lzx/iteam/util/DateUtil;->getMinute(J)I

    move-result v5

    .line 45
    .local v5, "alarmMinute":I
    const-string v18, "alarm"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "--alarm"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\u5e74"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\u6708"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\u65e5"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\u65f6"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\u5206"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    move/from16 v0, v16

    if-ne v0, v7, :cond_3

    if-ne v14, v6, :cond_3

    if-ne v10, v3, :cond_3

    if-ne v11, v4, :cond_3

    if-ne v13, v5, :cond_3

    .line 47
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/lzx/iteam/alarm/AcceptWarnReceiver;->onSend(Landroid/content/Context;Lcom/lzx/iteam/bean/ScheduleData;)V

    .line 48
    const/4 v12, 0x1

    .line 49
    goto/16 :goto_0

    .line 52
    :cond_3
    if-eqz v12, :cond_0

    goto/16 :goto_0
.end method
