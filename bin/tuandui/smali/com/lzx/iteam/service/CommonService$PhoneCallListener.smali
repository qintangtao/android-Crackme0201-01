.class public Lcom/lzx/iteam/service/CommonService$PhoneCallListener;
.super Landroid/telephony/PhoneStateListener;
.source "CommonService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/service/CommonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhoneCallListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/service/CommonService;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/service/CommonService;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/lzx/iteam/service/CommonService$PhoneCallListener;->this$0:Lcom/lzx/iteam/service/CommonService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 140
    packed-switch p1, :pswitch_data_0

    .line 161
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 162
    :cond_0
    return-void

    .line 143
    :pswitch_1
    iget-object v1, p0, Lcom/lzx/iteam/service/CommonService$PhoneCallListener;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lzx/iteam/service/CommonService;->access$6(Lcom/lzx/iteam/service/CommonService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 151
    :pswitch_2
    invoke-static {p2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 155
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 156
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 157
    iget-object v1, p0, Lcom/lzx/iteam/service/CommonService$PhoneCallListener;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lzx/iteam/service/CommonService;->access$6(Lcom/lzx/iteam/service/CommonService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 158
    const-string v1, "CommonService"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
