.class Lcom/lzx/iteam/CloudDialerActivity$21;
.super Ljava/lang/Object;
.source "CloudDialerActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CloudDialerActivity;->initListManager(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CloudDialerActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CloudDialerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity$21;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    .line 4649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4654
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4672
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 4656
    :pswitch_0
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$21;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->access$61(Lcom/lzx/iteam/CloudDialerActivity;F)V

    goto :goto_0

    .line 4660
    :pswitch_1
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$21;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->access$61(Lcom/lzx/iteam/CloudDialerActivity;F)V

    goto :goto_0

    .line 4664
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity$21;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mListDownY:F
    invoke-static {v1}, Lcom/lzx/iteam/CloudDialerActivity;->access$62(Lcom/lzx/iteam/CloudDialerActivity;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    goto :goto_0

    .line 4654
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
