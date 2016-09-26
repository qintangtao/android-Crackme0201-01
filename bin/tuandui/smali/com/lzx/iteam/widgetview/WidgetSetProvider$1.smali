.class Lcom/lzx/iteam/widgetview/WidgetSetProvider$1;
.super Landroid/os/Handler;
.source "WidgetSetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/widgetview/WidgetSetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/widgetview/WidgetSetProvider;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/widgetview/WidgetSetProvider;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/widgetview/WidgetSetProvider$1;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetProvider;

    .line 56
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 63
    :pswitch_0
    const-string v0, "onReceive_widget"

    const-string v1, " ===  handleMessage ======"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/lzx/iteam/widgetview/WidgetSetProvider$1;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetProvider;

    # getter for: Lcom/lzx/iteam/widgetview/WidgetSetProvider;->mRemoteViews:Landroid/widget/RemoteViews;
    invoke-static {v0}, Lcom/lzx/iteam/widgetview/WidgetSetProvider;->access$0(Lcom/lzx/iteam/widgetview/WidgetSetProvider;)Landroid/widget/RemoteViews;

    move-result-object v0

    const v1, 0x7f0e0668

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 65
    iget-object v0, p0, Lcom/lzx/iteam/widgetview/WidgetSetProvider$1;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetProvider;

    # getter for: Lcom/lzx/iteam/widgetview/WidgetSetProvider;->mRemoteViews:Landroid/widget/RemoteViews;
    invoke-static {v0}, Lcom/lzx/iteam/widgetview/WidgetSetProvider;->access$0(Lcom/lzx/iteam/widgetview/WidgetSetProvider;)Landroid/widget/RemoteViews;

    move-result-object v0

    const v1, 0x7f0e0667

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 66
    iget-object v0, p0, Lcom/lzx/iteam/widgetview/WidgetSetProvider$1;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetProvider;

    # getter for: Lcom/lzx/iteam/widgetview/WidgetSetProvider;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-static {v0}, Lcom/lzx/iteam/widgetview/WidgetSetProvider;->access$1(Lcom/lzx/iteam/widgetview/WidgetSetProvider;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/widgetview/WidgetSetProvider$1;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetProvider;

    # getter for: Lcom/lzx/iteam/widgetview/WidgetSetProvider;->mAppWidgetId:I
    invoke-static {v1}, Lcom/lzx/iteam/widgetview/WidgetSetProvider;->access$2(Lcom/lzx/iteam/widgetview/WidgetSetProvider;)I

    move-result v1

    iget-object v2, p0, Lcom/lzx/iteam/widgetview/WidgetSetProvider$1;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetProvider;

    # getter for: Lcom/lzx/iteam/widgetview/WidgetSetProvider;->mRemoteViews:Landroid/widget/RemoteViews;
    invoke-static {v2}, Lcom/lzx/iteam/widgetview/WidgetSetProvider;->access$0(Lcom/lzx/iteam/widgetview/WidgetSetProvider;)Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 67
    iget-object v0, p0, Lcom/lzx/iteam/widgetview/WidgetSetProvider$1;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetProvider;

    # getter for: Lcom/lzx/iteam/widgetview/WidgetSetProvider;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-static {v0}, Lcom/lzx/iteam/widgetview/WidgetSetProvider;->access$1(Lcom/lzx/iteam/widgetview/WidgetSetProvider;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/widgetview/WidgetSetProvider$1;->this$0:Lcom/lzx/iteam/widgetview/WidgetSetProvider;

    # getter for: Lcom/lzx/iteam/widgetview/WidgetSetProvider;->mAppWidgetId:I
    invoke-static {v1}, Lcom/lzx/iteam/widgetview/WidgetSetProvider;->access$2(Lcom/lzx/iteam/widgetview/WidgetSetProvider;)I

    move-result v1

    const v2, 0x7f0e0669

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 68
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x1f41

    if-ne v0, v1, :cond_0

    .line 69
    sget-object v0, Lcom/lzx/iteam/DialerApp;->mContext:Landroid/content/Context;

    const v1, 0x7f080042

    .line 70
    const/4 v2, 0x1

    .line 69
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method
