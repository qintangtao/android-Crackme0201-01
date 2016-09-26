.class public Lcom/lzx/iteam/engine/GetContactInfo;
.super Ljava/lang/Object;
.source "GetContactInfo.java"


# instance fields
.field private array_nickName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private array_notes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private array_websites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private companys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private groupString:Ljava/lang/StringBuilder;

.field private mContext:Landroid/content/Context;

.field private mDataIntent:Landroid/content/Intent;

.field private mName:Ljava/lang/String;

.field private mPhoneNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRowPhoneLookUpUri:Landroid/net/Uri;

.field private mWxChatId:J

.field private mWxFriendId:J

.field private map_address:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private map_emails:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private map_iMs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private map_phoneNumbers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private positions:Ljava/util/ArrayList;
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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v0, -0x1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide v0, p0, Lcom/lzx/iteam/engine/GetContactInfo;->mWxChatId:J

    .line 40
    iput-wide v0, p0, Lcom/lzx/iteam/engine/GetContactInfo;->mWxFriendId:J

    .line 47
    iput-object p1, p0, Lcom/lzx/iteam/engine/GetContactInfo;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method private getContactUri(J)Landroid/net/Uri;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 457
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getMethodUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 461
    const-string v0, "data"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getRing(Landroid/net/Uri;J)Ljava/lang/String;
    .locals 12
    .param p1, "rowLookUpUri"    # Landroid/net/Uri;
    .param p2, "id"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 428
    invoke-direct {p0, p2, p3}, Lcom/lzx/iteam/engine/GetContactInfo;->getContactUri(J)Landroid/net/Uri;

    move-result-object v7

    .line 429
    .local v7, "contactUri":Landroid/net/Uri;
    if-nez v7, :cond_0

    .line 453
    :goto_0
    return-object v3

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/engine/GetContactInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    .line 433
    const-string v1, "custom_ringtone"

    aput-object v1, v2, v4

    const/4 v1, 0x1

    const-string v4, "send_to_voicemail"

    aput-object v4, v2, v1

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 432
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 436
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 451
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 440
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 441
    .local v9, "ringtone":Ljava/lang/String;
    if-nez v9, :cond_2

    .line 442
    iget-object v0, p0, Lcom/lzx/iteam/engine/GetContactInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 451
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v9

    .line 443
    goto :goto_0

    .line 445
    :cond_2
    :try_start_2
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 446
    .local v10, "ringtoneUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/lzx/iteam/engine/GetContactInfo;->mContext:Landroid/content/Context;

    invoke-static {v0, v10}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v8

    .line 447
    .local v8, "ring":Landroid/media/Ringtone;
    if-eqz v8, :cond_3

    .line 448
    iget-object v0, p0, Lcom/lzx/iteam/engine/GetContactInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .line 451
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v9

    .line 453
    goto :goto_0

    .line 450
    .end local v8    # "ring":Landroid/media/Ringtone;
    .end local v9    # "ringtone":Ljava/lang/String;
    .end local v10    # "ringtoneUri":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    .line 451
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 452
    throw v0
.end method

.method private getRowId(J)J
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 465
    iget-object v0, p0, Lcom/lzx/iteam/engine/GetContactInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/lzx/iteam/util/ContactsUtils;->queryForRawContactId(Landroid/content/ContentResolver;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getRowLookUpUri(J)Landroid/net/Uri;
    .locals 3
    .param p1, "rowId"    # J

    .prologue
    .line 475
    iget-object v0, p0, Lcom/lzx/iteam/engine/GetContactInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/engine/GetContactInfo;->getRowUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getRowUri(J)Landroid/net/Uri;
    .locals 3
    .param p1, "rowId"    # J

    .prologue
    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, "rowContactUri":Landroid/net/Uri;
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 471
    return-object v0
.end method

.method private isInitGroup()Z
    .locals 1

    .prologue
    .line 419
    sget-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mGroupList:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/lzx/iteam/engine/GetContactInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getGroupHash(Landroid/content/ContentResolver;)V

    .line 422
    :cond_0
    sget-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mGroupList:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static massageContactData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 481
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 482
    const-string v0, "\n"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 484
    :cond_0
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 485
    const-string v0, "\r"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 487
    :cond_1
    return-object p0
.end method


# virtual methods
.method public clearArrays()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lzx/iteam/engine/GetContactInfo;->mPhoneNumbers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/engine/GetContactInfo;->mPhoneNumbers:Ljava/util/ArrayList;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/engine/GetContactInfo;->map_phoneNumbers:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/lzx/iteam/engine/GetContactInfo;->map_phoneNumbers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/engine/GetContactInfo;->map_emails:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/lzx/iteam/engine/GetContactInfo;->map_emails:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/engine/GetContactInfo;->map_address:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 64
    iget-object v0, p0, Lcom/lzx/iteam/engine/GetContactInfo;->map_address:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/lzx/iteam/engine/GetContactInfo;->map_iMs:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 68
    iget-object v0, p0, Lcom/lzx/iteam/engine/GetContactInfo;->map_iMs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 71
    :cond_4
    iget-object v0, p0, Lcom/lzx/iteam/engine/GetContactInfo;->array_websites:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 72
    iget-object v0, p0, Lcom/lzx/iteam/engine/GetContactInfo;->array_websites:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 75
    :cond_5
    iget-object v0, p0, Lcom/lzx/iteam/engine/GetContactInfo;->array_nickName:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 76
    iget-object v0, p0, Lcom/lzx/iteam/engine/GetContactInfo;->array_nickName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 79
    :cond_6
    iget-object v0, p0, Lcom/lzx/iteam/engine/GetContactInfo;->array_notes:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 80
    iget-object v0, p0, Lcom/lzx/iteam/engine/GetContactInfo;->array_notes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 83
    :cond_7
    iget-object v0, p0, Lcom/lzx/iteam/engine/GetContactInfo;->companys:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 84
    iget-object v0, p0, Lcom/lzx/iteam/engine/GetContactInfo;->companys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 87
    :cond_8
    iget-object v0, p0, Lcom/lzx/iteam/engine/GetContactInfo;->positions:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 88
    iget-object v0, p0, Lcom/lzx/iteam/engine/GetContactInfo;->positions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 91
    :cond_9
    iget-object v0, p0, Lcom/lzx/iteam/engine/GetContactInfo;->groupString:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_a

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/engine/GetContactInfo;->groupString:Ljava/lang/StringBuilder;

    .line 94
    :cond_a
    return-void
.end method

.method public getAllNumbers([JLcom/lzx/iteam/widget/RoundProgressBar;)Ljava/util/Map;
    .locals 20
    .param p1, "contactId"    # [J
    .param p2, "progressBar"    # Lcom/lzx/iteam/widget/RoundProgressBar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Lcom/lzx/iteam/widget/RoundProgressBar;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 378
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 379
    .local v17, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v12, 0x0

    .line 380
    .local v12, "j":I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    const/4 v2, 0x0

    move/from16 v18, v2

    move v13, v12

    .end local v12    # "j":I
    .local v13, "j":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    .line 415
    return-object v17

    .line 380
    :cond_0
    aget-wide v10, p1, v18

    .line 381
    .local v10, "id":J
    const-string v2, "same_contact"

    const-string v4, "_____________"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "j":I
    .restart local v12    # "j":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/lzx/iteam/widget/RoundProgressBar;->setProgress(I)V

    .line 383
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/lzx/iteam/engine/GetContactInfo;->getContactUri(J)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/lzx/iteam/engine/GetContactInfo;->getMethodUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 384
    .local v3, "methodUri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 386
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 387
    sget-object v4, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->DATA_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 386
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 388
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 389
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    .line 390
    .local v9, "isTrue":Z
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .local v16, "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    if-nez v9, :cond_3

    .line 402
    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    .line 403
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    .end local v9    # "isTrue":Z
    .end local v16    # "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    if-eqz v8, :cond_2

    .line 409
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 412
    :cond_2
    const-string v2, "same_contact"

    const-string v4, "_____________"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    add-int/lit8 v2, v18, 0x1

    move/from16 v18, v2

    move v13, v12

    .end local v12    # "j":I
    .restart local v13    # "j":I
    goto :goto_0

    .line 392
    .end local v13    # "j":I
    .restart local v9    # "isTrue":Z
    .restart local v12    # "j":I
    .restart local v16    # "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    const-string v2, "mimetype"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 393
    .local v14, "mime":Ljava/lang/String;
    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 394
    const-string v2, "data1"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 395
    .local v15, "phoneNumber":Ljava/lang/String;
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 396
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    const-string v2, "same_contact"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "phoneNumber "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .end local v15    # "phoneNumber":Ljava/lang/String;
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    goto :goto_1

    .line 407
    .end local v9    # "isTrue":Z
    .end local v14    # "mime":Ljava/lang/String;
    .end local v16    # "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    .line 408
    if-eqz v8, :cond_5

    .line 409
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 411
    :cond_5
    throw v2
.end method

.method public getInfo(J)Lcom/lzx/iteam/bean/ContactInfo;
    .locals 51
    .param p1, "contactId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/engine/GetContactInfo;->clearArrays()V

    .line 98
    invoke-direct/range {p0 .. p2}, Lcom/lzx/iteam/engine/GetContactInfo;->getContactUri(J)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/lzx/iteam/engine/GetContactInfo;->getMethodUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 99
    .local v5, "methodUri":Landroid/net/Uri;
    const/4 v15, 0x0

    .line 101
    .local v15, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 102
    sget-object v6, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->DATA_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 101
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 103
    if-eqz v15, :cond_35

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_35

    .line 104
    new-instance v27, Lcom/lzx/iteam/bean/ContactInfo;

    invoke-direct/range {v27 .. v27}, Lcom/lzx/iteam/bean/ContactInfo;-><init>()V

    .line 105
    .local v27, "info":Lcom/lzx/iteam/bean/ContactInfo;
    invoke-direct/range {p0 .. p2}, Lcom/lzx/iteam/engine/GetContactInfo;->getRowId(J)J

    move-result-wide v44

    .line 106
    .local v44, "rowId":J
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v28

    .line 107
    .local v28, "isTrue":Z
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mDataIntent:Landroid/content/Intent;

    .line 108
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v13, "bundle":Landroid/os/Bundle;
    const/16 v20, 0x0

    .line 110
    .local v20, "foundPhone":I
    const/16 v21, 0x0

    .line 111
    .local v21, "foundPhoneType":I
    const/16 v18, 0x0

    .line 112
    .local v18, "foundEmail":I
    const/16 v19, 0x0

    .line 113
    .local v19, "foundEmailType":I
    const-string v4, "contactId"

    move-wide/from16 v0, p1

    invoke-virtual {v13, v4, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 114
    :goto_0
    if-nez v28, :cond_13

    .line 291
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->map_address:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->map_address:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 292
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->map_address:Ljava/util/HashMap;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/lzx/iteam/bean/ContactInfo;->setAddresses(Ljava/util/HashMap;)V

    .line 294
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->map_phoneNumbers:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->map_phoneNumbers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 295
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->map_phoneNumbers:Ljava/util/HashMap;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/lzx/iteam/bean/ContactInfo;->setPhoneNumbers(Ljava/util/HashMap;)V

    .line 297
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->map_emails:Ljava/util/HashMap;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->map_emails:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->map_emails:Ljava/util/HashMap;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/lzx/iteam/bean/ContactInfo;->setEmails(Ljava/util/HashMap;)V

    .line 300
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->map_iMs:Ljava/util/HashMap;

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->map_iMs:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 301
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->map_iMs:Ljava/util/HashMap;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/lzx/iteam/bean/ContactInfo;->setiMs(Ljava/util/HashMap;)V

    .line 303
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->companys:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->companys:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 304
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->companys:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/lzx/iteam/bean/ContactInfo;->setCompanys(Ljava/util/ArrayList;)V

    .line 306
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->positions:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->positions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 307
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->positions:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/lzx/iteam/bean/ContactInfo;->setPositions(Ljava/util/ArrayList;)V

    .line 309
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->array_websites:Ljava/util/ArrayList;

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->array_websites:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 310
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->array_websites:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/lzx/iteam/bean/ContactInfo;->setWebsites(Ljava/util/ArrayList;)V

    .line 312
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->array_notes:Ljava/util/ArrayList;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->array_notes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 313
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->array_notes:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/lzx/iteam/bean/ContactInfo;->setNotes(Ljava/util/ArrayList;)V

    .line 315
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->array_nickName:Ljava/util/ArrayList;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->array_nickName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 316
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->array_nickName:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/lzx/iteam/bean/ContactInfo;->setNicknames(Ljava/util/ArrayList;)V

    .line 318
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mName:Ljava/lang/String;

    invoke-static {v4}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 319
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mName:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/lzx/iteam/bean/ContactInfo;->setName(Ljava/lang/String;)V

    .line 321
    :cond_9
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mWxFriendId:J

    const-wide/16 v8, -0x1

    cmp-long v4, v6, v8

    if-eqz v4, :cond_a

    .line 322
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mWxFriendId:J

    move-object/from16 v0, v27

    invoke-virtual {v0, v6, v7}, Lcom/lzx/iteam/bean/ContactInfo;->setWxFriendId(J)V

    .line 324
    :cond_a
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mWxChatId:J

    const-wide/16 v8, -0x1

    cmp-long v4, v6, v8

    if-eqz v4, :cond_b

    .line 325
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mWxChatId:J

    move-object/from16 v0, v27

    invoke-virtual {v0, v6, v7}, Lcom/lzx/iteam/bean/ContactInfo;->setWxChatId(J)V

    .line 327
    :cond_b
    const-wide/16 v6, -0x1

    cmp-long v4, v44, v6

    if-eqz v4, :cond_c

    .line 328
    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    invoke-direct {v0, v1, v2}, Lcom/lzx/iteam/engine/GetContactInfo;->getRowLookUpUri(J)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mRowPhoneLookUpUri:Landroid/net/Uri;

    .line 330
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mRowPhoneLookUpUri:Landroid/net/Uri;

    if-eqz v4, :cond_e

    .line 331
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mRowPhoneLookUpUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/lzx/iteam/engine/GetContactInfo;->getRing(Landroid/net/Uri;J)Ljava/lang/String;

    move-result-object v42

    .line 332
    .local v42, "ring":Ljava/lang/String;
    invoke-static/range {v42 .. v42}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 333
    move-object/from16 v0, v27

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/ContactInfo;->setRingtongName(Ljava/lang/String;)V

    .line 335
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mRowPhoneLookUpUri:Landroid/net/Uri;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/lzx/iteam/bean/ContactInfo;->setRowLookupUri(Landroid/net/Uri;)V

    .line 338
    .end local v42    # "ring":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->groupString:Ljava/lang/StringBuilder;

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->groupString:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_f

    .line 339
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->groupString:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 340
    .local v24, "groupName":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 341
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/ContactInfo;->setGroupName(Ljava/lang/String;)V

    .line 344
    .end local v24    # "groupName":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mPhoneNumbers:Ljava/util/ArrayList;

    if-eqz v4, :cond_34

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mPhoneNumbers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_34

    .line 345
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mPhoneNumbers:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/lzx/iteam/bean/ContactInfo;->setArrayphoneNumbers(Ljava/util/ArrayList;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mPhoneNumbers:Ljava/util/ArrayList;

    invoke-static {v4, v6}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->isInBlackList(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/lzx/iteam/bean/ContactInfo;->setInBlackList(Z)V

    .line 351
    :goto_1
    if-eqz v13, :cond_11

    invoke-virtual {v13}, Landroid/os/Bundle;->size()I

    move-result v4

    if-lez v4, :cond_11

    .line 352
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mDataIntent:Landroid/content/Intent;

    const-string v6, "ENCODE_TYPE"

    const-string v7, "CONTACT_TYPE"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mDataIntent:Landroid/content/Intent;

    const-string v6, "ENCODE_DATA"

    invoke-virtual {v4, v6, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 354
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mName:Ljava/lang/String;

    invoke-static {v4}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 355
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mDataIntent:Landroid/content/Intent;

    const-string v6, "name"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mDataIntent:Landroid/content/Intent;

    const-string v6, "ENCODE_FORMAT"

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v7}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mDataIntent:Landroid/content/Intent;

    const-string v6, "USE_VCARD"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 360
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mDataIntent:Landroid/content/Intent;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/lzx/iteam/bean/ContactInfo;->setIntent(Landroid/content/Intent;)V

    .line 362
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getPhotoByContactId(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 363
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Lcom/lzx/iteam/bean/ContactInfo;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 364
    const-string v4, "same_contact"

    const-string v6, "_______________"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    if-eqz v15, :cond_12

    .line 369
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 374
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "bundle":Landroid/os/Bundle;
    .end local v18    # "foundEmail":I
    .end local v19    # "foundEmailType":I
    .end local v20    # "foundPhone":I
    .end local v21    # "foundPhoneType":I
    .end local v27    # "info":Lcom/lzx/iteam/bean/ContactInfo;
    .end local v28    # "isTrue":Z
    .end local v44    # "rowId":J
    :cond_12
    :goto_2
    return-object v27

    .line 115
    .restart local v13    # "bundle":Landroid/os/Bundle;
    .restart local v18    # "foundEmail":I
    .restart local v19    # "foundEmailType":I
    .restart local v20    # "foundPhone":I
    .restart local v21    # "foundPhoneType":I
    .restart local v27    # "info":Lcom/lzx/iteam/bean/ContactInfo;
    .restart local v28    # "isTrue":Z
    .restart local v44    # "rowId":J
    :cond_13
    :try_start_1
    const-string v4, "mimetype"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 116
    .local v31, "mime":Ljava/lang/String;
    const-string v4, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 117
    const-string v4, "data2"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    .line 118
    .local v46, "type":I
    const-string v4, "data3"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 119
    .local v29, "label":Ljava/lang/String;
    const-string v4, "data1"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 120
    .local v35, "phoneNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v0, v46

    move-object/from16 v1, v29

    invoke-static {v4, v0, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 121
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v34

    .line 122
    .local v34, "numberLabel":Ljava/lang/String;
    invoke-static/range {v35 .. v35}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 123
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/lzx/iteam/util/PhoneNumberArea;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PhoneNumberArea;

    move-result-object v36

    .line 124
    .local v36, "phoneNumberArea":Lcom/lzx/iteam/util/PhoneNumberArea;
    const/4 v4, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v4}, Lcom/lzx/iteam/util/PhoneNumberArea;->getArea(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 125
    .local v11, "area":Ljava/lang/String;
    new-instance v43, Ljava/lang/StringBuffer;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuffer;-><init>()V

    .line 126
    .local v43, "sb":Ljava/lang/StringBuffer;
    const-string v4, "null"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 127
    invoke-static/range {v34 .. v34}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 128
    move-object/from16 v0, v43

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    :cond_14
    invoke-static {v11}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 131
    const-string v4, "("

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->map_phoneNumbers:Ljava/util/HashMap;

    if-nez v4, :cond_16

    .line 134
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->map_phoneNumbers:Ljava/util/HashMap;

    .line 136
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->map_phoneNumbers:Ljava/util/HashMap;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mPhoneNumbers:Ljava/util/ArrayList;

    if-nez v4, :cond_17

    .line 138
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mPhoneNumbers:Ljava/util/ArrayList;

    .line 140
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mPhoneNumbers:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    const/16 v4, 0x14

    move/from16 v0, v20

    if-ge v0, v4, :cond_18

    const/16 v4, 0x14

    move/from16 v0, v21

    if-ge v0, v4, :cond_18

    .line 142
    sget-object v4, Lcom/lzx/iteam/dimensioncode/Contents;->PHONE_TYPE_KEYS:[Ljava/lang/String;

    aget-object v4, v4, v21

    move-object/from16 v0, v29

    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-object v4, Lcom/lzx/iteam/dimensioncode/Contents;->PHONE_KEYS:[Ljava/lang/String;

    aget-object v4, v4, v20

    invoke-static/range {v35 .. v35}, Lcom/lzx/iteam/engine/GetContactInfo;->massageContactData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    add-int/lit8 v20, v20, 0x1

    .line 145
    add-int/lit8 v21, v21, 0x1

    .line 289
    .end local v11    # "area":Ljava/lang/String;
    .end local v29    # "label":Ljava/lang/String;
    .end local v34    # "numberLabel":Ljava/lang/String;
    .end local v35    # "phoneNumber":Ljava/lang/String;
    .end local v36    # "phoneNumberArea":Lcom/lzx/iteam/util/PhoneNumberArea;
    .end local v43    # "sb":Ljava/lang/StringBuffer;
    .end local v46    # "type":I
    :cond_18
    :goto_3
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v28

    goto/16 :goto_0

    .line 149
    :cond_19
    const-string v4, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 150
    const-string v4, "data1"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 151
    .local v16, "email":Ljava/lang/String;
    const-string v4, "data2"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    .line 152
    .restart local v46    # "type":I
    const-string v4, "data3"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 153
    .restart local v29    # "label":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v0, v46

    move-object/from16 v1, v29

    invoke-static {v4, v0, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    .line 154
    .local v17, "emailLabel":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 155
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->map_emails:Ljava/util/HashMap;

    if-nez v4, :cond_1a

    .line 156
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->map_emails:Ljava/util/HashMap;

    .line 158
    :cond_1a
    const/16 v4, 0x14

    move/from16 v0, v19

    if-ge v0, v4, :cond_18

    const/16 v4, 0x14

    move/from16 v0, v18

    if-ge v0, v4, :cond_18

    .line 159
    sget-object v4, Lcom/lzx/iteam/dimensioncode/Contents;->PHONE_TYPE_KEYS:[Ljava/lang/String;

    aget-object v4, v4, v19

    move-object/from16 v0, v17

    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sget-object v4, Lcom/lzx/iteam/dimensioncode/Contents;->EMAIL_KEYS:[Ljava/lang/String;

    aget-object v4, v4, v18

    invoke-static/range {v16 .. v16}, Lcom/lzx/iteam/engine/GetContactInfo;->massageContactData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->map_emails:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    add-int/lit8 v18, v18, 0x1

    .line 163
    add-int/lit8 v19, v19, 0x1

    .line 167
    goto/16 :goto_3

    .end local v16    # "email":Ljava/lang/String;
    .end local v17    # "emailLabel":Ljava/lang/String;
    .end local v29    # "label":Ljava/lang/String;
    .end local v46    # "type":I
    :cond_1b
    const-string v4, "vnd.android.cursor.item/website"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 168
    const-string v4, "data1"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v47

    .line 169
    .local v47, "website":Ljava/lang/String;
    invoke-static/range {v47 .. v47}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 170
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->array_websites:Ljava/util/ArrayList;

    if-nez v4, :cond_1c

    .line 171
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->array_websites:Ljava/util/ArrayList;

    .line 173
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->array_websites:Ljava/util/ArrayList;

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    const-string v4, "URL_KEY"

    move-object/from16 v0, v47

    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 367
    .end local v13    # "bundle":Landroid/os/Bundle;
    .end local v18    # "foundEmail":I
    .end local v19    # "foundEmailType":I
    .end local v20    # "foundPhone":I
    .end local v21    # "foundPhoneType":I
    .end local v27    # "info":Lcom/lzx/iteam/bean/ContactInfo;
    .end local v28    # "isTrue":Z
    .end local v31    # "mime":Ljava/lang/String;
    .end local v44    # "rowId":J
    .end local v47    # "website":Ljava/lang/String;
    :catchall_0
    move-exception v4

    .line 368
    if-eqz v15, :cond_1d

    .line 369
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 371
    :cond_1d
    throw v4

    .line 176
    .restart local v13    # "bundle":Landroid/os/Bundle;
    .restart local v18    # "foundEmail":I
    .restart local v19    # "foundEmailType":I
    .restart local v20    # "foundPhone":I
    .restart local v21    # "foundPhoneType":I
    .restart local v27    # "info":Lcom/lzx/iteam/bean/ContactInfo;
    .restart local v28    # "isTrue":Z
    .restart local v31    # "mime":Ljava/lang/String;
    .restart local v44    # "rowId":J
    :cond_1e
    :try_start_2
    const-string v4, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 177
    const-string v4, "data1"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 178
    .local v32, "nickName":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 179
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->array_nickName:Ljava/util/ArrayList;

    if-nez v4, :cond_1f

    .line 180
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->array_nickName:Ljava/util/ArrayList;

    .line 182
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->array_nickName:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 185
    .end local v32    # "nickName":Ljava/lang/String;
    :cond_20
    const-string v4, "vnd.android.cursor.item/im"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 186
    const-string v4, "data1"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 187
    .local v25, "im":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 188
    const-string v4, "data5"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    .line 189
    .local v39, "protocol":I
    const-string v4, "data3"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 190
    .restart local v29    # "label":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v0, v39

    move-object/from16 v1, v29

    invoke-static {v4, v0, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v26

    .line 191
    .local v26, "imLabel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->map_iMs:Ljava/util/HashMap;

    if-nez v4, :cond_21

    .line 192
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->map_iMs:Ljava/util/HashMap;

    .line 194
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->map_iMs:Ljava/util/HashMap;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 196
    .end local v25    # "im":Ljava/lang/String;
    .end local v26    # "imLabel":Ljava/lang/String;
    .end local v29    # "label":Ljava/lang/String;
    .end local v39    # "protocol":I
    :cond_22
    const-string v4, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 198
    const-string v4, "data1"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 199
    .local v10, "address":Ljava/lang/String;
    const-string v4, "data2"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    .line 200
    .restart local v46    # "type":I
    const-string v4, "data3"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 201
    .restart local v29    # "label":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v0, v46

    move-object/from16 v1, v29

    invoke-static {v4, v0, v1}, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v38

    .line 202
    .local v38, "postalLabel":Ljava/lang/String;
    invoke-static {v10}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 203
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->map_address:Ljava/util/HashMap;

    if-nez v4, :cond_23

    .line 204
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->map_address:Ljava/util/HashMap;

    .line 206
    :cond_23
    const-string v4, "postal"

    invoke-static {v10}, Lcom/lzx/iteam/engine/GetContactInfo;->massageContactData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->map_address:Ljava/util/HashMap;

    move-object/from16 v0, v38

    invoke-virtual {v4, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 210
    .end local v10    # "address":Ljava/lang/String;
    .end local v29    # "label":Ljava/lang/String;
    .end local v38    # "postalLabel":Ljava/lang/String;
    .end local v46    # "type":I
    :cond_24
    const-string v4, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 211
    const-string v4, "data1"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 212
    .local v14, "companyString":Ljava/lang/String;
    const-string v4, "data4"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 213
    .local v37, "positionString":Ljava/lang/String;
    invoke-static {v14}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 214
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->companys:Ljava/util/ArrayList;

    if-nez v4, :cond_25

    .line 215
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->companys:Ljava/util/ArrayList;

    .line 217
    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->companys:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    const-string v4, "company"

    invoke-virtual {v13, v4, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v4, "job_title"

    move-object/from16 v0, v37

    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_26
    invoke-static/range {v37 .. v37}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 223
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->positions:Ljava/util/ArrayList;

    if-nez v4, :cond_27

    .line 224
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->positions:Ljava/util/ArrayList;

    .line 226
    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->positions:Ljava/util/ArrayList;

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 229
    .end local v14    # "companyString":Ljava/lang/String;
    .end local v37    # "positionString":Ljava/lang/String;
    :cond_28
    const-string v4, "vnd.android.cursor.item/note"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 230
    const-string v4, "data1"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 231
    .local v33, "note":Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 232
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->array_notes:Ljava/util/ArrayList;

    if-nez v4, :cond_29

    .line 233
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->array_notes:Ljava/util/ArrayList;

    .line 235
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->array_notes:Ljava/util/ArrayList;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 237
    .end local v33    # "note":Ljava/lang/String;
    :cond_2a
    const-string v4, "vnd.android.cursor.item/name"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 238
    const-string v4, "data1"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mName:Ljava/lang/String;

    .line 239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mName:Ljava/lang/String;

    invoke-static {v4}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 240
    const-string v4, "same_contact"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "name "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string v4, "name"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mName:Ljava/lang/String;

    invoke-static {v6}, Lcom/lzx/iteam/engine/GetContactInfo;->massageContactData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 243
    :cond_2b
    const-string v4, "name"

    const-string v6, "\u65e0\u540d\u79f0"

    invoke-static {v6}, Lcom/lzx/iteam/engine/GetContactInfo;->massageContactData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 245
    :cond_2c
    const-string v4, "vnd.android.cursor.item/vnd.com.tencent.mm.chatting.profile"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 246
    const-string v4, "data2"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 247
    .local v48, "wx_tag":Ljava/lang/String;
    const-string v4, "data3"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 248
    .local v49, "wx_type":Ljava/lang/String;
    const-string v4, "\u5fae\u4fe1"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v4, "\u804a\u5929"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    const-string v4, "\u53d1\u9001\u6d88\u606f"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 249
    :cond_2d
    const-string v4, "_id"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mWxChatId:J

    goto/16 :goto_3

    .line 251
    .end local v48    # "wx_tag":Ljava/lang/String;
    .end local v49    # "wx_type":Ljava/lang/String;
    :cond_2e
    const-string v4, "vnd.android.cursor.item/vnd.com.tencent.mm.plugin.sns.timeline"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 252
    const-string v4, "data2"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 253
    .restart local v48    # "wx_tag":Ljava/lang/String;
    const-string v4, "data3"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 254
    .restart local v49    # "wx_type":Ljava/lang/String;
    const-string v4, "\u5fae\u4fe1"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v4, "\u670b\u53cb\u5708"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    const-string v4, "\u67e5\u770b\u670b\u53cb\u5708"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 255
    :cond_2f
    const-string v4, "_id"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mWxFriendId:J

    goto/16 :goto_3

    .line 257
    .end local v48    # "wx_tag":Ljava/lang/String;
    .end local v49    # "wx_type":Ljava/lang/String;
    :cond_30
    const-string v4, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 258
    const-wide/16 v40, -0x1

    .line 259
    .local v40, "rightId":J
    const-string v4, "raw_contact_id"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 260
    const-wide/16 v6, -0x1

    cmp-long v4, v40, v6

    if-eqz v4, :cond_18

    cmp-long v4, v40, v44

    if-nez v4, :cond_18

    .line 261
    const-string v4, "data1"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 262
    .local v23, "groupId":Ljava/lang/String;
    sget-object v30, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mGroupList:Ljava/util/HashMap;

    .line 263
    .local v30, "mGroupList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;>;"
    invoke-direct/range {p0 .. p0}, Lcom/lzx/iteam/engine/GetContactInfo;->isInitGroup()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 264
    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;

    .line 265
    .local v22, "group":Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;
    if-eqz v22, :cond_33

    .line 266
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;->mGroupTitle:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 267
    .restart local v24    # "groupName":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 268
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->groupString:Ljava/lang/StringBuilder;

    if-nez v4, :cond_31

    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->groupString:Ljava/lang/StringBuilder;

    .line 271
    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->groupString:Ljava/lang/StringBuilder;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->groupString:Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .end local v24    # "groupName":Ljava/lang/String;
    :cond_32
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->groupString:Ljava/lang/StringBuilder;

    if-eqz v4, :cond_18

    .line 279
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->groupString:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 280
    const v7, 0x7f080089

    .line 279
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 280
    if-nez v4, :cond_18

    .line 281
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->groupString:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/engine/GetContactInfo;->groupString:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 275
    :cond_33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->groupString:Ljava/lang/StringBuilder;

    .line 276
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/engine/GetContactInfo;->groupString:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/engine/GetContactInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080089

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 348
    .end local v22    # "group":Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;
    .end local v23    # "groupId":Ljava/lang/String;
    .end local v30    # "mGroupList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;>;"
    .end local v31    # "mime":Ljava/lang/String;
    .end local v40    # "rightId":J
    :cond_34
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/lzx/iteam/bean/ContactInfo;->setInBlackList(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 368
    .end local v13    # "bundle":Landroid/os/Bundle;
    .end local v18    # "foundEmail":I
    .end local v19    # "foundEmailType":I
    .end local v20    # "foundPhone":I
    .end local v21    # "foundPhoneType":I
    .end local v27    # "info":Lcom/lzx/iteam/bean/ContactInfo;
    .end local v28    # "isTrue":Z
    .end local v44    # "rowId":J
    :cond_35
    if-eqz v15, :cond_36

    .line 369
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 374
    :cond_36
    const/16 v27, 0x0

    goto/16 :goto_2
.end method
