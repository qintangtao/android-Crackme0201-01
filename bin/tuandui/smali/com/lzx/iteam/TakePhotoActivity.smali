.class public Lcom/lzx/iteam/TakePhotoActivity;
.super Landroid/app/Activity;
.source "TakePhotoActivity.java"


# static fields
.field public static final BACK_WHITOUT:I = 0x1006

.field public static final TAKE_PHOTO:I = 0x1005


# instance fields
.field private mTakePhotoImagePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v8, -0x1

    .line 31
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 32
    if-eq p2, v8, :cond_1

    .line 33
    invoke-virtual {p0}, Lcom/lzx/iteam/TakePhotoActivity;->finish()V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 38
    :sswitch_0
    const-string v6, ""

    iget-object v7, p0, Lcom/lzx/iteam/TakePhotoActivity;->mTakePhotoImagePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 41
    iget-object v6, p0, Lcom/lzx/iteam/TakePhotoActivity;->mTakePhotoImagePath:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lcom/lzx/iteam/util/PhotoUtil;->readBitmapFromPath(Landroid/app/Activity;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 42
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/lzx/iteam/TakePhotoActivity;->mTakePhotoImagePath:Ljava/lang/String;

    invoke-static {v6}, Lcom/lzx/iteam/util/PhotoUtil;->getExifOrientation(Ljava/lang/String;)I

    move-result v1

    .line 43
    .local v1, "degree":I
    if-eqz v1, :cond_2

    .line 44
    invoke-static {v0, v1}, Lcom/lzx/iteam/util/PhotoUtil;->rotaingImageView(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 46
    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/lzx/iteam/TakePhotoActivity;->mTakePhotoImagePath:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v3    # "file":Ljava/io/File;
    :goto_1
    const-string v6, "/Yun/Images/"

    const-string v7, ""

    invoke-static {v0, p0, v6, v7}, Lcom/lzx/iteam/util/PhotoUtil;->saveBitmaptoSdCard(Landroid/graphics/Bitmap;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "tempPath":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/Yun/Images/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lzx/iteam/TakePhotoActivity;->mTakePhotoImagePath:Ljava/lang/String;

    .line 54
    .end local v5    # "tempPath":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/lzx/iteam/TakePhotoActivity;->mTakePhotoImagePath:Ljava/lang/String;

    if-eqz v6, :cond_0

    const-string v6, ""

    iget-object v7, p0, Lcom/lzx/iteam/TakePhotoActivity;->mTakePhotoImagePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 55
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/lzx/iteam/ImagePagerActivity;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .local v4, "intent":Landroid/content/Intent;
    const-string v6, "imagePath"

    iget-object v7, p0, Lcom/lzx/iteam/TakePhotoActivity;->mTakePhotoImagePath:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v6, "image_origin"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    const/16 v6, 0x1005

    invoke-virtual {p0, v4, v6}, Lcom/lzx/iteam/TakePhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 48
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 49
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 63
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "degree":I
    .end local v2    # "e":Ljava/lang/Exception;
    :sswitch_1
    const-string v6, "imagePath"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lzx/iteam/TakePhotoActivity;->mTakePhotoImagePath:Ljava/lang/String;

    .line 64
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 65
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v6, "imagePath"

    iget-object v7, p0, Lcom/lzx/iteam/TakePhotoActivity;->mTakePhotoImagePath:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0, v8, v4}, Lcom/lzx/iteam/TakePhotoActivity;->setResult(ILandroid/content/Intent;)V

    .line 67
    invoke-virtual {p0}, Lcom/lzx/iteam/TakePhotoActivity;->finish()V

    goto/16 :goto_0

    .line 36
    nop

    :sswitch_data_0
    .sparse-switch
        0xbcf -> :sswitch_0
        0x1005 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-static {p0}, Lcom/lzx/iteam/util/PhotoUtil;->doTakePhoto(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/TakePhotoActivity;->mTakePhotoImagePath:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 76
    const/16 v0, 0x1006

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/TakePhotoActivity;->setResult(I)V

    .line 77
    invoke-virtual {p0}, Lcom/lzx/iteam/TakePhotoActivity;->finish()V

    .line 78
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
