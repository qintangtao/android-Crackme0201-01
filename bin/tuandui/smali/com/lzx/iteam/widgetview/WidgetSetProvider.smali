.class public Lcom/lzx/iteam/widgetview/WidgetSetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "WidgetSetProvider.java"


# static fields
.field public static final CLICK_ACTION:Ljava/lang/String; = "com.stone.action.clickset"

.field public static final CLICK_ITEM_ACTION:Ljava/lang/String; = "com.stone.action.clickset.item"

.field public static final EXTRA_ITEM:Ljava/lang/String; = "extra_item"

.field private static final GET_LIST:I = 0x2711


# instance fields
.field private mAppWidgetId:I

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mHandler:Landroid/os/Handler;

.field private mRemoteViews:Landroid/widget/RemoteViews;

.field private mUid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 56
    new-instance v0, Lcom/lzx/iteam/widgetview/WidgetSetProvider$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/widgetview/WidgetSetProvider$1;-><init>(Lcom/lzx/iteam/widgetview/WidgetSetProvider;)V

    iput-object v0, p0, Lcom/lzx/iteam/widgetview/WidgetSetProvider;->mHandler:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/widgetview/WidgetSetProvider;)Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lzx/iteam/widgetview/WidgetSetProvider;->mRemoteViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/widgetview/WidgetSetProvider;)Landroid/appwidget/AppWidgetManager;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lzx/iteam/widgetview/WidgetSetProvider;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/widgetview/WidgetSetProvider;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/lzx/iteam/widgetview/WidgetSetProvider;->mAppWidgetId:I

    return v0
.end method

.method private updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "awm"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 142
    array-length v8, p3

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v8, :cond_0

    .line 174
    return-void

    .line 142
    :cond_0
    aget v1, p3, v7

    .line 145
    .local v1, "appWidgetId":I
    new-instance v2, Landroid/content/Intent;

    const-class v9, Lcom/lzx/iteam/widgetview/WidgetSetService;

    invoke-direct {v2, p1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .local v2, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f030106

    invoke-direct {v6, v9, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 147
    .local v6, "views":Landroid/widget/RemoteViews;
    const v9, 0x7f0e0669

    invoke-virtual {v6, v9, v2}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 148
    const v9, 0x7f0e0666

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/lzx/iteam/util/DateUtil;->formatDate(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 151
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.stone.action.clickset"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v3, "pendIntent":Landroid/content/Intent;
    const-string v9, "appWidgetId"

    invoke-virtual {v3, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    const/4 v9, 0x0

    .line 154
    const/high16 v10, 0x10000000

    .line 153
    invoke-static {p1, v9, v3, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 156
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    const v9, 0x7f0e0667

    invoke-virtual {v6, v9, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-class v9, Lcom/lzx/iteam/ScheduleCalendarActivity;

    invoke-direct {v0, p1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .local v0, "activity":Landroid/content/Intent;
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 163
    invoke-static {p1, v9, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 168
    .local v4, "pendingAc":Landroid/app/PendingIntent;
    const v9, 0x7f0e0665

    invoke-virtual {v6, v9, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 169
    invoke-virtual {p2, v1, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 171
    const-string v9, "onReceive_widget"

    const-string v10, " ===  updateWidget ======"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCalendarData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 8
    .param p1, "year"    # Ljava/lang/String;
    .param p2, "month"    # Ljava/lang/String;
    .param p3, "day"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v7, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "month"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "day"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "boss_uid"

    iget-object v3, p0, Lcom/lzx/iteam/widgetview/WidgetSetProvider;->mUid:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v3

    iget-object v3, v3, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v0, Lcom/lzx/iteam/net/GetCalendarMsg;

    iget-object v1, p0, Lcom/lzx/iteam/widgetview/WidgetSetProvider;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v6, p0, Lcom/lzx/iteam/widgetview/WidgetSetProvider;->mUid:Ljava/lang/String;

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/lzx/iteam/net/GetCalendarMsg;-><init>(Landroid/os/Message;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .local v0, "msg":Lcom/lzx/iteam/net/GetCalendarMsg;
    iput-object v7, v0, Lcom/lzx/iteam/net/GetCalendarMsg;->mParams:Ljava/util/List;

    .line 192
    const-string v1, "/api/event/calendar/list"

    iput-object v1, v0, Lcom/lzx/iteam/net/GetCalendarMsg;->mApi:Ljava/lang/String;

    .line 193
    invoke-static {p4}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 195
    return-void
.end method

.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetId"    # I
    .param p4, "newOptions"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    .line 123
    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 127
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 128
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 138
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 133
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 79
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 80
    const-string v6, "onReceive_widget"

    const-string v7, " ===  onReceive ======"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "action":Ljava/lang/String;
    const-string v6, "com.stone.action.clickset"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 84
    const-string v6, "position"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 85
    .local v5, "position":I
    if-eq v5, v8, :cond_1

    .line 87
    const-string v6, "onReceive_widget"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "position == "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .end local v5    # "position":I
    :cond_0
    :goto_0
    return-void

    .line 89
    .restart local v5    # "position":I
    :cond_1
    const-string v6, "onReceive_widget"

    const-string v7, " ===  CLICK_ACTION ======"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f030106

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v6, p0, Lcom/lzx/iteam/widgetview/WidgetSetProvider;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 91
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    iput-object v6, p0, Lcom/lzx/iteam/widgetview/WidgetSetProvider;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 92
    const-string v6, "appWidgetId"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/lzx/iteam/widgetview/WidgetSetProvider;->mAppWidgetId:I

    .line 95
    iget-object v6, p0, Lcom/lzx/iteam/widgetview/WidgetSetProvider;->mRemoteViews:Landroid/widget/RemoteViews;

    const v7, 0x7f0e0668

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 96
    iget-object v6, p0, Lcom/lzx/iteam/widgetview/WidgetSetProvider;->mRemoteViews:Landroid/widget/RemoteViews;

    const v7, 0x7f0e0667

    const/16 v8, 0x8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 97
    iget-object v6, p0, Lcom/lzx/iteam/widgetview/WidgetSetProvider;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v7, p0, Lcom/lzx/iteam/widgetview/WidgetSetProvider;->mAppWidgetId:I

    iget-object v8, p0, Lcom/lzx/iteam/widgetview/WidgetSetProvider;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v6, v7, v8}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 99
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 100
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 101
    .local v4, "curYear":I
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v3, v6, 0x1

    .line 102
    .local v3, "curMonth":I
    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 103
    .local v2, "curDate":I
    invoke-static {p1}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v6

    const-string v7, "useid"

    const-string v8, "\uff0d1"

    invoke-virtual {v6, v7, v8}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lzx/iteam/widgetview/WidgetSetProvider;->mUid:Ljava/lang/String;

    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v6, v7, v8, p1}, Lcom/lzx/iteam/widgetview/WidgetSetProvider;->getCalendarData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/lzx/iteam/widgetview/WidgetSetProvider;->updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 114
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 115
    return-void
.end method
