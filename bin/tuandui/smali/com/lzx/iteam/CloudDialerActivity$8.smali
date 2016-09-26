.class Lcom/lzx/iteam/CloudDialerActivity$8;
.super Ljava/lang/Object;
.source "CloudDialerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CloudDialerActivity;->exchangeViewToLeft()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CloudDialerActivity;

.field private final synthetic val$v:Landroid/view/View;

.field private final synthetic val$v2:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CloudDialerActivity;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity$8;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iput-object p2, p0, Lcom/lzx/iteam/CloudDialerActivity$8;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/lzx/iteam/CloudDialerActivity$8;->val$v2:Landroid/view/ViewGroup;

    .line 2304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2308
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$8;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mKeypadAtRight:Z
    invoke-static {v0}, Lcom/lzx/iteam/CloudDialerActivity;->access$51(Lcom/lzx/iteam/CloudDialerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2309
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity$8;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$8;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mKeypadAtRight:Z
    invoke-static {v0}, Lcom/lzx/iteam/CloudDialerActivity;->access$51(Lcom/lzx/iteam/CloudDialerActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    # invokes: Lcom/lzx/iteam/CloudDialerActivity;->controlDisplayImageButtonForT9OrAllwords(Z)V
    invoke-static {v3, v0}, Lcom/lzx/iteam/CloudDialerActivity;->access$55(Lcom/lzx/iteam/CloudDialerActivity;Z)V

    .line 2310
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$8;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mMainLayout:Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;
    invoke-static {v0}, Lcom/lzx/iteam/CloudDialerActivity;->access$54(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;

    move-result-object v0

    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity$8;->val$v:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;->removeView(Landroid/view/View;)V

    .line 2311
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$8;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mMainLayout:Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;
    invoke-static {v0}, Lcom/lzx/iteam/CloudDialerActivity;->access$54(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;

    move-result-object v0

    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity$8;->val$v:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;->addView(Landroid/view/View;)V

    .line 2312
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$8;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity$8;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mKeypadAtRight:Z
    invoke-static {v3}, Lcom/lzx/iteam/CloudDialerActivity;->access$51(Lcom/lzx/iteam/CloudDialerActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v0, v2}, Lcom/lzx/iteam/CloudDialerActivity;->access$56(Lcom/lzx/iteam/CloudDialerActivity;Z)V

    .line 2313
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$8;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v2, "keypad_at_right"

    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity$8;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mKeypadAtRight:Z
    invoke-static {v3}, Lcom/lzx/iteam/CloudDialerActivity;->access$51(Lcom/lzx/iteam/CloudDialerActivity;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2314
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$8;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-static {v0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->access$57(Lcom/lzx/iteam/CloudDialerActivity;Z)V

    .line 2315
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$8;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity$8;->val$v2:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->destroryDrawingCache(Landroid/view/ViewGroup;)V

    .line 2316
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2318
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 2309
    goto :goto_0
.end method
