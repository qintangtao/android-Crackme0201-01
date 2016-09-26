.class Lcom/lzx/iteam/service/CommonService$2;
.super Ljava/lang/Object;
.source "CommonService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/service/CommonService;->showCallView(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/lzx/iteam/service/CommonService$2;->this$0:Lcom/lzx/iteam/service/CommonService;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "paramView"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 193
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 231
    :goto_0
    :pswitch_0
    const/4 v4, 0x1

    return v4

    .line 195
    :pswitch_1
    iget-object v4, p0, Lcom/lzx/iteam/service/CommonService$2;->this$0:Lcom/lzx/iteam/service/CommonService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/lzx/iteam/service/CommonService;->access$7(Lcom/lzx/iteam/service/CommonService;F)V

    .line 196
    iget-object v4, p0, Lcom/lzx/iteam/service/CommonService$2;->this$0:Lcom/lzx/iteam/service/CommonService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/lzx/iteam/service/CommonService;->access$8(Lcom/lzx/iteam/service/CommonService;F)V

    goto :goto_0

    .line 200
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 201
    .local v2, "newX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 202
    .local v3, "newY":F
    iget-object v4, p0, Lcom/lzx/iteam/service/CommonService$2;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mShowContactX:F
    invoke-static {v4}, Lcom/lzx/iteam/service/CommonService;->access$9(Lcom/lzx/iteam/service/CommonService;)F

    move-result v4

    sub-float v0, v2, v4

    .line 203
    .local v0, "dX":F
    iget-object v4, p0, Lcom/lzx/iteam/service/CommonService$2;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mShowContactY:F
    invoke-static {v4}, Lcom/lzx/iteam/service/CommonService;->access$10(Lcom/lzx/iteam/service/CommonService;)F

    move-result v4

    sub-float v1, v3, v4

    .line 204
    .local v1, "dY":F
    iget-object v4, p0, Lcom/lzx/iteam/service/CommonService$2;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v4}, Lcom/lzx/iteam/service/CommonService;->access$5(Lcom/lzx/iteam/service/CommonService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v5, v5

    add-float/2addr v5, v0

    float-to-int v5, v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 205
    iget-object v4, p0, Lcom/lzx/iteam/service/CommonService$2;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v4}, Lcom/lzx/iteam/service/CommonService;->access$5(Lcom/lzx/iteam/service/CommonService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v5, v5

    add-float/2addr v5, v1

    float-to-int v5, v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 207
    iget-object v4, p0, Lcom/lzx/iteam/service/CommonService$2;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v4}, Lcom/lzx/iteam/service/CommonService;->access$5(Lcom/lzx/iteam/service/CommonService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v4, :cond_0

    .line 208
    iget-object v4, p0, Lcom/lzx/iteam/service/CommonService$2;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v4}, Lcom/lzx/iteam/service/CommonService;->access$5(Lcom/lzx/iteam/service/CommonService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 211
    :cond_0
    iget-object v4, p0, Lcom/lzx/iteam/service/CommonService$2;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v4}, Lcom/lzx/iteam/service/CommonService;->access$5(Lcom/lzx/iteam/service/CommonService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    if-gez v4, :cond_1

    .line 212
    iget-object v4, p0, Lcom/lzx/iteam/service/CommonService$2;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v4}, Lcom/lzx/iteam/service/CommonService;->access$5(Lcom/lzx/iteam/service/CommonService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 215
    :cond_1
    iget-object v4, p0, Lcom/lzx/iteam/service/CommonService$2;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v4}, Lcom/lzx/iteam/service/CommonService;->access$5(Lcom/lzx/iteam/service/CommonService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v5, p0, Lcom/lzx/iteam/service/CommonService$2;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v5}, Lcom/lzx/iteam/service/CommonService;->access$2(Lcom/lzx/iteam/service/CommonService;)Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/lzx/iteam/service/CommonService$2;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mContactInfoView:Landroid/view/View;
    invoke-static {v6}, Lcom/lzx/iteam/service/CommonService;->access$1(Lcom/lzx/iteam/service/CommonService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_2

    .line 216
    iget-object v4, p0, Lcom/lzx/iteam/service/CommonService$2;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v4}, Lcom/lzx/iteam/service/CommonService;->access$5(Lcom/lzx/iteam/service/CommonService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/lzx/iteam/service/CommonService$2;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v5}, Lcom/lzx/iteam/service/CommonService;->access$2(Lcom/lzx/iteam/service/CommonService;)Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/lzx/iteam/service/CommonService$2;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mContactInfoView:Landroid/view/View;
    invoke-static {v6}, Lcom/lzx/iteam/service/CommonService;->access$1(Lcom/lzx/iteam/service/CommonService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 219
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/service/CommonService$2;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v4}, Lcom/lzx/iteam/service/CommonService;->access$5(Lcom/lzx/iteam/service/CommonService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v5, p0, Lcom/lzx/iteam/service/CommonService$2;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v5}, Lcom/lzx/iteam/service/CommonService;->access$2(Lcom/lzx/iteam/service/CommonService;)Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/lzx/iteam/service/CommonService$2;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mContactInfoView:Landroid/view/View;
    invoke-static {v6}, Lcom/lzx/iteam/service/CommonService;->access$1(Lcom/lzx/iteam/service/CommonService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_3

    .line 220
    iget-object v4, p0, Lcom/lzx/iteam/service/CommonService$2;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v4}, Lcom/lzx/iteam/service/CommonService;->access$5(Lcom/lzx/iteam/service/CommonService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/lzx/iteam/service/CommonService$2;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v5}, Lcom/lzx/iteam/service/CommonService;->access$2(Lcom/lzx/iteam/service/CommonService;)Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/lzx/iteam/service/CommonService$2;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mContactInfoView:Landroid/view/View;
    invoke-static {v6}, Lcom/lzx/iteam/service/CommonService;->access$1(Lcom/lzx/iteam/service/CommonService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 222
    :cond_3
    iget-object v4, p0, Lcom/lzx/iteam/service/CommonService$2;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v4}, Lcom/lzx/iteam/service/CommonService;->access$2(Lcom/lzx/iteam/service/CommonService;)Landroid/view/WindowManager;

    move-result-object v4

    iget-object v5, p0, Lcom/lzx/iteam/service/CommonService$2;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mContactInfoView:Landroid/view/View;
    invoke-static {v5}, Lcom/lzx/iteam/service/CommonService;->access$1(Lcom/lzx/iteam/service/CommonService;)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/lzx/iteam/service/CommonService$2;->this$0:Lcom/lzx/iteam/service/CommonService;

    # getter for: Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6}, Lcom/lzx/iteam/service/CommonService;->access$5(Lcom/lzx/iteam/service/CommonService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget-object v4, p0, Lcom/lzx/iteam/service/CommonService$2;->this$0:Lcom/lzx/iteam/service/CommonService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-static {v4, v5}, Lcom/lzx/iteam/service/CommonService;->access$7(Lcom/lzx/iteam/service/CommonService;F)V

    .line 225
    iget-object v4, p0, Lcom/lzx/iteam/service/CommonService$2;->this$0:Lcom/lzx/iteam/service/CommonService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-static {v4, v5}, Lcom/lzx/iteam/service/CommonService;->access$8(Lcom/lzx/iteam/service/CommonService;F)V

    goto/16 :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
