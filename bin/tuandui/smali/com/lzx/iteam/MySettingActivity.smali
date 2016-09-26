.class public Lcom/lzx/iteam/MySettingActivity;
.super Landroid/app/Activity;
.source "MySettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/MySettingActivity$NameCardMessage;,
        Lcom/lzx/iteam/MySettingActivity$NameMessage;,
        Lcom/lzx/iteam/MySettingActivity$PhotoMessage;,
        Lcom/lzx/iteam/MySettingActivity$SyncMessage;
    }
.end annotation


# static fields
.field private static final CAMERA_WITH_DATA:I = 0xf2c

.field private static final CROP_PHOTO:I = 0xf2e

.field private static final GET_QN_TOKEN:I = 0xf2d

.field private static final ICON_SIZE:I = 0x60

.field private static final IMAGE_FILE:Ljava/lang/String;

.field private static final IMAGE_FILE_LOCATION:Ljava/lang/String;

.field private static final IMAGE_FILE_PHOTO:Ljava/lang/String;

.field private static final MSG_GET_NAMECARD:I = 0x6fd

.field private static final PHOTO_PICKED_WITH_DATA:I = 0xf29

.field private static final SETTING_NAME:I = 0x66

.field private static final SETTING_PHOTO:I = 0x67


# instance fields
.field private final PHOTO_CROP_RESOULT:I

.field private avatar:Ljava/lang/String;

.field private imageBitmap:Landroid/graphics/Bitmap;

.field private imageUri:Landroid/net/Uri;

.field private login:Lcom/lzx/iteam/net/LocalLogin;

.field private mActivity:Lcom/lzx/iteam/MySettingActivity;

.field private mAvatarUri:Landroid/net/Uri;

.field private mCompany:Landroid/widget/EditText;

.field private mComplete:Landroid/widget/TextView;

.field private mContactCompany:Ljava/lang/String;

.field private mContactName:Ljava/lang/String;

.field private mContactOrganization:Ljava/lang/String;

.field private mContactPhoto:[B

.field private mCurrentPhotoFile:Ljava/io/File;

.field private mHandler:Landroid/os/Handler;

.field private mMainView:Landroid/widget/LinearLayout;

.field private mName:Landroid/widget/EditText;

.field private mOrganization:Landroid/widget/EditText;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mSetPhotoPop:Landroid/widget/PopupWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Yun/Images"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/MySettingActivity;->IMAGE_FILE:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Yun/Images/avatar_crop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/MySettingActivity;->IMAGE_FILE_LOCATION:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Yun/Images/avatar_test"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/MySettingActivity;->IMAGE_FILE_PHOTO:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    new-instance v0, Lcom/lzx/iteam/MySettingActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/MySettingActivity$1;-><init>(Lcom/lzx/iteam/MySettingActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/MySettingActivity;->mHandler:Landroid/os/Handler;

    .line 535
    const/16 v0, 0x457

    iput v0, p0, Lcom/lzx/iteam/MySettingActivity;->PHOTO_CROP_RESOULT:I

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/MySettingActivity;)V
    .locals 0

    .prologue
    .line 635
    invoke-direct {p0}, Lcom/lzx/iteam/MySettingActivity;->uploadNameCard()V

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/MySettingActivity;)Lcom/lzx/iteam/MySettingActivity;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lzx/iteam/MySettingActivity;->mActivity:Lcom/lzx/iteam/MySettingActivity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/MySettingActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lzx/iteam/MySettingActivity;->mPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/MySettingActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lzx/iteam/MySettingActivity;->imageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/MySettingActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/lzx/iteam/MySettingActivity;->avatar:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/lzx/iteam/MySettingActivity;)Lcom/lzx/iteam/util/PreferenceUtil;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lzx/iteam/MySettingActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/MySettingActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lzx/iteam/MySettingActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private getBitmapFromUri(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    .line 622
    const/4 v0, 0x0

    .line 624
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Lcom/lzx/iteam/MySettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 629
    :goto_0
    return-object v2

    .line 625
    :catch_0
    move-exception v1

    .line 626
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 627
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getCropImageIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 5
    .param p0, "photoUri"    # Landroid/net/Uri;

    .prologue
    const/16 v4, 0x60

    const/4 v3, 0x1

    .line 341
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 345
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 346
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 347
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 348
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 349
    return-object v0
.end method

.method public static getPhotoPickIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 369
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 370
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method public static getTakePickIntent(Ljava/io/File;)Landroid/content/Intent;
    .locals 3
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 310
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 311
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "output"

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 312
    return-object v0
.end method

.method private showSetPhotoPop()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 241
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030009

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 242
    .local v3, "mainView":Landroid/view/View;
    const v4, 0x7f0e0039

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 243
    .local v2, "btnTakePhoto":Landroid/widget/Button;
    new-instance v4, Lcom/lzx/iteam/MySettingActivity$2;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/MySettingActivity$2;-><init>(Lcom/lzx/iteam/MySettingActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    const v4, 0x7f0e003a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 251
    .local v1, "btnCheckFromGallery":Landroid/widget/Button;
    new-instance v4, Lcom/lzx/iteam/MySettingActivity$3;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/MySettingActivity$3;-><init>(Lcom/lzx/iteam/MySettingActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    const v4, 0x7f0e0032

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 259
    .local v0, "btnCancle":Landroid/widget/Button;
    new-instance v4, Lcom/lzx/iteam/MySettingActivity$4;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/MySettingActivity$4;-><init>(Lcom/lzx/iteam/MySettingActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    new-instance v4, Landroid/widget/PopupWindow;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lzx/iteam/MySettingActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    .line 266
    iget-object v4, p0, Lcom/lzx/iteam/MySettingActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 267
    iget-object v4, p0, Lcom/lzx/iteam/MySettingActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 268
    iget-object v4, p0, Lcom/lzx/iteam/MySettingActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 269
    iget-object v4, p0, Lcom/lzx/iteam/MySettingActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 270
    iget-object v4, p0, Lcom/lzx/iteam/MySettingActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 271
    iget-object v4, p0, Lcom/lzx/iteam/MySettingActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 272
    iget-object v4, p0, Lcom/lzx/iteam/MySettingActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 273
    iget-object v4, p0, Lcom/lzx/iteam/MySettingActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    const v5, 0x7f09000b

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 274
    iget-object v4, p0, Lcom/lzx/iteam/MySettingActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/lzx/iteam/MySettingActivity;->mMainView:Landroid/widget/LinearLayout;

    const/16 v6, 0x50

    invoke-virtual {v4, v5, v6, v8, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 275
    iget-object v4, p0, Lcom/lzx/iteam/MySettingActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->update()V

    .line 276
    return-void
.end method

.method private uploadNameCard()V
    .locals 5

    .prologue
    .line 637
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 638
    .local v0, "mList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    new-instance v1, Lcom/lzx/iteam/MySettingActivity$NameCardMessage;

    iget-object v2, p0, Lcom/lzx/iteam/MySettingActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6fd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/lzx/iteam/MySettingActivity$NameCardMessage;-><init>(Lcom/lzx/iteam/MySettingActivity;Landroid/os/Message;)V

    .line 641
    .local v1, "message":Lcom/lzx/iteam/MySettingActivity$NameCardMessage;
    const-string v2, "/api/user/mynamecard"

    iput-object v2, v1, Lcom/lzx/iteam/MySettingActivity$NameCardMessage;->mApi:Ljava/lang/String;

    .line 642
    iput-object v0, v1, Lcom/lzx/iteam/MySettingActivity$NameCardMessage;->mParams:Ljava/util/List;

    .line 643
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execUserHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 645
    return-void
.end method


# virtual methods
.method protected doCropPhoto(Ljava/io/File;)V
    .locals 5
    .param p1, "f"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x1

    .line 321
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 322
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 323
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 325
    const/4 v3, 0x0

    .line 321
    invoke-static {p0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 328
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/lzx/iteam/MySettingActivity;->getCropImageIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 329
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0xf2e

    invoke-virtual {p0, v0, v1}, Lcom/lzx/iteam/MySettingActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 331
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
    .line 358
    :try_start_0
    invoke-static {}, Lcom/lzx/iteam/MySettingActivity;->getPhotoPickIntent()Landroid/content/Intent;

    move-result-object v0

    .line 359
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0xf29

    invoke-virtual {p0, v0, v1}, Lcom/lzx/iteam/MySettingActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 361
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
    .line 291
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/lzx/iteam/MySettingActivity;->IMAGE_FILE:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    .local v1, "yunDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 293
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 295
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 296
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/lzx/iteam/MySettingActivity;->IMAGE_FILE_PHOTO:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/MySettingActivity;->mAvatarUri:Landroid/net/Uri;

    .line 297
    const-string v2, "output"

    iget-object v3, p0, Lcom/lzx/iteam/MySettingActivity;->mAvatarUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 299
    const/16 v2, 0xf2c

    invoke-virtual {p0, v0, v2}, Lcom/lzx/iteam/MySettingActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "yunDir":Ljava/io/File;
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v2

    const v2, 0x7f080125

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public getQnToken([B)V
    .locals 6
    .param p1, "file"    # [B

    .prologue
    .line 500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .local v2, "mList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "key"

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    new-instance v1, Lcom/lzx/iteam/net/GetQnTokenMsg;

    iget-object v3, p0, Lcom/lzx/iteam/MySettingActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xf2d

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-direct {v1, v3, p1, v0}, Lcom/lzx/iteam/net/GetQnTokenMsg;-><init>(Landroid/os/Message;[BLjava/lang/String;)V

    .line 511
    .local v1, "getQnTokenMsg":Lcom/lzx/iteam/net/GetQnTokenMsg;
    const-string v3, "/api/qn/get_us_token"

    iput-object v3, v1, Lcom/lzx/iteam/net/GetQnTokenMsg;->mApi:Ljava/lang/String;

    .line 512
    iput-object v2, v1, Lcom/lzx/iteam/net/GetQnTokenMsg;->mParams:Ljava/util/List;

    .line 513
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execUserHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 514
    return-void
.end method

.method public initProperty()V
    .locals 1

    .prologue
    .line 180
    iput-object p0, p0, Lcom/lzx/iteam/MySettingActivity;->mActivity:Lcom/lzx/iteam/MySettingActivity;

    .line 181
    invoke-static {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/MySettingActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 182
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/MySettingActivity;->login:Lcom/lzx/iteam/net/LocalLogin;

    .line 184
    return-void
.end method

.method public initView()V
    .locals 1

    .prologue
    .line 169
    const v0, 0x7f0e04e1

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/MySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/MySettingActivity;->mMainView:Landroid/widget/LinearLayout;

    .line 170
    const v0, 0x7f0e04e2

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/MySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/MySettingActivity;->mComplete:Landroid/widget/TextView;

    .line 171
    iget-object v0, p0, Lcom/lzx/iteam/MySettingActivity;->mComplete:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v0, 0x7f0e04e3

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/MySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/MySettingActivity;->mPhoto:Landroid/widget/ImageView;

    .line 173
    iget-object v0, p0, Lcom/lzx/iteam/MySettingActivity;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    const v0, 0x7f0e04e4

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/MySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/MySettingActivity;->mName:Landroid/widget/EditText;

    .line 175
    const v0, 0x7f0e04e5

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/MySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/MySettingActivity;->mCompany:Landroid/widget/EditText;

    .line 176
    const v0, 0x7f0e04e6

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/MySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/MySettingActivity;->mOrganization:Landroid/widget/EditText;

    .line 177
    return-void
.end method

.method public nameMessage()V
    .locals 5

    .prologue
    .line 378
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "user_name"

    iget-object v4, p0, Lcom/lzx/iteam/MySettingActivity;->mContactName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "company"

    iget-object v4, p0, Lcom/lzx/iteam/MySettingActivity;->mContactCompany:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "job"

    iget-object v4, p0, Lcom/lzx/iteam/MySettingActivity;->mContactOrganization:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "email"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "address"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sex"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    new-instance v0, Lcom/lzx/iteam/MySettingActivity$NameMessage;

    iget-object v2, p0, Lcom/lzx/iteam/MySettingActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/MySettingActivity$NameMessage;-><init>(Landroid/os/Message;)V

    .line 389
    .local v0, "message":Lcom/lzx/iteam/MySettingActivity$NameMessage;
    const-string v2, "/api/user/goon"

    iput-object v2, v0, Lcom/lzx/iteam/MySettingActivity$NameMessage;->mApi:Ljava/lang/String;

    .line 390
    iput-object v1, v0, Lcom/lzx/iteam/MySettingActivity$NameMessage;->mParams:Ljava/util/List;

    .line 391
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execUserHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 392
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 573
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 574
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 575
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 576
    sparse-switch p1, :sswitch_data_0

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 578
    :sswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/MySettingActivity;->startPhotoZoom(Landroid/net/Uri;)V

    goto :goto_0

    .line 589
    :sswitch_1
    sget-object v2, Lcom/lzx/iteam/MySettingActivity;->IMAGE_FILE_PHOTO:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/lzx/iteam/util/PhotoUtil;->readBitmapFromPath(Landroid/app/Activity;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 590
    .local v1, "photoBitmap":Landroid/graphics/Bitmap;
    sget-object v2, Lcom/lzx/iteam/MySettingActivity;->IMAGE_FILE_PHOTO:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/PhotoUtil;->getExifOrientation(Ljava/lang/String;)I

    move-result v0

    .line 591
    .local v0, "degree":I
    if-eqz v0, :cond_2

    .line 592
    invoke-static {v1, v0}, Lcom/lzx/iteam/util/PhotoUtil;->rotaingImageView(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 593
    iget-object v2, p0, Lcom/lzx/iteam/MySettingActivity;->mCurrentPhotoFile:Ljava/io/File;

    if-nez v2, :cond_1

    .line 594
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/lzx/iteam/MySettingActivity;->IMAGE_FILE_LOCATION:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/lzx/iteam/MySettingActivity;->mCurrentPhotoFile:Ljava/io/File;

    .line 596
    :cond_1
    const-string v2, "avatar_test"

    const-string v3, "/Yun/Images"

    invoke-static {v2, v1, p0, v3}, Lcom/lzx/iteam/util/PhotoUtil;->saveBitmaptoSdCard(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/Activity;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/MySettingActivity;->mCurrentPhotoFile:Ljava/io/File;

    .line 597
    iget-object v2, p0, Lcom/lzx/iteam/MySettingActivity;->mCurrentPhotoFile:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/MySettingActivity;->startPhotoZoom(Landroid/net/Uri;)V

    goto :goto_0

    .line 599
    :cond_2
    iget-object v2, p0, Lcom/lzx/iteam/MySettingActivity;->mAvatarUri:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/MySettingActivity;->startPhotoZoom(Landroid/net/Uri;)V

    goto :goto_0

    .line 612
    .end local v0    # "degree":I
    .end local v1    # "photoBitmap":Landroid/graphics/Bitmap;
    :sswitch_2
    iget-object v2, p0, Lcom/lzx/iteam/MySettingActivity;->imageUri:Landroid/net/Uri;

    invoke-direct {p0, v2, p0}, Lcom/lzx/iteam/MySettingActivity;->getBitmapFromUri(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/MySettingActivity;->imageBitmap:Landroid/graphics/Bitmap;

    .line 613
    iget-object v2, p0, Lcom/lzx/iteam/MySettingActivity;->imageBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/lzx/iteam/util/PhotoUtil;->compressAvatarImage(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/MySettingActivity;->getQnToken([B)V

    goto :goto_0

    .line 576
    nop

    :sswitch_data_0
    .sparse-switch
        0x457 -> :sswitch_2
        0xf29 -> :sswitch_0
        0xf2c -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 222
    :goto_0
    return-void

    .line 191
    :pswitch_0
    :try_start_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/MySettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/lzx/iteam/MySettingActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_1
    invoke-direct {p0}, Lcom/lzx/iteam/MySettingActivity;->showSetPhotoPop()V

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    iget-object v1, p0, Lcom/lzx/iteam/MySettingActivity;->imageBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/lzx/iteam/MySettingActivity;->imageBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/lzx/iteam/util/PhotoUtil;->compressImage(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/MySettingActivity;->mContactPhoto:[B

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/MySettingActivity;->mName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/MySettingActivity;->mContactName:Ljava/lang/String;

    .line 203
    iget-object v1, p0, Lcom/lzx/iteam/MySettingActivity;->mCompany:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/MySettingActivity;->mContactCompany:Ljava/lang/String;

    .line 204
    iget-object v1, p0, Lcom/lzx/iteam/MySettingActivity;->mOrganization:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/MySettingActivity;->mContactOrganization:Ljava/lang/String;

    .line 207
    iget-object v1, p0, Lcom/lzx/iteam/MySettingActivity;->mContactName:Ljava/lang/String;

    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/lzx/iteam/MySettingActivity;->mActivity:Lcom/lzx/iteam/MySettingActivity;

    const-string v2, "\u540d\u5b57\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/MySettingActivity;->mContactCompany:Ljava/lang/String;

    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/lzx/iteam/MySettingActivity;->mActivity:Lcom/lzx/iteam/MySettingActivity;

    const-string v2, "\u516c\u53f8\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 215
    :cond_2
    iget-object v1, p0, Lcom/lzx/iteam/MySettingActivity;->mContactOrganization:Ljava/lang/String;

    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 216
    iget-object v1, p0, Lcom/lzx/iteam/MySettingActivity;->mActivity:Lcom/lzx/iteam/MySettingActivity;

    const-string v2, "\u804c\u4f4d\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 219
    :cond_3
    invoke-virtual {p0}, Lcom/lzx/iteam/MySettingActivity;->nameMessage()V

    goto/16 :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e04e2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 162
    const v0, 0x7f0300bc

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/MySettingActivity;->setContentView(I)V

    .line 163
    invoke-virtual {p0}, Lcom/lzx/iteam/MySettingActivity;->initView()V

    .line 164
    invoke-virtual {p0}, Lcom/lzx/iteam/MySettingActivity;->initProperty()V

    .line 166
    return-void
.end method

.method public setPhoto(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 6
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "file"    # [B
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 516
    const-string v0, "\u4e03\u725b--token"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const-string v0, "\u4e03\u725b--fileName"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-static {p0}, Lcom/lzx/iteam/DialerApp;->getUploadManager(Landroid/content/Context;)Lcom/qiniu/android/storage/UploadManager;

    move-result-object v0

    .line 519
    new-instance v4, Lcom/lzx/iteam/MySettingActivity$5;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/MySettingActivity$5;-><init>(Lcom/lzx/iteam/MySettingActivity;)V

    .line 526
    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    .line 518
    invoke-virtual/range {v0 .. v5}, Lcom/qiniu/android/storage/UploadManager;->put([BLjava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V

    .line 527
    return-void
.end method

.method public startPhotoZoom(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/16 v5, 0x60

    const/4 v4, 0x1

    .line 549
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/lzx/iteam/MySettingActivity;->IMAGE_FILE:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 550
    .local v1, "yunDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 551
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 553
    :cond_0
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/lzx/iteam/MySettingActivity;->IMAGE_FILE_LOCATION:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/MySettingActivity;->imageUri:Landroid/net/Uri;

    .line 555
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 556
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    const-string v2, "crop"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    const-string v2, "circleCrop"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    const-string v2, "aspectX"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 560
    const-string v2, "aspectY"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 561
    const-string v2, "outputX"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 562
    const-string v2, "outputY"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 563
    const-string v2, "output"

    iget-object v3, p0, Lcom/lzx/iteam/MySettingActivity;->imageUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 564
    const-string v2, "outputFormat"

    .line 565
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v3

    .line 564
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    const-string v2, "noFaceDetection"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 567
    const-string v2, "return-data"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 568
    const/16 v2, 0x457

    invoke-virtual {p0, v0, v2}, Lcom/lzx/iteam/MySettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 569
    return-void
.end method
