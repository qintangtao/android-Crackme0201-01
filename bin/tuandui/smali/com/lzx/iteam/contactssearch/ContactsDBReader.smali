.class public Lcom/lzx/iteam/contactssearch/ContactsDBReader;
.super Ljava/lang/Object;
.source "ContactsDBReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;,
        Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumLabel;,
        Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumberType;
    }
.end annotation


# static fields
.field public static final ACCOUNT_NAME:I = 0x0

.field public static final ACCOUNT_TYPE:I = 0x1

.field public static ALL_CONTACTS_NUMBER:I = 0x0

.field private static final COLUMNS:[Ljava/lang/String;

.field public static final CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

.field private static final CONTACT_ID:[Ljava/lang/String;

.field public static final DATA_GROUP_TYPE:Ljava/lang/String; = "mimetype = \'vnd.android.cursor.item/group_membership\'"

.field public static final DATA_MIMETYPE_CONTACTID:Ljava/lang/String; = "mimetype = ? and contact_id = ? "

.field public static final DATA_MIMETYPE_RAWCONTACTID:Ljava/lang/String; = "raw_contact_id=? AND mimetype=? "

.field public static final DATA_PROJECTION:[Ljava/lang/String;

.field private static final DATA_TYPE:[Ljava/lang/String;

.field public static final GROUP_ID:I = 0x2

.field private static final GROUP_LIST_URI:Landroid/net/Uri;

.field static final IMAGE_SIZE:I = 0x50

.field private static final NUM_LABEL:[Ljava/lang/String;

.field public static final PHONE_NUMBER:[Ljava/lang/String;

.field public static final PHONE_PROJECTION:[Ljava/lang/String;

.field private static final PHOTO_ID:[Ljava/lang/String;

.field public static final RAWID_CLAUSE:Ljava/lang/String; = "contact_id=?"

.field public static final RAWID_VERSION:[Ljava/lang/String;

.field public static final RAW_CONTACTID:[Ljava/lang/String;

.field public static final RAW_CONTACTS_IN_NO_GROUP_SELECTION:Ljava/lang/String; = "1=1) and raw_contact_id not in( select raw_contact_id from view_data where mimetype=\'vnd.android.cursor.item/group_membership\' "

.field public static final RAW_CONTACTS_NO_GROUP_SELECTION:Ljava/lang/String; = "1=1) and data1 not in( "

.field public static final RAW_CONTACTS_WHERE:Ljava/lang/String; = "data1=? and mimetype=\'vnd.android.cursor.item/group_membership\'"

.field public static final RAW_PROJECTION:[Ljava/lang/String;

.field private static final ROUND:F = 5.0f

.field public static final SELECTION_FAMILYNAME:Ljava/lang/String; = "mimetype = ? and data3 = ? "

.field public static final SELECTION_GIVENNAME:Ljava/lang/String; = "mimetype = ? and data2 = ? "

.field public static final SUMMARY_CONTACT_STATUS_TIMESTAMP:I = 0x7

.field public static final SUMMARY_HAS_PHONE_COLUMN_INDEX:I = 0x6

.field public static final SUMMARY_ID_COLUMN_INDEX:I = 0x0

.field public static final SUMMARY_LOOKUP_KEY:I = 0x5

.field public static final SUMMARY_NAME_COLUMN_INDEX:I = 0x1

.field public static final SUMMARY_PHOTO_ID_COLUMN_INDEX:I = 0x4

.field public static final SUMMARY_STARRED_COLUMN_INDEX:I = 0x2

.field public static final SUMMARY_TIMES_CONTACTED_COLUMN_INDEX:I = 0x3

.field private static final TIME_CONTACTED:[Ljava/lang/String;

.field public static final TITLE:I = 0x3

.field public static final VISIBLE_GROUP_SELECTION:Ljava/lang/String; = "group_visible=1 and deleted=0"

.field private static ifIceCreamAbove:I = 0x0

.field private static mCanvas:Landroid/graphics/Canvas; = null

.field public static mGroupList:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/lzx/iteam/contactssearch/ContactsDBReader; = null

.field public static mNoGroupsSet:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPaint:Landroid/graphics/Paint; = null

.field public static final selection:Ljava/lang/String; = "_id = ? "


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 62
    const-string v1, "_id"

    aput-object v1, v0, v3

    .line 63
    const-string v1, "display_name"

    aput-object v1, v0, v4

    .line 64
    const-string v1, "starred"

    aput-object v1, v0, v5

    .line 65
    const-string v1, "times_contacted"

    aput-object v1, v0, v6

    .line 67
    const-string v1, "photo_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 68
    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 69
    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 70
    const-string v2, "contact_status_ts"

    aput-object v2, v0, v1

    .line 61
    sput-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    .line 80
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    .line 81
    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v4

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    const-string v1, "mimetype"

    aput-object v1, v0, v6

    const-string v1, "is_primary"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 82
    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 83
    const-string v2, "data6"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "data7"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "data9"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "data10"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "data11"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "data12"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 84
    const-string v2, "data13"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "data14"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "data15"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "display_name"

    aput-object v2, v0, v1

    .line 80
    sput-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->DATA_PROJECTION:[Ljava/lang/String;

    .line 88
    new-array v0, v6, [Ljava/lang/String;

    .line 89
    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "mimetype"

    aput-object v1, v0, v4

    const-string v1, "data1"

    aput-object v1, v0, v5

    .line 88
    sput-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->DATA_TYPE:[Ljava/lang/String;

    .line 92
    new-array v0, v4, [Ljava/lang/String;

    .line 93
    const-string v1, "_id"

    aput-object v1, v0, v3

    .line 92
    sput-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->CONTACT_ID:[Ljava/lang/String;

    .line 96
    new-array v0, v4, [Ljava/lang/String;

    .line 97
    const-string v1, "times_contacted"

    aput-object v1, v0, v3

    .line 96
    sput-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->TIME_CONTACTED:[Ljava/lang/String;

    .line 100
    new-array v0, v4, [Ljava/lang/String;

    .line 101
    const-string v1, "photo_id"

    aput-object v1, v0, v3

    .line 100
    sput-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->PHOTO_ID:[Ljava/lang/String;

    .line 104
    const/4 v0, -0x1

    sput v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->ifIceCreamAbove:I

    .line 174
    new-array v0, v5, [Ljava/lang/String;

    .line 175
    const-string v1, "data1"

    aput-object v1, v0, v3

    const-string v1, "data2"

    aput-object v1, v0, v4

    .line 174
    sput-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->PHONE_PROJECTION:[Ljava/lang/String;

    .line 485
    new-array v0, v5, [Ljava/lang/String;

    .line 486
    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "version"

    aput-object v1, v0, v4

    .line 485
    sput-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->RAWID_VERSION:[Ljava/lang/String;

    .line 489
    new-array v0, v4, [Ljava/lang/String;

    .line 490
    const-string v1, "contact_id"

    aput-object v1, v0, v3

    .line 489
    sput-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->RAW_CONTACTID:[Ljava/lang/String;

    .line 494
    new-array v0, v5, [Ljava/lang/String;

    .line 495
    const-string v1, "data1"

    aput-object v1, v0, v3

    const-string v1, "mimetype"

    aput-object v1, v0, v4

    .line 494
    sput-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->PHONE_NUMBER:[Ljava/lang/String;

    .line 653
    new-array v0, v4, [Ljava/lang/String;

    .line 654
    const-string v1, "raw_contact_id"

    aput-object v1, v0, v3

    .line 653
    sput-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->RAW_PROJECTION:[Ljava/lang/String;

    .line 861
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v3

    const-string v1, "data2"

    aput-object v1, v0, v4

    sput-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->NUM_LABEL:[Ljava/lang/String;

    .line 1165
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 1166
    const-string v1, "account_name"

    aput-object v1, v0, v3

    const-string v1, "account_type"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "title"

    aput-object v1, v0, v6

    .line 1167
    const-string v1, "summ_count"

    aput-object v1, v0, v7

    .line 1165
    sput-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->COLUMNS:[Ljava/lang/String;

    .line 1178
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_SUMMARY_URI:Landroid/net/Uri;

    sput-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->GROUP_LIST_URI:Landroid/net/Uri;

    .line 1180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mGroupList:Ljava/util/HashMap;

    .line 1182
    sput v3, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->ALL_CONTACTS_NUMBER:I

    .line 1279
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mNoGroupsSet:Ljava/util/HashSet;

    .line 1670
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mCanvas:Landroid/graphics/Canvas;

    .line 1671
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mPaint:Landroid/graphics/Paint;

    .line 1675
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToGroup(Landroid/content/ContentResolver;JJ)Landroid/net/Uri;
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "contactId"    # J
    .param p3, "groupId"    # J

    .prologue
    .line 1469
    invoke-static {p0, p1, p2}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getRawContactId(Landroid/content/ContentResolver;J)J

    move-result-wide v0

    .line 1470
    .local v0, "rawContactId":J
    const-wide/16 v4, -0x1

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    .line 1471
    const/4 v3, 0x0

    .line 1481
    :goto_0
    return-object v3

    .line 1475
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1476
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "raw_contact_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1477
    const-string v3, "data1"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1478
    const-string v3, "mimetype"

    .line 1479
    const-string v4, "vnd.android.cursor.item/group_membership"

    .line 1478
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method public static addToGroupByRawId(Landroid/content/ContentResolver;JJ)Landroid/net/Uri;
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "rawContactId"    # J
    .param p3, "groupId"    # J

    .prologue
    .line 1487
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1488
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1489
    const-string v1, "data1"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1490
    const-string v1, "mimetype"

    .line 1491
    const-string v2, "vnd.android.cursor.item/group_membership"

    .line 1490
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static checkContactNameExistByID(Landroid/content/ContentResolver;J)Z
    .locals 13
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "contactId"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1640
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .line 1641
    const-string v0, "vnd.android.cursor.item/name"

    aput-object v0, v4, v10

    .line 1642
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    .line 1644
    .local v4, "whereNameParams":[Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "mimetype = ? and contact_id = ? "

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1646
    .local v9, "nameCur":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 1647
    .local v6, "familyName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1648
    .local v7, "givenName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1650
    .local v8, "middleName":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1659
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1662
    invoke-static {v6}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v7}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v8}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v10

    .line 1666
    :goto_1
    return v0

    .line 1652
    :cond_0
    :try_start_1
    const-string v0, "data3"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1651
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1654
    const-string v0, "data2"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1653
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1656
    const-string v0, "data5"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1655
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    goto :goto_0

    .line 1658
    :catchall_0
    move-exception v0

    .line 1659
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1660
    throw v0

    :cond_1
    move v0, v11

    .line 1666
    goto :goto_1
.end method

.method public static createGroup(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 1404
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1405
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "title"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1407
    .local v0, "groupUri":Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    return-wide v2
.end method

.method public static deleteCommunicationRule(Landroid/content/ContentResolver;J)V
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "contactId"    # J

    .prologue
    const/4 v2, 0x0

    .line 1815
    sget-object v1, Lcom/lzx/iteam/provider/CloudContactsDB$CommunicationRule;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1816
    .local v0, "toDeleteUri":Landroid/net/Uri;
    invoke-virtual {p0, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1817
    return-void
.end method

.method public static deleteCommunicationRule(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1874
    const-string v0, "phone_number=? AND contact_name=?"

    .line 1876
    .local v0, "where":Ljava/lang/String;
    sget-object v1, Lcom/lzx/iteam/provider/CloudContactsDB$CommunicationRule;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1877
    return-void
.end method

.method public static getAllContactsId(Landroid/content/Context;)[J
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 582
    const/4 v7, 0x0

    .line 583
    .local v7, "contactIdArr":[J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 584
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    .line 583
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 587
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 588
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v7, v0, [J

    .line 589
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 594
    .end local v8    # "i":I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 596
    return-object v7

    .line 590
    .restart local v8    # "i":I
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v7, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 589
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 593
    .end local v8    # "i":I
    :catchall_0
    move-exception v0

    .line 594
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 595
    throw v0
.end method

.method public static getAllContactsIdArrayList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 618
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 619
    .local v7, "contactIdArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 620
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    .line 619
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 623
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 624
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 629
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 631
    return-object v7

    .line 625
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 628
    :catchall_0
    move-exception v0

    .line 629
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 630
    throw v0
.end method

.method public static getAllContactsIdLong(Landroid/content/Context;)[Ljava/lang/Long;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 600
    const/4 v7, 0x0

    .line 601
    .local v7, "contactIdArr":[Ljava/lang/Long;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 602
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    .line 601
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 605
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 606
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v7, v0, [Ljava/lang/Long;

    .line 607
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 612
    .end local v8    # "i":I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 614
    return-object v7

    .line 608
    .restart local v8    # "i":I
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 607
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 611
    .end local v8    # "i":I
    :catchall_0
    move-exception v0

    .line 612
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 613
    throw v0
.end method

.method public static getAllContactsIdWithNoPhone(Landroid/content/Context;)[J
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 635
    const/4 v6, 0x0

    .line 636
    .local v6, "contactIdArr":[J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    .line 637
    const-string v3, "has_phone_number=1"

    move-object v5, v4

    .line 636
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 638
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 640
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v6, v0, [J

    .line 641
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 645
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 649
    .end local v8    # "i":I
    :cond_0
    return-object v6

    .line 642
    .restart local v8    # "i":I
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v6, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 641
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 644
    .end local v8    # "i":I
    :catchall_0
    move-exception v0

    .line 645
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 646
    throw v0
.end method

.method public static getContactAllNumbers(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "mContentProvider"    # Landroid/content/ContentResolver;
    .param p1, "contactId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1019
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1020
    .local v7, "listNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, ""

    .line 1022
    .local v8, "phoneNumber":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 1025
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->PHONE_NUMBER:[Ljava/lang/String;

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "contact_id = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    .line 1024
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1031
    .local v6, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 1039
    :cond_0
    if-eqz v6, :cond_1

    .line 1040
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1046
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    return-object v7

    .line 1034
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    :try_start_1
    const-string v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1033
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1035
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1038
    :catchall_0
    move-exception v0

    .line 1039
    if-eqz v6, :cond_3

    .line 1040
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1042
    :cond_3
    throw v0
.end method

.method public static getContactIdArr(Landroid/content/ContentResolver;Ljava/util/HashSet;)[J
    .locals 11
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .local p1, "rawIdArr":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 527
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v7, v0, [J

    .line 529
    .local v7, "contactIdArr":[J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    .local v10, "sb":Ljava/lang/StringBuilder;
    const-string v0, "_id"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 533
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 537
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 538
    const-string v0, ")"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 541
    sget-object v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->RAW_CONTACTID:[Ljava/lang/String;

    .line 542
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    .line 540
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 544
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 546
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 550
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 554
    .end local v9    # "j":I
    :cond_0
    return-object v7

    .line 534
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 547
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v9    # "j":I
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    aput-wide v0, v7, v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 549
    :catchall_0
    move-exception v0

    .line 550
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 551
    throw v0
.end method

.method public static getContactIdByDisplayName(Landroid/content/Context;Ljava/lang/String;)J
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 358
    const-wide/16 v6, -0x1

    .line 359
    .local v6, "contactId":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 360
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 361
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    .line 362
    const-string v4, "_id"

    aput-object v4, v2, v5

    const/4 v4, 0x1

    const-string v5, "display_name"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "photo_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    .line 359
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 365
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 369
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 372
    return-wide v6

    .line 368
    :catchall_0
    move-exception v0

    .line 369
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 370
    throw v0
.end method

.method public static getContactIdByEmail(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashSet;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 336
    const/4 v7, 0x0

    .line 338
    .local v7, "contactIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 339
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 340
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "contact_id"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    .line 339
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 343
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 345
    :try_start_0
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 346
    .end local v7    # "contactIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .local v8, "contactIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :goto_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 350
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v7, v8

    .line 354
    .end local v8    # "contactIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v7    # "contactIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_0
    return-object v7

    .line 347
    .end local v7    # "contactIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v8    # "contactIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 349
    :catchall_0
    move-exception v0

    move-object v7, v8

    .line 350
    .end local v8    # "contactIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v7    # "contactIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 351
    throw v0

    .line 349
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public static getContactIdByFirstName(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashSet;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "firstName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 296
    const/4 v6, 0x0

    .line 298
    .local v6, "contactIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 299
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 300
    new-array v2, v10, [Ljava/lang/String;

    .line 301
    const-string v3, "contact_id"

    aput-object v3, v2, v9

    .line 302
    const-string v3, "mimetype = ? and data2 = ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "vnd.android.cursor.item/name"

    aput-object v5, v4, v9

    aput-object p1, v4, v10

    const/4 v5, 0x0

    .line 298
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 304
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 305
    .end local v6    # "contactIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .local v7, "contactIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 309
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 312
    return-object v7

    .line 306
    :cond_0
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 308
    :catchall_0
    move-exception v0

    move-object v6, v7

    .line 309
    .end local v7    # "contactIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v6    # "contactIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 310
    throw v0

    .line 308
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public static getContactIdByLastName(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashSet;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lastName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 316
    const/4 v6, 0x0

    .line 318
    .local v6, "contactIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 319
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 320
    new-array v2, v10, [Ljava/lang/String;

    .line 321
    const-string v3, "contact_id"

    aput-object v3, v2, v9

    .line 322
    const-string v3, "mimetype = ? and data3 = ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "vnd.android.cursor.item/name"

    aput-object v5, v4, v9

    aput-object p1, v4, v10

    const/4 v5, 0x0

    .line 318
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 324
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 325
    .end local v6    # "contactIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .local v7, "contactIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 329
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 332
    return-object v7

    .line 326
    :cond_0
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    move-object v6, v7

    .line 329
    .end local v7    # "contactIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v6    # "contactIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 330
    throw v0

    .line 328
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public static getContactIdByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashSet;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 205
    const/4 v6, 0x0

    .line 207
    .local v6, "contactIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 208
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 209
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    .line 210
    const-string v4, "_id"

    aput-object v4, v2, v5

    const/4 v4, 0x1

    const-string v5, "display_name"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "photo_id"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    .line 211
    const-string v5, "in_visible_group"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    .line 207
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 214
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 216
    :try_start_0
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 217
    .end local v6    # "contactIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .local v7, "contactIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 221
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v6, v7

    .line 225
    .end local v7    # "contactIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v6    # "contactIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_0
    return-object v6

    .line 218
    .end local v6    # "contactIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v7    # "contactIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v0

    move-object v6, v7

    .line 221
    .end local v7    # "contactIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v6    # "contactIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 222
    throw v0

    .line 220
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public static getContactIdByRaw(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 10
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "rawId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 559
    const-wide/16 v8, -0x1

    .line 561
    .local v8, "contactId":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string v0, "_id"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 565
    sget-object v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->RAW_CONTACTID:[Ljava/lang/String;

    .line 566
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    .line 564
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 568
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 570
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 574
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 578
    :cond_0
    return-wide v8

    .line 571
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    goto :goto_0

    .line 573
    :catchall_0
    move-exception v0

    .line 574
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 575
    throw v0
.end method

.method public static getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v12, 0x0

    .line 266
    sget-object v10, Landroid/provider/Contacts$Phones;->CONTENT_FILTER_URL:Landroid/net/Uri;

    .line 267
    .local v10, "mBaseUri":Landroid/net/Uri;
    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v3, v12

    .line 269
    .local v3, "projection":[Ljava/lang/String;
    :try_start_0
    const-string v1, "android.provider.ContactsContract$PhoneLookup"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 270
    .local v7, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "CONTENT_FILTER_URI"

    invoke-virtual {v7, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/net/Uri;

    move-object v10, v0

    .line 271
    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "display_name"

    aput-object v5, v11, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "projection":[Ljava/lang/String;
    .local v11, "projection":[Ljava/lang/String;
    move-object v3, v11

    .line 276
    .end local v7    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "projection":[Ljava/lang/String;
    .restart local v3    # "projection":[Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 277
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 279
    .local v9, "cursor":Landroid/database/Cursor;
    const-string v8, ""

    .line 281
    .local v8, "contactName":Ljava/lang/String;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 285
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 286
    const/4 v9, 0x0

    .line 288
    return-object v8

    .end local v2    # "uri":Landroid/net/Uri;
    .end local v8    # "contactName":Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getContactNameByContactId(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "contactId"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1597
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1598
    .local v6, "contactUri":Landroid/net/Uri;
    const-string v0, "data"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1599
    .local v1, "methodUri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .line 1600
    const-string v0, "vnd.android.cursor.item/name"

    aput-object v0, v4, v3

    .line 1601
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 1603
    .local v4, "whereNameParams":[Ljava/lang/String;
    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v3

    const-string v3, "mimetype = ? and contact_id = ? "

    .line 1604
    const/4 v5, 0x0

    move-object v0, p0

    .line 1603
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1605
    .local v8, "nameCur":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 1607
    .local v7, "displayName":Ljava/lang/String;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1610
    const-string v0, "data1"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1609
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1613
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1616
    return-object v7

    .line 1612
    :catchall_0
    move-exception v0

    .line 1613
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1614
    throw v0
.end method

.method public static getContactNameByNum(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNum"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 377
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    :cond_0
    const-string v0, "\u672a\u77e5"

    .line 390
    :goto_0
    return-object v0

    .line 380
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 381
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 382
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    .line 380
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 384
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 388
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 387
    :catchall_0
    move-exception v0

    .line 388
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 389
    throw v0

    .line 388
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 390
    const-string v0, ""

    goto :goto_0
.end method

.method public static getContactNumberLabel(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "mContentProvider"    # Landroid/content/ContentResolver;
    .param p1, "contactId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumLabel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 865
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 867
    .local v10, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumLabel;>;"
    if-eqz p1, :cond_2

    .line 869
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->NUM_LABEL:[Ljava/lang/String;

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "contact_id = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    .line 868
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 874
    .local v6, "cur":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 875
    const-string v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 876
    .local v8, "numIndex":I
    const-string v0, "data2"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 878
    .local v7, "labelIndex":I
    :cond_0
    new-instance v9, Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumLabel;

    invoke-direct {v9}, Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumLabel;-><init>()V

    .line 879
    .local v9, "numLabel":Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumLabel;
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumLabel;->num:Ljava/lang/String;

    .line 880
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumLabel;->label:I

    .line 882
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 887
    .end local v7    # "labelIndex":I
    .end local v8    # "numIndex":I
    .end local v9    # "numLabel":Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumLabel;
    :cond_1
    if-eqz v6, :cond_2

    .line 888
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 894
    .end local v6    # "cur":Landroid/database/Cursor;
    :cond_2
    return-object v10

    .line 886
    .restart local v6    # "cur":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 887
    if-eqz v6, :cond_3

    .line 888
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 890
    :cond_3
    throw v0
.end method

.method public static getContactNumbers(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p0, "mContentProvider"    # Landroid/content/ContentResolver;
    .param p1, "contactId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 731
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 733
    .local v8, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    .line 735
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->PHONE_NUMBER:[Ljava/lang/String;

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "contact_id = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    .line 734
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 742
    .local v6, "number":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 747
    :cond_0
    const-string v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 746
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 748
    .local v7, "phoneNumber":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 753
    .end local v7    # "phoneNumber":Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 754
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 760
    .end local v6    # "number":Landroid/database/Cursor;
    :cond_2
    return-object v8

    .line 752
    .restart local v6    # "number":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 753
    if-eqz v6, :cond_3

    .line 754
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 756
    :cond_3
    throw v0
.end method

.method public static getContactPeople(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/TreeMap;)Ljava/util/LinkedHashSet;
    .locals 18
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1881
    .local p1, "searchCase":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "contactedIdMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    if-nez p1, :cond_1

    .line 1882
    const/4 v9, 0x0

    .line 1938
    :cond_0
    :goto_0
    return-object v9

    .line 1884
    :cond_1
    const/4 v9, 0x0

    .line 1885
    .local v9, "contactIds":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1887
    .local v17, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1888
    .local v13, "count":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    if-lt v14, v13, :cond_5

    .line 1904
    const-string v2, "data4 LIKE \'"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1905
    const-string v2, "%"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1906
    add-int/lit8 v2, v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1907
    .local v15, "number":Ljava/lang/String;
    sget v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->ifIceCreamAbove:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 1908
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_7

    .line 1909
    const/4 v2, 0x1

    sput v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->ifIceCreamAbove:I

    .line 1914
    :cond_2
    :goto_2
    sget v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->ifIceCreamAbove:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 1915
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1919
    :cond_3
    :goto_3
    const-string v2, "%\'"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1921
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/lzx/iteam/util/Constants;->SEARCH_PHONENUMBER_COLUMNS:[Ljava/lang/String;

    .line 1922
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    .line 1921
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1924
    .local v16, "phonesCursor":Landroid/database/Cursor;
    if-eqz v16, :cond_0

    move-object v12, v9

    .line 1926
    .end local v9    # "contactIds":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    .local v12, "contactIds":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    :goto_4
    if-eqz v16, :cond_4

    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_9

    .line 1934
    :cond_4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    move-object v9, v12

    .end local v12    # "contactIds":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    .restart local v9    # "contactIds":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    goto :goto_0

    .line 1889
    .end local v15    # "number":Ljava/lang/String;
    .end local v16    # "phonesCursor":Landroid/database/Cursor;
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1890
    .local v8, "caseStr":Ljava/lang/String;
    const-string v2, "data1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1891
    const-string v2, " like "

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1892
    if-nez v14, :cond_6

    .line 1893
    const-string v2, "\"%"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1897
    :goto_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1898
    const-string v2, "%\""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1900
    const-string v2, " OR "

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1888
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 1895
    :cond_6
    const-string v2, "\""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1911
    .end local v8    # "caseStr":Ljava/lang/String;
    .restart local v15    # "number":Ljava/lang/String;
    :cond_7
    const/4 v2, 0x0

    sput v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->ifIceCreamAbove:I

    goto :goto_2

    .line 1916
    :cond_8
    sget v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->ifIceCreamAbove:I

    if-nez v2, :cond_3

    .line 1917
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1927
    .end local v9    # "contactIds":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    .restart local v12    # "contactIds":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    .restart local v16    # "phonesCursor":Landroid/database/Cursor;
    :cond_9
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1928
    .local v10, "contactId":J
    if-nez v12, :cond_a

    .line 1929
    new-instance v9, Ljava/util/LinkedHashSet;

    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1931
    .end local v12    # "contactIds":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    .restart local v9    # "contactIds":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    :goto_6
    :try_start_2
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v12, v9

    .end local v9    # "contactIds":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    .restart local v12    # "contactIds":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    goto :goto_4

    .line 1933
    .end local v10    # "contactId":J
    :catchall_0
    move-exception v2

    move-object v9, v12

    .line 1934
    .end local v12    # "contactIds":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    .restart local v9    # "contactIds":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    :goto_7
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1935
    throw v2

    .line 1933
    .restart local v10    # "contactId":J
    :catchall_1
    move-exception v2

    goto :goto_7

    .end local v9    # "contactIds":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    .restart local v12    # "contactIds":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    :cond_a
    move-object v9, v12

    .end local v12    # "contactIds":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    .restart local v9    # "contactIds":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    goto :goto_6
.end method

.method public static getContactedNumber(JLandroid/content/ContentResolver;)I
    .locals 8
    .param p0, "contactId"    # J
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 127
    const/4 v6, 0x0

    .line 128
    .local v6, "contactedNumber":I
    const/4 v7, 0x0

    .line 130
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->TIME_CONTACTED:[Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "_id = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    .line 130
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 133
    if-eqz v7, :cond_0

    .line 134
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 139
    :cond_0
    if-eqz v7, :cond_1

    .line 140
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_1
    return v6

    .line 138
    :catchall_0
    move-exception v0

    .line 139
    if-eqz v7, :cond_2

    .line 140
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_2
    throw v0
.end method

.method public static getDataIdByPhoneNumber(Landroid/content/Context;J)Ljava/util/ArrayList;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rawContactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 792
    const/4 v9, 0x0

    .line 793
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 794
    .local v14, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static/range {p0 .. p0}, Lcom/lzx/iteam/util/PhoneNumberArea;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PhoneNumberArea;

    move-result-object v8

    .line 796
    .local v8, "area":Lcom/lzx/iteam/util/PhoneNumberArea;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->DATA_PROJECTION:[Ljava/lang/String;

    const-string v5, "raw_contact_id=? AND mimetype=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p1

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v6, v7

    const/4 v7, 0x1

    const-string v15, "vnd.android.cursor.item/phone_v2"

    aput-object v15, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 797
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 798
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    .line 799
    .local v12, "isTrue":Z
    :goto_0
    if-nez v12, :cond_2

    .line 811
    .end local v12    # "isTrue":Z
    :cond_0
    if-eqz v9, :cond_1

    .line 812
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 815
    :cond_1
    :goto_1
    return-object v14

    .line 800
    .restart local v12    # "isTrue":Z
    :cond_2
    :try_start_1
    const-string v2, "data1"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 801
    .local v13, "num":Ljava/lang/String;
    invoke-virtual {v8, v13}, Lcom/lzx/iteam/util/PhoneNumberArea;->replaceIpCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 802
    .local v11, "formatedNum":Ljava/lang/String;
    invoke-static {v11}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 803
    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v12

    goto :goto_0

    .line 808
    .end local v11    # "formatedNum":Ljava/lang/String;
    .end local v12    # "isTrue":Z
    .end local v13    # "num":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 809
    .local v10, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 811
    if-eqz v9, :cond_1

    .line 812
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 810
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 811
    if-eqz v9, :cond_4

    .line 812
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 814
    :cond_4
    throw v2
.end method

.method public static getDisplayNameByNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "phoneNum"    # Ljava/lang/String;

    .prologue
    .line 1383
    move-object v2, p1

    .line 1384
    .local v2, "displayName":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getContactIdByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    .line 1387
    .local v1, "contactIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move-object v3, v2

    .line 1399
    .end local v2    # "displayName":Ljava/lang/String;
    .local v3, "displayName":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1390
    .end local v3    # "displayName":Ljava/lang/String;
    .restart local v2    # "displayName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    :goto_1
    move-object v3, v2

    .line 1399
    .end local v2    # "displayName":Ljava/lang/String;
    .restart local v3    # "displayName":Ljava/lang/String;
    goto :goto_0

    .line 1390
    .end local v3    # "displayName":Ljava/lang/String;
    .restart local v2    # "displayName":Ljava/lang/String;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1392
    .local v0, "contactId":Ljava/lang/Long;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1391
    invoke-static {v6, v8, v9}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getContactNameByContactId(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v4

    .line 1393
    .local v4, "name":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1394
    move-object v2, v4

    .line 1395
    goto :goto_1
.end method

.method public static getDisplayNameFromContacts(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "contactId"    # J

    .prologue
    const/4 v2, 0x0

    .line 1623
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 1624
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1626
    .local v4, "whereNameParams":[Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id = ? "

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1627
    .local v7, "nameCur":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 1629
    .local v6, "displayName":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1633
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1636
    return-object v6

    .line 1630
    :cond_0
    :try_start_1
    const-string v0, "display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_0

    .line 1632
    :catchall_0
    move-exception v0

    .line 1633
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1634
    throw v0
.end method

.method public static getFirstMobilePhoneNumber(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactId"    # J
    .param p3, "isPhoneNum"    # Z

    .prologue
    .line 974
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/lzx/iteam/util/PhoneNumberArea;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PhoneNumberArea;

    move-result-object v3

    .line 977
    .local v3, "phoneNumberArea":Lcom/lzx/iteam/util/PhoneNumberArea;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 976
    invoke-static {v5, v6}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getOneContactNumberLabel(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 980
    .local v4, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumLabel;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1007
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 980
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumLabel;

    .line 981
    .local v2, "numberLabel":Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumLabel;
    iget-object v1, v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumLabel;->num:Ljava/lang/String;

    .line 982
    .local v1, "numberElement":Ljava/lang/String;
    iget v0, v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumLabel;->label:I

    .line 983
    .local v0, "label":I
    invoke-virtual {v3, v1}, Lcom/lzx/iteam/util/PhoneNumberArea;->replaceIpCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 984
    invoke-virtual {v3, v1, v0}, Lcom/lzx/iteam/util/PhoneNumberArea;->isMobilePhone(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0
.end method

.method public static getGroupContactAllNumbers(Landroid/content/ContentResolver;J)Ljava/util/Map;
    .locals 11
    .param p0, "mContentProvider"    # Landroid/content/ContentResolver;
    .param p1, "groupId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumLabel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1060
    invoke-static {p0, p1, p2}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getGroupMembers(Landroid/content/ContentResolver;J)Ljava/util/HashSet;

    move-result-object v5

    .line 1061
    .local v5, "rawContactIdList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 1062
    :cond_0
    const/4 v0, 0x0

    .line 1074
    :cond_1
    return-object v0

    .line 1065
    :cond_2
    invoke-static {p0, v5}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getContactIdArr(Landroid/content/ContentResolver;Ljava/util/HashSet;)[J

    move-result-object v2

    .line 1066
    .local v2, "contactIdArray":[J
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1068
    .local v0, "allContactNubmers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumLabel;>;>;"
    array-length v7, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_1

    aget-wide v8, v2, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1069
    .local v1, "contactId":Ljava/lang/Long;
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1070
    .local v3, "contactIdStr":Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getContactNumberLabel(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1071
    .local v4, "number":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumLabel;>;"
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public static getGroupHash(Landroid/content/ContentResolver;)V
    .locals 18
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 1219
    sget-object v3, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->GROUP_LIST_URI:Landroid/net/Uri;

    sget-object v4, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->COLUMNS:[Ljava/lang/String;

    const-string v5, "deleted=0"

    const/4 v6, 0x0

    .line 1220
    const-string v7, "account_type, account_name, title COLLATE LOCALIZED ASC"

    move-object/from16 v2, p0

    .line 1219
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1223
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 1225
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 1267
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1271
    :cond_1
    sget-object v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mGroupList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 1272
    .local v15, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1277
    return-void

    .line 1226
    .end local v15    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1227
    .local v8, "accountName":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1229
    .local v9, "accountType":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1230
    .local v12, "groupId":J
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1233
    .local v17, "title":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1234
    const-string v2, "System Group: My Contacts"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1235
    const-string v17, "\u6211\u7684\u8054\u7cfb\u4eba"

    .line 1249
    :cond_3
    :goto_2
    sget-object v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mGroupList:Ljava/util/HashMap;

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1250
    new-instance v11, Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;

    invoke-direct {v11}, Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;-><init>()V

    .line 1251
    .local v11, "group":Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;
    iput-object v8, v11, Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;->mGroupAccountName:Ljava/lang/String;

    .line 1252
    iput-object v9, v11, Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;->mGroupAccountType:Ljava/lang/String;

    .line 1253
    iput-wide v12, v11, Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;->mGroupID:J

    .line 1254
    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;->mGroupTitle:Ljava/lang/String;

    .line 1257
    sget-object v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mGroupList:Ljava/util/HashMap;

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1266
    .end local v8    # "accountName":Ljava/lang/String;
    .end local v9    # "accountType":Ljava/lang/String;
    .end local v11    # "group":Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;
    .end local v12    # "groupId":J
    .end local v17    # "title":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 1267
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1268
    throw v2

    .line 1236
    .restart local v8    # "accountName":Ljava/lang/String;
    .restart local v9    # "accountType":Ljava/lang/String;
    .restart local v12    # "groupId":J
    .restart local v17    # "title":Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v2, "System Group: Coworkers"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1237
    const-string v17, "\u540c\u4e8b"

    .line 1238
    goto :goto_2

    :cond_5
    const-string v2, "System Group: Family"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1239
    const-string v17, "\u5bb6\u4eba"

    .line 1240
    goto :goto_2

    :cond_6
    const-string v2, "System Group: Friends"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1241
    const-string v17, "\u670b\u53cb"

    .line 1242
    goto :goto_2

    :cond_7
    const-string v2, "Starred in Android"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1243
    const-string v17, "\u5173\u6ce8"

    .line 1245
    goto :goto_2

    .line 1246
    :cond_8
    const-string v17, ""

    goto :goto_2

    .line 1259
    :cond_9
    sget-object v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mGroupList:Ljava/util/HashMap;

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;

    .line 1260
    .local v14, "groupInfo":Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;
    iget-object v2, v14, Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;->mGroupTitle:Ljava/lang/String;

    move-object/from16 v0, v17

    if-eq v2, v0, :cond_0

    .line 1261
    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;->mGroupTitle:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1273
    .end local v8    # "accountName":Ljava/lang/String;
    .end local v9    # "accountType":Ljava/lang/String;
    .end local v12    # "groupId":J
    .end local v14    # "groupInfo":Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;
    .end local v17    # "title":Ljava/lang/String;
    .restart local v15    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_a
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1274
    .local v16, "key":Ljava/lang/String;
    sget-object v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mGroupList:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;

    .line 1275
    .restart local v11    # "group":Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;
    iget-wide v2, v11, Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;->mGroupID:J

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getGroupMembers(Landroid/content/ContentResolver;J)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    iput v2, v11, Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;->mMembersCount:I

    goto/16 :goto_1
.end method

.method public static getGroupIdByContactId(Landroid/content/ContentResolver;J)Ljava/util/ArrayList;
    .locals 13
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "contactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1520
    invoke-static {p0, p1, p2}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getRawContactId(Landroid/content/ContentResolver;J)J

    move-result-wide v10

    .line 1521
    .local v10, "rawContactId":J
    const-wide/16 v0, -0x1

    cmp-long v0, v10, v0

    if-nez v0, :cond_1

    .line 1522
    const/4 v7, 0x0

    .line 1548
    :cond_0
    :goto_0
    return-object v7

    .line 1523
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1525
    .local v7, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 1526
    const-string v3, "data1"

    aput-object v3, v2, v0

    .line 1527
    const-string v3, "raw_contact_id=? AND mimetype=? "

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 1528
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-string v5, "vnd.android.cursor.item/group_membership"

    aput-object v5, v4, v0

    .line 1530
    const/4 v5, 0x0

    move-object v0, p0

    .line 1525
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1533
    .local v6, "cursor":Landroid/database/Cursor;
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 1543
    if-eqz v6, :cond_0

    .line 1544
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1537
    :cond_2
    :try_start_1
    const-string v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1536
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1539
    .local v8, "groupId":J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1542
    .end local v8    # "groupId":J
    :catchall_0
    move-exception v0

    .line 1543
    if-eqz v6, :cond_3

    .line 1544
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1546
    :cond_3
    throw v0
.end method

.method public static getGroupIdByRawContactId(Landroid/content/ContentResolver;J)Ljava/util/ArrayList;
    .locals 11
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "rawContactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 1552
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1554
    .local v8, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    .line 1555
    const-string v0, "data1"

    aput-object v0, v2, v5

    .line 1556
    const-string v3, "raw_contact_id=? AND mimetype=? "

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .line 1557
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const-string v0, "vnd.android.cursor.item/group_membership"

    aput-object v0, v4, v9

    .line 1559
    const/4 v5, 0x0

    move-object v0, p0

    .line 1554
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1562
    .local v6, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 1572
    if-eqz v6, :cond_0

    .line 1573
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1577
    :cond_0
    return-object v8

    .line 1566
    :cond_1
    :try_start_1
    const-string v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1565
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1568
    .local v7, "groupId":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1571
    .end local v7    # "groupId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 1572
    if-eqz v6, :cond_2

    .line 1573
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1575
    :cond_2
    throw v0
.end method

.method public static getGroupMembers(Landroid/content/ContentResolver;J)Ljava/util/HashSet;
    .locals 11
    .param p0, "mContentProvider"    # Landroid/content/ContentResolver;
    .param p1, "groupId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 686
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 688
    .local v7, "listRawContactIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 690
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 691
    const-string v3, "data1=? and mimetype=\'vnd.android.cursor.item/group_membership\'"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    move-object v0, p0

    move-object v5, v2

    .line 690
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 695
    .local v6, "contacts":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    :cond_0
    const-string v0, "raw_contact_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 705
    .local v8, "rawContactId":J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 706
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 711
    .end local v8    # "rawContactId":J
    :cond_1
    if-eqz v6, :cond_2

    .line 712
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 718
    .end local v6    # "contacts":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-object v7

    .restart local v6    # "contacts":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 711
    if-eqz v6, :cond_2

    .line 712
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 710
    :catchall_0
    move-exception v0

    .line 711
    if-eqz v6, :cond_3

    .line 712
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 714
    :cond_3
    throw v0
.end method

.method public static getInstance()Lcom/lzx/iteam/contactssearch/ContactsDBReader;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mInstance:Lcom/lzx/iteam/contactssearch/ContactsDBReader;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;

    invoke-direct {v0}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;-><init>()V

    sput-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mInstance:Lcom/lzx/iteam/contactssearch/ContactsDBReader;

    .line 38
    :cond_0
    sget-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mInstance:Lcom/lzx/iteam/contactssearch/ContactsDBReader;

    return-object v0
.end method

.method public static getNoGroupsSet(Landroid/content/Context;)V
    .locals 13
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 1283
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1284
    .local v7, "groupIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 1286
    .local v12, "noPhoneNumGroup":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mNoGroupsSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1288
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->DATA_TYPE:[Ljava/lang/String;

    .line 1289
    const-string v3, "mimetype = \'vnd.android.cursor.item/group_membership\'"

    move-object v5, v4

    .line 1288
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1291
    .local v6, "gmCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1292
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_7

    .line 1304
    :cond_1
    if-eqz v6, :cond_2

    .line 1305
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1311
    :cond_2
    invoke-static {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v11

    .line 1313
    .local v11, "mPreferenceUtil":Lcom/lzx/iteam/util/PreferenceUtil;
    const-string v0, "show_people_withphonenumber"

    const-class v1, Ljava/lang/Boolean;

    .line 1312
    invoke-virtual {v11, v0, v1}, Lcom/lzx/iteam/util/PreferenceUtil;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 1314
    .local v10, "ifShowPeopleNoPhone":Z
    if-nez v10, :cond_4

    .line 1316
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->CONTACT_ID:[Ljava/lang/String;

    .line 1317
    const-string v3, "has_phone_number=0"

    move-object v5, v4

    .line 1316
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1319
    :goto_1
    if-eqz v6, :cond_3

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_9

    .line 1323
    :cond_3
    if-eqz v6, :cond_4

    .line 1324
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1329
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 1330
    sget-object v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->CONTACT_ID:[Ljava/lang/String;

    .line 1331
    if-eqz v10, :cond_b

    move-object v3, v4

    :goto_2
    move-object v5, v4

    .line 1329
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1333
    if-eqz v6, :cond_5

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v0

    if-gtz v0, :cond_c

    .line 1354
    :cond_5
    if-eqz v6, :cond_6

    .line 1355
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1363
    :cond_6
    :goto_3
    return-void

    .line 1293
    .end local v10    # "ifShowPeopleNoPhone":Z
    .end local v11    # "mPreferenceUtil":Lcom/lzx/iteam/util/PreferenceUtil;
    :cond_7
    const/4 v0, 0x2

    :try_start_3
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1297
    .local v8, "groupTitle":Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v0, "-1"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mGroupList:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 1298
    sget-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mGroupList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1299
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1303
    .end local v8    # "groupTitle":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 1304
    if-eqz v6, :cond_8

    .line 1305
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1307
    :cond_8
    throw v0

    .line 1320
    .restart local v10    # "ifShowPeopleNoPhone":Z
    .restart local v11    # "mPreferenceUtil":Lcom/lzx/iteam/util/PreferenceUtil;
    :cond_9
    const/4 v0, 0x0

    :try_start_4
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 1322
    :catchall_1
    move-exception v0

    .line 1323
    if-eqz v6, :cond_a

    .line 1324
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1326
    :cond_a
    throw v0

    .line 1331
    :cond_b
    const-string v3, "has_phone_number=1"

    goto :goto_2

    .line 1337
    :cond_c
    :try_start_5
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 1338
    :cond_d
    :goto_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v0

    if-nez v0, :cond_f

    .line 1354
    :goto_5
    if-eqz v6, :cond_e

    .line 1355
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1359
    :cond_e
    invoke-interface {v7}, Ljava/util/Set;->clear()V

    .line 1360
    const/4 v7, 0x0

    .line 1361
    invoke-interface {v12}, Ljava/util/Set;->clear()V

    .line 1362
    const/4 v12, 0x0

    .line 1363
    goto :goto_3

    .line 1339
    :cond_f
    const/4 v0, 0x0

    :try_start_6
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1340
    .local v9, "id":Ljava/lang/String;
    sget-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mNoGroupsSet:Ljava/util/HashSet;

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-interface {v7, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1341
    invoke-interface {v12, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1342
    sget-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mNoGroupsSet:Ljava/util/HashSet;

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    .line 1353
    .end local v9    # "id":Ljava/lang/String;
    :catchall_2
    move-exception v0

    .line 1354
    if-eqz v6, :cond_10

    .line 1355
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1357
    :cond_10
    throw v0

    .line 1347
    :cond_11
    const/4 v0, 0x0

    :try_start_7
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1348
    .restart local v9    # "id":Ljava/lang/String;
    sget-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mNoGroupsSet:Ljava/util/HashSet;

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-interface {v7, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1349
    sget-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mNoGroupsSet:Ljava/util/HashSet;

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1346
    .end local v9    # "id":Ljava/lang/String;
    :cond_12
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result v0

    if-nez v0, :cond_11

    goto :goto_5
.end method

.method public static getOneContactIdByPhoneNum(Landroid/content/Context;Ljava/lang/String;)J
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 235
    invoke-static {p1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide v0, v8

    .line 253
    :goto_0
    return-wide v0

    .line 238
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 239
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 240
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    .line 241
    const-string v4, "_id"

    aput-object v4, v2, v5

    const/4 v4, 0x1

    const-string v5, "display_name"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "photo_id"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    .line 242
    const-string v5, "in_visible_group"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    .line 238
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 246
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 250
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v0

    .line 250
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 251
    throw v0

    .line 250
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-wide v0, v8

    .line 253
    goto :goto_0
.end method

.method public static getOneContactNumberLabel(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "mContentProvider"    # Landroid/content/ContentResolver;
    .param p1, "contactId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumLabel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 820
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 822
    .local v10, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumLabel;>;"
    if-eqz p1, :cond_2

    .line 824
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->NUM_LABEL:[Ljava/lang/String;

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "contact_id = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    .line 823
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 831
    .local v9, "number":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 833
    const-string v0, "data1"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 834
    .local v7, "numIndex":I
    const-string v0, "data2"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 837
    .local v6, "labelIndex":I
    :cond_0
    new-instance v8, Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumLabel;

    invoke-direct {v8}, Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumLabel;-><init>()V

    .line 838
    .local v8, "numLabel":Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumLabel;
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumLabel;->num:Ljava/lang/String;

    .line 839
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumLabel;->label:I

    .line 841
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 846
    .end local v6    # "labelIndex":I
    .end local v7    # "numIndex":I
    .end local v8    # "numLabel":Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumLabel;
    :cond_1
    if-eqz v9, :cond_2

    .line 847
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 853
    .end local v9    # "number":Landroid/database/Cursor;
    :cond_2
    return-object v10

    .line 845
    .restart local v9    # "number":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 846
    if-eqz v9, :cond_3

    .line 847
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 849
    :cond_3
    throw v0
.end method

.method public static getPhoneNumberByContactId(Landroid/content/ContentResolver;Ljava/util/HashSet;)Ljava/util/Map;
    .locals 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumLabel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1111
    .local p1, "contactsId":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1113
    .local v0, "allContactNubmers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumLabel;>;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1118
    return-object v0

    .line 1113
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1114
    .local v1, "contactId":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getContactNumberLabel(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1115
    .local v2, "number":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumLabel;>;"
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getPhoneNumberByContactId(Landroid/content/ContentResolver;[J)Ljava/util/Map;
    .locals 7
    .param p0, "mContentProvider"    # Landroid/content/ContentResolver;
    .param p1, "contactIds"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "[J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumLabel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1156
    .local v0, "allContactNubmers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumLabel;>;>;"
    array-length v6, p1

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_0

    .line 1162
    return-object v0

    .line 1156
    :cond_0
    aget-wide v2, p1, v5

    .line 1157
    .local v2, "contactId":J
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 1158
    .local v1, "contactIdStr":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getContactNumberLabel(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1159
    .local v4, "number":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumLabel;>;"
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public static getPhoneNumberByContactIds(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 13
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 1122
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1123
    .local v11, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1147
    return-object v11

    .line 1123
    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1124
    .local v6, "contactId":J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-eqz v0, :cond_0

    .line 1126
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->NUM_LABEL:[Ljava/lang/String;

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "contact_id = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    .line 1125
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1131
    .local v8, "cur":Landroid/database/Cursor;
    if-eqz v8, :cond_3

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1132
    const-string v0, "data1"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1134
    .local v10, "numIndex":I
    :cond_2
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1135
    .local v9, "num":Ljava/lang/String;
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1136
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 1140
    .end local v9    # "num":Ljava/lang/String;
    .end local v10    # "numIndex":I
    :cond_3
    if-eqz v8, :cond_0

    .line 1141
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1139
    :catchall_0
    move-exception v0

    .line 1140
    if-eqz v8, :cond_4

    .line 1141
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1143
    :cond_4
    throw v0
.end method

.method public static getPhoneNumberByRawContactId(Landroid/content/Context;J)Ljava/util/ArrayList;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rawContactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 764
    const/4 v10, 0x0

    .line 765
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-static/range {p0 .. p0}, Lcom/lzx/iteam/util/PhoneNumberArea;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PhoneNumberArea;

    move-result-object v9

    .line 766
    .local v9, "area":Lcom/lzx/iteam/util/PhoneNumberArea;
    const/4 v15, 0x0

    .line 768
    .local v15, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->DATA_PROJECTION:[Ljava/lang/String;

    const-string v6, "raw_contact_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 769
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 770
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    .end local v15    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v16, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v12

    .line 772
    .local v12, "isTrue":Z
    :goto_0
    if-nez v12, :cond_2

    move-object/from16 v15, v16

    .line 784
    .end local v12    # "isTrue":Z
    .end local v16    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    if-eqz v10, :cond_1

    .line 785
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 788
    :cond_1
    :goto_1
    return-object v15

    .line 773
    .end local v15    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "isTrue":Z
    .restart local v16    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :try_start_2
    const-string v3, "mimetype"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 774
    .local v13, "mimetype":Ljava/lang/String;
    invoke-static {v13}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 775
    const-string v3, "data1"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 776
    .local v14, "phoneNumber":Ljava/lang/String;
    invoke-virtual {v9, v14}, Lcom/lzx/iteam/util/PhoneNumberArea;->replaceIpCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    .end local v14    # "phoneNumber":Ljava/lang/String;
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v12

    goto :goto_0

    .line 781
    .end local v12    # "isTrue":Z
    .end local v13    # "mimetype":Ljava/lang/String;
    .end local v16    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v11

    .line 782
    .local v11, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 784
    if-eqz v10, :cond_1

    .line 785
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 783
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 784
    :goto_3
    if-eqz v10, :cond_4

    .line 785
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 787
    :cond_4
    throw v3

    .line 783
    .end local v15    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_1
    move-exception v3

    move-object/from16 v15, v16

    .end local v16    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_3

    .line 781
    .end local v15    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v11

    move-object/from16 v15, v16

    .end local v16    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2
.end method

.method public static getPhoneNumbers(Landroid/net/Uri;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 13
    .param p0, "contactUri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 180
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v9, "phoneNumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "data"

    .line 181
    invoke-static {p0, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 183
    .local v1, "phoneUri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->PHONE_PROJECTION:[Ljava/lang/String;

    .line 184
    const-string v3, "mimetype=?"

    new-array v4, v12, [Ljava/lang/String;

    .line 185
    const-string v5, "vnd.android.cursor.item/phone_v2"

    aput-object v5, v4, v11

    .line 186
    const/4 v5, 0x0

    .line 183
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 188
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 190
    const/4 v10, 0x0

    .line 191
    .local v10, "result":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_0

    if-eqz v10, :cond_1

    .line 198
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 200
    return-object v9

    .line 192
    :cond_1
    invoke-interface {v6, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 193
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 194
    .local v8, "phoneNumber":Ljava/lang/String;
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 195
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public static getPhoneType(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 900
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 902
    .local v8, "phoneMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    .line 904
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 905
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 906
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "contact_id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    .line 904
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 913
    .local v6, "number":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 917
    :cond_0
    const-string v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 918
    .local v9, "phoneNumber":Ljava/lang/String;
    const-string v0, "data2"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 919
    .local v10, "type":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v10, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 921
    .local v7, "phoneLabel":Ljava/lang/String;
    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 927
    .end local v7    # "phoneLabel":Ljava/lang/String;
    .end local v9    # "phoneNumber":Ljava/lang/String;
    .end local v10    # "type":I
    :cond_1
    if-eqz v6, :cond_2

    .line 928
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 934
    .end local v6    # "number":Landroid/database/Cursor;
    :cond_2
    return-object v8

    .line 926
    .restart local v6    # "number":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 927
    if-eqz v6, :cond_3

    .line 928
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 930
    :cond_3
    throw v0
.end method

.method public static getPhoto(Landroid/content/Context;J)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "aPhotoId"    # J

    .prologue
    const/4 v4, 0x0

    .line 1678
    const/4 v1, 0x0

    .line 1680
    .local v1, "photo":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v5}, Lcom/lzx/iteam/util/ContactsUtils;->loadContactPhoto(Landroid/content/Context;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1682
    if-nez v1, :cond_0

    .line 1696
    :goto_0
    return-object v4

    .line 1686
    :cond_0
    const/high16 v4, 0x42a00000    # 80.0f

    invoke-static {p0}, Lcom/lzx/iteam/util/ImageUtil;->getDensity(Landroid/content/Context;)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 1687
    .local v2, "sImageSize":I
    new-instance v0, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v2

    int-to-float v7, v2

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1688
    .local v0, "mRect":Landroid/graphics/RectF;
    const/4 v4, 0x1

    invoke-static {v1, v2, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1689
    .local v3, "scaledBmp":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1690
    sget-object v4, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mCanvas:Landroid/graphics/Canvas;

    sget-object v5, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v3, v4, v5, v0, v6}, Lcom/lzx/iteam/util/ImageUtil;->createRoundBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;F)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1691
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "mRect":Landroid/graphics/RectF;
    .end local v2    # "sImageSize":I
    .end local v3    # "scaledBmp":Landroid/graphics/Bitmap;
    :goto_1
    move-object v4, v1

    .line 1696
    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static getPhotoByContactId(Landroid/content/Context;J)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactId"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 1748
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1750
    .local v6, "contactUri":Landroid/net/Uri;
    const-string v0, "data"

    .line 1749
    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1751
    .local v1, "photoUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "data15"

    aput-object v3, v2, v11

    .line 1752
    const-string v3, "mimetype=?"

    new-array v4, v4, [Ljava/lang/String;

    .line 1753
    const-string v10, "vnd.android.cursor.item/photo"

    aput-object v10, v4, v11

    .line 1751
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1756
    .local v8, "photoCursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1757
    const/4 v7, 0x0

    .line 1759
    .local v7, "photo":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1760
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 1762
    .local v9, "photoData":[B
    array-length v0, v9

    .line 1761
    invoke-static {v9, v11, v0, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1765
    .end local v9    # "photoData":[B
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1766
    if-nez v7, :cond_1

    .line 1768
    :goto_0
    return-object v5

    :cond_1
    move-object v5, v7

    goto :goto_0
.end method

.method public static getPhotoId(JLandroid/content/Context;)J
    .locals 10
    .param p0, "contactId"    # J
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    const-wide/16 v8, 0x0

    .line 151
    .local v8, "photoId":J
    const/4 v6, 0x0

    .line 153
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->PHOTO_ID:[Ljava/lang/String;

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 153
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 156
    if-eqz v6, :cond_0

    .line 157
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v8, v0

    .line 165
    :cond_0
    if-eqz v6, :cond_1

    .line 166
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 170
    :cond_1
    :goto_0
    return-wide v8

    .line 161
    :catch_0
    move-exception v7

    .line 162
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "strPhoneNumber**"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    if-eqz v6, :cond_1

    .line 166
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 164
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 165
    if-eqz v6, :cond_2

    .line 166
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 168
    :cond_2
    throw v0
.end method

.method public static getRawContactId(Landroid/content/ContentResolver;J)J
    .locals 11
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "contactId"    # J

    .prologue
    const/4 v5, 0x0

    .line 401
    const-wide/16 v8, -0x1

    .line 402
    .local v8, "rawContactId":J
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 403
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->RAWID_VERSION:[Ljava/lang/String;

    .line 404
    const-string v3, "contact_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 405
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 406
    const/4 v5, 0x0

    move-object v0, p0

    .line 403
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 409
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 410
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 411
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 414
    :cond_0
    if-eqz v6, :cond_1

    .line 415
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 420
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    return-wide v8

    .line 413
    .restart local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 414
    if-eqz v6, :cond_2

    .line 415
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 417
    :cond_2
    throw v0
.end method

.method public static getRawContactIdAndVersion(Landroid/content/ContentResolver;J)[J
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "contactId"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 501
    const/4 v0, 0x2

    new-array v7, v0, [J

    .line 502
    .local v7, "ret":[J
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 503
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 504
    sget-object v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->RAWID_VERSION:[Ljava/lang/String;

    const-string v3, "contact_id=?"

    new-array v4, v4, [Ljava/lang/String;

    .line 505
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 506
    const/4 v5, 0x0

    move-object v0, p0

    .line 503
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 509
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 510
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 511
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v7, v0

    .line 512
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v7, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    :cond_0
    if-eqz v6, :cond_1

    .line 517
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 522
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    return-object v7

    .line 515
    .restart local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 516
    if-eqz v6, :cond_2

    .line 517
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 519
    :cond_2
    throw v0
.end method

.method public static getRawContactIdSet(Landroid/content/ContentResolver;J)Ljava/util/HashSet;
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "contactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 463
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 465
    .local v7, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 466
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->RAWID_VERSION:[Ljava/lang/String;

    .line 467
    const-string v3, "contact_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 468
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 469
    const/4 v5, 0x0

    move-object v0, p0

    .line 466
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 472
    .local v6, "c":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 476
    if-eqz v6, :cond_0

    .line 477
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 482
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_0
    return-object v7

    .line 473
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 475
    :catchall_0
    move-exception v0

    .line 476
    if-eqz v6, :cond_2

    .line 477
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 479
    :cond_2
    throw v0
.end method

.method public static getRoundPhotoByContactId(Landroid/content/Context;J)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactId"    # J

    .prologue
    .line 1707
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1709
    .local v6, "contactUri":Landroid/net/Uri;
    const-string v0, "data"

    .line 1708
    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1710
    .local v1, "photoUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data15"

    aput-object v4, v2, v3

    .line 1711
    const-string v3, "mimetype=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 1712
    const-string v13, "vnd.android.cursor.item/photo"

    aput-object v13, v4, v5

    .line 1713
    const/4 v5, 0x0

    .line 1710
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1715
    .local v9, "photoCursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1716
    const/4 v8, 0x0

    .line 1718
    .local v8, "photo":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1719
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 1720
    .local v10, "photoData":[B
    const/4 v0, 0x0

    .line 1721
    array-length v2, v10

    const/4 v3, 0x0

    .line 1720
    invoke-static {v10, v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1724
    .end local v10    # "photoData":[B
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1725
    if-nez v8, :cond_1

    const/4 v0, 0x0

    .line 1737
    :goto_0
    return-object v0

    .line 1729
    :cond_1
    const/high16 v0, 0x42a00000    # 80.0f

    invoke-static {p0}, Lcom/lzx/iteam/util/ImageUtil;->getDensity(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v11, v0

    .line 1730
    .local v11, "sImageSize":I
    new-instance v7, Landroid/graphics/RectF;

    const/4 v0, 0x0

    const/4 v2, 0x0

    int-to-float v3, v11

    int-to-float v4, v11

    invoke-direct {v7, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1731
    .local v7, "mRect":Landroid/graphics/RectF;
    const/4 v0, 0x1

    invoke-static {v8, v11, v11, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 1732
    .local v12, "scaledBmp":Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 1733
    sget-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mCanvas:Landroid/graphics/Canvas;

    sget-object v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v12, v0, v2, v7, v3}, Lcom/lzx/iteam/util/ImageUtil;->createRoundBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;F)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1734
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v8

    .line 1737
    goto :goto_0
.end method

.method public static insertCommunicationRule(Landroid/content/ContentResolver;Ljava/lang/String;JLjava/lang/String;I)V
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "contactID"    # J
    .param p4, "contactName"    # Ljava/lang/String;
    .param p5, "pattern"    # I

    .prologue
    .line 1805
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1806
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "contact_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1807
    const-string v1, "pattern"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1808
    const-string v1, "contact_name"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    const-string v1, "phone_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    sget-object v1, Lcom/lzx/iteam/provider/CloudContactsDB$CommunicationRule;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1812
    return-void
.end method

.method public static insertCommunicationRule(Landroid/content/ContentResolver;Ljava/util/List;JLjava/lang/String;Z)V
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p2, "contactID"    # J
    .param p4, "contactName"    # Ljava/lang/String;
    .param p5, "insertToBlacklist"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1783
    .local p1, "phoneNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1801
    :cond_0
    return-void

    .line 1784
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1785
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "contact_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1786
    const/4 v1, 0x0

    .line 1787
    .local v1, "pattern":I
    if-eqz p5, :cond_2

    .line 1788
    const/16 v1, 0x54

    .line 1794
    :goto_0
    const-string v3, "pattern"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1795
    const-string v3, "contact_name"

    invoke-virtual {v2, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1797
    const-string v4, "phone_number"

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    sget-object v3, Lcom/lzx/iteam/provider/CloudContactsDB$CommunicationRule;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1796
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1791
    .end local v0    # "i":I
    :cond_2
    const/16 v1, 0xa8

    goto :goto_0
.end method

.method public static insertContact(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 1948
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1949
    .local v0, "cv":Landroid/content/ContentValues;
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1950
    .local v1, "rawContactUri":Landroid/net/Uri;
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 1951
    .local v2, "rawContactId":J
    const-string v4, "raw_contact_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1952
    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1953
    const-string v4, "data2"

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1955
    invoke-static {p2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1956
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1957
    const-string v4, "raw_contact_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1958
    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    const-string v4, "data1"

    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    const-string v4, "data2"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1961
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1964
    :cond_0
    return-void
.end method

.method public static insertFakeCallLog(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1975
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1976
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    const-string v1, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1978
    const-string v1, "duration"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1979
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1980
    const-string v1, "new"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1981
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1982
    return-void
.end method

.method public static insertNumber(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "num"    # Ljava/lang/String;

    .prologue
    .line 1967
    invoke-static {p0, p1}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getOneContactIdByPhoneNum(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 1968
    .local v0, "id":J
    const-wide/16 v4, -0x1

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    .line 1969
    const-string v2, "\u7535\u8bdd\u5df2\u63a5\u901a\uff0c\u8bf7\u63a5\u542c..."

    .line 1970
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, p1}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->insertContact(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 1972
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static isInBlackList(Landroid/content/Context;Ljava/util/ArrayList;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 1079
    if-nez p1, :cond_1

    move v0, v10

    .line 1107
    :cond_0
    :goto_0
    return v0

    .line 1082
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v10

    .line 1107
    goto :goto_0

    .line 1082
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1083
    .local v6, "callLogNum":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lzx/iteam/provider/CloudContactsDB$CommunicationRule;->CONTENT_URI:Landroid/net/Uri;

    .line 1084
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 1085
    const-string v3, "phone_number"

    aput-object v3, v2, v10

    const-string v3, "pattern"

    aput-object v3, v2, v12

    .line 1086
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "phone_number = \'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 1083
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1088
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_5

    .line 1089
    :cond_4
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_6

    .line 1101
    :cond_5
    if-eqz v7, :cond_2

    .line 1102
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1090
    :cond_6
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1091
    .local v9, "phoneNumber":Ljava/lang/String;
    const-string v0, "ActionContactsCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "the phonenumber is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1093
    .local v8, "pattern":I
    and-int/lit8 v0, v8, 0x10

    if-nez v0, :cond_7

    .line 1094
    and-int/lit8 v0, v8, 0x4

    if-nez v0, :cond_7

    .line 1095
    and-int/lit8 v0, v8, 0x40

    if-eqz v0, :cond_4

    .line 1096
    :cond_7
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 1101
    if-eqz v7, :cond_0

    .line 1102
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1100
    .end local v8    # "pattern":I
    .end local v9    # "phoneNumber":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 1101
    if-eqz v7, :cond_8

    .line 1102
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1104
    :cond_8
    throw v0
.end method

.method public static removeAllCallLogByNumber(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1990
    invoke-static {p0, p1}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getOneContactIdByPhoneNum(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 1992
    .local v0, "contactId":J
    const-wide/16 v4, -0x1

    cmp-long v3, v0, v4

    if-eqz v3, :cond_0

    .line 1993
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "number=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1998
    :cond_0
    :goto_0
    return-void

    .line 1995
    :catch_0
    move-exception v2

    .line 1996
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static removeContactByContactId(Landroid/content/ContentResolver;J)Z
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "contactId"    # J

    .prologue
    .line 1435
    const/4 v3, 0x0

    .line 1436
    .local v3, "result":Z
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1438
    .local v0, "contactUri":Landroid/net/Uri;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1440
    .local v2, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 1441
    const-string v6, "caller_is_syncadapter"

    const-string v7, "true"

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 1443
    .local v4, "uri":Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1446
    :try_start_0
    const-string v5, "com.android.contacts"

    invoke-virtual {p0, v5, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1447
    const/4 v3, 0x1

    .line 1463
    :goto_0
    return v3

    .line 1448
    :catch_0
    move-exception v1

    .line 1449
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1450
    const/4 v3, 0x0

    goto :goto_0

    .line 1451
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1452
    .local v1, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->printStackTrace()V

    .line 1453
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static removeFromGroup(Landroid/content/ContentResolver;JJ)V
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "contactId"    # J
    .param p3, "groupId"    # J

    .prologue
    .line 1498
    invoke-static {p0, p1, p2}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getRawContactId(Landroid/content/ContentResolver;J)J

    move-result-wide v0

    .line 1499
    .local v0, "rawContactId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1510
    :goto_0
    return-void

    .line 1503
    :cond_0
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1504
    const-string v3, "raw_contact_id=? AND mimetype=? AND data1=?"

    .line 1506
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 1507
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "vnd.android.cursor.item/group_membership"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 1508
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1502
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static removeGroup(Landroid/content/ContentResolver;J)Z
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "groupRowId"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1411
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 1412
    .local v1, "groupRowIdStr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1414
    .local v0, "counter":I
    sget-object v4, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id=?"

    new-array v6, v2, [Ljava/lang/String;

    .line 1415
    aput-object v1, v6, v3

    invoke-virtual {p0, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .line 1418
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "mimetype=? AND data1=?"

    .line 1419
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    .line 1420
    const-string v7, "vnd.android.cursor.item/group_membership"

    aput-object v7, v6, v3

    aput-object v1, v6, v2

    invoke-virtual {p0, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .line 1423
    if-lez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public static renameGroup(Landroid/content/ContentResolver;JLjava/lang/String;)V
    .locals 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "groupId"    # J
    .param p3, "newName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1583
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 1591
    :goto_0
    return-void

    .line 1587
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1588
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "title"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1590
    .local v0, "groupUri":Landroid/net/Uri;
    invoke-virtual {p0, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static resetAllContactsNumber(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 1188
    invoke-static {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v8

    .line 1190
    .local v8, "mPreferenceUtil":Lcom/lzx/iteam/util/PreferenceUtil;
    const-string v0, "show_people_withphonenumber"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lcom/lzx/iteam/util/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 1192
    .local v7, "ifShowPeopleNoPhone":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 1193
    if-eqz v7, :cond_1

    move-object v3, v2

    :goto_0
    move-object v4, v2

    move-object v5, v2

    .line 1192
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1194
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1196
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->ALL_CONTACTS_NUMBER:I

    .line 1197
    const-string v0, "getCount"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "===="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1199
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1202
    :cond_0
    const-string v0, "contact_numbers"

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->ALL_CONTACTS_NUMBER:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1204
    invoke-static {p0}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getNoGroupsSet(Landroid/content/Context;)V

    .line 1205
    return-void

    .line 1193
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    const-string v3, "has_phone_number=1"

    goto :goto_0

    .line 1198
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 1199
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1200
    throw v0
.end method

.method public static selectCommunicationRuleAllPhones(Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 13
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumberType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1842
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1843
    .local v6, "allNumbers":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumberType;>;"
    const/4 v8, 0x0

    .line 1844
    .local v8, "cursor":Landroid/database/Cursor;
    const/16 v7, 0x54

    .line 1846
    .local v7, "blackpattern":I
    const/16 v12, 0xa8

    .line 1849
    .local v12, "whitepattern":I
    :try_start_0
    sget-object v1, Lcom/lzx/iteam/provider/CloudContactsDB$CommunicationRule;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 1850
    const-string v3, "phone_number"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "pattern"

    aput-object v3, v2, v0

    .line 1851
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 1849
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1852
    :goto_0
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 1864
    :cond_0
    if-eqz v8, :cond_1

    .line 1865
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1869
    :cond_1
    return-object v6

    .line 1853
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1854
    .local v10, "phone":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1855
    .local v9, "pattern":I
    const/4 v11, 0x0

    .line 1856
    .local v11, "type":I
    and-int v0, v7, v9

    if-eqz v0, :cond_5

    .line 1857
    const/4 v11, 0x0

    .line 1861
    :cond_3
    :goto_1
    new-instance v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumberType;

    invoke-direct {v0, v10, v11}, Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumberType;-><init>(Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1863
    .end local v9    # "pattern":I
    .end local v10    # "phone":Ljava/lang/String;
    .end local v11    # "type":I
    :catchall_0
    move-exception v0

    .line 1864
    if-eqz v8, :cond_4

    .line 1865
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1867
    :cond_4
    throw v0

    .line 1858
    .restart local v9    # "pattern":I
    .restart local v10    # "phone":Ljava/lang/String;
    .restart local v11    # "type":I
    :cond_5
    and-int v0, v12, v9

    if-eqz v0, :cond_3

    .line 1859
    const/4 v11, 0x1

    goto :goto_1
.end method

.method public static setInstance(Lcom/lzx/iteam/contactssearch/ContactsDBReader;)V
    .locals 0
    .param p0, "instance"    # Lcom/lzx/iteam/contactssearch/ContactsDBReader;

    .prologue
    .line 42
    sput-object p0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mInstance:Lcom/lzx/iteam/contactssearch/ContactsDBReader;

    .line 43
    return-void
.end method


# virtual methods
.method public createGroupWithAccount(Landroid/content/ContentResolver;Landroid/accounts/Account;Ljava/lang/String;I)J
    .locals 5
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "visible"    # I

    .prologue
    .line 1367
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1368
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "sourceid"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    const-string v2, "title"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    const-string v2, "group_visible"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1372
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 1373
    .local v0, "uri":Landroid/net/Uri;
    if-eqz p2, :cond_0

    .line 1374
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "account_name"

    iget-object v4, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 1375
    const-string v3, "account_type"

    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1378
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    return-wide v2
.end method

.method public upDateOrInsertContactPhoto(Landroid/content/Context;J[B)J
    .locals 10
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mContactId"    # J
    .param p4, "photo"    # [B

    .prologue
    .line 431
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 432
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 433
    .local v4, "resolver":Landroid/content/ContentResolver;
    invoke-static {v4, p2, p3}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getRawContactId(Landroid/content/ContentResolver;J)J

    move-result-wide v2

    .line 434
    .local v2, "rawContactId":J
    invoke-static {p1, p2, p3}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getPhotoByContactId(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 435
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p4, :cond_0

    .line 437
    if-nez v0, :cond_1

    .line 439
    const-string v7, "raw_contact_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 440
    const-string v7, "mimetype"

    const-string v8, "vnd.android.cursor.item/photo"

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v7, "data15"

    invoke-virtual {v1, v7, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 442
    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v7, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 458
    :cond_0
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getContactIdByRaw(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v8

    return-wide v8

    .line 447
    :cond_1
    const-string v7, "data15"

    invoke-virtual {v1, v7, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 449
    const-string v5, "raw_contact_id=? and mimetype=?"

    .line 451
    .local v5, "selection":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 452
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "vnd.android.cursor.item/photo"

    aput-object v8, v6, v7

    .line 454
    .local v6, "selectionArgs":[Ljava/lang/String;
    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v7, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
