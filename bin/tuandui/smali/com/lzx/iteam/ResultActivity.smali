.class public Lcom/lzx/iteam/ResultActivity;
.super Landroid/app/Activity;
.source "ResultActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final QRCODE_DATA:Ljava/lang/String; = "data"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mBack:Landroid/widget/LinearLayout;

.field private mBtnAdd:Landroid/widget/Button;

.field private mCompany:Ljava/lang/String;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEmail:Ljava/lang/String;

.field private mIvAvatar:Landroid/widget/ImageView;

.field private mJob:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPhone:Ljava/lang/String;

.field private mPhoneMore:Ljava/lang/String;

.field private mTvAddress:Landroid/widget/TextView;

.field private mTvCompany:Landroid/widget/TextView;

.field private mTvEmail:Landroid/widget/TextView;

.field private mTvJob:Landroid/widget/TextView;

.field private mTvName:Landroid/widget/TextView;

.field private mTvPhone:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public addData()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lzx/iteam/ResultActivity;->mDataList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lzx/iteam/ResultActivity;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/lzx/iteam/ResultActivity;->mDataList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lzx/iteam/ResultActivity;->mPhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/lzx/iteam/ResultActivity;->mDataList:Ljava/util/ArrayList;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/lzx/iteam/ResultActivity;->mDataList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lzx/iteam/ResultActivity;->mCompany:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/lzx/iteam/ResultActivity;->mDataList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lzx/iteam/ResultActivity;->mJob:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/lzx/iteam/ResultActivity;->mDataList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lzx/iteam/ResultActivity;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/lzx/iteam/ResultActivity;->mDataList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lzx/iteam/ResultActivity;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public getData()V
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/lzx/iteam/ResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ResultActivity;->mName:Ljava/lang/String;

    .line 50
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ResultActivity;->mPhone:Ljava/lang/String;

    .line 52
    const-string v1, "company"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ResultActivity;->mCompany:Ljava/lang/String;

    .line 53
    const-string v1, "job"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ResultActivity;->mJob:Ljava/lang/String;

    .line 54
    const-string v1, "address"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ResultActivity;->mAddress:Ljava/lang/String;

    .line 55
    const-string v1, "email"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ResultActivity;->mEmail:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public initView()V
    .locals 1

    .prologue
    .line 59
    const v0, 0x7f0e052a

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ResultActivity;->mTvName:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0e0531

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ResultActivity;->mTvPhone:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0e0530

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ResultActivity;->mTvCompany:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f0e052c

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ResultActivity;->mTvJob:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0e0532

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ResultActivity;->mTvEmail:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0e0533

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ResultActivity;->mTvAddress:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0e057b

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lzx/iteam/ResultActivity;->mBtnAdd:Landroid/widget/Button;

    .line 66
    iget-object v0, p0, Lcom/lzx/iteam/ResultActivity;->mBtnAdd:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v0, 0x7f0e0574

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/ResultActivity;->mIvAvatar:Landroid/widget/ImageView;

    .line 68
    const v0, 0x7f0e0573

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ResultActivity;->mBack:Landroid/widget/LinearLayout;

    .line 69
    iget-object v0, p0, Lcom/lzx/iteam/ResultActivity;->mBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 122
    :goto_0
    return-void

    .line 114
    :sswitch_0
    invoke-virtual {p0}, Lcom/lzx/iteam/ResultActivity;->finish()V

    goto :goto_0

    .line 117
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lzx/iteam/QrCodeAddActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "data"

    iget-object v2, p0, Lcom/lzx/iteam/ResultActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ResultActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 112
    :sswitch_data_0
    .sparse-switch
        0x7f0e0573 -> :sswitch_0
        0x7f0e057b -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f0300d8

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ResultActivity;->setContentView(I)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/ResultActivity;->mDataList:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {p0}, Lcom/lzx/iteam/ResultActivity;->getData()V

    .line 42
    invoke-virtual {p0}, Lcom/lzx/iteam/ResultActivity;->initView()V

    .line 43
    invoke-virtual {p0}, Lcom/lzx/iteam/ResultActivity;->setData()V

    .line 45
    return-void
.end method

.method public setData()V
    .locals 3

    .prologue
    .line 73
    iget-object v1, p0, Lcom/lzx/iteam/ResultActivity;->mTvName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lzx/iteam/ResultActivity;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/lzx/iteam/ResultActivity;->mPhone:Ljava/lang/String;

    .line 78
    .local v0, "phone":Ljava/lang/String;
    iget-object v1, p0, Lcom/lzx/iteam/ResultActivity;->mTvPhone:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v1, p0, Lcom/lzx/iteam/ResultActivity;->mCompany:Ljava/lang/String;

    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/lzx/iteam/ResultActivity;->mTvCompany:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lzx/iteam/ResultActivity;->mCompany:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/ResultActivity;->mJob:Ljava/lang/String;

    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/lzx/iteam/ResultActivity;->mTvJob:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lzx/iteam/ResultActivity;->mJob:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/ResultActivity;->mEmail:Ljava/lang/String;

    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 87
    iget-object v1, p0, Lcom/lzx/iteam/ResultActivity;->mTvEmail:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lzx/iteam/ResultActivity;->mEmail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/lzx/iteam/ResultActivity;->mAddress:Ljava/lang/String;

    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 90
    iget-object v1, p0, Lcom/lzx/iteam/ResultActivity;->mTvAddress:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lzx/iteam/ResultActivity;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_3
    invoke-virtual {p0}, Lcom/lzx/iteam/ResultActivity;->addData()V

    .line 98
    return-void
.end method
