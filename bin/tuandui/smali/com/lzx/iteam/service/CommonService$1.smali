.class Lcom/lzx/iteam/service/CommonService$1;
.super Landroid/os/Handler;
.source "CommonService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/service/CommonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/service/CommonService;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/service/CommonService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/service/CommonService$1;->this$0:Lcom/lzx/iteam/service/CommonService;

    .line 54
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 58
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 61
    .local v0, "phone":Ljava/lang/String;
    const-string v1, "CommonService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v1, p0, Lcom/lzx/iteam/service/CommonService$1;->this$0:Lcom/lzx/iteam/service/CommonService;

    # invokes: Lcom/lzx/iteam/service/CommonService;->showCallView(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/lzx/iteam/service/CommonService;->access$0(Lcom/lzx/iteam/service/CommonService;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    .end local v0    # "phone":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/lzx/iteam/service/CommonService$1;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mContactInfoView:Landroid/view/View;
    invoke-static {v1}, Lcom/lzx/iteam/service/CommonService;->access$1(Lcom/lzx/iteam/service/CommonService;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/lzx/iteam/service/CommonService$1;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/lzx/iteam/service/CommonService;->access$2(Lcom/lzx/iteam/service/CommonService;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/service/CommonService$1;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mContactInfoView:Landroid/view/View;
    invoke-static {v2}, Lcom/lzx/iteam/service/CommonService;->access$1(Lcom/lzx/iteam/service/CommonService;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 67
    iget-object v1, p0, Lcom/lzx/iteam/service/CommonService$1;->this$0:Lcom/lzx/iteam/service/CommonService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lzx/iteam/service/CommonService;->access$3(Lcom/lzx/iteam/service/CommonService;Landroid/view/View;)V

    .line 68
    iget-object v1, p0, Lcom/lzx/iteam/service/CommonService$1;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v1}, Lcom/lzx/iteam/service/CommonService;->access$4(Lcom/lzx/iteam/service/CommonService;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v1

    const-string v2, "show_contact_x"

    iget-object v3, p0, Lcom/lzx/iteam/service/CommonService$1;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/lzx/iteam/service/CommonService;->access$5(Lcom/lzx/iteam/service/CommonService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 69
    iget-object v1, p0, Lcom/lzx/iteam/service/CommonService$1;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v1}, Lcom/lzx/iteam/service/CommonService;->access$4(Lcom/lzx/iteam/service/CommonService;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v1

    const-string v2, "show_contact_y"

    iget-object v3, p0, Lcom/lzx/iteam/service/CommonService$1;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/lzx/iteam/service/CommonService;->access$5(Lcom/lzx/iteam/service/CommonService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 70
    const-string v1, "CommonService"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lzx/iteam/service/CommonService$1;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/lzx/iteam/service/CommonService;->access$5(Lcom/lzx/iteam/service/CommonService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "   save  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/service/CommonService$1;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/lzx/iteam/service/CommonService;->access$5(Lcom/lzx/iteam/service/CommonService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
