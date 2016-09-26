.class public Lcom/lzx/iteam/adapter/ContactEntryAdapter;
.super Lcom/lzx/iteam/adapter/AmazingAdapter;
.source "ContactEntryAdapter.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;
    }
.end annotation


# static fields
.field protected static final TYPE_COUNT:I = 0x3

.field protected static final TYPE_FOOTER:I = 0x2

.field protected static final TYPE_HEADER:I = 0x0

.field protected static final TYPE_NORMAL:I = 0x1


# instance fields
.field private dialerapp:Lcom/lzx/iteam/DialerApp;

.field private isHaveUnClickable:Z

.field mAllContactsIdBySection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public mBackAllContactsIdBySection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mCloudUser:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCloudUserData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContactIdSelected:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContactSelected:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/ChatContact;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Lcom/lzx/iteam/CloudDialerActivity;

.field private mCurrentSearchText:Ljava/lang/String;

.field private mDisplayNameOnly:Z

.field private mIfCheckBoxShow:Z

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mInterrupted:Z

.field private mIsPhotoShow:Z

.field private mMyName:Ljava/lang/String;

.field private mNameCard:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field public mSelectedContactsIdBySection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mSkin:Lcom/lzx/iteam/bean/SkinCommonData;

.field public mTouchView:Landroid/view/View;

.field private mWxIds:Ljava/lang/String;

.field noName:Landroid/graphics/drawable/Drawable;

.field private registUsers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field selectedId:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Lcom/lzx/iteam/CloudDialerActivity;Ljava/util/List;)V
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "aContext"    # Lcom/lzx/iteam/CloudDialerActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Lcom/lzx/iteam/CloudDialerActivity;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "contactIds":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;>;"
    const/4 v3, 0x0

    .line 246
    invoke-direct {p0}, Lcom/lzx/iteam/adapter/AmazingAdapter;-><init>()V

    .line 59
    iput-boolean v3, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mDisplayNameOnly:Z

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mIsPhotoShow:Z

    .line 61
    iput-boolean v3, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mIfCheckBoxShow:Z

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContactSelected:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mNameCard:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mCloudUserData:Ljava/util/HashMap;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mCloudUser:Ljava/util/HashMap;

    .line 92
    iput-boolean v3, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mInterrupted:Z

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mTouchView:Landroid/view/View;

    .line 381
    iput-boolean v3, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->isHaveUnClickable:Z

    .line 250
    iput-object p2, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    .line 252
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 254
    iput-object p3, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mAllContactsIdBySection:Ljava/util/List;

    .line 258
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-static {v0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 262
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "display_name_only"

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mDisplayNameOnly:Z

    .line 267
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 268
    const-string v1, "displayphoto"

    .line 267
    invoke-virtual {v0, v1, p0}, Lcom/lzx/iteam/util/PreferenceUtil;->registerOnSharedPreferenceChangeListener(Ljava/lang/String;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 269
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 270
    const-string v1, "name_sort"

    .line 269
    invoke-virtual {v0, v1, p0}, Lcom/lzx/iteam/util/PreferenceUtil;->registerOnSharedPreferenceChangeListener(Ljava/lang/String;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 271
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 272
    const-string v1, "display_name_only"

    .line 271
    invoke-virtual {v0, v1, p0}, Lcom/lzx/iteam/util/PreferenceUtil;->registerOnSharedPreferenceChangeListener(Ljava/lang/String;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 277
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "contact_name_card"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/PreferenceUtil;->getCloudContact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mNameCard:Ljava/util/ArrayList;

    .line 278
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mNameCard:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mMyName:Ljava/lang/String;

    .line 280
    return-void
.end method

.method static synthetic access$2(Lcom/lzx/iteam/adapter/ContactEntryAdapter;)Lcom/lzx/iteam/CloudDialerActivity;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/adapter/ContactEntryAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mMyName:Ljava/lang/String;

    return-object v0
.end method

.method private compressIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .param p2, "statusBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "scale"    # F

    .prologue
    .line 1148
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1149
    .local v3, "p":Landroid/graphics/Paint;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 1150
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1149
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1152
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 1153
    .local v2, "m":Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1154
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {v1, p1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1155
    invoke-virtual {v2, p3, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1156
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p3

    sub-float/2addr v4, v5

    .line 1157
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p3

    sub-float/2addr v5, v6

    .line 1156
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1158
    invoke-virtual {v1, p2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1159
    return-object v0
.end method

.method private enterDisplayCommunication(Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;)V
    .locals 3
    .param p1, "holder"    # Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;

    .prologue
    .line 1484
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    const-class v2, Lcom/lzx/iteam/ContactDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1485
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lzx.iteam.ACTION_CONTACT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1486
    const-string v1, "ContactID"

    iget-object v2, p1, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->contactId:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1487
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    .line 1488
    const/16 v2, 0x15

    .line 1487
    invoke-virtual {v1, v0, v2}, Lcom/lzx/iteam/CloudDialerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1489
    return-void
.end method

.method private getAllContactsIdSize()I
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mAllContactsIdBySection:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1210
    const/4 v0, 0x0

    .line 1217
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mAllContactsIdBySection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method private getNoNameDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->noName:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/CloudDialerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->noName:Landroid/graphics/drawable/Drawable;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->noName:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private updateContactStatus(Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;)V
    .locals 4
    .param p1, "holder"    # Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;

    .prologue
    .line 1568
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mCloudUserData:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->contactId:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1569
    .local v0, "status":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1570
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mCloudUserData:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->contactId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/lzx/iteam/util/AllDialogUtil;->setReaded(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v2, "contact_id_2_dist_status"

    .line 1572
    iget-object v3, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mCloudUserData:Ljava/util/HashMap;

    .line 1571
    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->saveCloudContact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1573
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->notifyDataSetChanged()V

    .line 1575
    :cond_0
    return-void
.end method


# virtual methods
.method protected bindSectionHeader(Landroid/view/View;IZ)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "displaySectionHeader"    # Z

    .prologue
    const/16 v3, 0x8

    const v2, 0x7f0e01b6

    .line 446
    if-eqz p1, :cond_0

    .line 447
    if-eqz p3, :cond_1

    .line 448
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 449
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 450
    .local v0, "lSectionTitle":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->getSections()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->getSectionForPosition(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    .end local v0    # "lSectionTitle":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p2, v1, :cond_0

    .line 454
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public changeContent(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "contactIds":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;>;"
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mAllContactsIdBySection:Ljava/util/List;

    .line 284
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->notifyDataSetChanged()V

    .line 285
    return-void
.end method

.method public changeSelectedContent()V
    .locals 3

    .prologue
    .line 291
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mBackAllContactsIdBySection:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 293
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mBackAllContactsIdBySection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 294
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mBackAllContactsIdBySection:Ljava/util/List;

    iget-object v2, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mAllContactsIdBySection:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 300
    :goto_0
    new-instance v0, Landroid/util/Pair;

    const-string v1, "\u5e38\u7528"

    iget-object v2, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 301
    .local v0, "pair":Landroid/util/Pair;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mSelectedContactsIdBySection:Ljava/util/List;

    .line 302
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mSelectedContactsIdBySection:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mSelectedContactsIdBySection:Ljava/util/List;

    iput-object v1, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mAllContactsIdBySection:Ljava/util/List;

    .line 304
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->notifyDataSetChanged()V

    .line 306
    .end local v0    # "pair":Landroid/util/Pair;
    :cond_0
    return-void

    .line 296
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mBackAllContactsIdBySection:Ljava/util/List;

    .line 297
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mBackAllContactsIdBySection:Ljava/util/List;

    iget-object v2, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mAllContactsIdBySection:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public changeToAllContent()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mBackAllContactsIdBySection:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mAllContactsIdBySection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 315
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mBackAllContactsIdBySection:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mAllContactsIdBySection:Ljava/util/List;

    iget-object v1, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mBackAllContactsIdBySection:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->notifyDataSetChanged()V

    .line 353
    :cond_1
    return-void
.end method

.method public clearSelected()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 187
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContactSelected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 189
    return-void
.end method

.method public configurePinnedHeader(Landroid/view/View;II)V
    .locals 3
    .param p1, "header"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "alpha"    # I

    .prologue
    .line 1164
    const v2, 0x7f0e046e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1166
    .local v0, "lSectionHeader":Landroid/widget/TextView;
    invoke-virtual {p0, p2}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->getSectionForPosition(I)I

    move-result v1

    .line 1167
    .local v1, "section":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1168
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->getSections()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1172
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 1695
    return-void
.end method

.method public getAmazingView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 82
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 492
    invoke-virtual/range {p0 .. p1}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->getItem(I)Ljava/lang/Long;

    move-result-object v16

    .line 493
    .local v16, "contactId":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v4, "wx_ids_set"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mWxIds:Ljava/lang/String;

    .line 494
    const/16 v34, 0x0

    .line 495
    .local v34, "holder":Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;
    if-eqz v16, :cond_3

    .line 496
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    instance-of v2, v0, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 497
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0300e0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 499
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v34

    .end local v34    # "holder":Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;
    check-cast v34, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;

    .line 500
    .restart local v34    # "holder":Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;
    if-nez v34, :cond_2

    .line 501
    new-instance v34, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;

    .end local v34    # "holder":Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;
    invoke-direct/range {v34 .. v34}, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;-><init>()V

    .line 504
    .restart local v34    # "holder":Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;
    :cond_2
    const v2, 0x7f0e01b2

    .line 503
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v34

    iput-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->contactDisturbStatus:Landroid/widget/ImageView;

    .line 505
    const v2, 0x7f0e01b8

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v34

    iput-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->nameTextView:Landroid/widget/TextView;

    .line 506
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->nameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->nameColor:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 507
    const v2, 0x7f0e01ba

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v34

    iput-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->timesContactedView:Landroid/widget/TextView;

    .line 508
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->timesContactedView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->phoneColor:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 509
    const v2, 0x7f0e01bd

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v34

    iput-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->numberTextView:Landroid/widget/TextView;

    .line 510
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->numberTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->phoneColor:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 511
    const v2, 0x7f0e01bc

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v34

    iput-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->orgTextView:Landroid/widget/TextView;

    .line 512
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->orgTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->jobTitleColor:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 513
    const v2, 0x7f0e01b4

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/widget/RoundImageView;

    move-object/from16 v0, v34

    iput-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->quickContact:Lcom/lzx/iteam/widget/RoundImageView;

    .line 514
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->quickContact:Lcom/lzx/iteam/widget/RoundImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v4, v5}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Lcom/lzx/iteam/widget/RoundImageView;->setRectAdius(F)V

    .line 515
    const v2, 0x7f0e01b3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    move-object/from16 v0, v34

    iput-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->checkBox:Landroid/widget/CheckBox;

    .line 518
    const v2, 0x7f0e01b9

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v34

    iput-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->inviteImg:Landroid/widget/ImageView;

    .line 560
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mInterrupted:Z

    if-eqz v2, :cond_6

    move-object/from16 v25, p2

    .line 1143
    :goto_0
    return-object v25

    .line 520
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0300df

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v25

    .line 521
    .local v25, "footerView":Landroid/view/View;
    const v2, 0x7f0e05cc

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 522
    .local v14, "body":Landroid/widget/LinearLayout;
    const v2, 0x7f0e05d0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/LinearLayout;

    .line 523
    .local v41, "mNull":Landroid/widget/LinearLayout;
    const v2, 0x7f0e05ce

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v74

    check-cast v74, Landroid/widget/TextView;

    .line 524
    .local v74, "text":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->getCount()I

    move-result v2

    add-int/lit8 v42, v2, -0x1

    .line 526
    .local v42, "match":I
    if-nez v42, :cond_4

    .line 529
    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 530
    const/4 v2, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 537
    :goto_1
    new-instance v70, Ljava/lang/StringBuffer;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuffer;-><init>()V

    .line 538
    .local v70, "sb":Ljava/lang/StringBuffer;
    move-object/from16 v0, v70

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget v4, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->ALL_CONTACTS_NUMBER:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    const v4, 0x7f08006b

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Lcom/lzx/iteam/CloudDialerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 540
    .local v24, "footerText":Ljava/lang/String;
    move-object/from16 v0, v74

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->jobTitleColor:I

    move-object/from16 v0, v74

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 543
    const v2, 0x7f0e05cf

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v74

    .end local v74    # "text":Landroid/widget/TextView;
    check-cast v74, Landroid/widget/TextView;

    .line 545
    .restart local v74    # "text":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mCurrentSearchText:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    const v4, 0x7f08006c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mCurrentSearchText:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Lcom/lzx/iteam/CloudDialerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 550
    :goto_2
    move-object/from16 v0, v74

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->phoneColor:I

    move-object/from16 v0, v74

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 553
    const v2, 0x7f0e05cd

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/TextView;

    .line 554
    .local v39, "line":Landroid/widget/TextView;
    const-string v2, "_____________________"

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->nameColor:I

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 533
    .end local v24    # "footerText":Ljava/lang/String;
    .end local v39    # "line":Landroid/widget/TextView;
    .end local v70    # "sb":Ljava/lang/StringBuffer;
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 534
    const/16 v2, 0x8

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 548
    .restart local v24    # "footerText":Ljava/lang/String;
    .restart local v70    # "sb":Ljava/lang/StringBuffer;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    const v4, 0x7f08006c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, ""

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Lcom/lzx/iteam/CloudDialerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    goto :goto_2

    .line 564
    .end local v14    # "body":Landroid/widget/LinearLayout;
    .end local v24    # "footerText":Ljava/lang/String;
    .end local v25    # "footerView":Landroid/view/View;
    .end local v41    # "mNull":Landroid/widget/LinearLayout;
    .end local v42    # "match":I
    .end local v70    # "sb":Ljava/lang/StringBuffer;
    .end local v74    # "text":Landroid/widget/TextView;
    :cond_6
    const/16 v48, 0x0

    .line 565
    .local v48, "nameValue":Ljava/lang/String;
    const-wide/16 v64, 0x0

    .line 566
    .local v64, "photoId":J
    move-object/from16 v0, v16

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->contactId:Ljava/lang/Long;

    .line 567
    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 568
    const-string v2, "WeiXin"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "value: mWxIds  = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mWxIds:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/16 v54, 0x0

    .line 582
    .local v54, "number":Ljava/lang/StringBuilder;
    const/16 v59, 0x0

    .line 583
    .local v59, "orgnization":Ljava/lang/StringBuilder;
    const/16 v32, 0x0

    .line 584
    .local v32, "groupString":Ljava/lang/StringBuilder;
    const/16 v21, 0x0

    .line 585
    .local v21, "emailString":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 586
    .local v8, "area":Ljava/lang/StringBuilder;
    const/16 v51, 0x0

    .line 589
    .local v51, "noteStr":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->getPerson(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v60

    .line 591
    .local v60, "person":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    const/4 v10, 0x0

    .line 592
    .local v10, "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-static {v2}, Lcom/lzx/iteam/util/PhoneNumberArea;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PhoneNumberArea;

    move-result-object v63

    .line 594
    .local v63, "phoneNumberArea":Lcom/lzx/iteam/util/PhoneNumberArea;
    if-nez v60, :cond_19

    .line 597
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mInterrupted:Z

    if-eqz v2, :cond_7

    move-object/from16 v25, p2

    .line 598
    goto/16 :goto_0

    .line 601
    :cond_7
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    .line 602
    .local v17, "contactUri":Landroid/net/Uri;
    const-string v18, "data"

    .line 603
    .local v18, "dataDir":Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 604
    .local v3, "methodUri":Landroid/net/Uri;
    const/4 v15, 0x0

    .line 606
    .local v15, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v2}, Lcom/lzx/iteam/CloudDialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 607
    sget-object v4, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->DATA_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 606
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 613
    :cond_8
    :goto_3
    if-eqz v15, :cond_a

    move-object v11, v10

    .end local v10    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v11, "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v52, v51

    .end local v51    # "noteStr":Ljava/lang/StringBuilder;
    .local v52, "noteStr":Ljava/lang/StringBuilder;
    move-object/from16 v22, v21

    .end local v21    # "emailString":Ljava/lang/StringBuilder;
    .local v22, "emailString":Ljava/lang/StringBuilder;
    move-object/from16 v33, v32

    .end local v32    # "groupString":Ljava/lang/StringBuilder;
    .local v33, "groupString":Ljava/lang/StringBuilder;
    move-object/from16 v55, v54

    .line 617
    .end local v54    # "number":Ljava/lang/StringBuilder;
    .local v55, "number":Ljava/lang/StringBuilder;
    :cond_9
    :goto_4
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_10

    .line 697
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    move-object v10, v11

    .end local v11    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v51, v52

    .end local v52    # "noteStr":Ljava/lang/StringBuilder;
    .restart local v51    # "noteStr":Ljava/lang/StringBuilder;
    move-object/from16 v21, v22

    .end local v22    # "emailString":Ljava/lang/StringBuilder;
    .restart local v21    # "emailString":Ljava/lang/StringBuilder;
    move-object/from16 v32, v33

    .end local v33    # "groupString":Ljava/lang/StringBuilder;
    .restart local v32    # "groupString":Ljava/lang/StringBuilder;
    move-object/from16 v54, v55

    .line 704
    .end local v55    # "number":Ljava/lang/StringBuilder;
    .restart local v54    # "number":Ljava/lang/StringBuilder;
    :cond_a
    :goto_5
    if-eqz v10, :cond_c

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 705
    if-nez v8, :cond_b

    .line 706
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8    # "area":Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 708
    .restart local v8    # "area":Ljava/lang/StringBuilder;
    :cond_b
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_18

    .line 712
    :cond_c
    if-eqz v8, :cond_e

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_e

    .line 713
    if-nez v32, :cond_d

    .line 714
    new-instance v32, Ljava/lang/StringBuilder;

    .end local v32    # "groupString":Ljava/lang/StringBuilder;
    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    .line 716
    .restart local v32    # "groupString":Ljava/lang/StringBuilder;
    :cond_d
    const/4 v2, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    :cond_e
    if-eqz v51, :cond_f

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_f

    .line 720
    move-object/from16 v0, v32

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 833
    .end local v3    # "methodUri":Landroid/net/Uri;
    .end local v15    # "c":Landroid/database/Cursor;
    .end local v17    # "contactUri":Landroid/net/Uri;
    .end local v18    # "dataDir":Ljava/lang/String;
    :cond_f
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mInterrupted:Z

    if-eqz v2, :cond_32

    move-object/from16 v25, p2

    .line 835
    goto/16 :goto_0

    .line 609
    .restart local v3    # "methodUri":Landroid/net/Uri;
    .restart local v15    # "c":Landroid/database/Cursor;
    .restart local v17    # "contactUri":Landroid/net/Uri;
    .restart local v18    # "dataDir":Ljava/lang/String;
    :catch_0
    move-exception v2

    if-eqz v15, :cond_8

    .line 610
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 618
    .end local v10    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "emailString":Ljava/lang/StringBuilder;
    .end local v32    # "groupString":Ljava/lang/StringBuilder;
    .end local v51    # "noteStr":Ljava/lang/StringBuilder;
    .end local v54    # "number":Ljava/lang/StringBuilder;
    .restart local v11    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "emailString":Ljava/lang/StringBuilder;
    .restart local v33    # "groupString":Ljava/lang/StringBuilder;
    .restart local v52    # "noteStr":Ljava/lang/StringBuilder;
    .restart local v55    # "number":Ljava/lang/StringBuilder;
    :cond_10
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mInterrupted:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_11

    .line 697
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    move-object/from16 v25, p2

    .line 619
    goto/16 :goto_0

    .line 621
    :cond_11
    :try_start_3
    const-string v2, "mimetype"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v45

    .line 623
    .local v45, "mime":Ljava/lang/String;
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v45

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 624
    const-string v2, "data1"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v61

    .line 625
    .local v61, "phoneNumber":Ljava/lang/String;
    invoke-static/range {v61 .. v61}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 626
    const/4 v2, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, v61

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PhoneNumberArea;->getArea(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 627
    .local v9, "areaElement":Ljava/lang/String;
    invoke-static {v9}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 628
    if-nez v11, :cond_5b

    .line 629
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 631
    .end local v11    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_8
    :try_start_4
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 632
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    :cond_12
    :goto_9
    if-nez v55, :cond_5a

    .line 636
    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 638
    .end local v55    # "number":Ljava/lang/StringBuilder;
    .restart local v54    # "number":Ljava/lang/StringBuilder;
    :goto_a
    :try_start_5
    invoke-static/range {v61 .. v61}, Lcom/lzx/iteam/util/PhoneNumberArea;->formatPhoneNumDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v54

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    const-string v2, "\n"

    move-object/from16 v0, v54

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v11, v10

    .end local v10    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v55, v54

    .line 647
    .end local v54    # "number":Ljava/lang/StringBuilder;
    .restart local v55    # "number":Ljava/lang/StringBuilder;
    goto/16 :goto_4

    .end local v9    # "areaElement":Ljava/lang/String;
    .end local v61    # "phoneNumber":Ljava/lang/String;
    :cond_13
    :try_start_6
    const-string v2, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v45

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 649
    const-string v2, "data1"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 651
    .local v28, "groupId":Ljava/lang/String;
    sget-object v40, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mGroupList:Ljava/util/HashMap;

    .line 652
    .local v40, "mGroupList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;>;"
    if-eqz v40, :cond_9

    .line 653
    move-object/from16 v0, v40

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;

    .line 654
    .local v26, "group":Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;
    if-eqz v26, :cond_9

    .line 655
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;->mGroupTitle:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 656
    .local v30, "groupName":Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 657
    if-nez v33, :cond_59

    .line 658
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 660
    .end local v33    # "groupString":Ljava/lang/StringBuilder;
    .restart local v32    # "groupString":Ljava/lang/StringBuilder;
    :goto_b
    :try_start_7
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    const-string v2, ","

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object/from16 v33, v32

    .line 665
    .end local v32    # "groupString":Ljava/lang/StringBuilder;
    .restart local v33    # "groupString":Ljava/lang/StringBuilder;
    goto/16 :goto_4

    .end local v26    # "group":Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;
    .end local v28    # "groupId":Ljava/lang/String;
    .end local v30    # "groupName":Ljava/lang/String;
    .end local v40    # "mGroupList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;>;"
    :cond_14
    :try_start_8
    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v45

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 668
    const-string v2, "data1"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 667
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 669
    .local v20, "email":Ljava/lang/String;
    if-nez v22, :cond_58

    .line 670
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 672
    .end local v22    # "emailString":Ljava/lang/StringBuilder;
    .restart local v21    # "emailString":Ljava/lang/StringBuilder;
    :goto_c
    :try_start_9
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    const-string v2, ","

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object/from16 v22, v21

    .line 675
    .end local v21    # "emailString":Ljava/lang/StringBuilder;
    .restart local v22    # "emailString":Ljava/lang/StringBuilder;
    goto/16 :goto_4

    .end local v20    # "email":Ljava/lang/String;
    :cond_15
    :try_start_a
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, v45

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 677
    const-string v2, "data1"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 676
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 678
    goto/16 :goto_4

    :cond_16
    const-string v2, "data1"

    move-object/from16 v0, v45

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 680
    const-string v2, "data1"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 679
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v50

    .line 681
    .local v50, "note":Ljava/lang/String;
    if-nez v52, :cond_57

    .line 682
    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 684
    .end local v52    # "noteStr":Ljava/lang/StringBuilder;
    .restart local v51    # "noteStr":Ljava/lang/StringBuilder;
    :goto_d
    :try_start_b
    move-object/from16 v0, v51

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-object/from16 v52, v51

    .line 685
    .end local v51    # "noteStr":Ljava/lang/StringBuilder;
    .restart local v52    # "noteStr":Ljava/lang/StringBuilder;
    goto/16 :goto_4

    .end local v50    # "note":Ljava/lang/String;
    :cond_17
    :try_start_c
    const-string v2, "vnd.android.cursor.item/vnd.com.tencent.mm.chatting.profile"

    move-object/from16 v0, v45

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 686
    const-string v2, "contact_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 687
    const-string v2, "data2"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v79

    .line 688
    .local v79, "wx_tag":Ljava/lang/String;
    const-string v2, "data3"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v80

    .line 689
    .local v80, "wx_type":Ljava/lang/String;
    const-string v2, "\u5fae\u4fe1"

    move-object/from16 v0, v79

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "\u804a\u5929"

    move-object/from16 v0, v80

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v2

    if-eqz v2, :cond_9

    goto/16 :goto_4

    .line 694
    .end local v45    # "mime":Ljava/lang/String;
    .end local v79    # "wx_tag":Ljava/lang/String;
    .end local v80    # "wx_type":Ljava/lang/String;
    :catch_1
    move-exception v19

    move-object v10, v11

    .end local v11    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v51, v52

    .end local v52    # "noteStr":Ljava/lang/StringBuilder;
    .restart local v51    # "noteStr":Ljava/lang/StringBuilder;
    move-object/from16 v21, v22

    .end local v22    # "emailString":Ljava/lang/StringBuilder;
    .restart local v21    # "emailString":Ljava/lang/StringBuilder;
    move-object/from16 v32, v33

    .end local v33    # "groupString":Ljava/lang/StringBuilder;
    .restart local v32    # "groupString":Ljava/lang/StringBuilder;
    move-object/from16 v54, v55

    .line 695
    .end local v55    # "number":Ljava/lang/StringBuilder;
    .local v19, "e":Ljava/lang/Exception;
    .restart local v54    # "number":Ljava/lang/StringBuilder;
    :goto_e
    :try_start_d
    sget-object v2, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->TAG:Ljava/lang/String;

    const-string v4, "getAmazingView"

    move-object/from16 v0, v19

    invoke-static {v2, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 697
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 696
    .end local v10    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "e":Ljava/lang/Exception;
    .end local v21    # "emailString":Ljava/lang/StringBuilder;
    .end local v32    # "groupString":Ljava/lang/StringBuilder;
    .end local v51    # "noteStr":Ljava/lang/StringBuilder;
    .end local v54    # "number":Ljava/lang/StringBuilder;
    .restart local v11    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "emailString":Ljava/lang/StringBuilder;
    .restart local v33    # "groupString":Ljava/lang/StringBuilder;
    .restart local v52    # "noteStr":Ljava/lang/StringBuilder;
    .restart local v55    # "number":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v2

    move-object v10, v11

    .end local v11    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v51, v52

    .end local v52    # "noteStr":Ljava/lang/StringBuilder;
    .restart local v51    # "noteStr":Ljava/lang/StringBuilder;
    move-object/from16 v21, v22

    .end local v22    # "emailString":Ljava/lang/StringBuilder;
    .restart local v21    # "emailString":Ljava/lang/StringBuilder;
    move-object/from16 v32, v33

    .end local v33    # "groupString":Ljava/lang/StringBuilder;
    .restart local v32    # "groupString":Ljava/lang/StringBuilder;
    move-object/from16 v54, v55

    .line 697
    .end local v55    # "number":Ljava/lang/StringBuilder;
    .restart local v54    # "number":Ljava/lang/StringBuilder;
    :goto_f
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 698
    throw v2

    .line 708
    :cond_18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Ljava/lang/String;

    .line 709
    .local v72, "str":Ljava/lang/String;
    move-object/from16 v0, v72

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 734
    .end local v3    # "methodUri":Landroid/net/Uri;
    .end local v15    # "c":Landroid/database/Cursor;
    .end local v17    # "contactUri":Landroid/net/Uri;
    .end local v18    # "dataDir":Ljava/lang/String;
    .end local v72    # "str":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mInterrupted:Z

    if-eqz v2, :cond_1a

    move-object/from16 v25, p2

    .line 735
    goto/16 :goto_0

    .line 737
    :cond_1a
    invoke-virtual/range {v60 .. v60}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getPhoneList()Ljava/util/List;

    move-result-object v62

    .line 738
    .local v62, "phoneNumber":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;>;"
    if-eqz v62, :cond_1b

    invoke-interface/range {v62 .. v62}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1b

    .line 739
    const/16 v35, 0x0

    .local v35, "i":I
    :goto_10
    invoke-interface/range {v62 .. v62}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v35

    if-lt v0, v2, :cond_29

    .line 762
    .end local v35    # "i":I
    :cond_1b
    invoke-virtual/range {v60 .. v60}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getGroupIdSetList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 763
    invoke-virtual/range {v60 .. v60}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getGroupIdSetList()Ljava/util/List;

    move-result-object v27

    .line 764
    .local v27, "groupIdSet":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v36

    .line 765
    .local v36, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;>;"
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    .line 766
    .local v31, "groupNameAll":Ljava/lang/StringBuilder;
    :cond_1c
    :goto_11
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 782
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1e

    .line 783
    if-nez v32, :cond_1d

    .line 784
    new-instance v32, Ljava/lang/StringBuilder;

    .end local v32    # "groupString":Ljava/lang/StringBuilder;
    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    .line 786
    .restart local v32    # "groupString":Ljava/lang/StringBuilder;
    :cond_1d
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    .end local v27    # "groupIdSet":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;>;"
    .end local v31    # "groupNameAll":Ljava/lang/StringBuilder;
    .end local v36    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;>;"
    :cond_1e
    invoke-virtual/range {v60 .. v60}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getOrganization()Ljava/lang/String;

    move-result-object v58

    .line 791
    .local v58, "orga":Ljava/lang/String;
    invoke-static/range {v58 .. v58}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 792
    if-nez v59, :cond_1f

    .line 793
    new-instance v59, Ljava/lang/StringBuilder;

    .end local v59    # "orgnization":Ljava/lang/StringBuilder;
    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    .line 795
    .restart local v59    # "orgnization":Ljava/lang/StringBuilder;
    :cond_1f
    move-object/from16 v0, v59

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    :cond_20
    invoke-virtual/range {v60 .. v60}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getEmail()Ljava/lang/String;

    move-result-object v20

    .line 799
    .restart local v20    # "email":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 800
    if-nez v21, :cond_21

    .line 801
    new-instance v21, Ljava/lang/StringBuilder;

    .end local v21    # "emailString":Ljava/lang/StringBuilder;
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 803
    .restart local v21    # "emailString":Ljava/lang/StringBuilder;
    :cond_21
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    :cond_22
    invoke-virtual/range {v60 .. v60}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getDisplayName()Ljava/lang/String;

    move-result-object v48

    .line 807
    invoke-virtual/range {v60 .. v60}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getPhotoId()J

    move-result-wide v64

    .line 809
    if-eqz v10, :cond_24

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_24

    .line 811
    if-nez v8, :cond_23

    .line 812
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8    # "area":Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 815
    .restart local v8    # "area":Ljava/lang/StringBuilder;
    :cond_23
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_31

    .line 821
    :cond_24
    if-eqz v8, :cond_26

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_26

    .line 822
    if-nez v32, :cond_25

    new-instance v32, Ljava/lang/StringBuilder;

    .end local v32    # "groupString":Ljava/lang/StringBuilder;
    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    .line 823
    .restart local v32    # "groupString":Ljava/lang/StringBuilder;
    :cond_25
    const/4 v2, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    :cond_26
    invoke-virtual/range {v60 .. v60}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->hasNote()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 827
    if-nez v51, :cond_27

    new-instance v51, Ljava/lang/StringBuilder;

    .end local v51    # "noteStr":Ljava/lang/StringBuilder;
    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    .line 828
    .restart local v51    # "noteStr":Ljava/lang/StringBuilder;
    :cond_27
    if-nez v32, :cond_28

    new-instance v32, Ljava/lang/StringBuilder;

    .end local v32    # "groupString":Ljava/lang/StringBuilder;
    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    .line 829
    .restart local v32    # "groupString":Ljava/lang/StringBuilder;
    :cond_28
    invoke-virtual/range {v60 .. v60}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getNote()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 740
    .end local v20    # "email":Ljava/lang/String;
    .end local v58    # "orga":Ljava/lang/String;
    .restart local v35    # "i":I
    :cond_29
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mInterrupted:Z

    if-eqz v2, :cond_2a

    move-object/from16 v25, p2

    .line 741
    goto/16 :goto_0

    .line 743
    :cond_2a
    move-object/from16 v0, v62

    move/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    invoke-virtual {v2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->getNumber()Ljava/lang/String;

    move-result-object v56

    .line 744
    .local v56, "numberElement":Ljava/lang/String;
    if-nez v54, :cond_2b

    .line 745
    new-instance v54, Ljava/lang/StringBuilder;

    .end local v54    # "number":Ljava/lang/StringBuilder;
    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    .line 747
    .restart local v54    # "number":Ljava/lang/StringBuilder;
    :cond_2b
    invoke-static/range {v56 .. v56}, Lcom/lzx/iteam/util/PhoneNumberArea;->formatPhoneNumDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v54

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    const-string v2, "\n"

    move-object/from16 v0, v54

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    const/4 v2, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PhoneNumberArea;->getArea(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 751
    .restart local v9    # "areaElement":Ljava/lang/String;
    invoke-static {v9}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 752
    if-nez v10, :cond_2c

    .line 753
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 755
    .restart local v10    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2c
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 756
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    :cond_2d
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_10

    .line 768
    .end local v9    # "areaElement":Ljava/lang/String;
    .end local v35    # "i":I
    .end local v56    # "numberElement":Ljava/lang/String;
    .restart local v27    # "groupIdSet":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;>;"
    .restart local v31    # "groupNameAll":Ljava/lang/StringBuilder;
    .restart local v36    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;>;"
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mInterrupted:Z

    if-eqz v2, :cond_2f

    move-object/from16 v25, p2

    .line 769
    goto/16 :goto_0

    .line 772
    :cond_2f
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    invoke-virtual {v2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->getGroupId()J

    move-result-wide v28

    .line 773
    .local v28, "groupId":J
    sget-object v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mGroupList:Ljava/util/HashMap;

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;

    .line 774
    .restart local v26    # "group":Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;
    const/16 v30, 0x0

    .line 775
    .restart local v30    # "groupName":Ljava/lang/String;
    if-eqz v26, :cond_30

    .line 776
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;->mGroupTitle:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 778
    :cond_30
    invoke-static/range {v30 .. v30}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 779
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 815
    .end local v26    # "group":Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;
    .end local v27    # "groupIdSet":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;>;"
    .end local v28    # "groupId":J
    .end local v30    # "groupName":Ljava/lang/String;
    .end local v31    # "groupNameAll":Ljava/lang/StringBuilder;
    .end local v36    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;>;"
    .restart local v20    # "email":Ljava/lang/String;
    .restart local v58    # "orga":Ljava/lang/String;
    :cond_31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Ljava/lang/String;

    .line 816
    .restart local v72    # "str":Ljava/lang/String;
    move-object/from16 v0, v72

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    .line 840
    .end local v20    # "email":Ljava/lang/String;
    .end local v58    # "orga":Ljava/lang/String;
    .end local v62    # "phoneNumber":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;>;"
    .end local v72    # "str":Ljava/lang/String;
    :cond_32
    const/16 v75, 0x0

    .line 841
    .local v75, "timesContacted":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    if-nez v2, :cond_33

    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v2}, Lcom/lzx/iteam/CloudDialerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    .line 844
    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    invoke-virtual {v2}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getContactInfo()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;

    .line 845
    .local v44, "memoryNode":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;
    if-nez v44, :cond_3a

    .line 847
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v2}, Lcom/lzx/iteam/CloudDialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 846
    invoke-static {v4, v5, v2}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getContactedNumber(JLandroid/content/ContentResolver;)I

    move-result v75

    .line 852
    :goto_13
    if-lez v75, :cond_3b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    iget-boolean v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->mShowTimesContacted:Z

    if-eqz v2, :cond_3b

    .line 853
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->timesContactedView:Landroid/widget/TextView;

    .line 854
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    const v5, 0x7f080066

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v75 .. v75}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v81

    aput-object v81, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/lzx/iteam/CloudDialerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 853
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 856
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->timesContactedView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 862
    :goto_14
    invoke-static/range {v48 .. v48}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 863
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    const v4, 0x7f080080

    invoke-virtual {v2, v4}, Lcom/lzx/iteam/CloudDialerActivity;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 866
    :cond_34
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->nameTextView:Landroid/widget/TextView;

    move-object/from16 v0, v48

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 867
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->nameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    iget v4, v4, Lcom/lzx/iteam/CloudDialerActivity;->mFontSizeValue:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 869
    const/16 v47, 0x0

    .line 870
    .local v47, "nameMatch":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mCurrentSearchText:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_39

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    iget-object v2, v2, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mContactIdPosition:Ljava/util/HashMap;

    if-eqz v2, :cond_39

    .line 871
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    iget-object v2, v2, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mContactIdPosition:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v69

    check-cast v69, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;

    .line 872
    .local v69, "result":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;
    if-eqz v69, :cond_39

    .line 873
    const/16 v47, 0x1

    .line 874
    new-instance v78, Landroid/text/SpannableString;

    move-object/from16 v0, v78

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 883
    .local v78, "wordtoSpan":Landroid/text/Spannable;
    const/16 v66, 0x0

    .line 884
    .local v66, "positionNew":I
    const/16 v71, -0x1

    .line 885
    .local v71, "startPosition":I
    const/4 v13, 0x0

    .line 886
    .local v13, "blankNumber":I
    move-object/from16 v0, v69

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;->rankLevel:I

    move/from16 v67, v0

    .line 887
    .local v67, "rankLevel":I
    move-object/from16 v0, v69

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;->matchnameLength:I

    move/from16 v46, v0

    .line 888
    .local v46, "nameLength":I
    const-string v2, " "

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_36

    .line 889
    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->toCharArray()[C

    move-result-object v77

    .line 890
    .local v77, "valueArray":[C
    const/16 v35, 0x0

    .restart local v35    # "i":I
    :goto_15
    move-object/from16 v0, v77

    array-length v2, v0

    move/from16 v0, v35

    if-lt v0, v2, :cond_3c

    .line 910
    :cond_35
    move/from16 v67, v71

    .line 911
    add-int v46, v46, v13

    .line 922
    .end local v35    # "i":I
    .end local v77    # "valueArray":[C
    :cond_36
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->highLightColorBck:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->hightLightColor:I

    .line 924
    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, v67

    if-lt v0, v2, :cond_37

    if-gtz v46, :cond_38

    .line 926
    :cond_37
    add-int v2, v67, v46

    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v4

    if-le v2, v4, :cond_40

    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, v67

    if-ge v0, v2, :cond_40

    if-ltz v67, :cond_40

    .line 927
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->hightLightColor:I

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v4

    .line 928
    const/16 v5, 0x21

    .line 927
    move-object/from16 v0, v78

    move/from16 v1, v67

    invoke-interface {v0, v2, v1, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 933
    :cond_38
    :goto_16
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->nameTextView:Landroid/widget/TextView;

    move-object/from16 v0, v78

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 937
    .end local v13    # "blankNumber":I
    .end local v46    # "nameLength":I
    .end local v66    # "positionNew":I
    .end local v67    # "rankLevel":I
    .end local v69    # "result":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;
    .end local v71    # "startPosition":I
    .end local v78    # "wordtoSpan":Landroid/text/Spannable;
    :cond_39
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mInterrupted:Z

    if-eqz v2, :cond_41

    move-object/from16 v25, p2

    .line 938
    goto/16 :goto_0

    .line 849
    .end local v47    # "nameMatch":Z
    :cond_3a
    move-object/from16 v0, v44

    iget v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->contactedNumber:I

    move/from16 v75, v0

    goto/16 :goto_13

    .line 858
    :cond_3b
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->timesContactedView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_14

    .line 891
    .restart local v13    # "blankNumber":I
    .restart local v35    # "i":I
    .restart local v46    # "nameLength":I
    .restart local v47    # "nameMatch":Z
    .restart local v66    # "positionNew":I
    .restart local v67    # "rankLevel":I
    .restart local v69    # "result":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;
    .restart local v71    # "startPosition":I
    .restart local v77    # "valueArray":[C
    .restart local v78    # "wordtoSpan":Landroid/text/Spannable;
    :cond_3c
    aget-char v2, v77, v35

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 892
    move/from16 v0, v66

    move/from16 v1, v67

    if-ne v0, v1, :cond_3e

    .line 893
    move/from16 v71, v35

    .line 894
    const/16 v38, 0x0

    .line 895
    .local v38, "length":I
    add-int/lit8 v37, v35, 0x1

    .local v37, "j":I
    :goto_17
    move-object/from16 v0, v77

    array-length v2, v0

    move/from16 v0, v37

    if-ge v0, v2, :cond_35

    .line 896
    aget-char v2, v77, v37

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 897
    add-int/lit8 v38, v38, 0x1

    .line 898
    move/from16 v0, v38

    move/from16 v1, v46

    if-eq v0, v1, :cond_35

    .line 895
    :goto_18
    add-int/lit8 v37, v37, 0x1

    goto :goto_17

    .line 902
    :cond_3d
    add-int/lit8 v13, v13, 0x1

    goto :goto_18

    .line 907
    .end local v37    # "j":I
    .end local v38    # "length":I
    :cond_3e
    add-int/lit8 v66, v66, 0x1

    .line 890
    :cond_3f
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_15

    .line 930
    .end local v35    # "i":I
    .end local v77    # "valueArray":[C
    :cond_40
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->hightLightColor:I

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 931
    add-int v4, v67, v46

    const/16 v5, 0x21

    .line 930
    move-object/from16 v0, v78

    move/from16 v1, v67

    invoke-interface {v0, v2, v1, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_16

    .line 941
    .end local v13    # "blankNumber":I
    .end local v46    # "nameLength":I
    .end local v66    # "positionNew":I
    .end local v67    # "rankLevel":I
    .end local v69    # "result":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$HighLightFormat;
    .end local v71    # "startPosition":I
    .end local v78    # "wordtoSpan":Landroid/text/Spannable;
    :cond_41
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mDisplayNameOnly:Z

    if-nez v2, :cond_4d

    .line 942
    if-eqz v54, :cond_4c

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4c

    .line 943
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v34

    iput-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->phoneNum:Ljava/lang/String;

    .line 945
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v54

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v54

    .line 946
    if-nez v47, :cond_42

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mCurrentSearchText:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 947
    :cond_42
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->numberTextView:Landroid/widget/TextView;

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 948
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->numberTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 994
    :cond_43
    :goto_19
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->numberTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v53

    .line 995
    .local v53, "num":Ljava/lang/String;
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->inviteImg:Landroid/widget/ImageView;

    new-instance v4, Lcom/lzx/iteam/adapter/ContactEntryAdapter$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v4, v0, v1}, Lcom/lzx/iteam/adapter/ContactEntryAdapter$1;-><init>(Lcom/lzx/iteam/adapter/ContactEntryAdapter;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1050
    const/16 v68, 0x0

    .line 1051
    .local v68, "registPhone":Ljava/lang/String;
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/net/LocalLogin;->isLogedin()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1052
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mCloudUser:Ljava/util/HashMap;

    if-eqz v2, :cond_44

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mCloudUser:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_45

    .line 1053
    :cond_44
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v4, "regist_user"

    invoke-virtual {v2, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->getCloudContact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mCloudUser:Ljava/util/HashMap;

    .line 1055
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mCloudUser:Ljava/util/HashMap;

    if-nez v2, :cond_45

    .line 1056
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mCloudUser:Ljava/util/HashMap;

    .line 1058
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mCloudUser:Ljava/util/HashMap;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    :cond_45
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mCloudUser:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v68

    .end local v68    # "registPhone":Ljava/lang/String;
    check-cast v68, Ljava/lang/String;

    .line 1063
    .restart local v68    # "registPhone":Ljava/lang/String;
    :cond_46
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->contactDisturbStatus:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1064
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mIfCheckBoxShow:Z

    if-eqz v2, :cond_52

    .line 1065
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1066
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->inviteImg:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1067
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->contactDisturbStatus:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1068
    if-eqz v68, :cond_4f

    .line 1069
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->checkBox:Landroid/widget/CheckBox;

    const v4, 0x7f020093

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 1078
    :goto_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->contactId:Ljava/lang/Long;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 1079
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1096
    :goto_1b
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/net/LocalLogin;->isLogedin()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 1097
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mCloudUserData:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1103
    :cond_47
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1105
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1107
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mIsPhotoShow:Z

    if-eqz v2, :cond_56

    .line 1108
    const-wide/16 v4, 0x0

    cmp-long v2, v64, v4

    if-gtz v2, :cond_54

    .line 1109
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->quickContact:Lcom/lzx/iteam/widget/RoundImageView;

    invoke-direct/range {p0 .. p0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->getNoNameDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lzx/iteam/widget/RoundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1129
    :goto_1c
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->quickContact:Lcom/lzx/iteam/widget/RoundImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/lzx/iteam/widget/RoundImageView;->setVisibility(I)V

    .line 1133
    :goto_1d
    const v2, 0x7f0e01b6

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v76

    check-cast v76, Landroid/widget/TextView;

    .line 1134
    .local v76, "tv":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->headerColor:I

    move-object/from16 v0, v76

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1135
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->headerTextColor:I

    move-object/from16 v0, v76

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v25, p2

    .line 1143
    goto/16 :goto_0

    .line 949
    .end local v53    # "num":Ljava/lang/String;
    .end local v68    # "registPhone":Ljava/lang/String;
    .end local v76    # "tv":Landroid/widget/TextView;
    :cond_48
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mCurrentSearchText:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 950
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mCurrentSearchText:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    .line 951
    .local v23, "firstIndex":I
    const/16 v43, 0x0

    .line 952
    .local v43, "matchLength":I
    const/4 v2, -0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_49

    .line 953
    const/16 v23, 0x0

    .line 954
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->length()I

    move-result v43

    .line 958
    :goto_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->selectedId:Ljava/lang/Long;

    if-eqz v2, :cond_4b

    .line 959
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->selectedId:Ljava/lang/Long;

    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->contactId:Ljava/lang/Long;

    invoke-virtual {v2, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 960
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->hightLightColor:I

    .line 967
    :goto_1f
    new-instance v57, Landroid/text/SpannableString;

    move-object/from16 v0, v57

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 968
    .local v57, "numbertoSpan":Landroid/text/Spannable;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->hightLightColor:I

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 969
    add-int v4, v23, v43

    const/16 v5, 0x21

    .line 968
    move-object/from16 v0, v57

    move/from16 v1, v23

    invoke-interface {v0, v2, v1, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 970
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->numberTextView:Landroid/widget/TextView;

    move-object/from16 v0, v57

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_19

    .line 956
    .end local v57    # "numbertoSpan":Landroid/text/Spannable;
    :cond_49
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mCurrentSearchText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v43

    goto :goto_1e

    .line 962
    :cond_4a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->highLightColorBck:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->hightLightColor:I

    goto :goto_1f

    .line 965
    :cond_4b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->highLightColorBck:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->hightLightColor:I

    goto :goto_1f

    .line 974
    .end local v23    # "firstIndex":I
    .end local v43    # "matchLength":I
    :cond_4c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v2}, Lcom/lzx/iteam/CloudDialerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080081

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 975
    .local v49, "noPhone":Ljava/lang/String;
    move-object/from16 v0, v49

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->phoneNum:Ljava/lang/String;

    .line 976
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->numberTextView:Landroid/widget/TextView;

    move-object/from16 v0, v49

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 977
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->numberTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_19

    .line 980
    .end local v49    # "noPhone":Ljava/lang/String;
    :cond_4d
    if-eqz v54, :cond_4e

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4e

    .line 981
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v34

    iput-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->phoneNum:Ljava/lang/String;

    .line 982
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->phoneNum:Ljava/lang/String;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v73

    .line 983
    .local v73, "temp":[Ljava/lang/String;
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->numberTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    aget-object v4, v73, v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_19

    .line 986
    .end local v73    # "temp":[Ljava/lang/String;
    :cond_4e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v2}, Lcom/lzx/iteam/CloudDialerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080081

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 987
    .restart local v49    # "noPhone":Ljava/lang/String;
    move-object/from16 v0, v49

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->phoneNum:Ljava/lang/String;

    .line 988
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->numberTextView:Landroid/widget/TextView;

    move-object/from16 v0, v49

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 989
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->numberTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_19

    .line 1071
    .end local v49    # "noPhone":Ljava/lang/String;
    .restart local v53    # "num":Ljava/lang/String;
    .restart local v68    # "registPhone":Ljava/lang/String;
    :cond_4f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->isHaveUnClickable:Z

    if-eqz v2, :cond_50

    .line 1072
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->checkBox:Landroid/widget/CheckBox;

    const v4, 0x7f020090

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    goto/16 :goto_1a

    .line 1074
    :cond_50
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->checkBox:Landroid/widget/CheckBox;

    const v4, 0x7f020093

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    goto/16 :goto_1a

    .line 1081
    :cond_51
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1b

    .line 1087
    :cond_52
    if-eqz v68, :cond_53

    .line 1088
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->inviteImg:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1092
    :goto_20
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->checkBox:Landroid/widget/CheckBox;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_1b

    .line 1090
    :cond_53
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->inviteImg:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_20

    .line 1111
    :cond_54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    move-wide/from16 v0, v64

    invoke-static {v2, v0, v1}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getPhoto(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 1113
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    if-nez v12, :cond_55

    .line 1114
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->quickContact:Lcom/lzx/iteam/widget/RoundImageView;

    invoke-direct/range {p0 .. p0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->getNoNameDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lzx/iteam/widget/RoundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1c

    .line 1117
    :cond_55
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->quickContact:Lcom/lzx/iteam/widget/RoundImageView;

    invoke-virtual {v2, v12}, Lcom/lzx/iteam/widget/RoundImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1c

    .line 1131
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    :cond_56
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->quickContact:Lcom/lzx/iteam/widget/RoundImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/lzx/iteam/widget/RoundImageView;->setVisibility(I)V

    goto/16 :goto_1d

    .line 696
    .end local v21    # "emailString":Ljava/lang/StringBuilder;
    .end local v32    # "groupString":Ljava/lang/StringBuilder;
    .end local v44    # "memoryNode":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;
    .end local v47    # "nameMatch":Z
    .end local v51    # "noteStr":Ljava/lang/StringBuilder;
    .end local v53    # "num":Ljava/lang/String;
    .end local v54    # "number":Ljava/lang/StringBuilder;
    .end local v68    # "registPhone":Ljava/lang/String;
    .end local v75    # "timesContacted":I
    .restart local v3    # "methodUri":Landroid/net/Uri;
    .restart local v9    # "areaElement":Ljava/lang/String;
    .restart local v15    # "c":Landroid/database/Cursor;
    .restart local v17    # "contactUri":Landroid/net/Uri;
    .restart local v18    # "dataDir":Ljava/lang/String;
    .restart local v22    # "emailString":Ljava/lang/StringBuilder;
    .restart local v33    # "groupString":Ljava/lang/StringBuilder;
    .restart local v45    # "mime":Ljava/lang/String;
    .restart local v52    # "noteStr":Ljava/lang/StringBuilder;
    .restart local v55    # "number":Ljava/lang/StringBuilder;
    .restart local v61    # "phoneNumber":Ljava/lang/String;
    :catchall_1
    move-exception v2

    move-object/from16 v51, v52

    .end local v52    # "noteStr":Ljava/lang/StringBuilder;
    .restart local v51    # "noteStr":Ljava/lang/StringBuilder;
    move-object/from16 v21, v22

    .end local v22    # "emailString":Ljava/lang/StringBuilder;
    .restart local v21    # "emailString":Ljava/lang/StringBuilder;
    move-object/from16 v32, v33

    .end local v33    # "groupString":Ljava/lang/StringBuilder;
    .restart local v32    # "groupString":Ljava/lang/StringBuilder;
    move-object/from16 v54, v55

    .end local v55    # "number":Ljava/lang/StringBuilder;
    .restart local v54    # "number":Ljava/lang/StringBuilder;
    goto/16 :goto_f

    .end local v21    # "emailString":Ljava/lang/StringBuilder;
    .end local v32    # "groupString":Ljava/lang/StringBuilder;
    .end local v51    # "noteStr":Ljava/lang/StringBuilder;
    .restart local v22    # "emailString":Ljava/lang/StringBuilder;
    .restart local v33    # "groupString":Ljava/lang/StringBuilder;
    .restart local v52    # "noteStr":Ljava/lang/StringBuilder;
    :catchall_2
    move-exception v2

    move-object/from16 v51, v52

    .end local v52    # "noteStr":Ljava/lang/StringBuilder;
    .restart local v51    # "noteStr":Ljava/lang/StringBuilder;
    move-object/from16 v21, v22

    .end local v22    # "emailString":Ljava/lang/StringBuilder;
    .restart local v21    # "emailString":Ljava/lang/StringBuilder;
    move-object/from16 v32, v33

    .end local v33    # "groupString":Ljava/lang/StringBuilder;
    .restart local v32    # "groupString":Ljava/lang/StringBuilder;
    goto/16 :goto_f

    .end local v9    # "areaElement":Ljava/lang/String;
    .end local v10    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "emailString":Ljava/lang/StringBuilder;
    .end local v51    # "noteStr":Ljava/lang/StringBuilder;
    .end local v54    # "number":Ljava/lang/StringBuilder;
    .end local v61    # "phoneNumber":Ljava/lang/String;
    .restart local v11    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "emailString":Ljava/lang/StringBuilder;
    .restart local v26    # "group":Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;
    .local v28, "groupId":Ljava/lang/String;
    .restart local v30    # "groupName":Ljava/lang/String;
    .restart local v40    # "mGroupList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;>;"
    .restart local v52    # "noteStr":Ljava/lang/StringBuilder;
    .restart local v55    # "number":Ljava/lang/StringBuilder;
    :catchall_3
    move-exception v2

    move-object v10, v11

    .end local v11    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v51, v52

    .end local v52    # "noteStr":Ljava/lang/StringBuilder;
    .restart local v51    # "noteStr":Ljava/lang/StringBuilder;
    move-object/from16 v21, v22

    .end local v22    # "emailString":Ljava/lang/StringBuilder;
    .restart local v21    # "emailString":Ljava/lang/StringBuilder;
    move-object/from16 v54, v55

    .end local v55    # "number":Ljava/lang/StringBuilder;
    .restart local v54    # "number":Ljava/lang/StringBuilder;
    goto/16 :goto_f

    .end local v10    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26    # "group":Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;
    .end local v28    # "groupId":Ljava/lang/String;
    .end local v30    # "groupName":Ljava/lang/String;
    .end local v32    # "groupString":Ljava/lang/StringBuilder;
    .end local v40    # "mGroupList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;>;"
    .end local v51    # "noteStr":Ljava/lang/StringBuilder;
    .end local v54    # "number":Ljava/lang/StringBuilder;
    .restart local v11    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "email":Ljava/lang/String;
    .restart local v33    # "groupString":Ljava/lang/StringBuilder;
    .restart local v52    # "noteStr":Ljava/lang/StringBuilder;
    .restart local v55    # "number":Ljava/lang/StringBuilder;
    :catchall_4
    move-exception v2

    move-object v10, v11

    .end local v11    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v51, v52

    .end local v52    # "noteStr":Ljava/lang/StringBuilder;
    .restart local v51    # "noteStr":Ljava/lang/StringBuilder;
    move-object/from16 v32, v33

    .end local v33    # "groupString":Ljava/lang/StringBuilder;
    .restart local v32    # "groupString":Ljava/lang/StringBuilder;
    move-object/from16 v54, v55

    .end local v55    # "number":Ljava/lang/StringBuilder;
    .restart local v54    # "number":Ljava/lang/StringBuilder;
    goto/16 :goto_f

    .end local v10    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "email":Ljava/lang/String;
    .end local v21    # "emailString":Ljava/lang/StringBuilder;
    .end local v32    # "groupString":Ljava/lang/StringBuilder;
    .end local v54    # "number":Ljava/lang/StringBuilder;
    .restart local v11    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "emailString":Ljava/lang/StringBuilder;
    .restart local v33    # "groupString":Ljava/lang/StringBuilder;
    .restart local v50    # "note":Ljava/lang/String;
    .restart local v55    # "number":Ljava/lang/StringBuilder;
    :catchall_5
    move-exception v2

    move-object v10, v11

    .end local v11    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v21, v22

    .end local v22    # "emailString":Ljava/lang/StringBuilder;
    .restart local v21    # "emailString":Ljava/lang/StringBuilder;
    move-object/from16 v32, v33

    .end local v33    # "groupString":Ljava/lang/StringBuilder;
    .restart local v32    # "groupString":Ljava/lang/StringBuilder;
    move-object/from16 v54, v55

    .end local v55    # "number":Ljava/lang/StringBuilder;
    .restart local v54    # "number":Ljava/lang/StringBuilder;
    goto/16 :goto_f

    .end local v45    # "mime":Ljava/lang/String;
    .end local v50    # "note":Ljava/lang/String;
    .restart local v19    # "e":Ljava/lang/Exception;
    :catchall_6
    move-exception v2

    goto/16 :goto_f

    .line 694
    .end local v19    # "e":Ljava/lang/Exception;
    .end local v21    # "emailString":Ljava/lang/StringBuilder;
    .end local v32    # "groupString":Ljava/lang/StringBuilder;
    .end local v51    # "noteStr":Ljava/lang/StringBuilder;
    .end local v54    # "number":Ljava/lang/StringBuilder;
    .restart local v9    # "areaElement":Ljava/lang/String;
    .restart local v22    # "emailString":Ljava/lang/StringBuilder;
    .restart local v33    # "groupString":Ljava/lang/StringBuilder;
    .restart local v45    # "mime":Ljava/lang/String;
    .restart local v52    # "noteStr":Ljava/lang/StringBuilder;
    .restart local v55    # "number":Ljava/lang/StringBuilder;
    .restart local v61    # "phoneNumber":Ljava/lang/String;
    :catch_2
    move-exception v19

    move-object/from16 v51, v52

    .end local v52    # "noteStr":Ljava/lang/StringBuilder;
    .restart local v51    # "noteStr":Ljava/lang/StringBuilder;
    move-object/from16 v21, v22

    .end local v22    # "emailString":Ljava/lang/StringBuilder;
    .restart local v21    # "emailString":Ljava/lang/StringBuilder;
    move-object/from16 v32, v33

    .end local v33    # "groupString":Ljava/lang/StringBuilder;
    .restart local v32    # "groupString":Ljava/lang/StringBuilder;
    move-object/from16 v54, v55

    .end local v55    # "number":Ljava/lang/StringBuilder;
    .restart local v54    # "number":Ljava/lang/StringBuilder;
    goto/16 :goto_e

    .end local v21    # "emailString":Ljava/lang/StringBuilder;
    .end local v32    # "groupString":Ljava/lang/StringBuilder;
    .end local v51    # "noteStr":Ljava/lang/StringBuilder;
    .restart local v22    # "emailString":Ljava/lang/StringBuilder;
    .restart local v33    # "groupString":Ljava/lang/StringBuilder;
    .restart local v52    # "noteStr":Ljava/lang/StringBuilder;
    :catch_3
    move-exception v19

    move-object/from16 v51, v52

    .end local v52    # "noteStr":Ljava/lang/StringBuilder;
    .restart local v51    # "noteStr":Ljava/lang/StringBuilder;
    move-object/from16 v21, v22

    .end local v22    # "emailString":Ljava/lang/StringBuilder;
    .restart local v21    # "emailString":Ljava/lang/StringBuilder;
    move-object/from16 v32, v33

    .end local v33    # "groupString":Ljava/lang/StringBuilder;
    .restart local v32    # "groupString":Ljava/lang/StringBuilder;
    goto/16 :goto_e

    .end local v9    # "areaElement":Ljava/lang/String;
    .end local v10    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "emailString":Ljava/lang/StringBuilder;
    .end local v51    # "noteStr":Ljava/lang/StringBuilder;
    .end local v54    # "number":Ljava/lang/StringBuilder;
    .end local v61    # "phoneNumber":Ljava/lang/String;
    .restart local v11    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "emailString":Ljava/lang/StringBuilder;
    .restart local v26    # "group":Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;
    .restart local v28    # "groupId":Ljava/lang/String;
    .restart local v30    # "groupName":Ljava/lang/String;
    .restart local v40    # "mGroupList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;>;"
    .restart local v52    # "noteStr":Ljava/lang/StringBuilder;
    .restart local v55    # "number":Ljava/lang/StringBuilder;
    :catch_4
    move-exception v19

    move-object v10, v11

    .end local v11    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v51, v52

    .end local v52    # "noteStr":Ljava/lang/StringBuilder;
    .restart local v51    # "noteStr":Ljava/lang/StringBuilder;
    move-object/from16 v21, v22

    .end local v22    # "emailString":Ljava/lang/StringBuilder;
    .restart local v21    # "emailString":Ljava/lang/StringBuilder;
    move-object/from16 v54, v55

    .end local v55    # "number":Ljava/lang/StringBuilder;
    .restart local v54    # "number":Ljava/lang/StringBuilder;
    goto/16 :goto_e

    .end local v10    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26    # "group":Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;
    .end local v28    # "groupId":Ljava/lang/String;
    .end local v30    # "groupName":Ljava/lang/String;
    .end local v32    # "groupString":Ljava/lang/StringBuilder;
    .end local v40    # "mGroupList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;>;"
    .end local v51    # "noteStr":Ljava/lang/StringBuilder;
    .end local v54    # "number":Ljava/lang/StringBuilder;
    .restart local v11    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "email":Ljava/lang/String;
    .restart local v33    # "groupString":Ljava/lang/StringBuilder;
    .restart local v52    # "noteStr":Ljava/lang/StringBuilder;
    .restart local v55    # "number":Ljava/lang/StringBuilder;
    :catch_5
    move-exception v19

    move-object v10, v11

    .end local v11    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v51, v52

    .end local v52    # "noteStr":Ljava/lang/StringBuilder;
    .restart local v51    # "noteStr":Ljava/lang/StringBuilder;
    move-object/from16 v32, v33

    .end local v33    # "groupString":Ljava/lang/StringBuilder;
    .restart local v32    # "groupString":Ljava/lang/StringBuilder;
    move-object/from16 v54, v55

    .end local v55    # "number":Ljava/lang/StringBuilder;
    .restart local v54    # "number":Ljava/lang/StringBuilder;
    goto/16 :goto_e

    .end local v10    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "email":Ljava/lang/String;
    .end local v21    # "emailString":Ljava/lang/StringBuilder;
    .end local v32    # "groupString":Ljava/lang/StringBuilder;
    .end local v54    # "number":Ljava/lang/StringBuilder;
    .restart local v11    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "emailString":Ljava/lang/StringBuilder;
    .restart local v33    # "groupString":Ljava/lang/StringBuilder;
    .restart local v50    # "note":Ljava/lang/String;
    .restart local v55    # "number":Ljava/lang/StringBuilder;
    :catch_6
    move-exception v19

    move-object v10, v11

    .end local v11    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v21, v22

    .end local v22    # "emailString":Ljava/lang/StringBuilder;
    .restart local v21    # "emailString":Ljava/lang/StringBuilder;
    move-object/from16 v32, v33

    .end local v33    # "groupString":Ljava/lang/StringBuilder;
    .restart local v32    # "groupString":Ljava/lang/StringBuilder;
    move-object/from16 v54, v55

    .end local v55    # "number":Ljava/lang/StringBuilder;
    .restart local v54    # "number":Ljava/lang/StringBuilder;
    goto/16 :goto_e

    .end local v10    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "emailString":Ljava/lang/StringBuilder;
    .end local v32    # "groupString":Ljava/lang/StringBuilder;
    .end local v51    # "noteStr":Ljava/lang/StringBuilder;
    .end local v54    # "number":Ljava/lang/StringBuilder;
    .restart local v11    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "emailString":Ljava/lang/StringBuilder;
    .restart local v33    # "groupString":Ljava/lang/StringBuilder;
    .restart local v52    # "noteStr":Ljava/lang/StringBuilder;
    .restart local v55    # "number":Ljava/lang/StringBuilder;
    :cond_57
    move-object/from16 v51, v52

    .end local v52    # "noteStr":Ljava/lang/StringBuilder;
    .restart local v51    # "noteStr":Ljava/lang/StringBuilder;
    goto/16 :goto_d

    .end local v50    # "note":Ljava/lang/String;
    .end local v51    # "noteStr":Ljava/lang/StringBuilder;
    .restart local v20    # "email":Ljava/lang/String;
    .restart local v52    # "noteStr":Ljava/lang/StringBuilder;
    :cond_58
    move-object/from16 v21, v22

    .end local v22    # "emailString":Ljava/lang/StringBuilder;
    .restart local v21    # "emailString":Ljava/lang/StringBuilder;
    goto/16 :goto_c

    .end local v20    # "email":Ljava/lang/String;
    .end local v21    # "emailString":Ljava/lang/StringBuilder;
    .restart local v22    # "emailString":Ljava/lang/StringBuilder;
    .restart local v26    # "group":Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;
    .restart local v28    # "groupId":Ljava/lang/String;
    .restart local v30    # "groupName":Ljava/lang/String;
    .restart local v40    # "mGroupList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;>;"
    :cond_59
    move-object/from16 v32, v33

    .end local v33    # "groupString":Ljava/lang/StringBuilder;
    .restart local v32    # "groupString":Ljava/lang/StringBuilder;
    goto/16 :goto_b

    .end local v11    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26    # "group":Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;
    .end local v28    # "groupId":Ljava/lang/String;
    .end local v30    # "groupName":Ljava/lang/String;
    .end local v32    # "groupString":Ljava/lang/StringBuilder;
    .end local v40    # "mGroupList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;>;"
    .restart local v9    # "areaElement":Ljava/lang/String;
    .restart local v10    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v33    # "groupString":Ljava/lang/StringBuilder;
    .restart local v61    # "phoneNumber":Ljava/lang/String;
    :cond_5a
    move-object/from16 v54, v55

    .end local v55    # "number":Ljava/lang/StringBuilder;
    .restart local v54    # "number":Ljava/lang/StringBuilder;
    goto/16 :goto_a

    .end local v10    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v54    # "number":Ljava/lang/StringBuilder;
    .restart local v11    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v55    # "number":Ljava/lang/StringBuilder;
    :cond_5b
    move-object v10, v11

    .end local v11    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_8

    .end local v10    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5c
    move-object v10, v11

    .end local v11    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "areaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_9
.end method

.method public getChangeContentId()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    const/4 v2, 0x0

    .line 361
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v3, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mAllContactsIdBySection:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 378
    return-object v3

    .line 362
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 363
    .local v1, "item":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    iget-boolean v4, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->isHaveUnClickable:Z

    if-eqz v4, :cond_4

    .line 364
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 371
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 365
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 366
    .local v0, "id":Ljava/lang/Long;
    iget-boolean v6, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->isHaveUnClickable:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mCloudUser:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 368
    :cond_3
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 373
    .end local v0    # "id":Ljava/lang/Long;
    :cond_4
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    check-cast v2, Ljava/util/List;

    .line 374
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 410
    const/4 v1, 0x0

    .line 411
    .local v1, "res":I
    invoke-direct {p0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->getAllContactsIdSize()I

    move-result v2

    .line 412
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 416
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v3, v3, -0x1

    return v3

    .line 413
    :cond_0
    iget-object v3, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mAllContactsIdBySection:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIfCheckBoxShow()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mIfCheckBoxShow:Z

    return v0
.end method

.method public getItem(I)Ljava/lang/Long;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 423
    const/4 v0, 0x0

    .line 425
    .local v0, "c":I
    invoke-direct {p0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->getAllContactsIdSize()I

    move-result v2

    .line 426
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 432
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 427
    :cond_0
    if-lt p1, v0, :cond_1

    iget-object v3, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mAllContactsIdBySection:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    if-ge p1, v3, :cond_1

    .line 428
    iget-object v3, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mAllContactsIdBySection:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    sub-int v4, p1, v0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    goto :goto_1

    .line 430
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mAllContactsIdBySection:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 426
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->getItem(I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 437
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 4
    .param p1, "section"    # I

    .prologue
    .line 1176
    if-gez p1, :cond_0

    .line 1177
    const/4 p1, 0x0

    .line 1180
    :cond_0
    invoke-direct {p0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->getAllContactsIdSize()I

    move-result v1

    .line 1181
    .local v1, "contactsIdSize":I
    if-lt p1, v1, :cond_1

    .line 1182
    add-int/lit8 p1, v1, -0x1

    .line 1184
    :cond_1
    const/4 v0, 0x0

    .line 1185
    .local v0, "c":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_3

    .line 1191
    const/4 v0, 0x0

    .end local v0    # "c":I
    :cond_2
    return v0

    .line 1186
    .restart local v0    # "c":I
    :cond_3
    if-eq p1, v2, :cond_2

    .line 1189
    iget-object v3, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mAllContactsIdBySection:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 1185
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1196
    const/4 v0, 0x0

    .line 1198
    .local v0, "c":I
    invoke-direct {p0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->getAllContactsIdSize()I

    move-result v2

    .line 1199
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 1205
    const/4 v1, -0x1

    .end local v1    # "i":I
    :cond_0
    return v1

    .line 1200
    .restart local v1    # "i":I
    :cond_1
    if-lt p1, v0, :cond_2

    iget-object v3, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mAllContactsIdBySection:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    if-lt p1, v3, :cond_0

    .line 1203
    :cond_2
    iget-object v3, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mAllContactsIdBySection:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 1199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->getSections()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSections()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 1223
    invoke-direct {p0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->getAllContactsIdSize()I

    move-result v2

    .line 1224
    .local v2, "size":I
    const/4 v1, 0x0

    .line 1226
    .local v1, "res":[Ljava/lang/String;
    if-lez v2, :cond_0

    .line 1227
    new-array v1, v2, [Ljava/lang/String;

    .line 1228
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 1232
    .end local v0    # "i":I
    :cond_0
    return-object v1

    .line 1229
    .restart local v0    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mAllContactsIdBySection:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v0

    .line 1228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSelectedContactIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedContacts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/ChatContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContactSelected:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 26
    .param p1, "paramView"    # Landroid/view/View;

    .prologue
    .line 1316
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;

    .line 1317
    .local v17, "holder":Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->contactId:Ljava/lang/Long;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->selectedId:Ljava/lang/Long;

    .line 1330
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mTouchView:Landroid/view/View;

    .line 1332
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->phoneNum:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 1333
    .local v23, "numberText":Ljava/lang/String;
    const/16 v20, 0x0

    .line 1334
    .local v20, "mPhoneNumber":[Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1335
    const-string v2, "\n"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 1338
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    iget-boolean v0, v2, Lcom/lzx/iteam/CloudDialerActivity;->mLongClickDial:Z

    move/from16 v19, v0

    .line 1339
    .local v19, "longClickDial":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mIfCheckBoxShow:Z

    if-nez v2, :cond_6

    .line 1342
    if-nez v19, :cond_5

    .line 1344
    if-eqz v20, :cond_3

    const/4 v2, 0x0

    aget-object v2, v20, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v4}, Lcom/lzx/iteam/CloudDialerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1345
    const v5, 0x7f080081

    .line 1344
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1345
    if-nez v2, :cond_3

    .line 1346
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->numberTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1347
    .local v22, "number":Ljava/lang/String;
    const-string v2, "\n"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 1348
    .local v24, "phoneNumber":[Ljava/lang/String;
    move-object/from16 v0, v24

    array-length v2, v0

    if-nez v2, :cond_1

    .line 1481
    .end local v22    # "number":Ljava/lang/String;
    .end local v24    # "phoneNumber":[Ljava/lang/String;
    :goto_0
    return-void

    .line 1352
    .restart local v22    # "number":Ljava/lang/String;
    .restart local v24    # "phoneNumber":[Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v2}, Lcom/lzx/iteam/CloudDialerActivity;->getFilterText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v4, 0x0

    aget-object v4, v20, v4

    invoke-static {v2, v4}, Lcom/lzx/iteam/util/CommonCodeUtil;->launchCallByNumber(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1390
    .end local v22    # "number":Ljava/lang/String;
    .end local v24    # "phoneNumber":[Ljava/lang/String;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->updateContactStatus(Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;)V

    .line 1479
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mTouchView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 1362
    :cond_3
    const-string v14, "data"

    .line 1364
    .local v14, "dataDir":Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->contactId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1363
    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v14}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1365
    .local v3, "methodUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v2}, Lcom/lzx/iteam/CloudDialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1366
    sget-object v4, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->DATA_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1365
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1367
    .local v8, "c":Landroid/database/Cursor;
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1369
    const-string v2, "mimetype"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1370
    .local v21, "mime":Ljava/lang/String;
    const-string v2, "vnd.android.cursor.item/website"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1372
    const-string v2, "data1"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    goto :goto_1

    .line 1387
    .end local v3    # "methodUri":Landroid/net/Uri;
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v14    # "dataDir":Ljava/lang/String;
    .end local v21    # "mime":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->enterDisplayCommunication(Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;)V

    goto :goto_1

    .line 1394
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mCloudUser:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->selectedId:Ljava/lang/Long;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->isHaveUnClickable:Z

    if-eqz v2, :cond_7

    .line 1395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    const-string v4, "\u8be5\u7528\u6237\u672a\u6ce8\u518c\uff0c\u4e0d\u80fd\u8fdb\u884c\u5982\u4e0b\u64cd\u4f5c"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1476
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 1401
    :cond_7
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v18

    .line 1402
    .local v18, "isCheck":Z
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->checkBox:Landroid/widget/CheckBox;

    if-eqz v18, :cond_9

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1404
    const-wide/16 v10, 0x0

    .line 1406
    .local v10, "cloudId":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-static {v2}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v2

    const-string v4, "contact_id_2_cloud_id"

    invoke-virtual {v2, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->getCloudContact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    .line 1407
    .local v13, "contactId2CloudId":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/HashSet<Ljava/lang/Long;>;>;"
    if-eqz v17, :cond_8

    .line 1408
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->contactId:Ljava/lang/Long;

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashSet;

    .line 1409
    .local v12, "cloudIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    .line 1414
    .end local v12    # "cloudIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v13    # "contactId2CloudId":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/HashSet<Ljava/lang/Long;>;>;"
    :cond_8
    :goto_5
    new-instance v9, Lcom/lzx/iteam/bean/ChatContact;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    aget-object v6, v20, v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->contactId:Ljava/lang/Long;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v2, v4, v5, v6}, Lcom/lzx/iteam/bean/ChatContact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    .local v9, "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    if-eqz v18, :cond_a

    .line 1416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContactSelected:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->contactId:Ljava/lang/Long;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1431
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Lcom/lzx/iteam/CloudDialerActivity;->sendMessageToHandler(I)V

    .line 1461
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->getChangeContentId()Ljava/util/List;

    move-result-object v16

    .line 1462
    .local v16, "getlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v25

    .line 1464
    .local v25, "sumvalid":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v25

    if-lt v2, v0, :cond_b

    .line 1466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/lzx/iteam/CloudDialerActivity;->setSelectImage(Z)V

    goto/16 :goto_3

    .line 1402
    .end local v9    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    .end local v10    # "cloudId":J
    .end local v16    # "getlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v25    # "sumvalid":I
    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 1411
    .restart local v10    # "cloudId":J
    :catch_0
    move-exception v15

    .line 1412
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 1419
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v9    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContactSelected:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->contactId:Ljava/lang/Long;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1471
    .restart local v16    # "getlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v25    # "sumvalid":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/lzx/iteam/CloudDialerActivity;->setSelectImage(Z)V

    goto/16 :goto_3
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 17
    .param p1, "paramView"    # Landroid/view/View;

    .prologue
    .line 1254
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mTouchView:Landroid/view/View;

    .line 1255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mTouchView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;

    .line 1256
    .local v10, "holder":Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;
    if-nez v10, :cond_0

    .line 1257
    const/4 v2, 0x1

    .line 1310
    :goto_0
    return v2

    .line 1260
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mIfCheckBoxShow:Z

    if-eqz v2, :cond_1

    .line 1261
    const/4 v2, 0x1

    goto :goto_0

    .line 1264
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    invoke-virtual {v2}, Lcom/lzx/iteam/util/PreferenceUtil;->getPreference()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "quick_dial"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 1265
    .local v11, "ifLongClickDial":Z
    if-eqz v11, :cond_4

    .line 1266
    iget-object v15, v10, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->phoneNum:Ljava/lang/String;

    .line 1267
    .local v15, "numberText":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1268
    .local v12, "mPhoneNumber":[Ljava/lang/String;
    invoke-static {v15}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1269
    const-string v2, "\n"

    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1271
    :cond_2
    if-eqz v12, :cond_5

    const/4 v2, 0x0

    aget-object v2, v12, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    const v5, 0x7f080081

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/CloudDialerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1272
    iget-object v14, v10, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->phoneNum:Ljava/lang/String;

    .line 1273
    .local v14, "number":Ljava/lang/String;
    const-string v2, "\n"

    invoke-virtual {v14, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1274
    .local v16, "phoneNumber":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v2, v0

    if-nez v2, :cond_3

    .line 1275
    const/4 v2, 0x1

    goto :goto_0

    .line 1278
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v2}, Lcom/lzx/iteam/CloudDialerActivity;->getFilterText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1310
    .end local v12    # "mPhoneNumber":[Ljava/lang/String;
    .end local v14    # "number":Ljava/lang/String;
    .end local v15    # "numberText":Ljava/lang/String;
    .end local v16    # "phoneNumber":[Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1286
    .restart local v12    # "mPhoneNumber":[Ljava/lang/String;
    .restart local v15    # "numberText":Ljava/lang/String;
    :cond_5
    const-string v9, "data"

    .line 1288
    .local v9, "dataDir":Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, v10, Lcom/lzx/iteam/adapter/ContactEntryAdapter$ContactEntryHolder;->contactId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1287
    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1289
    .local v3, "methodUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v2}, Lcom/lzx/iteam/CloudDialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1290
    sget-object v4, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->DATA_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1289
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1291
    .local v8, "c":Landroid/database/Cursor;
    :cond_6
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1292
    const-string v2, "mimetype"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1293
    .local v13, "mime":Ljava/lang/String;
    const-string v2, "vnd.android.cursor.item/website"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1294
    const-string v2, "data1"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    goto :goto_1
.end method

.method protected onNextPageRequested(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 442
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1582
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1237
    const-string v0, "displayphoto"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1238
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "displayphoto"

    .line 1239
    const-class v2, Ljava/lang/Boolean;

    .line 1238
    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mIsPhotoShow:Z

    .line 1246
    :cond_0
    :goto_0
    return-void

    .line 1240
    :cond_1
    const-string v0, "name_sort"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1242
    const-string v0, "display_name_only"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "display_name_only"

    .line 1244
    const-class v2, Ljava/lang/Boolean;

    .line 1243
    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mDisplayNameOnly:Z

    goto :goto_0
.end method

.method public selectAllContactIds(Ljava/util/ArrayList;Z)V
    .locals 2
    .param p2, "select"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "allContactsId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz p2, :cond_1

    .line 212
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 213
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 214
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->setSelectImage(Z)V

    .line 229
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->notifyDataSetChanged()V

    .line 230
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 221
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->setSelectImage(Z)V

    goto :goto_0
.end method

.method public selectAllContacts(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/ChatContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "allContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ChatContact;>;"
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContactSelected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContactSelected:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 194
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->setSelectImage(Z)V

    .line 207
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->notifyDataSetChanged()V

    .line 208
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContactSelected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 199
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->setSelectImage(Z)V

    goto :goto_0
.end method

.method public setCloudUser(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 398
    .local p1, "cloudUser":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 399
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mCloudUser:Ljava/util/HashMap;

    .line 403
    :goto_0
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->notifyDataSetChanged()V

    .line 404
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mCloudUser:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method public setCloudUserData(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, "cloudUserData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    .line 390
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mCloudUserData:Ljava/util/HashMap;

    .line 394
    :goto_0
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->notifyDataSetChanged()V

    .line 395
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mCloudUserData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method public setCurrentSearchText(Ljava/lang/String;)V
    .locals 0
    .param p1, "searchText"    # Ljava/lang/String;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mCurrentSearchText:Ljava/lang/String;

    .line 488
    return-void
.end method

.method public setIfCheckBoxShow(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mIfCheckBoxShow:Z

    .line 176
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 177
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContactSelected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->selectedId:Ljava/lang/Long;

    .line 179
    return-void
.end method

.method public setIfCheckBoxShowNoClear(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mIfCheckBoxShow:Z

    .line 183
    return-void
.end method

.method public setInterrupted(Z)V
    .locals 0
    .param p1, "interrupted"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mInterrupted:Z

    .line 137
    return-void
.end method

.method public setLocalContactCheckStyle(Z)V
    .locals 0
    .param p1, "isHaveUnClickable"    # Z

    .prologue
    .line 384
    iput-boolean p1, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->isHaveUnClickable:Z

    .line 385
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->notifyDataSetChanged()V

    .line 386
    return-void
.end method

.method public setNoNameDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->noName:Landroid/graphics/drawable/Drawable;

    .line 126
    return-void
.end method

.method public setSkin(Lcom/lzx/iteam/bean/SkinCommonData;)V
    .locals 0
    .param p1, "skin"    # Lcom/lzx/iteam/bean/SkinCommonData;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mSkin:Lcom/lzx/iteam/bean/SkinCommonData;

    .line 357
    return-void
.end method
