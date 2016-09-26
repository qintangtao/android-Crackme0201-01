.class Lcom/lzx/iteam/CloudContactDetailActivity$12;
.super Ljava/lang/Object;
.source "CloudContactDetailActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/SendCardShakeListener$OnShakeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CloudContactDetailActivity;->initShake()Lcom/lzx/iteam/util/SendCardShakeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CloudContactDetailActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CloudContactDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CloudContactDetailActivity$12;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    .line 1058
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShake()V
    .locals 3

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity$12;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mTvContactPhone:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$19(Lcom/lzx/iteam/CloudContactDetailActivity;)Landroid/widget/TextView;

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

    .line 1062
    const-string v0, "1"

    iget-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity$12;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mLimitPhone:Ljava/lang/String;
    invoke-static {v1}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$30(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1063
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity$12;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    iget-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity$12;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mTvContactPhone:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$19(Lcom/lzx/iteam/CloudContactDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/CommonCodeUtil;->launchCallByNumber(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1069
    :cond_0
    :goto_0
    return-void

    .line 1065
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity$12;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    const-string v1, "\u53f7\u7801\u672a\u516c\u5f00"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
