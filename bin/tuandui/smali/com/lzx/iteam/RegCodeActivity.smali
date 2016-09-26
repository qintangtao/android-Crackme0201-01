.class public Lcom/lzx/iteam/RegCodeActivity;
.super Landroid/app/Activity;
.source "RegCodeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private codeImage:Ljava/lang/String;

.field private mIvCode:Landroid/widget/ImageView;

.field private mLlBack:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public initView()V
    .locals 1

    .prologue
    .line 31
    const v0, 0x7f0e01f7

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/RegCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/RegCodeActivity;->mLlBack:Landroid/widget/LinearLayout;

    .line 32
    const v0, 0x7f0e0564

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/RegCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/RegCodeActivity;->mIvCode:Landroid/widget/ImageView;

    .line 33
    iget-object v0, p0, Lcom/lzx/iteam/RegCodeActivity;->mLlBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 43
    :goto_0
    return-void

    .line 40
    :pswitch_0
    invoke-virtual {p0}, Lcom/lzx/iteam/RegCodeActivity;->finish()V

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x7f0e01f7
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f0300d4

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/RegCodeActivity;->setContentView(I)V

    .line 23
    invoke-virtual {p0}, Lcom/lzx/iteam/RegCodeActivity;->initView()V

    .line 24
    invoke-virtual {p0}, Lcom/lzx/iteam/RegCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "code_image"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/RegCodeActivity;->codeImage:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/lzx/iteam/util/ImageLoaderInterface;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lcom/lzx/iteam/RegCodeActivity;->codeImage:Ljava/lang/String;

    iget-object v2, p0, Lcom/lzx/iteam/RegCodeActivity;->mIvCode:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 27
    return-void
.end method
