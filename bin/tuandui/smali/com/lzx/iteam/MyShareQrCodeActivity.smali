.class public Lcom/lzx/iteam/MyShareQrCodeActivity;
.super Landroid/app/Activity;
.source "MyShareQrCodeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mLlBack:Landroid/widget/LinearLayout;

.field private mShareIv:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public Create2DCode(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v9, 0x0

    .line 48
    .local v9, "matrix":Lcom/google/zxing/common/BitMatrix;
    :try_start_0
    new-instance v2, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v2}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    const/16 v5, 0x104

    const/16 v6, 0x104

    invoke-virtual {v2, p1, v4, v5, v6}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v9

    .line 49
    invoke-virtual {v9}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    .line 50
    .local v3, "width":I
    invoke-virtual {v9}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    .line 52
    .local v7, "height":I
    mul-int v2, v3, v7

    new-array v1, v2, [I

    .line 53
    .local v1, "pixels":[I
    const/4 v11, 0x0

    .local v11, "y":I
    :goto_0
    if-lt v11, v7, :cond_0

    .line 64
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 71
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "pixels":[I
    .end local v3    # "width":I
    .end local v7    # "height":I
    .end local v11    # "y":I
    :goto_1
    return-object v0

    .line 54
    .restart local v1    # "pixels":[I
    .restart local v3    # "width":I
    .restart local v7    # "height":I
    .restart local v11    # "y":I
    :cond_0
    const/4 v10, 0x0

    .local v10, "x":I
    :goto_2
    if-lt v10, v3, :cond_1

    .line 53
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    mul-int v2, v11, v3

    add-int/2addr v2, v10

    const/high16 v4, -0x1000000

    aput v4, v1, v2

    .line 54
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 58
    :cond_2
    mul-int v2, v11, v3

    add-int/2addr v2, v10

    const/4 v4, -0x1

    aput v4, v1, v2
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 69
    .end local v1    # "pixels":[I
    .end local v3    # "width":I
    .end local v7    # "height":I
    .end local v10    # "x":I
    .end local v11    # "y":I
    :catch_0
    move-exception v8

    .line 70
    .local v8, "e":Lcom/google/zxing/WriterException;
    invoke-virtual {v8}, Lcom/google/zxing/WriterException;->printStackTrace()V

    .line 71
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public initView()V
    .locals 1

    .prologue
    .line 34
    const v0, 0x7f0e0292

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/MyShareQrCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/MyShareQrCodeActivity;->mShareIv:Landroid/widget/ImageView;

    .line 35
    const v0, 0x7f0e0291

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/MyShareQrCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/MyShareQrCodeActivity;->mLlBack:Landroid/widget/LinearLayout;

    .line 36
    iget-object v0, p0, Lcom/lzx/iteam/MyShareQrCodeActivity;->mLlBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 79
    :pswitch_0
    invoke-virtual {p0}, Lcom/lzx/iteam/MyShareQrCodeActivity;->finish()V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x7f0e0291
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v1, 0x7f030057

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/MyShareQrCodeActivity;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lcom/lzx/iteam/MyShareQrCodeActivity;->initView()V

    .line 29
    const-string v1, "http://ituandui.cn/download"

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/MyShareQrCodeActivity;->Create2DCode(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 30
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/lzx/iteam/MyShareQrCodeActivity;->mShareIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 31
    return-void
.end method
