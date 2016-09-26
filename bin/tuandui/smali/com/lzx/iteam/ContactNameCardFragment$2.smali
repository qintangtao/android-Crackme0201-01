.class Lcom/lzx/iteam/ContactNameCardFragment$2;
.super Ljava/lang/Object;
.source "ContactNameCardFragment.java"

# interfaces
.implements Lcom/lzx/iteam/util/SendCardShakeListener$OnShakeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ContactNameCardFragment;->initShake()Lcom/lzx/iteam/util/SendCardShakeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ContactNameCardFragment;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ContactNameCardFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ContactNameCardFragment$2;->this$0:Lcom/lzx/iteam/ContactNameCardFragment;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShake()V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment$2;->this$0:Lcom/lzx/iteam/ContactNameCardFragment;

    # getter for: Lcom/lzx/iteam/ContactNameCardFragment;->mTvPhone:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lzx/iteam/ContactNameCardFragment;->access$1(Lcom/lzx/iteam/ContactNameCardFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    const-string v0, "1"

    iget-object v1, p0, Lcom/lzx/iteam/ContactNameCardFragment$2;->this$0:Lcom/lzx/iteam/ContactNameCardFragment;

    # getter for: Lcom/lzx/iteam/ContactNameCardFragment;->mLimitPhone:Ljava/lang/String;
    invoke-static {v1}, Lcom/lzx/iteam/ContactNameCardFragment;->access$2(Lcom/lzx/iteam/ContactNameCardFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment$2;->this$0:Lcom/lzx/iteam/ContactNameCardFragment;

    # getter for: Lcom/lzx/iteam/ContactNameCardFragment;->mActivity:Lcom/lzx/iteam/ContactNameCardActivity;
    invoke-static {v0}, Lcom/lzx/iteam/ContactNameCardFragment;->access$0(Lcom/lzx/iteam/ContactNameCardFragment;)Lcom/lzx/iteam/ContactNameCardActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ContactNameCardFragment$2;->this$0:Lcom/lzx/iteam/ContactNameCardFragment;

    # getter for: Lcom/lzx/iteam/ContactNameCardFragment;->mTvPhone:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lzx/iteam/ContactNameCardFragment;->access$1(Lcom/lzx/iteam/ContactNameCardFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/CommonCodeUtil;->launchCallByNumber(Landroid/content/Context;Ljava/lang/String;)Z

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment$2;->this$0:Lcom/lzx/iteam/ContactNameCardFragment;

    # getter for: Lcom/lzx/iteam/ContactNameCardFragment;->mActivity:Lcom/lzx/iteam/ContactNameCardActivity;
    invoke-static {v0}, Lcom/lzx/iteam/ContactNameCardFragment;->access$0(Lcom/lzx/iteam/ContactNameCardFragment;)Lcom/lzx/iteam/ContactNameCardActivity;

    move-result-object v0

    const-string v1, "\u53f7\u7801\u672a\u516c\u5f00"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
