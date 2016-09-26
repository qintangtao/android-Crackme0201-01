.class Lcom/lzx/iteam/KeyboardVertFrag$7;
.super Ljava/lang/Object;
.source "KeyboardVertFrag.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/KeyboardVertFrag;->setupKeypadPortraitAllwords()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/KeyboardVertFrag;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/KeyboardVertFrag;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/KeyboardVertFrag$7;->this$0:Lcom/lzx/iteam/KeyboardVertFrag;

    .line 955
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 959
    move-object v1, p1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    .line 960
    .local v1, "button":Lcom/lzx/iteam/widget/TextImageButton;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 961
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 975
    :goto_0
    :pswitch_0
    const/4 v2, 0x0

    return v2

    .line 963
    :pswitch_1
    sget-boolean v2, Lcom/lzx/iteam/CloudDialerActivity;->isShowChange:Z

    if-eqz v2, :cond_0

    .line 964
    const v2, 0x7f020061

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/widget/TextImageButton;->setImageResource(I)V

    goto :goto_0

    .line 966
    :cond_0
    const v2, 0x7f020060

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/widget/TextImageButton;->setImageResource(I)V

    goto :goto_0

    .line 972
    :pswitch_2
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag$7;->this$0:Lcom/lzx/iteam/KeyboardVertFrag;

    iget-object v2, v2, Lcom/lzx/iteam/KeyboardVertFrag;->mSkin:Lcom/lzx/iteam/bean/SkinVertyData;

    iget-object v2, v2, Lcom/lzx/iteam/bean/SkinVertyData;->vAndAbcResId_normal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 961
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
