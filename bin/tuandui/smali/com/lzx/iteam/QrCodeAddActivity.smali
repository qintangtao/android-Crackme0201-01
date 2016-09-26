.class public Lcom/lzx/iteam/QrCodeAddActivity;
.super Landroid/app/Activity;
.source "QrCodeAddActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/QrCodeAddActivity$InsertMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static final MESSAGE:I = 0x4e2


# instance fields
.field private isLocal:Z

.field private mAdapter:Lcom/lzx/iteam/adapter/QrGroupAdapter;

.field private mAddress:Ljava/lang/String;

.field private mBack:Landroid/widget/LinearLayout;

.field private mCenter:Lcom/lzx/iteam/net/CloudGroupListCenter;

.field private mCompany:Ljava/lang/String;

.field private mContactList:Landroid/widget/ListView;

.field private mDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDepartment:Ljava/lang/String;

.field private mDialog:Landroid/app/Dialog;

.field private mEmail:Ljava/lang/String;

.field private mGroupId:Ljava/lang/String;

.field private mGroupListData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/CloudGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mIvSelect:Landroid/widget/ImageView;

.field private mJob:Ljava/lang/String;

.field private mLocalUserMsg:Landroid/widget/TextView;

.field private mName:Ljava/lang/String;

.field private mPhone:Ljava/lang/String;

.field private mPhoneMore:Ljava/lang/String;

.field private mSave:Landroid/widget/TextView;

.field private mSid:Ljava/lang/String;

.field private mTagId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->isLocal:Z

    .line 61
    new-instance v0, Lcom/lzx/iteam/QrCodeAddActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/QrCodeAddActivity$1;-><init>(Lcom/lzx/iteam/QrCodeAddActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mHandler:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/QrCodeAddActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private toSaveContactInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 246
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 248
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/lzx/iteam/QrCodeAddActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 249
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 248
    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 250
    .local v2, "rawContactUri":Landroid/net/Uri;
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 253
    .local v0, "rawContactId":J
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 254
    const-string v4, "raw_contact_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 255
    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/name"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v4, "data2"

    iget-object v5, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/lzx/iteam/QrCodeAddActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 258
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 257
    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 261
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 263
    const-string v4, "raw_contact_id"

    .line 264
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 262
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 265
    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/organization"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v4, "data4"

    iget-object v5, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mJob:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v4, "data1"

    iget-object v5, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mCompany:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v4, "data2"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 270
    invoke-virtual {p0}, Lcom/lzx/iteam/QrCodeAddActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 271
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 270
    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 274
    iget-object v4, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mEmail:Ljava/lang/String;

    invoke-static {v4}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 276
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 278
    const-string v4, "raw_contact_id"

    .line 279
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 277
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 280
    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v4, "data1"

    iget-object v5, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mEmail:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v4, "data2"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 283
    invoke-virtual {p0}, Lcom/lzx/iteam/QrCodeAddActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 284
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 283
    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 302
    :cond_0
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 304
    const-string v4, "raw_contact_id"

    .line 305
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 303
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 306
    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v4, "data1"

    iget-object v5, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mPhone:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v4, "data2"

    const/16 v5, 0x11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 309
    invoke-virtual {p0}, Lcom/lzx/iteam/QrCodeAddActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 310
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 309
    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 349
    iget-object v4, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 350
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 352
    const-string v4, "raw_contact_id"

    .line 353
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 351
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 354
    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v4, "data1"

    iget-object v5, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mAddress:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v4, "data2"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 359
    invoke-virtual {p0}, Lcom/lzx/iteam/QrCodeAddActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 360
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 359
    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 362
    :cond_1
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 372
    iget-object v4, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 373
    const-string v4, "\u6dfb\u52a0\u6210\u529f"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 374
    invoke-virtual {p0}, Lcom/lzx/iteam/QrCodeAddActivity;->finish()V

    .line 375
    return-void
.end method


# virtual methods
.method public getData()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/lzx/iteam/QrCodeAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mDatas:Ljava/util/ArrayList;

    .line 141
    iget-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mName:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mPhone:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    iput-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mCompany:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_3
    iput-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mJob:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_4
    iput-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mEmail:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mDatas:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, ""

    :goto_5
    iput-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mAddress:Ljava/lang/String;

    .line 149
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mDepartment:Ljava/lang/String;

    .line 150
    const-string v0, "0"

    iput-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mTagId:Ljava/lang/String;

    .line 151
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v0

    iget-object v0, v0, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    iput-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mSid:Ljava/lang/String;

    .line 152
    const-string v0, "QRCODE_DATA"

    iget-object v1, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3

    .line 146
    :cond_4
    iget-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_4

    .line 147
    :cond_5
    iget-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mDatas:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_5
.end method

.method public initHeadView()Landroid/view/View;
    .locals 4

    .prologue
    .line 127
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300d2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 128
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e01e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mLocalUserMsg:Landroid/widget/TextView;

    .line 129
    sget v1, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->ALL_CONTACTS_NUMBER:I

    if-eqz v1, :cond_0

    sget-object v1, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mGroupList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mNoGroupsSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    :cond_0
    invoke-static {p0}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->resetAllContactsNumber(Landroid/content/Context;)V

    .line 131
    iget-object v1, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mLocalUserMsg:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    sget v3, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->ALL_CONTACTS_NUMBER:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u4e2a\u8054\u7cfb\u4eba"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :goto_0
    const v1, 0x7f0e0563

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mIvSelect:Landroid/widget/ImageView;

    .line 136
    return-object v0

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mLocalUserMsg:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    sget v3, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->ALL_CONTACTS_NUMBER:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u4e2a\u8054\u7cfb\u4eba"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public initProperty()V
    .locals 2

    .prologue
    .line 114
    invoke-static {p0}, Lcom/lzx/iteam/net/CloudGroupListCenter;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/CloudGroupListCenter;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mCenter:Lcom/lzx/iteam/net/CloudGroupListCenter;

    .line 115
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 116
    new-instance v0, Lcom/lzx/iteam/adapter/QrGroupAdapter;

    iget-object v1, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-direct {v0, p0, v1}, Lcom/lzx/iteam/adapter/QrGroupAdapter;-><init>(Landroid/app/Activity;Lcom/nostra13/universalimageloader/core/ImageLoader;)V

    iput-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mAdapter:Lcom/lzx/iteam/adapter/QrGroupAdapter;

    .line 117
    iget-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mCenter:Lcom/lzx/iteam/net/CloudGroupListCenter;

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/net/CloudGroupListCenter;->getCloudGroupList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mGroupListData:Ljava/util/ArrayList;

    .line 119
    iget-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mContactList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mAdapter:Lcom/lzx/iteam/adapter/QrGroupAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    iget-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mContactList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mAdapter:Lcom/lzx/iteam/adapter/QrGroupAdapter;

    iget-object v1, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mGroupListData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/QrGroupAdapter;->updateCloudGroupList(Ljava/util/ArrayList;)V

    .line 122
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/util/AllDialogUtil;->waitDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mDialog:Landroid/app/Dialog;

    .line 124
    return-void
.end method

.method public initView()V
    .locals 1

    .prologue
    .line 105
    const v0, 0x7f0e0214

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/QrCodeAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mContactList:Landroid/widget/ListView;

    .line 106
    const v0, 0x7f0e0212

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/QrCodeAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mBack:Landroid/widget/LinearLayout;

    .line 107
    iget-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v0, 0x7f0e0213

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/QrCodeAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mSave:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mSave:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method

.method public insertContact()V
    .locals 5

    .prologue
    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_id"

    iget-object v4, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mGroupId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "tag_id"

    iget-object v4, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mTagId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "user_phone"

    iget-object v4, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mPhone:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    iget-object v4, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v0, Lcom/lzx/iteam/QrCodeAddActivity$InsertMessage;

    iget-object v2, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x4e2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/lzx/iteam/QrCodeAddActivity$InsertMessage;-><init>(Lcom/lzx/iteam/QrCodeAddActivity;Landroid/os/Message;)V

    .line 192
    .local v0, "message":Lcom/lzx/iteam/QrCodeAddActivity$InsertMessage;
    const-string v2, "/api/contact/add_by_scaning"

    iput-object v2, v0, Lcom/lzx/iteam/QrCodeAddActivity$InsertMessage;->mApi:Ljava/lang/String;

    .line 193
    iput-object v1, v0, Lcom/lzx/iteam/QrCodeAddActivity$InsertMessage;->mParams:Ljava/util/List;

    .line 194
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 195
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 178
    :goto_0
    return-void

    .line 160
    :pswitch_0
    invoke-virtual {p0}, Lcom/lzx/iteam/QrCodeAddActivity;->finish()V

    goto :goto_0

    .line 163
    :pswitch_1
    iget-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mGroupId:Ljava/lang/String;

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 165
    invoke-virtual {p0}, Lcom/lzx/iteam/QrCodeAddActivity;->insertContact()V

    goto :goto_0

    .line 167
    :cond_0
    const-string v0, "\u8bf7\u9009\u62e9\u56e2\u961f"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x7f0e0212
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v0, 0x7f03004e

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/QrCodeAddActivity;->setContentView(I)V

    .line 98
    invoke-virtual {p0}, Lcom/lzx/iteam/QrCodeAddActivity;->initView()V

    .line 99
    invoke-virtual {p0}, Lcom/lzx/iteam/QrCodeAddActivity;->initProperty()V

    .line 100
    invoke-virtual {p0}, Lcom/lzx/iteam/QrCodeAddActivity;->getData()V

    .line 102
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mGroupListData:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/CloudGroup;

    iget v0, v2, Lcom/lzx/iteam/bean/CloudGroup;->groupType:I

    .line 380
    .local v0, "groupType":I
    iget-object v2, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mGroupListData:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/CloudGroup;

    iget-object v1, v2, Lcom/lzx/iteam/bean/CloudGroup;->userType:Ljava/lang/String;

    .line 382
    .local v1, "userType":Ljava/lang/String;
    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 383
    :cond_0
    iget-object v2, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mAdapter:Lcom/lzx/iteam/adapter/QrGroupAdapter;

    invoke-virtual {v2, p3}, Lcom/lzx/iteam/adapter/QrGroupAdapter;->setSelect(I)V

    .line 384
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mGroupListData:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/CloudGroup;

    iget-wide v4, v2, Lcom/lzx/iteam/bean/CloudGroup;->groupId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mGroupId:Ljava/lang/String;

    .line 411
    :goto_0
    return-void

    .line 386
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 387
    iget-object v2, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mAdapter:Lcom/lzx/iteam/adapter/QrGroupAdapter;

    invoke-virtual {v2, p3}, Lcom/lzx/iteam/adapter/QrGroupAdapter;->setSelect(I)V

    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mGroupListData:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/CloudGroup;

    iget-wide v4, v2, Lcom/lzx/iteam/bean/CloudGroup;->groupId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/QrCodeAddActivity;->mGroupId:Ljava/lang/String;

    goto :goto_0

    .line 390
    :cond_2
    const-string v2, "\u4e0d\u5141\u8bb8\u6dfb\u52a0\u65b0\u4eba"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
