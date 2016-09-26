.class public Lcom/lzx/iteam/EditMyCardActivity;
.super Landroid/app/Activity;
.source "EditMyCardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final CAMERA_WITH_DATA:I = 0x75c

.field private static final GET_QN_TOKEN:I = 0x760

.field private static final ICON_SIZE:I = 0x1e0

.field private static final IMAGE_FILE:Ljava/lang/String;

.field private static final IMAGE_FILE_LOCATION:Ljava/lang/String;

.field private static final IMAGE_FILE_PHOTO:Ljava/lang/String;

.field private static final PHOTO_PICKED_WITH_DATA:I = 0x759

.field private static final SETTING_CARD:I = 0x75e

.field private static final SETTING_PHOTO:I = 0x75d


# instance fields
.field private final PHOTO_CROP_RESOULT:I

.field private address:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private company:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private imageBitmap:Landroid/graphics/Bitmap;

.field private imageUri:Landroid/net/Uri;

.field private isChange:Z

.field private mAddressLine:Landroid/view/View;

.field private mAvatarUri:Landroid/net/Uri;

.field private mBack:Landroid/widget/LinearLayout;

.field private mBtnAddMore:Landroid/widget/TextView;

.field private mBtnSave:Landroid/widget/TextView;

.field private mCardAddress:Landroid/widget/EditText;

.field private mCardCompany:Landroid/widget/EditText;

.field private mCardEmail:Landroid/widget/EditText;

.field private mCardMobilePhone:Landroid/widget/EditText;

.field private mCardName:Landroid/widget/EditText;

.field private mCardPhoto:Landroid/widget/ImageView;

.field private mCardPosition:Landroid/widget/EditText;

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

.field private mContext:Landroid/content/Context;

.field private mCurrentPhotoFile:Ljava/io/File;

.field private mDialog:Landroid/app/Dialog;

.field private mFlPhoto:Landroid/widget/FrameLayout;

.field private mHandler:Landroid/os/Handler;

.field private mLlNoteLayout:Landroid/widget/LinearLayout;

.field private mMainView:Landroid/widget/LinearLayout;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mRlSexLayout:Landroid/widget/RelativeLayout;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSetPhotoPop:Landroid/widget/PopupWindow;

.field private mSetSexPop:Landroid/widget/PopupWindow;

.field private mSex:Landroid/widget/TextView;

.field private mobilePhone1:Ljava/lang/String;

.field private mobilePhone2:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private position:Ljava/lang/String;

.field private sex:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
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

    sput-object v0, Lcom/lzx/iteam/EditMyCardActivity;->IMAGE_FILE:Ljava/lang/String;

    .line 73
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

    sput-object v0, Lcom/lzx/iteam/EditMyCardActivity;->IMAGE_FILE_LOCATION:Ljava/lang/String;

    .line 74
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

    sput-object v0, Lcom/lzx/iteam/EditMyCardActivity;->IMAGE_FILE_PHOTO:Ljava/lang/String;

    .line 459
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    const-string v0, "0"

    iput-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->sex:Ljava/lang/String;

    .line 93
    new-instance v0, Lcom/lzx/iteam/EditMyCardActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/EditMyCardActivity$1;-><init>(Lcom/lzx/iteam/EditMyCardActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mHandler:Landroid/os/Handler;

    .line 608
    const/16 v0, 0x457

    iput v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->PHOTO_CROP_RESOULT:I

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/EditMyCardActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/EditMyCardActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lzx/iteam/EditMyCardActivity;)Lcom/lzx/iteam/util/PreferenceUtil;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    return-object v0
.end method

.method static synthetic access$11(Lcom/lzx/iteam/EditMyCardActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12(Lcom/lzx/iteam/EditMyCardActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$13(Lcom/lzx/iteam/EditMyCardActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mCardPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/lzx/iteam/EditMyCardActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->imageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$15(Lcom/lzx/iteam/EditMyCardActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lzx/iteam/EditMyCardActivity;->avatar:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$16(Lcom/lzx/iteam/EditMyCardActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSex:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/lzx/iteam/EditMyCardActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/EditMyCardActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mobilePhone1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/EditMyCardActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mobilePhone2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/EditMyCardActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->company:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/EditMyCardActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->position:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/EditMyCardActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->email:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/EditMyCardActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->address:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lzx/iteam/EditMyCardActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lzx/iteam/EditMyCardActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->sex:Ljava/lang/String;

    return-object v0
.end method

.method private getBitmapFromUri(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    .line 592
    const/4 v0, 0x0

    .line 594
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Lcom/lzx/iteam/EditMyCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 599
    :goto_0
    return-object v2

    .line 595
    :catch_0
    move-exception v1

    .line 596
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 597
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getCropImageIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 5
    .param p0, "photoUri"    # Landroid/net/Uri;

    .prologue
    const/16 v4, 0x1e0

    const/4 v3, 0x1

    .line 465
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 466
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 469
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 470
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 471
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 472
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 473
    return-object v0
.end method

.method private getIntentData()V
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/lzx/iteam/EditMyCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 239
    .local v0, "editIntent":Landroid/content/Intent;
    const-string v1, "contact_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->mContactDataList:Ljava/util/ArrayList;

    .line 240
    return-void
.end method

.method public static getPhotoPickIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 493
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 494
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method public static getTakePickIntent(Ljava/io/File;)Landroid/content/Intent;
    .locals 3
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 434
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 435
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "output"

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 436
    return-object v0
.end method

.method private initCardData()V
    .locals 7

    .prologue
    const v6, 0x7f0a007a

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 246
    iget-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->mContactDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->mContactDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->name:Ljava/lang/String;

    .line 248
    iget-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->mCardName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/lzx/iteam/EditMyCardActivity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->mCardName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/lzx/iteam/EditMyCardActivity;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 250
    iget-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->mContactDataList:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->company:Ljava/lang/String;

    .line 251
    iget-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->mCardCompany:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/lzx/iteam/EditMyCardActivity;->company:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->mContactDataList:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->position:Ljava/lang/String;

    .line 253
    iget-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->mCardPosition:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/lzx/iteam/EditMyCardActivity;->position:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->mContactDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->mobilePhone1:Ljava/lang/String;

    .line 255
    iget-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->mCardMobilePhone:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/lzx/iteam/EditMyCardActivity;->mobilePhone1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->mContactDataList:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->email:Ljava/lang/String;

    .line 261
    iget-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->mCardEmail:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/lzx/iteam/EditMyCardActivity;->email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->mContactDataList:Ljava/util/ArrayList;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->address:Ljava/lang/String;

    .line 263
    iget-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->address:Ljava/lang/String;

    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "None"

    iget-object v2, p0, Lcom/lzx/iteam/EditMyCardActivity;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 264
    iget-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->mCardAddress:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/lzx/iteam/EditMyCardActivity;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :goto_0
    iget-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->mContactDataList:Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->avatar:Ljava/lang/String;

    .line 270
    iget-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->avatar:Ljava/lang/String;

    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "None"

    iget-object v2, p0, Lcom/lzx/iteam/EditMyCardActivity;->avatar:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    new-instance v0, Lcom/lzx/iteam/task/DownloadImageTask;

    iget-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->mCardPhoto:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/lzx/iteam/task/DownloadImageTask;-><init>(Landroid/widget/ImageView;)V

    .line 272
    .local v0, "downloadImageTask":Lcom/lzx/iteam/task/DownloadImageTask;
    new-array v1, v5, [Ljava/lang/String;

    iget-object v2, p0, Lcom/lzx/iteam/EditMyCardActivity;->avatar:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/task/DownloadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 274
    .end local v0    # "downloadImageTask":Lcom/lzx/iteam/task/DownloadImageTask;
    :cond_0
    const-string v1, "0"

    iget-object v2, p0, Lcom/lzx/iteam/EditMyCardActivity;->mContactDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 275
    iget-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSex:Landroid/widget/TextView;

    const-string v2, "\u672a\u8bbe\u7f6e"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSex:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzx/iteam/EditMyCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a007b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 286
    :cond_1
    :goto_1
    return-void

    .line 266
    :cond_2
    iget-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->mCardAddress:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 277
    :cond_3
    const-string v1, "1"

    iget-object v2, p0, Lcom/lzx/iteam/EditMyCardActivity;->mContactDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 278
    iget-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSex:Landroid/widget/TextView;

    const-string v2, "\u7537"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSex:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzx/iteam/EditMyCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 280
    :cond_4
    const-string v1, "2"

    iget-object v2, p0, Lcom/lzx/iteam/EditMyCardActivity;->mContactDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSex:Landroid/widget/TextView;

    const-string v2, "\u5973"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSex:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzx/iteam/EditMyCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method private initView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 294
    const v0, 0x7f0e03f7

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditMyCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mMainView:Landroid/widget/LinearLayout;

    .line 295
    const v0, 0x7f0e0336

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditMyCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mCardName:Landroid/widget/EditText;

    .line 296
    const v0, 0x7f0e033e

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditMyCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mCardPosition:Landroid/widget/EditText;

    .line 297
    const v0, 0x7f0e0340

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditMyCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mCardMobilePhone:Landroid/widget/EditText;

    .line 298
    const v0, 0x7f0e0339

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditMyCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSex:Landroid/widget/TextView;

    .line 299
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mCardMobilePhone:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 300
    const v0, 0x7f0e033d

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditMyCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mCardCompany:Landroid/widget/EditText;

    .line 301
    const v0, 0x7f0e0343

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditMyCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mCardEmail:Landroid/widget/EditText;

    .line 302
    const v0, 0x7f0e0344

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditMyCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mCardAddress:Landroid/widget/EditText;

    .line 303
    const v0, 0x7f0e0337

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditMyCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mRlSexLayout:Landroid/widget/RelativeLayout;

    .line 304
    const v0, 0x7f0e0346

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditMyCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mLlNoteLayout:Landroid/widget/LinearLayout;

    .line 305
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mRlSexLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    const v0, 0x7f0e03f8

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditMyCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mBack:Landroid/widget/LinearLayout;

    .line 308
    const v0, 0x7f0e03f9

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditMyCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mBtnSave:Landroid/widget/TextView;

    .line 309
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mBtnSave:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    const v0, 0x7f0e0333

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditMyCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mCardPhoto:Landroid/widget/ImageView;

    .line 312
    const v0, 0x7f0e0332

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditMyCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mFlPhoto:Landroid/widget/FrameLayout;

    .line 313
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mFlPhoto:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    const v0, 0x7f0e03fa

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditMyCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mScrollView:Landroid/widget/ScrollView;

    .line 315
    const v0, 0x7f0e0345

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditMyCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mAddressLine:Landroid/view/View;

    .line 316
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mAddressLine:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mLlNoteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 318
    return-void
.end method

.method private savaCardData()V
    .locals 15

    .prologue
    const/4 v2, 0x1

    .line 155
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mCardName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 156
    .local v12, "tName":Ljava/lang/String;
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mCardPosition:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 157
    .local v13, "tPosition":Ljava/lang/String;
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mCardMobilePhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 159
    .local v11, "tMobilePhone1":Ljava/lang/String;
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mCardEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 160
    .local v10, "tEmail":Ljava/lang/String;
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mCardCompany:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 161
    .local v9, "tCompany":Ljava/lang/String;
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mCardAddress:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 162
    .local v8, "tAddress":Ljava/lang/String;
    const-string v14, "0"

    .line 163
    .local v14, "tSex":Ljava/lang/String;
    const-string v0, "\u7537"

    iget-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSex:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 164
    const-string v14, "1"

    .line 170
    :goto_0
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->name:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iput-object v12, p0, Lcom/lzx/iteam/EditMyCardActivity;->name:Ljava/lang/String;

    .line 172
    iput-boolean v2, p0, Lcom/lzx/iteam/EditMyCardActivity;->isChange:Z

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->position:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    iput-object v13, p0, Lcom/lzx/iteam/EditMyCardActivity;->position:Ljava/lang/String;

    .line 176
    iput-boolean v2, p0, Lcom/lzx/iteam/EditMyCardActivity;->isChange:Z

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mobilePhone1:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 179
    iput-object v11, p0, Lcom/lzx/iteam/EditMyCardActivity;->mobilePhone1:Ljava/lang/String;

    .line 180
    iput-boolean v2, p0, Lcom/lzx/iteam/EditMyCardActivity;->isChange:Z

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->sex:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 187
    iput-object v14, p0, Lcom/lzx/iteam/EditMyCardActivity;->sex:Ljava/lang/String;

    .line 188
    iput-boolean v2, p0, Lcom/lzx/iteam/EditMyCardActivity;->isChange:Z

    .line 190
    :cond_3
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->email:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 191
    iput-object v10, p0, Lcom/lzx/iteam/EditMyCardActivity;->email:Ljava/lang/String;

    .line 192
    iput-boolean v2, p0, Lcom/lzx/iteam/EditMyCardActivity;->isChange:Z

    .line 194
    :cond_4
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->company:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 195
    iput-object v9, p0, Lcom/lzx/iteam/EditMyCardActivity;->company:Ljava/lang/String;

    .line 196
    iput-boolean v2, p0, Lcom/lzx/iteam/EditMyCardActivity;->isChange:Z

    .line 198
    :cond_5
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->address:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 199
    iput-object v8, p0, Lcom/lzx/iteam/EditMyCardActivity;->address:Ljava/lang/String;

    .line 200
    iput-boolean v2, p0, Lcom/lzx/iteam/EditMyCardActivity;->isChange:Z

    .line 203
    :cond_6
    iget-boolean v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->isChange:Z

    if-eqz v0, :cond_a

    .line 204
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 205
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mContext:Landroid/content/Context;

    const-string v1, "\u59d3\u540d\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 213
    :goto_1
    return-void

    .line 165
    :cond_7
    const-string v0, "\u5973"

    iget-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSex:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 166
    const-string v14, "2"

    .line 167
    goto/16 :goto_0

    .line 168
    :cond_8
    const-string v14, "0"

    goto/16 :goto_0

    .line 207
    :cond_9
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 208
    iget-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/lzx/iteam/EditMyCardActivity;->mobilePhone2:Ljava/lang/String;

    iget-object v3, p0, Lcom/lzx/iteam/EditMyCardActivity;->company:Ljava/lang/String;

    iget-object v4, p0, Lcom/lzx/iteam/EditMyCardActivity;->position:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/EditMyCardActivity;->email:Ljava/lang/String;

    iget-object v6, p0, Lcom/lzx/iteam/EditMyCardActivity;->address:Ljava/lang/String;

    iget-object v7, p0, Lcom/lzx/iteam/EditMyCardActivity;->sex:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/lzx/iteam/EditMyCardActivity;->nameMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 211
    :cond_a
    invoke-virtual {p0}, Lcom/lzx/iteam/EditMyCardActivity;->finish()V

    goto :goto_1
.end method

.method private showSetPhotoPop()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 355
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030009

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 356
    .local v3, "mainView":Landroid/view/View;
    const v4, 0x7f0e0039

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 357
    .local v2, "btnTakePhoto":Landroid/widget/Button;
    new-instance v4, Lcom/lzx/iteam/EditMyCardActivity$2;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/EditMyCardActivity$2;-><init>(Lcom/lzx/iteam/EditMyCardActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    const v4, 0x7f0e003a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 365
    .local v1, "btnCheckFromGallery":Landroid/widget/Button;
    new-instance v4, Lcom/lzx/iteam/EditMyCardActivity$3;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/EditMyCardActivity$3;-><init>(Lcom/lzx/iteam/EditMyCardActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    const v4, 0x7f0e0032

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 373
    .local v0, "btnCancle":Landroid/widget/Button;
    new-instance v4, Lcom/lzx/iteam/EditMyCardActivity$4;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/EditMyCardActivity$4;-><init>(Lcom/lzx/iteam/EditMyCardActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    new-instance v4, Landroid/widget/PopupWindow;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    .line 380
    iget-object v4, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 381
    iget-object v4, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 382
    iget-object v4, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 383
    iget-object v4, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 384
    iget-object v4, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 385
    iget-object v4, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 386
    iget-object v4, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 387
    iget-object v4, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    const v5, 0x7f09000b

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 388
    iget-object v4, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/lzx/iteam/EditMyCardActivity;->mMainView:Landroid/widget/LinearLayout;

    const/16 v6, 0x50

    invoke-virtual {v4, v5, v6, v9, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 389
    iget-object v4, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->update()V

    .line 391
    new-instance v4, Lcom/lzx/iteam/EditMyCardActivity$5;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/EditMyCardActivity$5;-><init>(Lcom/lzx/iteam/EditMyCardActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 398
    return-void
.end method


# virtual methods
.method protected doPickPhotoFromGallery()V
    .locals 3

    .prologue
    .line 482
    :try_start_0
    invoke-static {}, Lcom/lzx/iteam/EditMyCardActivity;->getPhotoPickIntent()Landroid/content/Intent;

    move-result-object v0

    .line 483
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x759

    invoke-virtual {p0, v0, v1}, Lcom/lzx/iteam/EditMyCardActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 485
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
    .line 414
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/lzx/iteam/EditMyCardActivity;->IMAGE_FILE:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    .local v1, "yunDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 416
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 418
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 419
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/lzx/iteam/EditMyCardActivity;->IMAGE_FILE_PHOTO:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/EditMyCardActivity;->mAvatarUri:Landroid/net/Uri;

    .line 420
    const-string v2, "output"

    iget-object v3, p0, Lcom/lzx/iteam/EditMyCardActivity;->mAvatarUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 423
    const/16 v2, 0x75c

    invoke-virtual {p0, v0, v2}, Lcom/lzx/iteam/EditMyCardActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "yunDir":Ljava/io/File;
    :goto_0
    return-void

    .line 425
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
    .line 498
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

    .line 505
    .local v0, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .local v2, "mList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "key"

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    new-instance v1, Lcom/lzx/iteam/net/GetQnTokenMsg;

    iget-object v3, p0, Lcom/lzx/iteam/EditMyCardActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x760

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-direct {v1, v3, p1, v0}, Lcom/lzx/iteam/net/GetQnTokenMsg;-><init>(Landroid/os/Message;[BLjava/lang/String;)V

    .line 509
    .local v1, "getQnTokenMsg":Lcom/lzx/iteam/net/GetQnTokenMsg;
    const-string v3, "/api/qn/get_us_token"

    iput-object v3, v1, Lcom/lzx/iteam/net/GetQnTokenMsg;->mApi:Ljava/lang/String;

    .line 510
    iput-object v2, v1, Lcom/lzx/iteam/net/GetQnTokenMsg;->mParams:Ljava/util/List;

    .line 511
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execUserHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 512
    return-void
.end method

.method public nameMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "landline"    # Ljava/lang/String;
    .param p3, "company"    # Ljava/lang/String;
    .param p4, "job"    # Ljava/lang/String;
    .param p5, "email"    # Ljava/lang/String;
    .param p6, "address"    # Ljava/lang/String;
    .param p7, "sex"    # Ljava/lang/String;

    .prologue
    .line 216
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "user_name"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "landline"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "company"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "job"

    invoke-direct {v2, v3, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "email"

    invoke-direct {v2, v3, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "address"

    invoke-direct {v2, v3, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sex"

    invoke-direct {v2, v3, p7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "edit_type"

    invoke-direct {v2, v3, p7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    new-instance v0, Lcom/lzx/iteam/MySettingActivity$NameMessage;

    iget-object v2, p0, Lcom/lzx/iteam/EditMyCardActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x75e

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/MySettingActivity$NameMessage;-><init>(Landroid/os/Message;)V

    .line 228
    .local v0, "message":Lcom/lzx/iteam/MySettingActivity$NameMessage;
    const-string v2, "/api/user/goon"

    iput-object v2, v0, Lcom/lzx/iteam/MySettingActivity$NameMessage;->mApi:Ljava/lang/String;

    .line 229
    iput-object v1, v0, Lcom/lzx/iteam/MySettingActivity$NameMessage;->mParams:Ljava/util/List;

    .line 230
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execUserHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 232
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 542
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 543
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 544
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 545
    sparse-switch p1, :sswitch_data_0

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 547
    :sswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/EditMyCardActivity;->startPhotoZoom(Landroid/net/Uri;)V

    goto :goto_0

    .line 558
    :sswitch_1
    sget-object v2, Lcom/lzx/iteam/EditMyCardActivity;->IMAGE_FILE_PHOTO:Ljava/lang/String;

    invoke-static {p0, v2, v3}, Lcom/lzx/iteam/util/PhotoUtil;->readBitmapFromPath(Landroid/app/Activity;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 559
    .local v1, "photoBitmap":Landroid/graphics/Bitmap;
    sget-object v2, Lcom/lzx/iteam/EditMyCardActivity;->IMAGE_FILE_PHOTO:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/PhotoUtil;->getExifOrientation(Ljava/lang/String;)I

    move-result v0

    .line 560
    .local v0, "degree":I
    if-eqz v0, :cond_2

    .line 561
    invoke-static {v1, v0}, Lcom/lzx/iteam/util/PhotoUtil;->rotaingImageView(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 562
    iget-object v2, p0, Lcom/lzx/iteam/EditMyCardActivity;->mCurrentPhotoFile:Ljava/io/File;

    if-nez v2, :cond_1

    .line 563
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/lzx/iteam/EditMyCardActivity;->IMAGE_FILE_LOCATION:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/lzx/iteam/EditMyCardActivity;->mCurrentPhotoFile:Ljava/io/File;

    .line 565
    :cond_1
    const-string v2, "avatar_test"

    const-string v3, "/Yun/Images"

    invoke-static {v2, v1, p0, v3}, Lcom/lzx/iteam/util/PhotoUtil;->saveBitmaptoSdCard(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/Activity;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/EditMyCardActivity;->mCurrentPhotoFile:Ljava/io/File;

    .line 566
    iget-object v2, p0, Lcom/lzx/iteam/EditMyCardActivity;->mCurrentPhotoFile:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/EditMyCardActivity;->startPhotoZoom(Landroid/net/Uri;)V

    goto :goto_0

    .line 568
    :cond_2
    iget-object v2, p0, Lcom/lzx/iteam/EditMyCardActivity;->mAvatarUri:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/EditMyCardActivity;->startPhotoZoom(Landroid/net/Uri;)V

    goto :goto_0

    .line 574
    .end local v0    # "degree":I
    .end local v1    # "photoBitmap":Landroid/graphics/Bitmap;
    :sswitch_2
    :try_start_0
    iget-object v2, p0, Lcom/lzx/iteam/EditMyCardActivity;->imageUri:Landroid/net/Uri;

    invoke-direct {p0, v2, p0}, Lcom/lzx/iteam/EditMyCardActivity;->getBitmapFromUri(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/EditMyCardActivity;->imageBitmap:Landroid/graphics/Bitmap;

    .line 575
    iget-object v2, p0, Lcom/lzx/iteam/EditMyCardActivity;->imageBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/lzx/iteam/util/PhotoUtil;->compressAvatarImage(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/EditMyCardActivity;->getQnToken([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 577
    :catch_0
    move-exception v2

    const-string v2, "\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u8bbe\u7f6e"

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 545
    :sswitch_data_0
    .sparse-switch
        0x457 -> :sswitch_2
        0x759 -> :sswitch_0
        0x75c -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 323
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 349
    :goto_0
    return-void

    .line 325
    :sswitch_0
    invoke-direct {p0}, Lcom/lzx/iteam/EditMyCardActivity;->savaCardData()V

    goto :goto_0

    .line 328
    :sswitch_1
    invoke-virtual {p0}, Lcom/lzx/iteam/EditMyCardActivity;->finish()V

    goto :goto_0

    .line 332
    :sswitch_2
    :try_start_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EditMyCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/lzx/iteam/EditMyCardActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_1
    invoke-direct {p0}, Lcom/lzx/iteam/EditMyCardActivity;->showSetPhotoPop()V

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 340
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_3
    :try_start_1
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EditMyCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/lzx/iteam/EditMyCardActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 344
    :goto_2
    invoke-virtual {p0}, Lcom/lzx/iteam/EditMyCardActivity;->showSetSexPop()V

    goto :goto_0

    .line 341
    :catch_1
    move-exception v0

    .line 342
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 323
    :sswitch_data_0
    .sparse-switch
        0x7f0e0332 -> :sswitch_2
        0x7f0e0337 -> :sswitch_3
        0x7f0e03f8 -> :sswitch_1
        0x7f0e03f9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    const v0, 0x7f03008e

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EditMyCardActivity;->setContentView(I)V

    .line 141
    iput-object p0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mContext:Landroid/content/Context;

    .line 142
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/util/AllDialogUtil;->waitDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mDialog:Landroid/app/Dialog;

    .line 143
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 144
    invoke-direct {p0}, Lcom/lzx/iteam/EditMyCardActivity;->initView()V

    .line 145
    invoke-direct {p0}, Lcom/lzx/iteam/EditMyCardActivity;->getIntentData()V

    .line 146
    invoke-direct {p0}, Lcom/lzx/iteam/EditMyCardActivity;->initCardData()V

    .line 147
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 649
    :try_start_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EditMyCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/lzx/iteam/EditMyCardActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setPhoto(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 6
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "file"    # [B
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 515
    const-string v0, "\u4e03\u725b--token"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const-string v0, "\u4e03\u725b--fileName"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-static {p0}, Lcom/lzx/iteam/DialerApp;->getUploadManager(Landroid/content/Context;)Lcom/qiniu/android/storage/UploadManager;

    move-result-object v0

    .line 518
    new-instance v4, Lcom/lzx/iteam/EditMyCardActivity$6;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/EditMyCardActivity$6;-><init>(Lcom/lzx/iteam/EditMyCardActivity;)V

    .line 536
    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    .line 517
    invoke-virtual/range {v0 .. v5}, Lcom/qiniu/android/storage/UploadManager;->put([BLjava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V

    .line 537
    return-void
.end method

.method public showSetSexPop()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 660
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030072

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 661
    .local v3, "mainView":Landroid/view/View;
    const v4, 0x7f0e034a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 662
    .local v0, "boy":Landroid/widget/Button;
    const v4, 0x7f0e034b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 663
    .local v2, "girl":Landroid/widget/Button;
    const v4, 0x7f0e034c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 665
    .local v1, "cancel":Landroid/widget/Button;
    new-instance v4, Lcom/lzx/iteam/EditMyCardActivity$7;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/EditMyCardActivity$7;-><init>(Lcom/lzx/iteam/EditMyCardActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 674
    new-instance v4, Lcom/lzx/iteam/EditMyCardActivity$8;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/EditMyCardActivity$8;-><init>(Lcom/lzx/iteam/EditMyCardActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 683
    new-instance v4, Lcom/lzx/iteam/EditMyCardActivity$9;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/EditMyCardActivity$9;-><init>(Lcom/lzx/iteam/EditMyCardActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 690
    new-instance v4, Landroid/widget/PopupWindow;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    .line 691
    iget-object v4, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 692
    iget-object v4, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 693
    iget-object v4, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 694
    iget-object v4, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 695
    iget-object v4, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 696
    iget-object v4, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 697
    iget-object v4, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 698
    iget-object v4, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    const v5, 0x7f09000b

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 699
    iget-object v4, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/lzx/iteam/EditMyCardActivity;->mMainView:Landroid/widget/LinearLayout;

    const/16 v6, 0x50

    invoke-virtual {v4, v5, v6, v9, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 700
    iget-object v4, p0, Lcom/lzx/iteam/EditMyCardActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->update()V

    .line 702
    new-instance v4, Lcom/lzx/iteam/EditMyCardActivity$10;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/EditMyCardActivity$10;-><init>(Lcom/lzx/iteam/EditMyCardActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 710
    return-void
.end method

.method public startPhotoZoom(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/16 v5, 0x1e0

    const/4 v4, 0x1

    .line 623
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/lzx/iteam/EditMyCardActivity;->IMAGE_FILE:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 624
    .local v1, "yunDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 625
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 627
    :cond_0
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/lzx/iteam/EditMyCardActivity;->IMAGE_FILE_LOCATION:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/EditMyCardActivity;->imageUri:Landroid/net/Uri;

    .line 629
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 630
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 631
    const-string v2, "crop"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 632
    const-string v2, "circleCrop"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    const-string v2, "aspectX"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 634
    const-string v2, "aspectY"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 635
    const-string v2, "outputX"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 636
    const-string v2, "outputY"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 637
    const-string v2, "output"

    iget-object v3, p0, Lcom/lzx/iteam/EditMyCardActivity;->imageUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 638
    const-string v2, "outputFormat"

    .line 639
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v3

    .line 638
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 640
    const-string v2, "noFaceDetection"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 641
    const-string v2, "return-data"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 642
    const/16 v2, 0x457

    invoke-virtual {p0, v0, v2}, Lcom/lzx/iteam/EditMyCardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 644
    return-void
.end method
