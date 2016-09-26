.class public Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;
.super Ljava/lang/Object;
.source "WidgetSetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/widgetview/WidgetSetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WidgetFactory"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/lzx/iteam/widgetview/WidgetSetService;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/widgetview/WidgetSetService;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetService;

    # getter for: Lcom/lzx/iteam/widgetview/WidgetSetService;->mCalendarData:Ljava/util/List;
    invoke-static {v0}, Lcom/lzx/iteam/widgetview/WidgetSetService;->access$7(Lcom/lzx/iteam/widgetview/WidgetSetService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 155
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 14
    .param p1, "position"    # I

    .prologue
    const-wide/16 v12, 0x3e8

    const v10, 0x7f0e0664

    const/4 v9, 0x0

    const v8, 0x7f0e0663

    .line 104
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->getCount()I

    move-result v6

    if-lt p1, v6, :cond_1

    .line 105
    :cond_0
    const/4 v3, 0x0

    .line 136
    :goto_0
    return-object v3

    .line 107
    :cond_1
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f030105

    invoke-direct {v3, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 108
    .local v3, "views":Landroid/widget/RemoteViews;
    iget-object v6, p0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetService;

    # getter for: Lcom/lzx/iteam/widgetview/WidgetSetService;->mCalendarData:Ljava/util/List;
    invoke-static {v6}, Lcom/lzx/iteam/widgetview/WidgetSetService;->access$7(Lcom/lzx/iteam/widgetview/WidgetSetService;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/lzx/iteam/bean/ScheduleData;

    if-eqz v6, :cond_2

    .line 109
    iget-object v6, p0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetService;

    # getter for: Lcom/lzx/iteam/widgetview/WidgetSetService;->mCalendarData:Ljava/util/List;
    invoke-static {v6}, Lcom/lzx/iteam/widgetview/WidgetSetService;->access$7(Lcom/lzx/iteam/widgetview/WidgetSetService;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/ScheduleData;

    .line 110
    .local v1, "data":Lcom/lzx/iteam/bean/ScheduleData;
    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ScheduleData;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v10, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 111
    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ScheduleData;->getStartTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    mul-long v4, v6, v12

    .line 112
    .local v4, "startTime":J
    invoke-static {v4, v5}, Lcom/lzx/iteam/util/DateUtil;->getHourAndMin(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v8, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 129
    .end local v1    # "data":Lcom/lzx/iteam/bean/ScheduleData;
    .end local v4    # "startTime":J
    :goto_1
    new-instance v0, Landroid/content/Intent;

    iget-object v6, p0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->mContext:Landroid/content/Context;

    const-class v7, Lcom/lzx/iteam/ScheduleCalendarActivity;

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .local v0, "activity":Landroid/content/Intent;
    iget-object v6, p0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->mContext:Landroid/content/Context;

    .line 131
    invoke-static {v6, v9, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 134
    .local v2, "pendingAc":Landroid/app/PendingIntent;
    const v6, 0x7f0e0662

    invoke-virtual {v3, v6, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 135
    const-string v6, "onReceive_widget"

    const-string v7, "----getViewAt----"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    .end local v0    # "activity":Landroid/content/Intent;
    .end local v2    # "pendingAc":Landroid/app/PendingIntent;
    :cond_2
    iget-object v6, p0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetService;

    # getter for: Lcom/lzx/iteam/widgetview/WidgetSetService;->mCalendarData:Ljava/util/List;
    invoke-static {v6}, Lcom/lzx/iteam/widgetview/WidgetSetService;->access$7(Lcom/lzx/iteam/widgetview/WidgetSetService;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/lzx/iteam/bean/EventListData;

    if-eqz v6, :cond_3

    .line 115
    iget-object v6, p0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetService;

    # getter for: Lcom/lzx/iteam/widgetview/WidgetSetService;->mCalendarData:Ljava/util/List;
    invoke-static {v6}, Lcom/lzx/iteam/widgetview/WidgetSetService;->access$7(Lcom/lzx/iteam/widgetview/WidgetSetService;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/EventListData;

    .line 116
    .local v1, "data":Lcom/lzx/iteam/bean/EventListData;
    invoke-virtual {v1}, Lcom/lzx/iteam/bean/EventListData;->getEventTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v10, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 117
    invoke-virtual {v1}, Lcom/lzx/iteam/bean/EventListData;->getActivityTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    mul-long v4, v6, v12

    .line 118
    .restart local v4    # "startTime":J
    invoke-static {v4, v5}, Lcom/lzx/iteam/util/DateUtil;->getHourAndMin(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v8, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 120
    .end local v1    # "data":Lcom/lzx/iteam/bean/EventListData;
    .end local v4    # "startTime":J
    :cond_3
    const-string v6, "\u4eca\u5929\u8fd8\u6ca1\u6709\u65e5\u7a0b"

    invoke-virtual {v3, v8, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    .line 63
    iget-object v4, p0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetService;

    new-instance v5, Lcom/lzx/iteam/provider/ScheduleDB;

    iget-object v6, p0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/lzx/iteam/provider/ScheduleDB;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Lcom/lzx/iteam/widgetview/WidgetSetService;->access$0(Lcom/lzx/iteam/widgetview/WidgetSetService;Lcom/lzx/iteam/provider/ScheduleDB;)V

    .line 64
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 65
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 66
    .local v3, "curYear":I
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 67
    .local v2, "curMonth":I
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 68
    .local v1, "curDate":I
    iget-object v4, p0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lzx/iteam/widgetview/WidgetSetService;->access$1(Lcom/lzx/iteam/widgetview/WidgetSetService;Ljava/lang/String;)V

    .line 69
    iget-object v4, p0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetService;

    iget-object v5, p0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v5

    const-string v6, "useid"

    const-string v7, "\uff0d1"

    invoke-virtual {v5, v6, v7}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lzx/iteam/widgetview/WidgetSetService;->access$2(Lcom/lzx/iteam/widgetview/WidgetSetService;Ljava/lang/String;)V

    .line 70
    const-string v4, "onReceive_widget"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetService;

    # getter for: Lcom/lzx/iteam/widgetview/WidgetSetService;->mDate:Ljava/lang/String;
    invoke-static {v6}, Lcom/lzx/iteam/widgetview/WidgetSetService;->access$3(Lcom/lzx/iteam/widgetview/WidgetSetService;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "  onCreate  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetService;

    # getter for: Lcom/lzx/iteam/widgetview/WidgetSetService;->mUid:Ljava/lang/String;
    invoke-static {v6}, Lcom/lzx/iteam/widgetview/WidgetSetService;->access$4(Lcom/lzx/iteam/widgetview/WidgetSetService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v4, p0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetService;

    iget-object v5, p0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetService;

    # getter for: Lcom/lzx/iteam/widgetview/WidgetSetService;->mScheduleDB:Lcom/lzx/iteam/provider/ScheduleDB;
    invoke-static {v5}, Lcom/lzx/iteam/widgetview/WidgetSetService;->access$5(Lcom/lzx/iteam/widgetview/WidgetSetService;)Lcom/lzx/iteam/provider/ScheduleDB;

    move-result-object v5

    iget-object v6, p0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetService;

    # getter for: Lcom/lzx/iteam/widgetview/WidgetSetService;->mDate:Ljava/lang/String;
    invoke-static {v6}, Lcom/lzx/iteam/widgetview/WidgetSetService;->access$3(Lcom/lzx/iteam/widgetview/WidgetSetService;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetService;

    # getter for: Lcom/lzx/iteam/widgetview/WidgetSetService;->mUid:Ljava/lang/String;
    invoke-static {v7}, Lcom/lzx/iteam/widgetview/WidgetSetService;->access$4(Lcom/lzx/iteam/widgetview/WidgetSetService;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/lzx/iteam/provider/ScheduleDB;->findScheduleByDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lzx/iteam/widgetview/WidgetSetService;->access$6(Lcom/lzx/iteam/widgetview/WidgetSetService;Ljava/util/List;)V

    .line 72
    iget-object v4, p0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetService;

    # getter for: Lcom/lzx/iteam/widgetview/WidgetSetService;->mCalendarData:Ljava/util/List;
    invoke-static {v4}, Lcom/lzx/iteam/widgetview/WidgetSetService;->access$7(Lcom/lzx/iteam/widgetview/WidgetSetService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 73
    iget-object v4, p0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetService;

    # getter for: Lcom/lzx/iteam/widgetview/WidgetSetService;->mCalendarData:Ljava/util/List;
    invoke-static {v4}, Lcom/lzx/iteam/widgetview/WidgetSetService;->access$7(Lcom/lzx/iteam/widgetview/WidgetSetService;)Ljava/util/List;

    move-result-object v4

    const-string v5, "\u4eca\u5929\u8fd8\u6ca1\u6709\u65e5\u7a0b"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    return-void
.end method

.method public onDataSetChanged()V
    .locals 4

    .prologue
    .line 84
    const-string v0, "onReceive_widget"

    const-string v1, "----onDataSetChanged----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetService;

    iget-object v1, p0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v1

    const-string v2, "useid"

    const-string v3, "\uff0d1"

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lzx/iteam/widgetview/WidgetSetService;->access$2(Lcom/lzx/iteam/widgetview/WidgetSetService;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetService;

    iget-object v1, p0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetService;

    # getter for: Lcom/lzx/iteam/widgetview/WidgetSetService;->mScheduleDB:Lcom/lzx/iteam/provider/ScheduleDB;
    invoke-static {v1}, Lcom/lzx/iteam/widgetview/WidgetSetService;->access$5(Lcom/lzx/iteam/widgetview/WidgetSetService;)Lcom/lzx/iteam/provider/ScheduleDB;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetService;

    # getter for: Lcom/lzx/iteam/widgetview/WidgetSetService;->mDate:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/widgetview/WidgetSetService;->access$3(Lcom/lzx/iteam/widgetview/WidgetSetService;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetService;

    # getter for: Lcom/lzx/iteam/widgetview/WidgetSetService;->mUid:Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/widgetview/WidgetSetService;->access$4(Lcom/lzx/iteam/widgetview/WidgetSetService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/provider/ScheduleDB;->findScheduleByDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lzx/iteam/widgetview/WidgetSetService;->access$6(Lcom/lzx/iteam/widgetview/WidgetSetService;Ljava/util/List;)V

    .line 87
    iget-object v0, p0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetService;

    # getter for: Lcom/lzx/iteam/widgetview/WidgetSetService;->mCalendarData:Ljava/util/List;
    invoke-static {v0}, Lcom/lzx/iteam/widgetview/WidgetSetService;->access$7(Lcom/lzx/iteam/widgetview/WidgetSetService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetService;

    # getter for: Lcom/lzx/iteam/widgetview/WidgetSetService;->mCalendarData:Ljava/util/List;
    invoke-static {v0}, Lcom/lzx/iteam/widgetview/WidgetSetService;->access$7(Lcom/lzx/iteam/widgetview/WidgetSetService;)Ljava/util/List;

    move-result-object v0

    const-string v1, "\u4eca\u5929\u8fd8\u6ca1\u6709\u65e5\u7a0b"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lzx/iteam/widgetview/WidgetSetService$WidgetFactory;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetService;

    # getter for: Lcom/lzx/iteam/widgetview/WidgetSetService;->mCalendarData:Ljava/util/List;
    invoke-static {v0}, Lcom/lzx/iteam/widgetview/WidgetSetService;->access$7(Lcom/lzx/iteam/widgetview/WidgetSetService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 95
    return-void
.end method
