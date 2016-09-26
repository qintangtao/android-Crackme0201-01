.class public Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;
.super Ljava/lang/Object;
.source "InterceptFrameLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/widget/InterceptFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RotateAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/widget/InterceptFrameLayout;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/widget/InterceptFrameLayout;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;->this$0:Lcom/lzx/iteam/widget/InterceptFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyDrawingCache(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "vg"    # Landroid/view/ViewGroup;

    .prologue
    .line 173
    invoke-virtual {p1}, Landroid/view/ViewGroup;->destroyDrawingCache()V

    .line 174
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 175
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 183
    return-void

    .line 176
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 177
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 178
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "v":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;->destroyDrawingCache(Landroid/view/ViewGroup;)V

    .line 175
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    .restart local v2    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    goto :goto_1
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 8
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v4, 0x1

    const/16 v7, 0x8

    const/4 v3, 0x0

    .line 195
    iget-object v2, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;->this$0:Lcom/lzx/iteam/widget/InterceptFrameLayout;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/InterceptFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 196
    .local v0, "first":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;->this$0:Lcom/lzx/iteam/widget/InterceptFrameLayout;

    invoke-virtual {v2, v4}, Lcom/lzx/iteam/widget/InterceptFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 197
    .local v1, "second":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 198
    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 200
    const-string v2, "eeeeeeeeee"

    const-string v5, "public void onAnimationEnd(Animation animation)"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v2, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;->this$0:Lcom/lzx/iteam/widget/InterceptFrameLayout;

    iget-object v2, v2, Lcom/lzx/iteam/widget/InterceptFrameLayout;->activity:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v5, v2, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    .line 203
    iget-object v2, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;->this$0:Lcom/lzx/iteam/widget/InterceptFrameLayout;

    iget-object v2, v2, Lcom/lzx/iteam/widget/InterceptFrameLayout;->activity:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    iget-boolean v2, v2, Lcom/lzx/iteam/KeyboardVertFrag;->mIsT9:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    iget-object v6, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;->this$0:Lcom/lzx/iteam/widget/InterceptFrameLayout;

    iget-object v6, v6, Lcom/lzx/iteam/widget/InterceptFrameLayout;->activity:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v6, v6, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    iget-object v6, v6, Lcom/lzx/iteam/KeyboardVertFrag;->mSkin:Lcom/lzx/iteam/bean/SkinVertyData;

    .line 202
    invoke-virtual {v5, v2, v6, v3}, Lcom/lzx/iteam/KeyboardVertFrag;->switchKeyboard(ZLcom/lzx/iteam/bean/SkinVertyData;Z)V

    .line 205
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 206
    iget-object v2, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;->this$0:Lcom/lzx/iteam/widget/InterceptFrameLayout;

    iget-object v2, v2, Lcom/lzx/iteam/widget/InterceptFrameLayout;->activity:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    iput-boolean v3, v2, Lcom/lzx/iteam/KeyboardVertFrag;->mIsT9:Z

    .line 207
    iget-object v2, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;->this$0:Lcom/lzx/iteam/widget/InterceptFrameLayout;

    iget-object v2, v2, Lcom/lzx/iteam/widget/InterceptFrameLayout;->activity:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    iget-boolean v2, v2, Lcom/lzx/iteam/KeyboardVertFrag;->mKeypadAtRight:Z

    if-nez v2, :cond_1

    .line 208
    iget-object v2, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;->this$0:Lcom/lzx/iteam/widget/InterceptFrameLayout;

    iget-object v2, v2, Lcom/lzx/iteam/widget/InterceptFrameLayout;->activity:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    iget-object v2, v2, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadAllWord_vertical_right:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, v7}, Lcom/lzx/iteam/widget/TextImageButton;->setVisibility(I)V

    .line 209
    iget-object v2, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;->this$0:Lcom/lzx/iteam/widget/InterceptFrameLayout;

    iget-object v2, v2, Lcom/lzx/iteam/widget/InterceptFrameLayout;->activity:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    iget-object v2, v2, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadAllWord_vertical_left:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/TextImageButton;->setVisibility(I)V

    .line 225
    :goto_1
    iget-object v2, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;->this$0:Lcom/lzx/iteam/widget/InterceptFrameLayout;

    iget-object v2, v2, Lcom/lzx/iteam/widget/InterceptFrameLayout;->activity:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-static {v2}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v2

    .line 226
    const-string v3, "is_t9_vertial"

    iget-object v4, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;->this$0:Lcom/lzx/iteam/widget/InterceptFrameLayout;

    iget-object v4, v4, Lcom/lzx/iteam/widget/InterceptFrameLayout;->activity:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v4, v4, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    iget-boolean v4, v4, Lcom/lzx/iteam/KeyboardVertFrag;->mIsT9:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 225
    invoke-virtual {v2, v3, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 227
    iget-object v2, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;->this$0:Lcom/lzx/iteam/widget/InterceptFrameLayout;

    new-instance v3, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener$1;-><init>(Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 236
    const-wide/16 v4, 0x64

    .line 227
    invoke-virtual {v2, v3, v4, v5}, Lcom/lzx/iteam/widget/InterceptFrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 238
    return-void

    :cond_0
    move v2, v4

    .line 203
    goto :goto_0

    .line 211
    :cond_1
    iget-object v2, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;->this$0:Lcom/lzx/iteam/widget/InterceptFrameLayout;

    iget-object v2, v2, Lcom/lzx/iteam/widget/InterceptFrameLayout;->activity:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    iget-object v2, v2, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadAllWord_vertical_right:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/TextImageButton;->setVisibility(I)V

    .line 212
    iget-object v2, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;->this$0:Lcom/lzx/iteam/widget/InterceptFrameLayout;

    iget-object v2, v2, Lcom/lzx/iteam/widget/InterceptFrameLayout;->activity:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    iget-object v2, v2, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadAllWord_vertical_left:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, v7}, Lcom/lzx/iteam/widget/TextImageButton;->setVisibility(I)V

    goto :goto_1

    .line 215
    :cond_2
    iget-object v2, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;->this$0:Lcom/lzx/iteam/widget/InterceptFrameLayout;

    iget-object v2, v2, Lcom/lzx/iteam/widget/InterceptFrameLayout;->activity:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    iput-boolean v4, v2, Lcom/lzx/iteam/KeyboardVertFrag;->mIsT9:Z

    .line 216
    iget-object v2, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;->this$0:Lcom/lzx/iteam/widget/InterceptFrameLayout;

    iget-object v2, v2, Lcom/lzx/iteam/widget/InterceptFrameLayout;->activity:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    iget-boolean v2, v2, Lcom/lzx/iteam/KeyboardVertFrag;->mKeypadAtRight:Z

    if-nez v2, :cond_3

    .line 217
    iget-object v2, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;->this$0:Lcom/lzx/iteam/widget/InterceptFrameLayout;

    iget-object v2, v2, Lcom/lzx/iteam/widget/InterceptFrameLayout;->activity:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    iget-object v2, v2, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadT9_vertical_right:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, v7}, Lcom/lzx/iteam/widget/TextImageButton;->setVisibility(I)V

    .line 218
    iget-object v2, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;->this$0:Lcom/lzx/iteam/widget/InterceptFrameLayout;

    iget-object v2, v2, Lcom/lzx/iteam/widget/InterceptFrameLayout;->activity:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    iget-object v2, v2, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadT9_vertical_left:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/TextImageButton;->setVisibility(I)V

    goto :goto_1

    .line 220
    :cond_3
    iget-object v2, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;->this$0:Lcom/lzx/iteam/widget/InterceptFrameLayout;

    iget-object v2, v2, Lcom/lzx/iteam/widget/InterceptFrameLayout;->activity:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    iget-object v2, v2, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadT9_vertical_right:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/TextImageButton;->setVisibility(I)V

    .line 221
    iget-object v2, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;->this$0:Lcom/lzx/iteam/widget/InterceptFrameLayout;

    iget-object v2, v2, Lcom/lzx/iteam/widget/InterceptFrameLayout;->activity:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    iget-object v2, v2, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadT9_vertical_left:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, v7}, Lcom/lzx/iteam/widget/TextImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 242
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 189
    return-void
.end method
