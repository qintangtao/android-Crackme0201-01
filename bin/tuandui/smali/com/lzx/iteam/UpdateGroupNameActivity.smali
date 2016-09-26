.class public Lcom/lzx/iteam/UpdateGroupNameActivity;
.super Landroid/app/Activity;
.source "UpdateGroupNameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEtName:Landroid/widget/EditText;

.field private mLlBack:Landroid/widget/LinearLayout;

.field private mTvConfirm:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 31
    const v0, 0x7f0e0652

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/UpdateGroupNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/UpdateGroupNameActivity;->mLlBack:Landroid/widget/LinearLayout;

    .line 32
    iget-object v0, p0, Lcom/lzx/iteam/UpdateGroupNameActivity;->mLlBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    const v0, 0x7f0e0653

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/UpdateGroupNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/UpdateGroupNameActivity;->mTvConfirm:Landroid/widget/TextView;

    .line 34
    iget-object v0, p0, Lcom/lzx/iteam/UpdateGroupNameActivity;->mTvConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    const v0, 0x7f0e0654

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/UpdateGroupNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/UpdateGroupNameActivity;->mEtName:Landroid/widget/EditText;

    .line 36
    iget-object v0, p0, Lcom/lzx/iteam/UpdateGroupNameActivity;->mEtName:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/lzx/iteam/UpdateGroupNameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "old_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lcom/lzx/iteam/UpdateGroupNameActivity;->mEtName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/lzx/iteam/UpdateGroupNameActivity;->mEtName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 38
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 58
    :goto_0
    return-void

    .line 44
    :pswitch_0
    invoke-virtual {p0}, Lcom/lzx/iteam/UpdateGroupNameActivity;->finish()V

    goto :goto_0

    .line 47
    :pswitch_1
    iget-object v2, p0, Lcom/lzx/iteam/UpdateGroupNameActivity;->mEtName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "newName":Ljava/lang/String;
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/lzx/iteam/UpdateGroupNameActivity;->mContext:Landroid/content/Context;

    const-string v3, "\u53f7\u7801\u7c3f\u540d\u79f0\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "new_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/lzx/iteam/UpdateGroupNameActivity;->setResult(ILandroid/content/Intent;)V

    .line 54
    invoke-virtual {p0}, Lcom/lzx/iteam/UpdateGroupNameActivity;->finish()V

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0652
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f0300fe

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/UpdateGroupNameActivity;->setContentView(I)V

    .line 26
    iput-object p0, p0, Lcom/lzx/iteam/UpdateGroupNameActivity;->mContext:Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Lcom/lzx/iteam/UpdateGroupNameActivity;->initView()V

    .line 28
    return-void
.end method
