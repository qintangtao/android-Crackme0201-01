.class public Lcom/lzx/iteam/NameCardActivity;
.super Landroid/app/Activity;
.source "NameCardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCardAddress:Landroid/widget/TextView;

.field private mCardCompany:Landroid/widget/TextView;

.field private mCardEmail:Landroid/widget/TextView;

.field private mCardName:Landroid/widget/TextView;

.field private mCardPhone:Landroid/widget/TextView;

.field private mCardPhoto:Landroid/widget/ImageView;

.field private mCardPosition:Landroid/widget/TextView;

.field private mContactDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initCardData()V
    .locals 8

    .prologue
    const/4 v5, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 74
    iget-object v2, p0, Lcom/lzx/iteam/NameCardActivity;->mContactDataList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 75
    iget-object v3, p0, Lcom/lzx/iteam/NameCardActivity;->mCardName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lzx/iteam/NameCardActivity;->mContactDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v3, p0, Lcom/lzx/iteam/NameCardActivity;->mCardCompany:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lzx/iteam/NameCardActivity;->mContactDataList:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v2, p0, Lcom/lzx/iteam/NameCardActivity;->mContactDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/lzx/iteam/NameCardActivity;->mCardPosition:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v3, p0, Lcom/lzx/iteam/NameCardActivity;->mCardPosition:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lzx/iteam/NameCardActivity;->mContactDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :goto_0
    iget-object v3, p0, Lcom/lzx/iteam/NameCardActivity;->mCardPhone:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lzx/iteam/NameCardActivity;->mContactDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/lzx/iteam/NameCardActivity;->mContactDataList:Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v3, p0, Lcom/lzx/iteam/NameCardActivity;->mCardEmail:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lzx/iteam/NameCardActivity;->mContactDataList:Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v3, p0, Lcom/lzx/iteam/NameCardActivity;->mCardAddress:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lzx/iteam/NameCardActivity;->mContactDataList:Ljava/util/ArrayList;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v2, p0, Lcom/lzx/iteam/NameCardActivity;->mContactDataList:Ljava/util/ArrayList;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    .local v0, "avatar":Ljava/lang/String;
    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Nona"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    new-instance v1, Lcom/lzx/iteam/task/DownloadImageTask;

    iget-object v2, p0, Lcom/lzx/iteam/NameCardActivity;->mCardPhoto:Landroid/widget/ImageView;

    invoke-direct {v1, v2}, Lcom/lzx/iteam/task/DownloadImageTask;-><init>(Landroid/widget/ImageView;)V

    .line 90
    .local v1, "downloadImageTask":Lcom/lzx/iteam/task/DownloadImageTask;
    new-array v2, v7, [Ljava/lang/String;

    aput-object v0, v2, v6

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/task/DownloadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    .end local v0    # "avatar":Ljava/lang/String;
    .end local v1    # "downloadImageTask":Lcom/lzx/iteam/task/DownloadImageTask;
    :cond_0
    return-void

    .line 81
    :cond_1
    iget-object v2, p0, Lcom/lzx/iteam/NameCardActivity;->mCardPosition:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getData()V
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/lzx/iteam/NameCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "contact_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/NameCardActivity;->mContactDataList:Ljava/util/ArrayList;

    .line 62
    return-void
.end method

.method public initView()V
    .locals 1

    .prologue
    .line 47
    const v0, 0x7f0e051f

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/NameCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/NameCardActivity;->mLayout:Landroid/widget/LinearLayout;

    .line 48
    iget-object v0, p0, Lcom/lzx/iteam/NameCardActivity;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v0, 0x7f0e0521

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/NameCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/NameCardActivity;->mCardName:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0e0523

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/NameCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/NameCardActivity;->mCardCompany:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0e0524

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/NameCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/NameCardActivity;->mCardPhone:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0e0522

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/NameCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/NameCardActivity;->mCardPosition:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0e0520

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/NameCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/NameCardActivity;->mCardPhoto:Landroid/widget/ImageView;

    .line 54
    const v0, 0x7f0e0525

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/NameCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/NameCardActivity;->mCardEmail:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f0e0526

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/NameCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/NameCardActivity;->mCardAddress:Landroid/widget/TextView;

    .line 58
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 99
    :pswitch_0
    invoke-virtual {p0}, Lcom/lzx/iteam/NameCardActivity;->finish()V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x7f0e051f
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/NameCardActivity;->requestWindowFeature(I)Z

    .line 38
    invoke-virtual {p0}, Lcom/lzx/iteam/NameCardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 39
    const v0, 0x7f0300c3

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/NameCardActivity;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/lzx/iteam/NameCardActivity;->initView()V

    .line 41
    invoke-virtual {p0}, Lcom/lzx/iteam/NameCardActivity;->getData()V

    .line 42
    invoke-direct {p0}, Lcom/lzx/iteam/NameCardActivity;->initCardData()V

    .line 44
    return-void
.end method
