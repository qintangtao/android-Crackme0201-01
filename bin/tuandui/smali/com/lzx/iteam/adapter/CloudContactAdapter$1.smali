.class Lcom/lzx/iteam/adapter/CloudContactAdapter$1;
.super Landroid/os/Handler;
.source "CloudContactAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/CloudContactAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/adapter/CloudContactAdapter;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/CloudContactAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter$1;->this$0:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    .line 85
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 88
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 89
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_1

    .line 92
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lzx/iteam/bean/CloudContact;

    .line 94
    .local v0, "cloudContact":Lcom/lzx/iteam/bean/CloudContact;
    iget-object v1, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter$1;->this$0:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    # getter for: Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->access$2(Lcom/lzx/iteam/adapter/CloudContactAdapter;)Lcom/lzx/iteam/CloudDialerActivity;

    move-result-object v1

    iget-object v2, v0, Lcom/lzx/iteam/bean/CloudContact;->contact_phone:Ljava/lang/String;

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u3010"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter$1;->this$0:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    # getter for: Lcom/lzx/iteam/adapter/CloudContactAdapter;->mMyName:Ljava/lang/String;
    invoke-static {v4}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->access$3(Lcom/lzx/iteam/adapter/CloudContactAdapter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u3011\u9080\u8bf7\u4f60\u52a0\u5165\u3010"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter$1;->this$0:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    # getter for: Lcom/lzx/iteam/adapter/CloudContactAdapter;->mGroupName:Ljava/lang/String;
    invoke-static {v4}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->access$4(Lcom/lzx/iteam/adapter/CloudContactAdapter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u3011\uff0c\u70b9\u51fb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "http://ituandui.cn/download"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u63a5\u53d7\u9080\u8bf7\uff0c\u52a0\u5165\u56e2\u961f\uff0c\u514d\u8d39\u804a\u5929\u3002"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-static {v1, v2, v3}, Lcom/lzx/iteam/util/CommonCodeUtil;->launchSendMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 97
    .end local v0    # "cloudContact":Lcom/lzx/iteam/bean/CloudContact;
    :cond_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_0

    .line 98
    iget-object v1, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter$1;->this$0:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    # getter for: Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->access$2(Lcom/lzx/iteam/adapter/CloudContactAdapter;)Lcom/lzx/iteam/CloudDialerActivity;

    move-result-object v1

    const-string v2, "\u5bf9\u4e0d\u8d77\uff0c\u8be5\u6210\u5458\u53f7\u7801\u9650\u5236\u516c\u5f00"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
