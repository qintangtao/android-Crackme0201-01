.class public Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;
.super Ljava/lang/Object;
.source "PersistWorker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PersistWorker"

.field static currentContactIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static emailString:Ljava/lang/StringBuilder;

.field static groupIdSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPersistWorker:Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;

.field static noteString:Ljava/lang/StringBuilder;

.field static orgnization:Ljava/lang/StringBuilder;

.field static phoneNumArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static phoneNumberAreaArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static wxFlag:Ljava/lang/StringBuilder;


# instance fields
.field public isRunning:Z

.field private mContactDelete:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContactInsert:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContactUpdate:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDialerApp:Lcom/lzx/iteam/DialerApp;

.field private mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mResolver:Landroid/content/ContentResolver;

.field public mServiceStartup:Z

.field private wx_ids:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->currentContactIds:Ljava/util/HashSet;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->phoneNumArr:Ljava/util/ArrayList;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->phoneNumberAreaArr:Ljava/util/ArrayList;

    .line 201
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->groupIdSet:Ljava/util/HashSet;

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->orgnization:Ljava/lang/StringBuilder;

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->emailString:Ljava/lang/StringBuilder;

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->noteString:Ljava/lang/StringBuilder;

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->wxFlag:Ljava/lang/StringBuilder;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 43
    iput-boolean v1, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mServiceStartup:Z

    .line 49
    iput-boolean v1, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->isRunning:Z

    .line 50
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->wx_ids:Ljava/lang/StringBuffer;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mResolver:Landroid/content/ContentResolver;

    .line 55
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/DialerApp;

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mDialerApp:Lcom/lzx/iteam/DialerApp;

    .line 58
    invoke-static {p1}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 59
    invoke-static {p1}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    .line 61
    return-void
.end method

.method private generateFuzzyIndex(Landroid/database/Cursor;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 52
    .param p1, "contacts"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p2, "contactInsert":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .local p3, "contactUpdate":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .local p4, "contactDelete":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v4, "all_persist_contactId"

    invoke-virtual {v2, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/util/HashSet;

    .line 211
    .local v35, "persistedContactId":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 212
    .local v13, "contactIdToDel":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->currentContactIds:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 215
    sget-boolean v2, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mPersistInterrupted:Z

    if-eqz v2, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    iget-object v2, v2, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mFirstLetterStr:Ljava/lang/StringBuilder;

    if-nez v2, :cond_2

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/lzx/iteam/util/StringUtil;->getFirstLetterStr(Landroid/content/Context;)Ljava/lang/StringBuilder;

    move-result-object v4

    iput-object v4, v2, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mFirstLetterStr:Ljava/lang/StringBuilder;

    .line 222
    :cond_2
    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 223
    const/16 v32, 0x0

    .line 225
    .local v32, "needSave":Z
    :cond_3
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_7

    .line 491
    if-eqz v35, :cond_4

    if-eqz p4, :cond_4

    .line 492
    move-object/from16 v0, p4

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 495
    :cond_4
    move-object/from16 v13, v35

    .line 496
    if-eqz v13, :cond_5

    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 497
    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .line 498
    .local v30, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/lzx/iteam/util/StringUtil;->getHanziPinyin(Landroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v4

    iput-object v4, v2, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHanziPinyin:Ljava/lang/StringBuilder;

    .line 499
    :goto_2
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_31

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHanziPinyin:Ljava/lang/StringBuilder;

    .line 521
    .end local v30    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mFirstLetterStr:Ljava/lang/StringBuilder;

    .line 522
    if-eqz v32, :cond_6

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v4, "all_persist_contactId"

    sget-object v5, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->currentContactIds:Ljava/util/HashSet;

    invoke-virtual {v2, v4, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->saveObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 529
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->wx_ids:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v4, "wx_ids_set"

    invoke-virtual {v2, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->delete(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 226
    :cond_7
    sget-boolean v2, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mPersistInterrupted:Z

    if-eqz v2, :cond_8

    .line 227
    if-eqz v32, :cond_0

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v4, "all_persist_contactId"

    .line 229
    sget-object v5, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->currentContactIds:Ljava/util/HashSet;

    .line 228
    invoke-virtual {v2, v4, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->saveObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 234
    :cond_8
    const/16 v22, 0x0

    .line 235
    .local v22, "fullName":Ljava/lang/String;
    const/16 v34, 0x0

    .line 236
    .local v34, "organizationName":Ljava/lang/String;
    const/16 v20, 0x0

    .line 237
    .local v20, "email":Ljava/lang/String;
    const/16 v33, 0x0

    .line 238
    .local v33, "note":Ljava/lang/String;
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->phoneNumArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 239
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->phoneNumberAreaArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 240
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->groupIdSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 241
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->emailString:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 242
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->orgnization:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 243
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->noteString:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 245
    const-wide/16 v14, 0x0

    .line 246
    .local v14, "contactId":J
    const-wide/16 v44, 0x0

    .line 247
    .local v44, "rawId":J
    const-wide/16 v40, 0x0

    .line 248
    .local v40, "photoId":J
    const-wide/16 v48, 0x0

    .line 249
    .local v48, "version":J
    const/16 v47, 0x0

    .line 251
    .local v47, "type":I
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 252
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 253
    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 254
    const/4 v2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 256
    .local v28, "hasPhoneNumber":I
    if-nez v28, :cond_9

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v14, v15}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->checkContactNameExistByID(Landroid/content/ContentResolver;J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 262
    :cond_9
    invoke-static/range {v22 .. v22}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mContext:Landroid/content/Context;

    const v4, 0x7f080080

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 265
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v14, v15}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getRawContactIdAndVersion(Landroid/content/ContentResolver;J)[J

    move-result-object v43

    .line 266
    .local v43, "ret":[J
    const/4 v2, 0x0

    aget-wide v44, v43, v2

    .line 267
    const/4 v2, 0x1

    aget-wide v48, v43, v2

    .line 270
    if-eqz v35, :cond_20

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    invoke-virtual {v2, v14, v15}, Lcom/lzx/iteam/util/PreferenceUtil;->getPerson(J)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v36

    .line 272
    .local v36, "person":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    if-eqz v36, :cond_1f

    .line 273
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 274
    invoke-virtual/range {v36 .. v36}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getVersion()J

    move-result-wide v4

    cmp-long v2, v4, v48

    if-eqz v2, :cond_1e

    .line 275
    const/16 v47, 0x1

    .line 294
    .end local v36    # "person":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    :cond_b
    :goto_3
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->currentContactIds:Ljava/util/HashSet;

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 295
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 296
    .local v16, "contactUri":Landroid/net/Uri;
    const-string v17, "data"

    .line 297
    .local v17, "dataDir":Ljava/lang/String;
    invoke-static/range {v16 .. v17}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 299
    .local v3, "methodUri":Landroid/net/Uri;
    const/4 v11, 0x0

    .line 301
    .local v11, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 302
    sget-object v4, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->DATA_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 301
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 310
    if-eqz v11, :cond_c

    .line 312
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v29

    .line 313
    .local v29, "isTrue":Z
    :goto_4
    if-nez v29, :cond_21

    .line 371
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 377
    .end local v29    # "isTrue":Z
    :cond_c
    :goto_5
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->orgnization:Ljava/lang/StringBuilder;

    if-eqz v2, :cond_d

    .line 378
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->orgnization:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 381
    :cond_d
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->emailString:Ljava/lang/StringBuilder;

    if-eqz v2, :cond_e

    .line 382
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->emailString:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 385
    :cond_e
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .local v25, "fuzzyStringSb":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->phoneNumberAreaArr:Ljava/util/ArrayList;

    if-eqz v2, :cond_10

    .line 387
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->phoneNumberAreaArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 395
    :cond_10
    invoke-static/range {v22 .. v22}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 396
    new-instance v46, Ljava/lang/StringBuffer;

    move-object/from16 v0, v46

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 397
    .local v46, "sb":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mContext:Landroid/content/Context;

    .line 398
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    iget-object v4, v4, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mFirstLetterStr:Ljava/lang/StringBuilder;

    .line 397
    move-object/from16 v0, v46

    invoke-static {v2, v0, v4}, Lcom/lzx/iteam/util/StringUtil;->trasferDisplayName(Landroid/content/Context;Ljava/lang/StringBuffer;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    const-string v2, ","

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .end local v46    # "sb":Ljava/lang/StringBuffer;
    :cond_11
    invoke-static/range {v34 .. v34}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 403
    new-instance v46, Ljava/lang/StringBuffer;

    move-object/from16 v0, v46

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 404
    .restart local v46    # "sb":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mContext:Landroid/content/Context;

    .line 405
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    iget-object v4, v4, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mFirstLetterStr:Ljava/lang/StringBuilder;

    .line 404
    move-object/from16 v0, v46

    invoke-static {v2, v0, v4}, Lcom/lzx/iteam/util/StringUtil;->trasferGOJ(Landroid/content/Context;Ljava/lang/StringBuffer;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .end local v46    # "sb":Ljava/lang/StringBuffer;
    :cond_12
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->phoneNumberAreaArr:Ljava/util/ArrayList;

    if-eqz v2, :cond_13

    .line 409
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->phoneNumberAreaArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2c

    .line 417
    :cond_13
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->noteString:Ljava/lang/StringBuilder;

    if-eqz v2, :cond_14

    .line 418
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->noteString:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 421
    :cond_14
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mContext:Landroid/content/Context;

    .line 423
    new-instance v4, Ljava/lang/StringBuffer;

    move-object/from16 v0, v33

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    iget-object v5, v5, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mFirstLetterStr:Ljava/lang/StringBuilder;

    .line 422
    invoke-static {v2, v4, v5}, Lcom/lzx/iteam/util/StringUtil;->trasferDisplayName(Landroid/content/Context;Ljava/lang/StringBuffer;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    :cond_15
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 429
    .local v23, "fuzzy":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    move-object/from16 v0, v23

    invoke-virtual {v2, v14, v15, v0}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->addFuzzyString(JLjava/lang/String;)V

    .line 431
    if-nez v47, :cond_2d

    if-eqz p2, :cond_2d

    .line 432
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_16
    :goto_8
    const/4 v2, 0x3

    move/from16 v0, v47

    if-eq v0, v2, :cond_3

    .line 439
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    move-result-object v10

    .line 441
    .local v10, "builder":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setDisplayName(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 442
    move-wide/from16 v0, v40

    invoke-virtual {v10, v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setPhotoId(J)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 443
    move-wide/from16 v0, v44

    invoke-virtual {v10, v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setRawId(J)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 444
    if-nez v34, :cond_17

    .line 445
    const-string v34, ""

    .line 447
    :cond_17
    move-object/from16 v0, v34

    invoke-virtual {v10, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setOrganization(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 449
    if-nez v20, :cond_18

    .line 450
    const-string v20, ""

    .line 452
    :cond_18
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 453
    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setFuzzyString(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 454
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setContactedNumber(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 455
    move-wide/from16 v0, v48

    invoke-virtual {v10, v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setVersion(J)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 456
    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setNote(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 458
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->phoneNumArr:Ljava/util/ArrayList;

    if-eqz v2, :cond_1a

    .line 459
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->phoneNumArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2e

    .line 467
    :cond_1a
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->phoneNumberAreaArr:Ljava/util/ArrayList;

    if-eqz v2, :cond_1c

    .line 468
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->phoneNumberAreaArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 476
    :cond_1c
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->groupIdSet:Ljava/util/HashSet;

    if-eqz v2, :cond_1d

    .line 477
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->groupIdSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .line 478
    .restart local v30    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_b
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_30

    .line 484
    .end local v30    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1d
    invoke-virtual {v10}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v36

    .line 486
    .restart local v36    # "person":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    invoke-virtual {v2, v14, v15}, Lcom/lzx/iteam/util/PreferenceUtil;->deletePerson(J)V

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    move-object/from16 v0, v36

    invoke-virtual {v2, v14, v15, v0}, Lcom/lzx/iteam/util/PreferenceUtil;->savePerson(JLcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)V

    goto/16 :goto_1

    .line 277
    .end local v3    # "methodUri":Landroid/net/Uri;
    .end local v10    # "builder":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v16    # "contactUri":Landroid/net/Uri;
    .end local v17    # "dataDir":Ljava/lang/String;
    .end local v23    # "fuzzy":Ljava/lang/String;
    .end local v25    # "fuzzyStringSb":Ljava/lang/StringBuilder;
    :cond_1e
    const/16 v47, 0x3

    .line 278
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mServiceStartup:Z

    if-nez v2, :cond_b

    .line 280
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->currentContactIds:Ljava/util/HashSet;

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 285
    :cond_1f
    const/16 v32, 0x1

    .line 287
    const/16 v47, 0x0

    .line 289
    goto/16 :goto_3

    .line 290
    .end local v36    # "person":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    :cond_20
    const/16 v32, 0x1

    .line 292
    const/16 v47, 0x0

    goto/16 :goto_3

    .line 304
    .restart local v3    # "methodUri":Landroid/net/Uri;
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v16    # "contactUri":Landroid/net/Uri;
    .restart local v17    # "dataDir":Ljava/lang/String;
    :catch_0
    move-exception v2

    if-eqz v11, :cond_3

    .line 305
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 314
    .restart local v29    # "isTrue":Z
    :cond_21
    :try_start_2
    const-string v2, "mimetype"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 315
    .local v31, "mime":Ljava/lang/String;
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 316
    const-string v2, "data1"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 317
    .local v38, "phoneNumber":Ljava/lang/String;
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->phoneNumArr:Ljava/util/ArrayList;

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/util/PhoneNumberArea;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PhoneNumberArea;

    move-result-object v39

    .line 320
    .local v39, "phoneNumberArea":Lcom/lzx/iteam/util/PhoneNumberArea;
    const/4 v2, 0x0

    .line 319
    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PhoneNumberArea;->getArea(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 321
    .local v8, "area":Ljava/lang/String;
    invoke-static {v8}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 322
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->phoneNumberAreaArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 323
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->phoneNumberAreaArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    .end local v8    # "area":Ljava/lang/String;
    .end local v38    # "phoneNumber":Ljava/lang/String;
    .end local v39    # "phoneNumberArea":Lcom/lzx/iteam/util/PhoneNumberArea;
    :cond_22
    :goto_c
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v29

    goto/16 :goto_4

    .line 326
    :cond_23
    const-string v2, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 328
    const-string v2, "data1"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 327
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 329
    .local v27, "groupId":Ljava/lang/String;
    if-eqz v27, :cond_22

    sget-object v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mGroupList:Ljava/util/HashMap;

    if-eqz v2, :cond_22

    .line 330
    sget-object v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mGroupList:Ljava/util/HashMap;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;

    .line 331
    .local v26, "group":Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;
    if-eqz v26, :cond_22

    .line 332
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->groupIdSet:Ljava/util/HashSet;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_c

    .line 368
    .end local v26    # "group":Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;
    .end local v27    # "groupId":Ljava/lang/String;
    .end local v29    # "isTrue":Z
    .end local v31    # "mime":Ljava/lang/String;
    :catch_1
    move-exception v19

    .line 369
    .local v19, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 371
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 336
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v29    # "isTrue":Z
    .restart local v31    # "mime":Ljava/lang/String;
    :cond_24
    :try_start_4
    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 337
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->emailString:Ljava/lang/StringBuilder;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->emailString:Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_c

    .line 370
    .end local v29    # "isTrue":Z
    .end local v31    # "mime":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 371
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 372
    throw v2

    .line 340
    .restart local v29    # "isTrue":Z
    .restart local v31    # "mime":Ljava/lang/String;
    :cond_25
    :try_start_5
    const-string v2, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 342
    const-string v2, "data1"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 341
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 344
    .local v12, "company":Ljava/lang/String;
    const-string v2, "data4"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 343
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 345
    .local v42, "post":Ljava/lang/String;
    invoke-static/range {v42 .. v42}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 346
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->orgnization:Ljava/lang/StringBuilder;

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_26
    invoke-static {v12}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 349
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->orgnization:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_27

    .line 350
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->orgnization:Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_27
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->orgnization:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 354
    .end local v12    # "company":Ljava/lang/String;
    .end local v42    # "post":Ljava/lang/String;
    :cond_28
    const-string v2, "vnd.android.cursor.item/note"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 355
    sget-object v2, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->noteString:Ljava/lang/StringBuilder;

    .line 356
    const-string v4, "data1"

    .line 355
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 356
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 357
    :cond_29
    const-string v2, "vnd.android.cursor.item/vnd.com.tencent.mm.chatting.profile"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 358
    const-string v2, "data2"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v50

    .line 359
    .local v50, "wx_tag":Ljava/lang/String;
    const-string v2, "data3"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v51

    .line 360
    .local v51, "wx_type":Ljava/lang/String;
    const-string v2, "\u5fae\u4fe1"

    move-object/from16 v0, v50

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, "\u53d1\u9001\u6d88\u606f"

    move-object/from16 v0, v51

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string v2, "\u804a\u5929"

    move-object/from16 v0, v51

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 361
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->wx_ids:Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->wx_ids:Ljava/lang/StringBuffer;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_c

    .line 387
    .end local v29    # "isTrue":Z
    .end local v31    # "mime":Ljava/lang/String;
    .end local v50    # "wx_tag":Ljava/lang/String;
    .end local v51    # "wx_type":Ljava/lang/String;
    .restart local v25    # "fuzzyStringSb":Ljava/lang/StringBuilder;
    :cond_2b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 388
    .local v9, "areaElement":Ljava/lang/String;
    invoke-static {v9}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 389
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mContext:Landroid/content/Context;

    .line 390
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    iget-object v6, v6, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mFirstLetterStr:Ljava/lang/StringBuilder;

    .line 389
    invoke-static {v4, v5, v6}, Lcom/lzx/iteam/util/StringUtil;->trasferDisplayName(Landroid/content/Context;Ljava/lang/StringBuffer;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const-string v4, ","

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 409
    .end local v9    # "areaElement":Ljava/lang/String;
    :cond_2c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 410
    .restart local v9    # "areaElement":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mContext:Landroid/content/Context;

    .line 411
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    iget-object v6, v6, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mFirstLetterStr:Ljava/lang/StringBuilder;

    .line 410
    invoke-static {v4, v5, v6}, Lcom/lzx/iteam/util/StringUtil;->trasferDisplayName(Landroid/content/Context;Ljava/lang/StringBuffer;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v24

    .line 412
    .local v24, "fuzzyArea":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 413
    const/4 v4, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 433
    .end local v9    # "areaElement":Ljava/lang/String;
    .end local v24    # "fuzzyArea":Ljava/lang/String;
    .restart local v23    # "fuzzy":Ljava/lang/String;
    :cond_2d
    const/4 v2, 0x1

    move/from16 v0, v47

    if-ne v0, v2, :cond_16

    if-eqz p3, :cond_16

    .line 434
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 459
    .restart local v10    # "builder":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    :cond_2e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 460
    .local v37, "phoneElement":Ljava/lang/String;
    invoke-static/range {v37 .. v37}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 461
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v4

    .line 462
    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->setNumber(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v4

    .line 461
    invoke-virtual {v10, v4}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->addPhone(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    goto/16 :goto_9

    .line 468
    .end local v37    # "phoneElement":Ljava/lang/String;
    :cond_2f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 469
    .restart local v9    # "areaElement":Ljava/lang/String;
    invoke-static {v9}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 470
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->setArea(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->addPhoneNumberArea(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    goto/16 :goto_a

    .line 479
    .end local v9    # "areaElement":Ljava/lang/String;
    .restart local v30    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_30
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 480
    .restart local v27    # "groupId":Ljava/lang/String;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v2

    .line 481
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 480
    invoke-virtual {v2, v4, v5}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->setGroupId(J)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->addGroupIdSet(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    goto/16 :goto_b

    .line 501
    .end local v3    # "methodUri":Landroid/net/Uri;
    .end local v10    # "builder":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v14    # "contactId":J
    .end local v16    # "contactUri":Landroid/net/Uri;
    .end local v17    # "dataDir":Ljava/lang/String;
    .end local v20    # "email":Ljava/lang/String;
    .end local v22    # "fullName":Ljava/lang/String;
    .end local v23    # "fuzzy":Ljava/lang/String;
    .end local v25    # "fuzzyStringSb":Ljava/lang/StringBuilder;
    .end local v27    # "groupId":Ljava/lang/String;
    .end local v28    # "hasPhoneNumber":I
    .end local v33    # "note":Ljava/lang/String;
    .end local v34    # "organizationName":Ljava/lang/String;
    .end local v40    # "photoId":J
    .end local v43    # "ret":[J
    .end local v44    # "rawId":J
    .end local v47    # "type":I
    .end local v48    # "version":J
    :cond_31
    sget-boolean v2, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mPersistInterrupted:Z

    if-eqz v2, :cond_32

    .line 502
    if-eqz v32, :cond_0

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v4, "all_persist_contactId"

    sget-object v5, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->currentContactIds:Ljava/util/HashSet;

    invoke-virtual {v2, v4, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->saveObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 507
    :cond_32
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 508
    .local v14, "contactId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    invoke-virtual {v2, v14}, Lcom/lzx/iteam/util/PreferenceUtil;->getPerson(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v36

    .line 509
    .restart local v36    # "person":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    const/16 v18, 0x0

    .line 510
    .local v18, "displayName":Ljava/lang/String;
    if-eqz v36, :cond_33

    .line 511
    invoke-virtual/range {v36 .. v36}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getDisplayName()Ljava/lang/String;

    move-result-object v18

    .line 514
    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v4, v5}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->delPinyinDict(Ljava/lang/String;J)V

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    invoke-virtual {v2, v14}, Lcom/lzx/iteam/util/PreferenceUtil;->deletePerson(Ljava/lang/String;)V

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    invoke-virtual {v2}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getContactInfo()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 532
    .end local v14    # "contactId":Ljava/lang/String;
    .end local v18    # "displayName":Ljava/lang/String;
    .end local v30    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v36    # "person":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    :cond_34
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->wx_ids:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 533
    .local v21, "format_wx_ids":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v4, "wx_ids_set"

    move-object/from16 v0, v21

    invoke-virtual {v2, v4, v0}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private generatePinyinIndex(Landroid/database/Cursor;)V
    .locals 10
    .param p1, "contacts"    # Landroid/database/Cursor;

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 165
    if-nez p1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 171
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHanziPinyin:Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    iget-object v6, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/lzx/iteam/util/StringUtil;->getHanziPinyin(Landroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v6

    iput-object v6, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHanziPinyin:Ljava/lang/StringBuilder;

    .line 174
    :cond_2
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 195
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    iput-object v4, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHanziPinyin:Ljava/lang/StringBuilder;

    goto :goto_0

    .line 175
    :cond_3
    sget-boolean v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mPersistInterrupted:Z

    if-nez v0, :cond_0

    .line 179
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 180
    .local v2, "contactId":J
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "displayName":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 182
    .local v5, "contactedNumber":I
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 184
    .local v7, "hasPhoneNumber":I
    if-ne v7, v8, :cond_6

    .line 185
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 186
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mContext:Landroid/content/Context;

    const v6, 0x7f080080

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 188
    :cond_4
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    if-ne v7, v8, :cond_5

    move v6, v8

    :goto_2
    invoke-virtual/range {v0 .. v6}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->addPinyinDict(Ljava/lang/String;JLjava/lang/String;IZ)V

    goto :goto_1

    :cond_5
    move v6, v9

    goto :goto_2

    .line 190
    :cond_6
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v2, v3}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->checkContactNameExistByID(Landroid/content/ContentResolver;J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    if-ne v7, v8, :cond_7

    move v6, v8

    :goto_3
    invoke-virtual/range {v0 .. v6}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->addPinyinDict(Ljava/lang/String;JLjava/lang/String;IZ)V

    goto :goto_1

    :cond_7
    move v6, v9

    goto :goto_3
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    sget-object v1, Lcom/lzx/iteam/util/Constants;->InstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPersistWorker:Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;-><init>(Landroid/content/Context;)V

    monitor-exit v1

    .line 69
    :goto_0
    return-object v0

    .line 64
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    sget-object v0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPersistWorker:Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private queryContacts()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 73
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "show_people_withphonenumber"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 74
    .local v6, "ifShowPeopleNoPhone":Z
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    .line 75
    if-eqz v6, :cond_0

    move-object v3, v4

    :goto_0
    move-object v5, v4

    .line 74
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 75
    :cond_0
    const-string v3, "has_phone_number=1"

    goto :goto_0
.end method


# virtual methods
.method public final getChangesList(Z)V
    .locals 14
    .param p1, "serviceStartup"    # Z

    .prologue
    .line 85
    sget-object v10, Lcom/lzx/iteam/util/Constants;->persisWorkerlock:Ljava/lang/Object;

    monitor-enter v10

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "contacts":Landroid/database/Cursor;
    const/4 v7, 0x1

    :try_start_0
    iput-boolean v7, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->isRunning:Z

    .line 88
    iput-boolean p1, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mServiceStartup:Z

    .line 89
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->queryContacts()Landroid/database/Cursor;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-gtz v7, :cond_2

    .line 92
    :cond_0
    if-eqz v0, :cond_1

    .line 93
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 95
    :cond_1
    monitor-exit v10

    .line 157
    :goto_0
    return-void

    .line 98
    :cond_2
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lzx/iteam/net/LocalLogin;->isLogedin()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 99
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mContactInsert:Ljava/util/HashSet;

    .line 100
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mContactUpdate:Ljava/util/HashSet;

    .line 101
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mContactDelete:Ljava/util/HashSet;

    .line 104
    :cond_3
    const-wide/16 v8, 0x0

    .line 105
    .local v8, "start":J
    const-string v7, "PersistWorker"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "getChangesList begin: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 105
    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    sput v7, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->ALL_CONTACTS_NUMBER:I

    .line 109
    invoke-direct {p0, v0}, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->generatePinyinIndex(Landroid/database/Cursor;)V

    .line 110
    iget-object v7, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mContactInsert:Ljava/util/HashSet;

    iget-object v11, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mContactUpdate:Ljava/util/HashSet;

    iget-object v12, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mContactDelete:Ljava/util/HashSet;

    invoke-direct {p0, v0, v7, v11, v12}, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->generateFuzzyIndex(Landroid/database/Cursor;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 111
    iget-object v7, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mContactInsert:Ljava/util/HashSet;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mContactInsert:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 112
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v6, "sb":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mContactInsert:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 114
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_7

    .line 118
    iget-object v7, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v11, "contact_insert"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 121
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    iget-object v7, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mContactUpdate:Ljava/util/HashSet;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mContactUpdate:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mContactUpdate:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 124
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_8

    .line 127
    iget-object v7, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v11, "contact_updated"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 130
    iget-object v7, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v11, "contactid"

    const-wide/16 v12, -0x1

    invoke-virtual {v7, v11, v12, v13}, Lcom/lzx/iteam/util/PreferenceUtil;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 131
    .local v4, "nameCardId":J
    iget-object v7, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mContactUpdate:Ljava/util/HashSet;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 132
    iget-object v7, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v11, "namecard_changed"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 136
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v4    # "nameCardId":J
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    iget-object v7, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mContactDelete:Ljava/util/HashSet;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mContactDelete:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 137
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mContactDelete:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 139
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_9

    .line 142
    iget-object v7, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v11, "contact_deleted"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 145
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    const-string v7, "PersistWorker"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "getChangesList end: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 145
    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v7, "FreshContactObserver"

    const-string v11, "value: persistwork"

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 149
    new-instance v1, Landroid/content/Intent;

    const-string v7, "broadcast_status_change"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v1, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 151
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->isRunning:Z

    .line 152
    const/4 v7, 0x0

    sput-boolean v7, Lcom/lzx/iteam/engine/observer/FreshContactObserver;->ENTRANCE_ONECE:Z

    .line 85
    monitor-exit v10

    goto/16 :goto_0

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v8    # "start":J
    :catchall_0
    move-exception v7

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 115
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v8    # "start":J
    :cond_7
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v11, 0x7c

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 125
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v11, 0x7c

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 140
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .restart local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v11, 0x7c

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public isRun()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->isRunning:Z

    return v0
.end method
