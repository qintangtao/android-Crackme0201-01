.class Lcom/lzx/iteam/WelcomeActivity$1;
.super Landroid/os/Handler;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/WelcomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/WelcomeActivity$1;->this$0:Lcom/lzx/iteam/WelcomeActivity;

    .line 30
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 34
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 43
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 44
    return-void

    .line 36
    :pswitch_0
    iget-object v0, p0, Lcom/lzx/iteam/WelcomeActivity$1;->this$0:Lcom/lzx/iteam/WelcomeActivity;

    # invokes: Lcom/lzx/iteam/WelcomeActivity;->goHome()V
    invoke-static {v0}, Lcom/lzx/iteam/WelcomeActivity;->access$0(Lcom/lzx/iteam/WelcomeActivity;)V

    goto :goto_0

    .line 39
    :pswitch_1
    iget-object v0, p0, Lcom/lzx/iteam/WelcomeActivity$1;->this$0:Lcom/lzx/iteam/WelcomeActivity;

    # invokes: Lcom/lzx/iteam/WelcomeActivity;->goGuide()V
    invoke-static {v0}, Lcom/lzx/iteam/WelcomeActivity;->access$1(Lcom/lzx/iteam/WelcomeActivity;)V

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
