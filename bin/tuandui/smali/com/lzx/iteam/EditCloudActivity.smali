.class public Lcom/lzx/iteam/EditCloudActivity;
.super Landroid/app/Activity;
.source "EditCloudActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/EditCloudActivity$UpdataContactMessage;
    }
.end annotation


# static fields
.field private static final CAMERA_WITH_DATA:I = 0xec8

.field public static final CLOUD_EDIT_ADDRESS:Ljava/lang/String; = "address"

.field public static final CLOUD_EDIT_COMPANY:Ljava/lang/String; = "compan"

.field public static final CLOUD_EDIT_CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final CLOUD_EDIT_EMAIL:Ljava/lang/String; = "email"

.field public static final CLOUD_EDIT_IMAGE:Ljava/lang/String; = "image"

.field public static final CLOUD_EDIT_NAME:Ljava/lang/String; = "name"

.field public static final CLOUD_EDIT_NOTE:Ljava/lang/String; = "note"

.field public static final CLOUD_EDIT_PHONE:Ljava/lang/String; = "phone"

.field public static final CLOUD_EDIT_PHONES:Ljava/lang/String; = "phones"

.field public static final CLOUD_EDIT_POSITION:Ljava/lang/String; = "position"

.field public static final CLOUD_EDIT_SEX:Ljava/lang/String; = "sex"

.field public static final CLOUD_LIMIT_PHONE:Ljava/lang/String; = "limit_phone"

.field public static final CONTACT_ADDRESS:Ljava/lang/String; = "contact_address"

.field public static final CONTACT_COMPANY:Ljava/lang/String; = "contact_company"

.field public static final CONTACT_EMAIL:Ljava/lang/String; = "contact_email"

.field public static final CONTACT_IMAGE:Ljava/lang/String; = "contact_image"

.field public static final CONTACT_JOB:Ljava/lang/String; = "contact_job"

.field public static final CONTACT_LANDLINE:Ljava/lang/String; = "contact_landline"

.field public static final CONTACT_NAME:Ljava/lang/String; = "contact_name"

.field public static final CONTACT_PHONE:Ljava/lang/String; = "contact_phone"

.field public static final CONTACT_REMARK:Ljava/lang/String; = "contact_remark"

.field public static final CONTACT_SEX:Ljava/lang/String; = "contact_sex"

.field private static final ICON_SIZE:I = 0x60

.field private static final MEG_EDIT:I = 0x2766

.field private static final PHOTO_PICKED_WITH_DATA:I = 0xec5

.field public static final SHOW_PHONES:Ljava/lang/String; = "show_phones"


# instance fields
.field private array:Lorg/json/JSONArray;

.field private downloadImageTask:Lcom/lzx/iteam/task/DownloadImageTask;

.field private imageBitmap:Landroid/graphics/Bitmap;

.field private mAddress:Landroid/widget/EditText;

.field private mBack:Landroid/widget/LinearLayout;

.field private mCompany:Landroid/widget/EditText;

.field private mComplete:Landroid/widget/LinearLayout;

.field private mContactId:Ljava/lang/String;

.field private mContactSex:Ljava/lang/String;

.field private mCurrentId:Ljava/lang/String;

.field private mCurrentPhotoFile:Ljava/io/File;

.field private mEditAddress:Ljava/lang/String;

.field private mEditCompany:Ljava/lang/String;

.field private mEditEmail:Ljava/lang/String;

.field private mEditImage:Ljava/lang/String;

.field private mEditName:Ljava/lang/String;

.field private mEditNote:Ljava/lang/String;

.field private mEditPhone:Ljava/lang/String;

.field private mEditPhoneFrist:Ljava/lang/String;

.field private mEditPosition:Ljava/lang/String;

.field private mEditSex:I

.field private mEmail:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mImage:Landroid/widget/ImageView;

.field private mImageArrow:Landroid/widget/ImageView;

.field private mImageData:Ljava/lang/String;

.field private mImageLayout:Landroid/widget/FrameLayout;

.field private mImageLoder:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mLimitPhoneLayout:Landroid/widget/RelativeLayout;

.field private mMainView:Landroid/widget/LinearLayout;

.field private mName:Landroid/widget/EditText;

.field private mNote:Landroid/widget/EditText;

.field private mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mPhone:Landroid/widget/EditText;

.field private mPosition:Landroid/widget/EditText;

.field private mRlSexLayout:Landroid/widget/RelativeLayout;

.field private mSetPhotoPop:Landroid/widget/PopupWindow;

.field private mSetSexPop:Landroid/widget/PopupWindow;

.field private mSex:Landroid/widget/TextView;

.field private mShowPhone:Landroid/widget/ToggleButton;

.field private phoneLsit:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    const-string v0, "0"

    iput-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mContactSex:Ljava/lang/String;

    .line 123
    new-instance v0, Lcom/lzx/iteam/EditCloudActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/EditCloudActivity$1;-><init>(Lcom/lzx/iteam/EditCloudActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mHandler:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/EditCloudActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/lzx/iteam/EditCloudActivity;->mContactSex:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/EditCloudActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mSex:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/EditCloudActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/EditCloudActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public static getCropImageIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 5
    .param p0, "photoUri"    # Landroid/net/Uri;

    .prologue
    const/16 v4, 0x60

    const/4 v3, 0x1

    .line 576
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 577
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 580
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 581
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 582
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 583
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 584
    return-object v0
.end method

.method private getLimitPhone()I
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mShowPhone:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    const/4 v0, 0x1

    .line 419
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPhotoPickIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    const/16 v4, 0x60

    const/4 v3, 0x1

    .line 604
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 605
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 607
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 608
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 609
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 610
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 611
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 612
    return-object v0
.end method

.method public static getTakePickIntent(Ljava/io/File;)Landroid/content/Intent;
    .locals 3
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 545
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 546
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "output"

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 547
    return-object v0
.end method

.method private setLimitPhone(Ljava/lang/String;)V
    .locals 2
    .param p1, "limitPhone"    # Ljava/lang/String;

    .prologue
    .line 408
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mShowPhone:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mShowPhone:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private showSetPhotoPop()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 485
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030009

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 486
    .local v3, "mainView":Landroid/view/View;
    const v4, 0x7f0e0039

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 487
    .local v2, "btnTakePhoto":Landroid/widget/Button;
    new-instance v4, Lcom/lzx/iteam/EditCloudActivity$6;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/EditCloudActivity$6;-><init>(Lcom/lzx/iteam/EditCloudActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    const v4, 0x7f0e003a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 495
    .local v1, "btnCheckFromGallery":Landroid/widget/Button;
    new-instance v4, Lcom/lzx/iteam/EditCloudActivity$7;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/EditCloudActivity$7;-><init>(Lcom/lzx/iteam/EditCloudActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    const v4, 0x7f0e0032

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 503
    .local v0, "btnCancle":Landroid/widget/Button;
    new-instance v4, Lcom/lzx/iteam/EditCloudActivity$8;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/EditCloudActivity$8;-><init>(Lcom/lzx/iteam/EditCloudActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    new-instance v4, Landroid/widget/PopupWindow;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lzx/iteam/EditCloudActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    .line 510
    iget-object v4, p0, Lcom/lzx/iteam/EditCloudActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 511
    iget-object v4, p0, Lcom/lzx/iteam/EditCloudActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 512
    iget-object v4, p0, Lcom/lzx/iteam/EditCloudActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 513
    iget-object v4, p0, Lcom/lzx/iteam/EditCloudActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 514
    iget-object v4, p0, Lcom/lzx/iteam/EditCloudActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 515
    iget-object v4, p0, Lcom/lzx/iteam/EditCloudActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 516
    iget-object v4, p0, Lcom/lzx/iteam/EditCloudActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 517
    iget-object v4, p0, Lcom/lzx/iteam/EditCloudActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    const v5, 0x7f09000b

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 518
    iget-object v4, p0, Lcom/lzx/iteam/EditCloudActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/lzx/iteam/EditCloudActivity;->mMainView:Landroid/widget/LinearLayout;

    const/16 v6, 0x50

    invoke-virtual {v4, v5, v6, v8, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 519
    iget-object v4, p0, Lcom/lzx/iteam/EditCloudActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->update()V

    .line 520
    return-void
.end method


# virtual methods
.method protected doCropPhoto(Ljava/io/File;)V
    .locals 5
    .param p1, "f"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x1

    .line 556
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 557
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 558
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 560
    const/4 v3, 0x0

    .line 556
    invoke-static {p0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 563
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/lzx/iteam/EditCloudActivity;->getCropImageIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 564
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0xec5

    invoke-virtual {p0, v0, v1}, Lcom/lzx/iteam/EditCloudActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 566
    :catch_0
    move-exception v1

    const v1, 0x7f080125

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected doPickPhotoFromGallery()V
    .locals 3

    .prologue
    .line 593
    :try_start_0
    invoke-static {}, Lcom/lzx/iteam/EditCloudActivity;->getPhotoPickIntent()Landroid/content/Intent;

    move-result-object v0

    .line 594
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0xec5

    invoke-virtual {p0, v0, v1}, Lcom/lzx/iteam/EditCloudActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 596
    :catch_0
    move-exception v1

    const v1, 0x7f080125

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected doTakePhoto()V
    .locals 4

    .prologue
    .line 528
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/DCIM/Photo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 529
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 530
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 532
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/lzx/iteam/util/PhotoUtil;->getRandomFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/lzx/iteam/EditCloudActivity;->mCurrentPhotoFile:Ljava/io/File;

    .line 533
    iget-object v2, p0, Lcom/lzx/iteam/EditCloudActivity;->mCurrentPhotoFile:Ljava/io/File;

    invoke-static {v2}, Lcom/lzx/iteam/EditCloudActivity;->getTakePickIntent(Ljava/io/File;)Landroid/content/Intent;

    move-result-object v1

    .line 534
    .local v1, "intent":Landroid/content/Intent;
    const/16 v2, 0xec8

    invoke-virtual {p0, v1, v2}, Lcom/lzx/iteam/EditCloudActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 536
    :catch_0
    move-exception v2

    const v2, 0x7f080125

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public editContactMessage()V
    .locals 6

    .prologue
    .line 339
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 341
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "current_contact_id"

    iget-object v4, p0, Lcom/lzx/iteam/EditCloudActivity;->mCurrentId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "contact_id"

    iget-object v4, p0, Lcom/lzx/iteam/EditCloudActivity;->mContactId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "contact_name"

    iget-object v4, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "contact_company"

    iget-object v4, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditCompany:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "contact_job"

    iget-object v4, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditPosition:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "contact_email"

    iget-object v4, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditEmail:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "contact_phone"

    iget-object v4, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditPhoneFrist:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "contact_address"

    iget-object v4, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditAddress:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "contact_remark"

    iget-object v4, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditNote:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "contact_sex"

    iget-object v4, p0, Lcom/lzx/iteam/EditCloudActivity;->mContactSex:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "show_phones"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/lzx/iteam/EditCloudActivity;->getLimitPhone()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    new-instance v0, Lcom/lzx/iteam/EditCloudActivity$UpdataContactMessage;

    iget-object v2, p0, Lcom/lzx/iteam/EditCloudActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2766

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/lzx/iteam/EditCloudActivity$UpdataContactMessage;-><init>(Lcom/lzx/iteam/EditCloudActivity;Landroid/os/Message;)V

    .line 357
    .local v0, "message":Lcom/lzx/iteam/EditCloudActivity$UpdataContactMessage;
    const-string v2, "/api/contact/update"

    iput-object v2, v0, Lcom/lzx/iteam/EditCloudActivity$UpdataContactMessage;->mApi:Ljava/lang/String;

    .line 358
    iput-object v1, v0, Lcom/lzx/iteam/EditCloudActivity$UpdataContactMessage;->mParams:Ljava/util/List;

    .line 359
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 360
    return-void
.end method

.method public getData()V
    .locals 3

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/lzx/iteam/EditCloudActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 212
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditName:Ljava/lang/String;

    .line 213
    const-string v1, "phones"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/EditCloudActivity;->phoneLsit:Ljava/util/ArrayList;

    .line 214
    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/EditCloudActivity;->mContactId:Ljava/lang/String;

    .line 215
    const-string v1, "current_contact_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/EditCloudActivity;->mCurrentId:Ljava/lang/String;

    .line 216
    const-string v1, "compan"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditCompany:Ljava/lang/String;

    .line 217
    const-string v1, "position"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditPosition:Ljava/lang/String;

    .line 218
    const-string v1, "email"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditEmail:Ljava/lang/String;

    .line 219
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditPhone:Ljava/lang/String;

    .line 220
    const-string v1, "image"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditImage:Ljava/lang/String;

    .line 222
    const-string v1, "address"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditAddress:Ljava/lang/String;

    .line 223
    const-string v1, "note"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditNote:Ljava/lang/String;

    .line 224
    const-string v1, "sex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditSex:I

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditSex:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/EditCloudActivity;->mContactSex:Ljava/lang/String;

    .line 226
    const-string v1, "limit_phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lzx/iteam/EditCloudActivity;->setLimitPhone(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public getUpDateMessage()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditName:Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mCompany:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditCompany:Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mPosition:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditPosition:Ljava/lang/String;

    .line 326
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditEmail:Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditPhoneFrist:Ljava/lang/String;

    .line 329
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mAddress:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditAddress:Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mNote:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditNote:Ljava/lang/String;

    .line 333
    return-void
.end method

.method public initProperty()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public initView()V
    .locals 2

    .prologue
    .line 161
    const v0, 0x7f0e0336

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mName:Landroid/widget/EditText;

    .line 162
    const v0, 0x7f0e0340

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mPhone:Landroid/widget/EditText;

    .line 163
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mPhone:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 165
    const v0, 0x7f0e033d

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mCompany:Landroid/widget/EditText;

    .line 166
    const v0, 0x7f0e033e

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mPosition:Landroid/widget/EditText;

    .line 167
    const v0, 0x7f0e0343

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mEmail:Landroid/widget/EditText;

    .line 168
    const v0, 0x7f0e0333

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mImage:Landroid/widget/ImageView;

    .line 169
    const v0, 0x7f0e0334

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mImageArrow:Landroid/widget/ImageView;

    .line 170
    const v0, 0x7f0e01d8

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mComplete:Landroid/widget/LinearLayout;

    .line 171
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mComplete:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v0, 0x7f0e0332

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mImageLayout:Landroid/widget/FrameLayout;

    .line 173
    const v0, 0x7f0e0344

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mAddress:Landroid/widget/EditText;

    .line 174
    const v0, 0x7f0e0347

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mNote:Landroid/widget/EditText;

    .line 176
    const v0, 0x7f0e0339

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mSex:Landroid/widget/TextView;

    .line 177
    const v0, 0x7f0e01db

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mShowPhone:Landroid/widget/ToggleButton;

    .line 178
    const v0, 0x7f0e01da

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mLimitPhoneLayout:Landroid/widget/RelativeLayout;

    .line 179
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mLimitPhoneLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mShowPhone:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 183
    const v0, 0x7f0e01d5

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mMainView:Landroid/widget/LinearLayout;

    .line 184
    const v0, 0x7f0e0337

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mRlSexLayout:Landroid/widget/RelativeLayout;

    .line 185
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mRlSexLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const v0, 0x7f0e01d7

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mBack:Landroid/widget/LinearLayout;

    .line 187
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mImageArrow:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 617
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 618
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 619
    packed-switch p1, :pswitch_data_0

    .line 636
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 621
    :pswitch_1
    if-eqz p3, :cond_0

    .line 623
    const-string v1, "data"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/lzx/iteam/EditCloudActivity;->imageBitmap:Landroid/graphics/Bitmap;

    .line 624
    iget-object v1, p0, Lcom/lzx/iteam/EditCloudActivity;->mImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lzx/iteam/EditCloudActivity;->imageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 625
    iget-object v1, p0, Lcom/lzx/iteam/EditCloudActivity;->imageBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/lzx/iteam/util/PhotoUtil;->compressImage(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 626
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->compressByteArrayByGzip([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/EditCloudActivity;->mImageData:Ljava/lang/String;

    goto :goto_0

    .line 631
    .end local v0    # "bytes":[B
    :pswitch_2
    iget-object v1, p0, Lcom/lzx/iteam/EditCloudActivity;->mCurrentPhotoFile:Ljava/io/File;

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EditCloudActivity;->doCropPhoto(Ljava/io/File;)V

    goto :goto_0

    .line 619
    :pswitch_data_0
    .packed-switch 0xec5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 319
    :goto_0
    :sswitch_0
    return-void

    .line 276
    :sswitch_1
    invoke-virtual {p0}, Lcom/lzx/iteam/EditCloudActivity;->finish()V

    goto :goto_0

    .line 285
    :sswitch_2
    iget-object v1, p0, Lcom/lzx/iteam/EditCloudActivity;->mShowPhone:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->toggle()V

    goto :goto_0

    .line 297
    :sswitch_3
    :try_start_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EditCloudActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/lzx/iteam/EditCloudActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_1
    invoke-virtual {p0}, Lcom/lzx/iteam/EditCloudActivity;->getUpDateMessage()V

    .line 303
    invoke-virtual {p0}, Lcom/lzx/iteam/EditCloudActivity;->editContactMessage()V

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 307
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_4
    invoke-direct {p0}, Lcom/lzx/iteam/EditCloudActivity;->showSetPhotoPop()V

    goto :goto_0

    .line 311
    :sswitch_5
    :try_start_1
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EditCloudActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/lzx/iteam/EditCloudActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 315
    :goto_2
    invoke-virtual {p0}, Lcom/lzx/iteam/EditCloudActivity;->showSetSexPop()V

    goto :goto_0

    .line 312
    :catch_1
    move-exception v0

    .line 313
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 274
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e01d7 -> :sswitch_1
        0x7f0e01d8 -> :sswitch_3
        0x7f0e01da -> :sswitch_2
        0x7f0e0332 -> :sswitch_4
        0x7f0e0337 -> :sswitch_5
        0x7f0e033d -> :sswitch_0
        0x7f0e033e -> :sswitch_0
        0x7f0e0343 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    const v0, 0x7f030043

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditCloudActivity;->setContentView(I)V

    .line 153
    invoke-virtual {p0}, Lcom/lzx/iteam/EditCloudActivity;->initView()V

    .line 154
    invoke-virtual {p0}, Lcom/lzx/iteam/EditCloudActivity;->initProperty()V

    .line 155
    invoke-virtual {p0}, Lcom/lzx/iteam/EditCloudActivity;->getData()V

    .line 156
    invoke-virtual {p0}, Lcom/lzx/iteam/EditCloudActivity;->setData()V

    .line 158
    return-void
.end method

.method public setData()V
    .locals 5

    .prologue
    const v2, 0x7f0a007a

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 235
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->phoneLsit:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->phoneLsit:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 246
    iget-object v1, p0, Lcom/lzx/iteam/EditCloudActivity;->mPhone:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->phoneLsit:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mCompany:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditCompany:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mPosition:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditPosition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mEmail:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mAddress:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mNote:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditNote:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditSex:I

    if-nez v0, :cond_3

    .line 257
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mSex:Landroid/widget/TextView;

    const-string v1, "\u672a\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mSex:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzx/iteam/EditCloudActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    :cond_2
    :goto_0
    new-instance v0, Lcom/lzx/iteam/task/DownloadImageTask;

    iget-object v1, p0, Lcom/lzx/iteam/EditCloudActivity;->mImage:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/lzx/iteam/task/DownloadImageTask;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->downloadImageTask:Lcom/lzx/iteam/task/DownloadImageTask;

    .line 269
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->downloadImageTask:Lcom/lzx/iteam/task/DownloadImageTask;

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditImage:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/task/DownloadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 270
    return-void

    .line 259
    :cond_3
    iget v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditSex:I

    if-ne v0, v4, :cond_4

    .line 260
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mSex:Landroid/widget/TextView;

    const-string v1, "\u7537"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mSex:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzx/iteam/EditCloudActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 262
    :cond_4
    iget v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mEditSex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 263
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mSex:Landroid/widget/TextView;

    const-string v1, "\u5973"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity;->mSex:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzx/iteam/EditCloudActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public showSetSexPop()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 427
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030072

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 428
    .local v3, "mainView":Landroid/view/View;
    const v4, 0x7f0e034a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 429
    .local v0, "boy":Landroid/widget/Button;
    const v4, 0x7f0e034b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 430
    .local v2, "girl":Landroid/widget/Button;
    const v4, 0x7f0e034c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 432
    .local v1, "cancel":Landroid/widget/Button;
    new-instance v4, Lcom/lzx/iteam/EditCloudActivity$2;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/EditCloudActivity$2;-><init>(Lcom/lzx/iteam/EditCloudActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    new-instance v4, Lcom/lzx/iteam/EditCloudActivity$3;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/EditCloudActivity$3;-><init>(Lcom/lzx/iteam/EditCloudActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    new-instance v4, Lcom/lzx/iteam/EditCloudActivity$4;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/EditCloudActivity$4;-><init>(Lcom/lzx/iteam/EditCloudActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    new-instance v4, Landroid/widget/PopupWindow;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lzx/iteam/EditCloudActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    .line 460
    iget-object v4, p0, Lcom/lzx/iteam/EditCloudActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 461
    iget-object v4, p0, Lcom/lzx/iteam/EditCloudActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 462
    iget-object v4, p0, Lcom/lzx/iteam/EditCloudActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 463
    iget-object v4, p0, Lcom/lzx/iteam/EditCloudActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 464
    iget-object v4, p0, Lcom/lzx/iteam/EditCloudActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 465
    iget-object v4, p0, Lcom/lzx/iteam/EditCloudActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 466
    iget-object v4, p0, Lcom/lzx/iteam/EditCloudActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 467
    iget-object v4, p0, Lcom/lzx/iteam/EditCloudActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    const v5, 0x7f09000b

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 468
    iget-object v4, p0, Lcom/lzx/iteam/EditCloudActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/lzx/iteam/EditCloudActivity;->mMainView:Landroid/widget/LinearLayout;

    const/16 v6, 0x50

    invoke-virtual {v4, v5, v6, v9, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 469
    iget-object v4, p0, Lcom/lzx/iteam/EditCloudActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->update()V

    .line 471
    new-instance v4, Lcom/lzx/iteam/EditCloudActivity$5;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/EditCloudActivity$5;-><init>(Lcom/lzx/iteam/EditCloudActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 479
    return-void
.end method
