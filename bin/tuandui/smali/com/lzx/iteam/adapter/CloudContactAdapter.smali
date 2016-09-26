.class public Lcom/lzx/iteam/adapter/CloudContactAdapter;
.super Lcom/lzx/iteam/adapter/AmazingAdapter;
.source "CloudContactAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/CloudContactAdapter$AnimateFirstDisplayListener;,
        Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;
    }
.end annotation


# static fields
.field private static final MSG_INVITE_CONTACT:I = 0x3e8

.field public static opening:Z


# instance fields
.field private animateFirstListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

.field private contactId:Ljava/lang/String;

.field protected imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private isHaveUnClickable:Z

.field public mBackUpContactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/CloudContact;",
            ">;"
        }
    .end annotation
.end field

.field private mContactIdSelected:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/ChatContact;",
            ">;"
        }
    .end annotation
.end field

.field private mContactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/CloudContact;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Lcom/lzx/iteam/CloudDialerActivity;

.field private mGroupId:J

.field private mGroupName:Ljava/lang/String;

.field private mGroupType:I

.field private mHandler:Landroid/os/Handler;

.field private mIfCheckBoxShow:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInterrupted:Z

.field private mIsFuzzy:Z

.field public mIsShowSelected:Z

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

.field public mSelectedContactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/CloudContact;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalCount:I

.field private mTouchedView:Landroid/view/View;

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private prefUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private section:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->opening:Z

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/lzx/iteam/CloudDialerActivity;Lcom/lzx/iteam/bean/CloudGroup;Ljava/util/ArrayList;Lcom/nostra13/universalimageloader/core/ImageLoader;)V
    .locals 4
    .param p1, "c"    # Lcom/lzx/iteam/CloudDialerActivity;
    .param p2, "group"    # Lcom/lzx/iteam/bean/CloudGroup;
    .param p4, "imageLoader"    # Lcom/nostra13/universalimageloader/core/ImageLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzx/iteam/CloudDialerActivity;",
            "Lcom/lzx/iteam/bean/CloudGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/CloudContact;",
            ">;",
            "Lcom/nostra13/universalimageloader/core/ImageLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudContact;>;"
    const v3, 0x7f0200b4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    invoke-direct {p0}, Lcom/lzx/iteam/adapter/AmazingAdapter;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactList:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mBackUpContactList:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mNameCard:Ljava/util/ArrayList;

    .line 72
    iput-boolean v2, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mIfCheckBoxShow:Z

    .line 73
    iput-boolean v2, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mIsShowSelected:Z

    .line 85
    new-instance v0, Lcom/lzx/iteam/adapter/CloudContactAdapter$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/adapter/CloudContactAdapter$1;-><init>(Lcom/lzx/iteam/adapter/CloudContactAdapter;)V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mHandler:Landroid/os/Handler;

    .line 1155
    iput-boolean v2, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->isHaveUnClickable:Z

    .line 106
    iput-object p1, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    .line 107
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 108
    if-eqz p3, :cond_0

    .line 109
    iget-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-static {v0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->prefUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 114
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 116
    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 121
    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 122
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 114
    iput-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 124
    new-instance v0, Lcom/lzx/iteam/adapter/CloudContactAdapter$AnimateFirstDisplayListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lzx/iteam/adapter/CloudContactAdapter$AnimateFirstDisplayListener;-><init>(Lcom/lzx/iteam/adapter/CloudContactAdapter$AnimateFirstDisplayListener;)V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->animateFirstListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    .line 125
    iput-object p4, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 126
    iget v0, p2, Lcom/lzx/iteam/bean/CloudGroup;->contactCount:I

    iput v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mTotalCount:I

    .line 127
    iget-object v0, p2, Lcom/lzx/iteam/bean/CloudGroup;->groupName:Ljava/lang/String;

    iput-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mGroupName:Ljava/lang/String;

    .line 128
    iget-wide v0, p2, Lcom/lzx/iteam/bean/CloudGroup;->groupId:J

    iput-wide v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mGroupId:J

    .line 130
    iget-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->prefUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "contact_name_card"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/PreferenceUtil;->getCloudContact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mNameCard:Ljava/util/ArrayList;

    .line 131
    iget-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mNameCard:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mMyName:Ljava/lang/String;

    .line 132
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/adapter/CloudContactAdapter;)Lcom/lzx/iteam/CloudDialerActivity;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/adapter/CloudContactAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mMyName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/adapter/CloudContactAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/adapter/CloudContactAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1199
    invoke-direct {p0, p1}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->inviteContact(Ljava/lang/String;)V

    return-void
.end method

.method private dial(Lcom/lzx/iteam/bean/CloudContact;)V
    .locals 0
    .param p1, "item"    # Lcom/lzx/iteam/bean/CloudContact;

    .prologue
    .line 722
    return-void
.end method

.method private displayCommunicationActivity(Lcom/lzx/iteam/bean/CloudContact;)V
    .locals 3
    .param p1, "item"    # Lcom/lzx/iteam/bean/CloudContact;

    .prologue
    .line 726
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    const-class v2, Lcom/lzx/iteam/CloudContactDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 727
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lzx.iteam.ACTION_CLOUD_CONTACT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 728
    const-string v1, "contact_id"

    iget-object v2, p1, Lcom/lzx/iteam/bean/CloudContact;->contactId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 729
    const-string v1, "current_contact_id"

    iget-object v2, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->contactId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 730
    const-string v1, "group_id"

    iget-object v2, p1, Lcom/lzx/iteam/bean/CloudContact;->groupId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 731
    const-string v1, "group_name"

    iget-object v2, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    const-string v1, "user_id"

    iget-object v2, p1, Lcom/lzx/iteam/bean/CloudContact;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 733
    iget-object v1, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    const/16 v2, 0x15

    invoke-virtual {v1, v0, v2}, Lcom/lzx/iteam/CloudDialerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 735
    return-void
.end method

.method private getPhoneNumStr(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/PhoneNumItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 633
    .local p1, "phoneNumList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/PhoneNumItem;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 634
    :cond_0
    const-string v2, ""

    .line 642
    :goto_0
    return-object v2

    .line 637
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 638
    .local v1, "phoneNum":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/PhoneNumItem;

    iget-object v2, v2, Lcom/lzx/iteam/bean/PhoneNumItem;->phoneNum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 642
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 640
    :cond_2
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/PhoneNumItem;

    iget-object v2, v2, Lcom/lzx/iteam/bean/PhoneNumItem;->phoneNum:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static hightLightMatch(Ljava/lang/String;III)Landroid/text/Spannable;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "hlColor"    # I
    .param p2, "keyStart"    # I
    .param p3, "keyCount"    # I

    .prologue
    const/16 v3, 0x21

    const/4 v1, 0x1

    .line 685
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 686
    .local v0, "wordtoSpan":Landroid/text/Spannable;
    if-ge p2, v1, :cond_0

    if-ge p3, v1, :cond_0

    .line 701
    :goto_0
    return-object v0

    .line 690
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt p2, v1, :cond_1

    if-lez p3, :cond_1

    .line 691
    sget-object v1, Lcom/lzx/iteam/adapter/CloudContactAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unexpected keyStart: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " keyCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 692
    :cond_1
    add-int v1, p2, p3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 693
    if-ltz p2, :cond_2

    .line 694
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 695
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 694
    invoke-interface {v0, v1, p2, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 696
    sget-object v1, Lcom/lzx/iteam/adapter/CloudContactAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unexpected keyStart: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " keyCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 698
    :cond_2
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 699
    add-int v2, p2, p3

    .line 698
    invoke-interface {v0, v1, p2, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method private inviteContact(Ljava/lang/String;)V
    .locals 5
    .param p1, "contactId"    # Ljava/lang/String;

    .prologue
    .line 1200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1201
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 1202
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1203
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "contact_id"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1204
    new-instance v0, Lcom/lzx/iteam/net/GetInviteContactMsg;

    .line 1205
    iget-object v2, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1204
    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/GetInviteContactMsg;-><init>(Landroid/os/Message;)V

    .line 1206
    .local v0, "getInviteContactMsg":Lcom/lzx/iteam/net/GetInviteContactMsg;
    const-string v2, "/api/contact/invite"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetInviteContactMsg;->mApi:Ljava/lang/String;

    .line 1207
    iput-object v1, v0, Lcom/lzx/iteam/net/GetInviteContactMsg;->mParams:Ljava/util/List;

    .line 1208
    iget-object v2, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 1209
    return-void
.end method


# virtual methods
.method public appendData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/CloudContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudContact;>;"
    iget-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 211
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->notifyDataSetChanged()V

    .line 212
    return-void
.end method

.method protected bindSectionHeader(Landroid/view/View;IZ)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "displaySectionHeader"    # Z

    .prologue
    const v5, 0x7f0e046e

    const v4, 0x7f0e01b6

    const/16 v3, 0x8

    .line 293
    const/4 p3, 0x0

    .line 294
    if-eqz p3, :cond_2

    .line 295
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 296
    .local v0, "sectionTitle":Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 297
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "sectionTitle":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 298
    .restart local v0    # "sectionTitle":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getSections()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getSectionForPosition(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    .end local v0    # "sectionTitle":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 304
    .restart local v0    # "sectionTitle":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getSections()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getSectionForPosition(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 307
    .end local v0    # "sectionTitle":Landroid/widget/TextView;
    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p0, p2}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getItemViewType(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 308
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 309
    .restart local v0    # "sectionTitle":Landroid/widget/TextView;
    if-nez v0, :cond_3

    .line 310
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "sectionTitle":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 311
    .restart local v0    # "sectionTitle":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 315
    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public changeContent(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/CloudContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 988
    .local p1, "cloudContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudContact;>;"
    iput-object p1, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactList:Ljava/util/ArrayList;

    .line 989
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->notifyDataSetChanged()V

    .line 990
    return-void
.end method

.method public changeSelectedContent()V
    .locals 10

    .prologue
    .line 996
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mIsShowSelected:Z

    .line 997
    iget-object v7, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mBackUpContactList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 998
    iget-object v7, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mBackUpContactList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 999
    iget-object v7, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1000
    iget-object v7, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1001
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1002
    .local v1, "chatContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ChatContact;>;"
    iget-object v7, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1003
    iget-object v7, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1012
    iget-object v7, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1013
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->notifyDataSetChanged()V

    .line 1014
    return-void

    .line 1003
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/CloudContact;

    .line 1004
    .local v2, "cloudContact":Lcom/lzx/iteam/bean/CloudContact;
    iget-object v4, v2, Lcom/lzx/iteam/bean/CloudContact;->userId:Ljava/lang/String;

    .line 1005
    .local v4, "userId":Ljava/lang/String;
    iget-object v6, v2, Lcom/lzx/iteam/bean/CloudContact;->contactName:Ljava/lang/String;

    .line 1007
    .local v6, "userName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/lzx/iteam/bean/CloudContact;->contactId:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1008
    .local v3, "contactId":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/lzx/iteam/bean/CloudContact;->contact_image:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1009
    .local v5, "userImg":Ljava/lang/String;
    new-instance v0, Lcom/lzx/iteam/bean/ChatContact;

    invoke-direct {v0, v4, v6, v3, v5}, Lcom/lzx/iteam/bean/ChatContact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    .local v0, "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public changeToAllContent()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 1020
    iget-boolean v10, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mIsShowSelected:Z

    if-eqz v10, :cond_0

    .line 1021
    iget-object v10, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1022
    iget-object v10, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactList:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mBackUpContactList:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1023
    iput-boolean v14, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mIsShowSelected:Z

    .line 1026
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1027
    .local v1, "chatContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ChatContact;>;"
    iget-object v10, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_2

    .line 1036
    iget-object v10, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1037
    iget-object v10, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1039
    iget-object v10, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    const/16 v11, 0xc

    invoke-virtual {v10, v11}, Lcom/lzx/iteam/CloudDialerActivity;->sendMessageToHandler(I)V

    .line 1042
    const/4 v9, 0x0

    .line 1043
    .local v9, "validsum":I
    const/4 v5, 0x0

    .line 1045
    .local v5, "invalidsum":I
    iget-object v10, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_3

    .line 1060
    add-int v10, v5, v9

    iget-object v11, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ne v10, v11, :cond_6

    .line 1061
    iget-object v10, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v10, v10, Lcom/lzx/iteam/CloudDialerActivity;->mCbSelectAll:Landroid/widget/CheckBox;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1067
    :goto_2
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->notifyDataSetChanged()V

    .line 1068
    return-void

    .line 1027
    .end local v5    # "invalidsum":I
    .end local v9    # "validsum":I
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/CloudContact;

    .line 1028
    .local v2, "cloudContact":Lcom/lzx/iteam/bean/CloudContact;
    iget-object v6, v2, Lcom/lzx/iteam/bean/CloudContact;->userId:Ljava/lang/String;

    .line 1029
    .local v6, "userId":Ljava/lang/String;
    iget-object v8, v2, Lcom/lzx/iteam/bean/CloudContact;->contactName:Ljava/lang/String;

    .line 1031
    .local v8, "userName":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, v2, Lcom/lzx/iteam/bean/CloudContact;->contactId:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1032
    .local v3, "contactId":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, v2, Lcom/lzx/iteam/bean/CloudContact;->contact_image:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1033
    .local v7, "userImg":Ljava/lang/String;
    new-instance v0, Lcom/lzx/iteam/bean/ChatContact;

    invoke-direct {v0, v6, v8, v3, v7}, Lcom/lzx/iteam/bean/ChatContact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    .local v0, "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1045
    .end local v0    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    .end local v2    # "cloudContact":Lcom/lzx/iteam/bean/CloudContact;
    .end local v3    # "contactId":Ljava/lang/String;
    .end local v6    # "userId":Ljava/lang/String;
    .end local v7    # "userImg":Ljava/lang/String;
    .end local v8    # "userName":Ljava/lang/String;
    .restart local v5    # "invalidsum":I
    .restart local v9    # "validsum":I
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/CloudContact;

    .line 1046
    .restart local v2    # "cloudContact":Lcom/lzx/iteam/bean/CloudContact;
    iget-object v6, v2, Lcom/lzx/iteam/bean/CloudContact;->userId:Ljava/lang/String;

    .line 1047
    .restart local v6    # "userId":Ljava/lang/String;
    iget-boolean v11, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->isHaveUnClickable:Z

    if-eqz v11, :cond_4

    const-string v11, "0"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1048
    add-int/lit8 v5, v5, 0x1

    .line 1049
    goto :goto_1

    .line 1051
    :cond_4
    iget-object v11, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lzx/iteam/bean/CloudContact;

    .line 1052
    .local v4, "exsitone":Lcom/lzx/iteam/bean/CloudContact;
    iget-object v12, v4, Lcom/lzx/iteam/bean/CloudContact;->contactId:Ljava/lang/String;

    iget-object v13, v2, Lcom/lzx/iteam/bean/CloudContact;->contactId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1053
    add-int/lit8 v9, v9, 0x1

    .line 1054
    goto/16 :goto_1

    .line 1063
    .end local v2    # "cloudContact":Lcom/lzx/iteam/bean/CloudContact;
    .end local v4    # "exsitone":Lcom/lzx/iteam/bean/CloudContact;
    .end local v6    # "userId":Ljava/lang/String;
    :cond_6
    iget-object v10, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v10, v10, Lcom/lzx/iteam/CloudDialerActivity;->mCbSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v10, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2
.end method

.method public clearSelected()V
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 902
    return-void
.end method

.method public configurePinnedHeader(Landroid/view/View;II)V
    .locals 0
    .param p1, "header"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "alpha"    # I

    .prologue
    .line 654
    return-void
.end method

.method public getAmazingView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 24
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 323
    invoke-virtual/range {p0 .. p1}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getItemViewType(I)I

    move-result v13

    .line 325
    .local v13, "p":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_d

    .line 326
    invoke-virtual/range {p0 .. p1}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getItem(I)Lcom/lzx/iteam/bean/CloudContact;

    move-result-object v5

    .line 328
    .local v5, "cloudContact":Lcom/lzx/iteam/bean/CloudContact;
    const/4 v8, 0x0

    .line 355
    .local v8, "holder":Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;
    if-nez p2, :cond_0

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f030041

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 358
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "holder":Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;
    check-cast v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;

    .line 359
    .restart local v8    # "holder":Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;
    if-nez v8, :cond_1

    .line 360
    new-instance v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;

    .end local v8    # "holder":Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;
    invoke-direct {v8}, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;-><init>()V

    .line 362
    .restart local v8    # "holder":Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;
    :cond_1
    const v18, 0x7f0e01b8

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iput-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->nameTextView:Landroid/widget/TextView;

    .line 363
    iget-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->nameTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->nameColor:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextColor(I)V

    .line 365
    iget-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->nameTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mFontSizeValue:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextSize(F)V

    .line 366
    const v18, 0x7f0e01ba

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iput-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->timesContactedView:Landroid/widget/TextView;

    .line 367
    const v18, 0x7f0e01bd

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iput-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->numberTextView:Landroid/widget/TextView;

    .line 368
    iget-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->numberTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->phoneColor:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextColor(I)V

    .line 369
    const v18, 0x7f0e01bc

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iput-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->orgTextView:Landroid/widget/TextView;

    .line 370
    iget-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->orgTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->jobTitleColor:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextColor(I)V

    .line 371
    const v18, 0x7f0e01b3

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    move-object/from16 v0, v18

    iput-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->checkBox:Landroid/widget/CheckBox;

    .line 372
    const v18, 0x7f0e01b4

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/lzx/iteam/widget/RoundImageView;

    move-object/from16 v0, v18

    iput-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->quickContact:Lcom/lzx/iteam/widget/RoundImageView;

    .line 373
    iget-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->quickContact:Lcom/lzx/iteam/widget/RoundImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v19, v0

    const/high16 v20, 0x41a00000    # 20.0f

    invoke-static/range {v19 .. v20}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/lzx/iteam/widget/RoundImageView;->setRectAdius(F)V

    .line 375
    const v18, 0x7f0e01b5

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    iput-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->cloudStatus:Landroid/widget/ImageView;

    .line 376
    const v18, 0x7f0e01b9

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    iput-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->inviteImg:Landroid/widget/ImageView;

    .line 377
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 389
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mInterrupted:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 390
    iget-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->quickContact:Lcom/lzx/iteam/widget/RoundImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Lcom/lzx/iteam/widget/RoundImageView;->setVisibility(I)V

    move-object/from16 v16, p2

    .line 628
    .end local v5    # "cloudContact":Lcom/lzx/iteam/bean/CloudContact;
    .end local v8    # "holder":Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;
    :goto_0
    return-object v16

    .line 394
    .restart local v5    # "cloudContact":Lcom/lzx/iteam/bean/CloudContact;
    .restart local v8    # "holder":Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;
    :cond_2
    iget-object v0, v5, Lcom/lzx/iteam/bean/CloudContact;->contactId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->contactId:Ljava/lang/Long;

    .line 396
    iget-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->inviteImg:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    new-instance v19, Lcom/lzx/iteam/adapter/CloudContactAdapter$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/lzx/iteam/adapter/CloudContactAdapter$2;-><init>(Lcom/lzx/iteam/adapter/CloudContactAdapter;Lcom/lzx/iteam/bean/CloudContact;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    iget-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->quickContact:Lcom/lzx/iteam/widget/RoundImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/lzx/iteam/widget/RoundImageView;->setVisibility(I)V

    .line 410
    iget v0, v5, Lcom/lzx/iteam/bean/CloudContact;->keyType:I

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 411
    iget-object v0, v5, Lcom/lzx/iteam/bean/CloudContact;->contactName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 412
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->hightLightColor:I

    move/from16 v19, v0

    iget v0, v5, Lcom/lzx/iteam/bean/CloudContact;->keyStartLocation:I

    move/from16 v20, v0

    iget v0, v5, Lcom/lzx/iteam/bean/CloudContact;->keyCount:I

    move/from16 v21, v0

    .line 411
    invoke-static/range {v18 .. v21}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->hightLightMatch(Ljava/lang/String;III)Landroid/text/Spannable;

    move-result-object v7

    .line 413
    .local v7, "hlName":Landroid/text/Spannable;
    iget-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->nameTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    .end local v7    # "hlName":Landroid/text/Spannable;
    :goto_1
    iget-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->numberTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 512
    iget-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->orgTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mGroupType:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mShowTimesContacted:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 529
    iget-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->timesContactedView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v19, v0

    const v20, 0x7f080066

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Lcom/lzx/iteam/CloudDialerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 529
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->timesContactedView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 550
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mIfCheckBoxShow:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 551
    iget-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 552
    iget-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->inviteImg:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 553
    iget-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->cloudStatus:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 554
    iget-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 555
    iget-object v0, v5, Lcom/lzx/iteam/bean/CloudContact;->userId:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "0"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 556
    iget-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const v19, 0x7f020093

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 564
    :goto_3
    const/4 v4, 0x0

    .line 568
    .local v4, "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    new-instance v4, Lcom/lzx/iteam/bean/ChatContact;

    .end local v4    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    new-instance v18, Ljava/lang/StringBuilder;

    iget-object v0, v5, Lcom/lzx/iteam/bean/CloudContact;->userId:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    iget-object v0, v5, Lcom/lzx/iteam/bean/CloudContact;->contactName:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    iget-object v0, v5, Lcom/lzx/iteam/bean/CloudContact;->contactId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v4, v0, v1, v2}, Lcom/lzx/iteam/bean/ChatContact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    .restart local v4    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-lt v9, v0, :cond_8

    .line 585
    .end local v4    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    .end local v9    # "i":I
    :goto_5
    iget-object v0, v5, Lcom/lzx/iteam/bean/CloudContact;->contact_image:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_c

    const-string v10, ""

    .line 586
    .local v10, "imgPath":Ljava/lang/String;
    :goto_6
    invoke-static {v10}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-object/from16 v18, v0

    iget-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->quickContact:Lcom/lzx/iteam/widget/RoundImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->animateFirstListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v10, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    .line 590
    :cond_3
    iput-object v5, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->item:Lcom/lzx/iteam/bean/CloudContact;

    .line 591
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object/from16 v16, p2

    .line 593
    goto/16 :goto_0

    .line 415
    .end local v10    # "imgPath":Ljava/lang/String;
    :cond_4
    iget-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->nameTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    iget-object v0, v5, Lcom/lzx/iteam/bean/CloudContact;->contactName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 534
    :cond_5
    iget-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->timesContactedView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 558
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->isHaveUnClickable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 559
    iget-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const v19, 0x7f020090

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    goto/16 :goto_3

    .line 561
    :cond_7
    iget-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const v19, 0x7f020093

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    goto/16 :goto_3

    .line 571
    .restart local v4    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    .restart local v9    # "i":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/lzx/iteam/bean/ChatContact;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 573
    iget-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 570
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 577
    .end local v4    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    .end local v9    # "i":I
    :cond_a
    iget-object v0, v5, Lcom/lzx/iteam/bean/CloudContact;->userId:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "0"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 578
    iget-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->inviteImg:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 583
    :goto_7
    iget-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_5

    .line 580
    :cond_b
    iget-object v0, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->inviteImg:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 585
    :cond_c
    iget-object v10, v5, Lcom/lzx/iteam/bean/CloudContact;->contact_image:Ljava/lang/String;

    goto/16 :goto_6

    .line 594
    .end local v5    # "cloudContact":Lcom/lzx/iteam/bean/CloudContact;
    .end local v8    # "holder":Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;
    :cond_d
    if-nez v13, :cond_e

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    .line 596
    const v19, 0x7f0300a3

    const/16 v20, 0x0

    .line 595
    invoke-virtual/range {v18 .. v20}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 597
    .local v16, "sectionText":Landroid/widget/TextView;
    const v18, 0x7f0e046e

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 598
    .local v17, "text":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p1}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getSectionForPosition(I)I

    move-result v15

    .line 600
    .local v15, "section":I
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getSections()[Ljava/lang/String;

    move-result-object v18

    aget-object v18, v18, v15

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->bindSectionHeader(Landroid/view/View;IZ)V

    goto/16 :goto_0

    .line 605
    .end local v15    # "section":I
    .end local v16    # "sectionText":Landroid/widget/TextView;
    .end local v17    # "text":Landroid/widget/TextView;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f0300df

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 606
    .local v6, "footerView":Landroid/view/View;
    const v18, 0x7f020214

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 607
    const v18, 0x7f0e05cd

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 608
    .local v11, "line":Landroid/widget/TextView;
    const v18, 0x7f0e05ce

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 609
    .local v12, "matchText":Landroid/widget/TextView;
    const v18, 0x7f0e05cf

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 611
    .local v14, "searchText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->nameColor:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 612
    const-string v18, "_____________________"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->jobTitleColor:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v18, v0

    const v19, 0x7f080067

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x2

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mTotalCount:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    .line 615
    invoke-virtual/range {v18 .. v20}, Lcom/lzx/iteam/CloudDialerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->phoneColor:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v18, v0

    const v19, 0x7f080068

    invoke-virtual/range {v18 .. v19}, Lcom/lzx/iteam/CloudDialerActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    new-instance v18, Lcom/lzx/iteam/adapter/CloudContactAdapter$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lzx/iteam/adapter/CloudContactAdapter$3;-><init>(Lcom/lzx/iteam/adapter/CloudContactAdapter;)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v16, v6

    .line 628
    goto/16 :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/lzx/iteam/bean/CloudContact;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 254
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getItemViewType(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 255
    iget-object v1, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/CloudContact;

    .line 257
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getItem(I)Lcom/lzx/iteam/bean/CloudContact;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 283
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method public getPinnedHeaderState(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 669
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 670
    :cond_0
    const/4 v2, 0x0

    .line 681
    :goto_0
    return v2

    .line 675
    :cond_1
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getSectionForPosition(I)I

    move-result v1

    .line 676
    .local v1, "section":I
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getPositionForSection(I)I

    move-result v0

    .line 677
    .local v0, "nextSectionPosition":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    add-int/lit8 v2, v0, -0x1

    if-ne p1, v2, :cond_2

    .line 678
    const/4 v2, 0x2

    goto :goto_0

    .line 681
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 658
    if-lez p1, :cond_0

    .line 659
    const/4 v0, -0x1

    .line 661
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 665
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getSections()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSections()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 233
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 234
    .local v0, "sect":[Ljava/lang/String;
    iget-object v1, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->section:Ljava/lang/String;

    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->section:Ljava/lang/String;

    aput-object v1, v0, v2

    .line 239
    :goto_0
    return-object v0

    .line 237
    :cond_0
    const-string v1, "\u4e91\u901a\u8baf\u5f55"

    aput-object v1, v0, v2

    goto :goto_0
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
    .line 897
    iget-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 18
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 771
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;

    .line 786
    .local v6, "holder":Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mTouchedView:Landroid/view/View;

    .line 789
    iget-object v10, v6, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->item:Lcom/lzx/iteam/bean/CloudContact;

    .line 790
    .local v10, "item":Lcom/lzx/iteam/bean/CloudContact;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mIfCheckBoxShow:Z

    if-eqz v14, :cond_f

    .line 791
    iget-object v14, v10, Lcom/lzx/iteam/bean/CloudContact;->userId:Ljava/lang/String;

    const-string v15, "0"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->isHaveUnClickable:Z

    if-eqz v14, :cond_1

    .line 792
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    const-string v15, "\u8be5\u7528\u6237\u672a\u6ce8\u518c\uff0c\u4e0d\u80fd\u8fdb\u884c\u5982\u4e0b\u64cd\u4f5c"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 876
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->notifyDataSetChanged()V

    .line 894
    :goto_1
    return-void

    .line 796
    :cond_1
    iget-object v14, v6, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v14}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    .line 797
    .local v9, "isChecked":Z
    iget-object v15, v6, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->checkBox:Landroid/widget/CheckBox;

    if-eqz v9, :cond_6

    const/4 v14, 0x0

    :goto_2
    invoke-virtual {v15, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 798
    const/4 v2, 0x0

    .line 802
    .local v2, "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    new-instance v2, Lcom/lzx/iteam/bean/ChatContact;

    .end local v2    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    new-instance v14, Ljava/lang/StringBuilder;

    iget-object v15, v10, Lcom/lzx/iteam/bean/CloudContact;->userId:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v10, Lcom/lzx/iteam/bean/CloudContact;->contactName:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    iget-object v0, v10, Lcom/lzx/iteam/bean/CloudContact;->contactId:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    iget-object v0, v10, Lcom/lzx/iteam/bean/CloudContact;->contact_image:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v2, v14, v15, v0, v1}, Lcom/lzx/iteam/bean/ChatContact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    .restart local v2    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    if-eqz v9, :cond_9

    .line 810
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_7

    .line 817
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_8

    .line 843
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    const/16 v15, 0xc

    invoke-virtual {v14, v15}, Lcom/lzx/iteam/CloudDialerActivity;->sendMessageToHandler(I)V

    .line 845
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mIsShowSelected:Z

    if-nez v14, :cond_0

    .line 847
    const/4 v13, 0x0

    .line 848
    .local v13, "validsum":I
    const/4 v8, 0x0

    .line 850
    .local v8, "invalidsum":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_5
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_b

    .line 865
    add-int v14, v8, v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ne v14, v15, :cond_e

    .line 866
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v14, v14, Lcom/lzx/iteam/CloudDialerActivity;->mCbSelectAll:Landroid/widget/CheckBox;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 797
    .end local v2    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    .end local v8    # "invalidsum":I
    .end local v13    # "validsum":I
    :cond_6
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 810
    .restart local v2    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    :cond_7
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/ChatContact;

    .line 811
    .local v3, "chatContact2":Lcom/lzx/iteam/bean/ChatContact;
    iget-object v15, v3, Lcom/lzx/iteam/bean/ChatContact;->contactId:Ljava/lang/String;

    iget-object v0, v2, Lcom/lzx/iteam/bean/ChatContact;->contactId:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 812
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 817
    .end local v3    # "chatContact2":Lcom/lzx/iteam/bean/ChatContact;
    :cond_8
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lzx/iteam/bean/CloudContact;

    .line 818
    .local v11, "item2":Lcom/lzx/iteam/bean/CloudContact;
    iget-object v15, v11, Lcom/lzx/iteam/bean/CloudContact;->contactId:Ljava/lang/String;

    iget-object v0, v10, Lcom/lzx/iteam/bean/CloudContact;->contactId:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 819
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 821
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mIsShowSelected:Z

    if-eqz v14, :cond_4

    .line 822
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 836
    .end local v11    # "item2":Lcom/lzx/iteam/bean/CloudContact;
    :cond_9
    sget-boolean v14, Lcom/lzx/iteam/CloudDialerActivity;->isSingleChoose:Z

    if-eqz v14, :cond_a

    .line 837
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 838
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 840
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 850
    .restart local v8    # "invalidsum":I
    .restart local v13    # "validsum":I
    :cond_b
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lzx/iteam/bean/CloudContact;

    .line 851
    .local v4, "cloudContact":Lcom/lzx/iteam/bean/CloudContact;
    iget-object v12, v4, Lcom/lzx/iteam/bean/CloudContact;->userId:Ljava/lang/String;

    .line 852
    .local v12, "userId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->isHaveUnClickable:Z

    if-eqz v15, :cond_c

    const-string v15, "0"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 853
    add-int/lit8 v8, v8, 0x1

    .line 854
    goto/16 :goto_5

    .line 856
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lzx/iteam/bean/CloudContact;

    .line 857
    .local v5, "exsitone":Lcom/lzx/iteam/bean/CloudContact;
    iget-object v0, v5, Lcom/lzx/iteam/bean/CloudContact;->contactId:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v4, Lcom/lzx/iteam/bean/CloudContact;->contactId:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 858
    add-int/lit8 v13, v13, 0x1

    .line 859
    goto/16 :goto_5

    .line 868
    .end local v4    # "cloudContact":Lcom/lzx/iteam/bean/CloudContact;
    .end local v5    # "exsitone":Lcom/lzx/iteam/bean/CloudContact;
    .end local v12    # "userId":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v14, v14, Lcom/lzx/iteam/CloudDialerActivity;->mCbSelectAll:Landroid/widget/CheckBox;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 878
    .end local v2    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    .end local v8    # "invalidsum":I
    .end local v9    # "isChecked":Z
    .end local v13    # "validsum":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->prefUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    invoke-virtual {v14}, Lcom/lzx/iteam/util/PreferenceUtil;->getPreference()Landroid/content/SharedPreferences;

    move-result-object v14

    .line 879
    const-string v15, "quick_dial"

    const/16 v16, 0x1

    .line 878
    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 880
    .local v7, "ifLongClickDial":Z
    if-nez v7, :cond_11

    .line 881
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->dial(Lcom/lzx/iteam/bean/CloudContact;)V

    .line 888
    :cond_10
    :goto_6
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mTouchedView:Landroid/view/View;

    goto/16 :goto_1

    .line 883
    :cond_11
    sget-boolean v14, Lcom/lzx/iteam/adapter/CloudContactAdapter;->opening:Z

    if-eqz v14, :cond_10

    .line 884
    const/4 v14, 0x0

    sput-boolean v14, Lcom/lzx/iteam/adapter/CloudContactAdapter;->opening:Z

    .line 885
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->displayCommunicationActivity(Lcom/lzx/iteam/bean/CloudContact;)V

    goto :goto_6
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 739
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;

    .line 740
    .local v0, "holder":Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;
    iget-object v2, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter$ContactEntryHolder;->item:Lcom/lzx/iteam/bean/CloudContact;

    .line 741
    .local v2, "item":Lcom/lzx/iteam/bean/CloudContact;
    iget-object v3, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->prefUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    invoke-virtual {v3}, Lcom/lzx/iteam/util/PreferenceUtil;->getPreference()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 742
    const-string v4, "quick_dial"

    .line 741
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 743
    .local v1, "ifLongClickDial":Z
    if-eqz v1, :cond_0

    .line 744
    invoke-direct {p0, v2}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->dial(Lcom/lzx/iteam/bean/CloudContact;)V

    .line 749
    :goto_0
    return v5

    .line 747
    :cond_0
    invoke-direct {p0, v2}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->displayCommunicationActivity(Lcom/lzx/iteam/bean/CloudContact;)V

    goto :goto_0
.end method

.method protected onNextPageRequested(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 289
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 245
    return-void
.end method

.method public selectAllContactIds(Z)V
    .locals 13
    .param p1, "select"    # Z

    .prologue
    .line 905
    if-eqz p1, :cond_6

    .line 907
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 910
    .local v1, "chatContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ChatContact;>;"
    iget-object v10, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_2

    .line 942
    iget-object v10, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 945
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eqz v10, :cond_1

    .line 946
    iget-object v10, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/lzx/iteam/CloudDialerActivity;->setSelectImage(Z)V

    .line 978
    .end local v1    # "chatContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ChatContact;>;"
    :cond_1
    :goto_1
    const-string v10, "size++"

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->notifyDataSetChanged()V

    .line 980
    return-void

    .line 910
    .restart local v1    # "chatContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ChatContact;>;"
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/CloudContact;

    .line 911
    .local v2, "cloudContact":Lcom/lzx/iteam/bean/CloudContact;
    iget-object v6, v2, Lcom/lzx/iteam/bean/CloudContact;->contactId:Ljava/lang/String;

    .line 912
    .local v6, "itemcontactId":Ljava/lang/String;
    iget-object v7, v2, Lcom/lzx/iteam/bean/CloudContact;->userId:Ljava/lang/String;

    .line 913
    .local v7, "userId":Ljava/lang/String;
    iget-boolean v11, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->isHaveUnClickable:Z

    if-eqz v11, :cond_3

    const-string v11, "0"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 918
    :cond_3
    const/4 v5, 0x0

    .line 919
    .local v5, "find":Z
    iget-object v11, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_5

    .line 928
    :goto_2
    if-nez v5, :cond_0

    .line 933
    iget-object v9, v2, Lcom/lzx/iteam/bean/CloudContact;->contactName:Ljava/lang/String;

    .line 935
    .local v9, "userName":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, v2, Lcom/lzx/iteam/bean/CloudContact;->contactId:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 936
    .local v4, "contactId":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, v2, Lcom/lzx/iteam/bean/CloudContact;->contact_image:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 937
    .local v8, "userImg":Ljava/lang/String;
    new-instance v0, Lcom/lzx/iteam/bean/ChatContact;

    invoke-direct {v0, v7, v9, v4, v8}, Lcom/lzx/iteam/bean/ChatContact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    .local v0, "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 939
    iget-object v11, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 919
    .end local v0    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    .end local v4    # "contactId":Ljava/lang/String;
    .end local v8    # "userImg":Ljava/lang/String;
    .end local v9    # "userName":Ljava/lang/String;
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/CloudContact;

    .line 921
    .local v3, "cloudContact2":Lcom/lzx/iteam/bean/CloudContact;
    iget-object v12, v3, Lcom/lzx/iteam/bean/CloudContact;->contactId:Ljava/lang/String;

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 923
    const/4 v5, 0x1

    .line 924
    goto :goto_2

    .line 954
    .end local v1    # "chatContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ChatContact;>;"
    .end local v2    # "cloudContact":Lcom/lzx/iteam/bean/CloudContact;
    .end local v3    # "cloudContact2":Lcom/lzx/iteam/bean/CloudContact;
    .end local v5    # "find":Z
    .end local v6    # "itemcontactId":Ljava/lang/String;
    .end local v7    # "userId":Ljava/lang/String;
    :cond_6
    iget-object v10, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_7
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_8

    .line 976
    iget-object v10, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/lzx/iteam/CloudDialerActivity;->setSelectImage(Z)V

    goto/16 :goto_1

    .line 954
    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/CloudContact;

    .line 955
    .restart local v2    # "cloudContact":Lcom/lzx/iteam/bean/CloudContact;
    iget-object v7, v2, Lcom/lzx/iteam/bean/CloudContact;->userId:Ljava/lang/String;

    .line 956
    .restart local v7    # "userId":Ljava/lang/String;
    iget-boolean v11, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->isHaveUnClickable:Z

    if-eqz v11, :cond_9

    const-string v11, "0"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 958
    :cond_9
    iget-object v11, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_c

    .line 965
    :goto_4
    iget-object v11, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/ChatContact;

    .line 966
    .restart local v0    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    iget-object v12, v0, Lcom/lzx/iteam/bean/ChatContact;->userId:Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 967
    iget-object v11, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 958
    .end local v0    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    :cond_c
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/CloudContact;

    .line 959
    .restart local v3    # "cloudContact2":Lcom/lzx/iteam/bean/CloudContact;
    iget-object v12, v3, Lcom/lzx/iteam/bean/CloudContact;->userId:Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 960
    iget-object v11, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public selectContactIds(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 1071
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ChatContact;>;"
    iget-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1072
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1075
    iget-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1088
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->notifyDataSetChanged()V

    .line 1089
    return-void
.end method

.method public setCloudContactCheckStyle(Z)V
    .locals 0
    .param p1, "isHaveUnClickable"    # Z

    .prologue
    .line 1158
    iput-boolean p1, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->isHaveUnClickable:Z

    .line 1159
    return-void
.end method

.method public setCurrentContactId(Ljava/lang/String;)V
    .locals 0
    .param p1, "contactId"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->contactId:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setIfCheckBoxShow(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 1106
    iput-boolean p1, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mIfCheckBoxShow:Z

    .line 1107
    iget-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1109
    return-void
.end method

.method public setIfCheckBoxShow(ZLjava/util/ArrayList;)V
    .locals 4
    .param p1, "show"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/ChatContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1112
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ChatContact;>;"
    iput-boolean p1, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mIfCheckBoxShow:Z

    .line 1113
    iget-object v2, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1114
    iget-object v2, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactIdSelected:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1115
    iget-object v2, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1116
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1117
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 1138
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/CloudDialerActivity;->sendMessageToHandler(I)V

    .line 1139
    return-void

    .line 1124
    .restart local v1    # "i":I
    :cond_1
    new-instance v0, Lcom/lzx/iteam/bean/CloudContact;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/CloudContact;-><init>()V

    .line 1126
    .local v0, "cloudContact":Lcom/lzx/iteam/bean/CloudContact;
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/ChatContact;

    iget-object v2, v2, Lcom/lzx/iteam/bean/ChatContact;->contactId:Ljava/lang/String;

    iput-object v2, v0, Lcom/lzx/iteam/bean/CloudContact;->contactId:Ljava/lang/String;

    .line 1127
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/ChatContact;

    iget-object v2, v2, Lcom/lzx/iteam/bean/ChatContact;->userName:Ljava/lang/String;

    iput-object v2, v0, Lcom/lzx/iteam/bean/CloudContact;->contactName:Ljava/lang/String;

    .line 1128
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/ChatContact;

    iget-object v2, v2, Lcom/lzx/iteam/bean/ChatContact;->userId:Ljava/lang/String;

    iput-object v2, v0, Lcom/lzx/iteam/bean/CloudContact;->userId:Ljava/lang/String;

    .line 1134
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/ChatContact;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/ChatContact;->getUserImg()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lzx/iteam/bean/CloudContact;->contact_image:Ljava/lang/String;

    .line 1135
    iget-object v2, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setInterrupted(Z)V
    .locals 0
    .param p1, "interrupted"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mInterrupted:Z

    .line 163
    return-void
.end method

.method public setSection(Ljava/lang/String;)V
    .locals 0
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->section:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public updateCloudGroup(Lcom/lzx/iteam/bean/CloudGroup;)V
    .locals 2
    .param p1, "group"    # Lcom/lzx/iteam/bean/CloudGroup;

    .prologue
    .line 166
    iget v0, p1, Lcom/lzx/iteam/bean/CloudGroup;->contactCount:I

    iput v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mTotalCount:I

    .line 167
    iget v0, p1, Lcom/lzx/iteam/bean/CloudGroup;->groupType:I

    iput v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mGroupType:I

    .line 168
    iget-object v0, p1, Lcom/lzx/iteam/bean/CloudGroup;->groupName:Ljava/lang/String;

    iput-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mGroupName:Ljava/lang/String;

    .line 169
    iget-wide v0, p1, Lcom/lzx/iteam/bean/CloudGroup;->groupId:J

    iput-wide v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mGroupId:J

    .line 171
    return-void
.end method

.method public updateData(Ljava/util/ArrayList;Z)V
    .locals 9
    .param p2, "isFuzzy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/CloudContact;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudContact;>;"
    if-eqz p1, :cond_1

    .line 175
    iget-object v5, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 176
    iget-object v5, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 177
    iput-boolean p2, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mIsFuzzy:Z

    .line 180
    const/4 v4, 0x0

    .line 181
    .local v4, "validsum":I
    const/4 v2, 0x0

    .line 183
    .local v2, "invalidsum":I
    iget-object v5, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 198
    add-int v5, v2, v4

    iget-object v6, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 199
    iget-object v5, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v5, v5, Lcom/lzx/iteam/CloudDialerActivity;->mCbSelectAll:Landroid/widget/CheckBox;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 205
    :goto_1
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->notifyDataSetChanged()V

    .line 207
    .end local v2    # "invalidsum":I
    .end local v4    # "validsum":I
    :cond_1
    return-void

    .line 183
    .restart local v2    # "invalidsum":I
    .restart local v4    # "validsum":I
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/CloudContact;

    .line 184
    .local v0, "cloudContact":Lcom/lzx/iteam/bean/CloudContact;
    iget-object v3, v0, Lcom/lzx/iteam/bean/CloudContact;->userId:Ljava/lang/String;

    .line 185
    .local v3, "userId":Ljava/lang/String;
    iget-boolean v6, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->isHaveUnClickable:Z

    if-eqz v6, :cond_3

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 186
    add-int/lit8 v2, v2, 0x1

    .line 187
    goto :goto_0

    .line 189
    :cond_3
    iget-object v6, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/CloudContact;

    .line 190
    .local v1, "exsitone":Lcom/lzx/iteam/bean/CloudContact;
    iget-object v7, v1, Lcom/lzx/iteam/bean/CloudContact;->contactId:Ljava/lang/String;

    iget-object v8, v0, Lcom/lzx/iteam/bean/CloudContact;->contactId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 191
    add-int/lit8 v4, v4, 0x1

    .line 192
    goto :goto_0

    .line 201
    .end local v0    # "cloudContact":Lcom/lzx/iteam/bean/CloudContact;
    .end local v1    # "exsitone":Lcom/lzx/iteam/bean/CloudContact;
    .end local v3    # "userId":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v5, v5, Lcom/lzx/iteam/CloudDialerActivity;->mCbSelectAll:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method
