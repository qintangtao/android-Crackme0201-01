.class Lcom/lzx/iteam/CloudDialerActivity$20;
.super Ljava/lang/Object;
.source "CloudDialerActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CloudDialerActivity;->updateSelectTitleSkin()V
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
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity$20;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    .line 4338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4342
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 4343
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 4345
    check-cast p1, Lcom/lzx/iteam/widget/TextImageButton;

    .end local p1    # "v":Landroid/view/View;
    const v1, 0x7f020241

    invoke-virtual {p1, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageResource(I)V

    .line 4351
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 4347
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 4349
    :cond_2
    check-cast p1, Lcom/lzx/iteam/widget/TextImageButton;

    .end local p1    # "v":Landroid/view/View;
    const v1, 0x7f020240

    invoke-virtual {p1, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageResource(I)V

    goto :goto_0
.end method
