.class public Lcom/lzx/iteam/net/MsgCenter;
.super Ljava/lang/Object;
.source "MsgCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;,
        Lcom/lzx/iteam/net/MsgCenter$OnContentChange;
    }
.end annotation


# static fields
.field private static PROJECTION:[Ljava/lang/String;

.field private static sMsgCenter:Lcom/lzx/iteam/net/MsgCenter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/net/MsgCenter$OnContentChange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 17
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 18
    const-string v2, "cloud_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 19
    const-string v2, "phone_num"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 20
    const-string v2, "is_readed"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 21
    const-string v2, "date_time"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 22
    const-string v2, "display_text"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 23
    const-string v2, "execcode"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 24
    const-string v2, "arg_list"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 25
    const-string v2, "msg_type_drawable_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 26
    const-string v2, "next_action_drawable_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 27
    const-string v2, "cloud_group_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 28
    const-string v2, "cloud_group_invitecode"

    aput-object v2, v0, v1

    .line 16
    sput-object v0, Lcom/lzx/iteam/net/MsgCenter;->PROJECTION:[Ljava/lang/String;

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/net/MsgCenter;->mListenerList:Ljava/util/ArrayList;

    .line 32
    iput-object p1, p0, Lcom/lzx/iteam/net/MsgCenter;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/MsgCenter;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 36
    sget-object v0, Lcom/lzx/iteam/net/MsgCenter;->sMsgCenter:Lcom/lzx/iteam/net/MsgCenter;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/lzx/iteam/net/MsgCenter;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/net/MsgCenter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lzx/iteam/net/MsgCenter;->sMsgCenter:Lcom/lzx/iteam/net/MsgCenter;

    .line 39
    :cond_0
    sget-object v0, Lcom/lzx/iteam/net/MsgCenter;->sMsgCenter:Lcom/lzx/iteam/net/MsgCenter;

    return-object v0
.end method

.method private notifyUi()V
    .locals 3

    .prologue
    .line 51
    iget-object v1, p0, Lcom/lzx/iteam/net/MsgCenter;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    return-void

    .line 51
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/net/MsgCenter$OnContentChange;

    .line 52
    .local v0, "listener":Lcom/lzx/iteam/net/MsgCenter$OnContentChange;
    invoke-interface {v0}, Lcom/lzx/iteam/net/MsgCenter$OnContentChange;->onContentChange()V

    goto :goto_0
.end method


# virtual methods
.method public addContentChangeListener(Lcom/lzx/iteam/net/MsgCenter$OnContentChange;)V
    .locals 1
    .param p1, "listener"    # Lcom/lzx/iteam/net/MsgCenter$OnContentChange;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lzx/iteam/net/MsgCenter;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public addNewMsg(Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;)V
    .locals 4
    .param p1, "item"    # Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;

    .prologue
    .line 57
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 58
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "cloud_id"

    iget-wide v2, p1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->cloudId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 59
    const-string v1, "phone_num"

    iget-object v2, p1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->phoneNum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "is_readed"

    iget v2, p1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->isReaded:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 61
    const-string v1, "execcode"

    iget v2, p1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->execCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    const-string v1, "arg_list"

    iget-object v2, p1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->argList:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "date_time"

    iget-wide v2, p1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->dateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 64
    const-string v1, "display_text"

    iget-object v2, p1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->displayText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "msg_type_drawable_id"

    iget v2, p1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->msgTypeDrawableId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    const-string v1, "next_action_drawable_id"

    iget v2, p1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->nextActionDrawableId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 67
    const-string v1, "cloud_group_id"

    iget-object v2, p1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->cloudGroupId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "cloud_group_invitecode"

    iget-object v2, p1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->cloudGroupInviteCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/lzx/iteam/net/MsgCenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lzx/iteam/provider/CloudContactsDB$MsgItem;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 71
    invoke-direct {p0}, Lcom/lzx/iteam/net/MsgCenter;->notifyUi()V

    .line 72
    return-void
.end method

.method public deleteMsg(J)V
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lzx/iteam/net/MsgCenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lzx/iteam/provider/CloudContactsDB$MsgItem;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 118
    invoke-direct {p0}, Lcom/lzx/iteam/net/MsgCenter;->notifyUi()V

    .line 119
    return-void
.end method

.method public getDataList()Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v9, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;>;"
    const/4 v8, 0x0

    .line 128
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/net/MsgCenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/lzx/iteam/provider/CloudContactsDB$MsgItem;->CONTENT_URI:Landroid/net/Uri;

    .line 129
    sget-object v4, Lcom/lzx/iteam/net/MsgCenter;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date_time DESC"

    .line 128
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 131
    if-nez v8, :cond_1

    .line 161
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_0
    :goto_0
    return-object v9

    .line 133
    :cond_1
    :try_start_1
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 134
    .local v16, "indexMsgId":I
    const-string v2, "cloud_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 135
    .local v11, "indexCloudId":I
    const-string v2, "phone_num"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 136
    .local v19, "indexPhoneNum":I
    const-string v2, "is_readed"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 137
    .local v15, "indexIsReaded":I
    const-string v2, "date_time"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 138
    .local v12, "indexDateTime":I
    const-string v2, "display_text"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 139
    .local v13, "indexDisplayText":I
    const-string v2, "execcode"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 140
    .local v14, "indexExecCode":I
    const-string v2, "arg_list"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 141
    .local v10, "indexArgList":I
    const-string v2, "msg_type_drawable_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 142
    .local v17, "indexMsgTypeDrawableId":I
    const-string v2, "next_action_drawable_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 144
    .local v18, "indexNextActionDrawableId":I
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 161
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 145
    :cond_2
    :try_start_2
    new-instance v20, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;

    invoke-direct/range {v20 .. v20}, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;-><init>()V

    .line 146
    .local v20, "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v20

    iput-wide v2, v0, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->msgId:J

    .line 147
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v20

    iput-wide v2, v0, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->cloudId:J

    .line 148
    move/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->phoneNum:Ljava/lang/String;

    .line 149
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v20

    iput v2, v0, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->isReaded:I

    .line 150
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v20

    iput-wide v2, v0, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->dateTime:J

    .line 151
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->displayText:Ljava/lang/String;

    .line 152
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v20

    iput v2, v0, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->execCode:I

    .line 153
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->argList:Ljava/lang/String;

    .line 154
    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v20

    iput v2, v0, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->msgTypeDrawableId:I

    .line 155
    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v20

    iput v2, v0, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->nextActionDrawableId:I

    .line 156
    const-string v2, "cloud_group_invitecode"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->cloudGroupInviteCode:Ljava/lang/String;

    .line 157
    const-string v2, "cloud_group_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->cloudGroupId:Ljava/lang/String;

    .line 158
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 160
    .end local v10    # "indexArgList":I
    .end local v11    # "indexCloudId":I
    .end local v12    # "indexDateTime":I
    .end local v13    # "indexDisplayText":I
    .end local v14    # "indexExecCode":I
    .end local v15    # "indexIsReaded":I
    .end local v16    # "indexMsgId":I
    .end local v17    # "indexMsgTypeDrawableId":I
    .end local v18    # "indexNextActionDrawableId":I
    .end local v19    # "indexPhoneNum":I
    .end local v20    # "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    :catchall_0
    move-exception v2

    .line 161
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 162
    :cond_3
    throw v2
.end method

.method public getMsgCount()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 221
    const/4 v7, 0x0

    .line 222
    .local v7, "number":I
    iget-object v0, p0, Lcom/lzx/iteam/net/MsgCenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lzx/iteam/provider/CloudContactsDB$MsgItem;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "count(*)"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 223
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 224
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 225
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 226
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_0
    return v7
.end method

.method public getMsgItem(J)Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    .locals 23
    .param p1, "msgId"    # J

    .prologue
    .line 168
    const/16 v20, 0x0

    .line 169
    .local v20, "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    const/4 v10, 0x0

    .line 171
    .local v10, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/net/MsgCenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/lzx/iteam/provider/CloudContactsDB$MsgItem;->CONTENT_URI:Landroid/net/Uri;

    .line 172
    sget-object v6, Lcom/lzx/iteam/net/MsgCenter;->PROJECTION:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "_id="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p1

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 173
    const/4 v8, 0x0

    const-string v9, "date_time DESC"

    .line 171
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 175
    if-nez v10, :cond_1

    .line 203
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object/from16 v21, v20

    .line 206
    .end local v20    # "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    .local v21, "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    :goto_0
    return-object v21

    .line 177
    .end local v21    # "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    .restart local v20    # "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    :cond_1
    :try_start_1
    const-string v4, "cloud_id"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 178
    .local v12, "indexCloudId":I
    const-string v4, "phone_num"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 179
    .local v19, "indexPhoneNum":I
    const-string v4, "is_readed"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 180
    .local v16, "indexIsReaded":I
    const-string v4, "date_time"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 181
    .local v13, "indexDateTime":I
    const-string v4, "display_text"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 182
    .local v14, "indexDisplayText":I
    const-string v4, "execcode"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 183
    .local v15, "indexExecCode":I
    const-string v4, "arg_list"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 184
    .local v11, "indexArgList":I
    const-string v4, "msg_type_drawable_id"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 185
    .local v17, "indexMsgTypeDrawableId":I
    const-string v4, "next_action_drawable_id"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 187
    .local v18, "indexNextActionDrawableId":I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 188
    new-instance v21, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;

    invoke-direct/range {v21 .. v21}, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    .end local v20    # "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    .restart local v21    # "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    :try_start_2
    move-wide/from16 v0, p1

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->msgId:J

    .line 190
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v21

    iput-wide v4, v0, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->cloudId:J

    .line 191
    move/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->phoneNum:Ljava/lang/String;

    .line 192
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->isReaded:I

    .line 193
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v21

    iput-wide v4, v0, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->dateTime:J

    .line 194
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->displayText:Ljava/lang/String;

    .line 195
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->execCode:I

    .line 196
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->argList:Ljava/lang/String;

    .line 197
    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->msgTypeDrawableId:I

    .line 198
    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->nextActionDrawableId:I

    .line 199
    const-string v4, "cloud_group_invitecode"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->cloudGroupInviteCode:Ljava/lang/String;

    .line 200
    const-string v4, "cloud_group_id"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->cloudGroupId:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v20, v21

    .line 203
    .end local v21    # "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    .restart local v20    # "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    :cond_2
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object/from16 v21, v20

    .line 206
    .end local v20    # "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    .restart local v21    # "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    goto/16 :goto_0

    .line 202
    .end local v11    # "indexArgList":I
    .end local v12    # "indexCloudId":I
    .end local v13    # "indexDateTime":I
    .end local v14    # "indexDisplayText":I
    .end local v15    # "indexExecCode":I
    .end local v16    # "indexIsReaded":I
    .end local v17    # "indexMsgTypeDrawableId":I
    .end local v18    # "indexNextActionDrawableId":I
    .end local v19    # "indexPhoneNum":I
    .end local v21    # "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    .restart local v20    # "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    :catchall_0
    move-exception v4

    .line 203
    :goto_1
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 204
    :cond_4
    throw v4

    .line 202
    .end local v20    # "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    .restart local v11    # "indexArgList":I
    .restart local v12    # "indexCloudId":I
    .restart local v13    # "indexDateTime":I
    .restart local v14    # "indexDisplayText":I
    .restart local v15    # "indexExecCode":I
    .restart local v16    # "indexIsReaded":I
    .restart local v17    # "indexMsgTypeDrawableId":I
    .restart local v18    # "indexNextActionDrawableId":I
    .restart local v19    # "indexPhoneNum":I
    .restart local v21    # "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    :catchall_1
    move-exception v4

    move-object/from16 v20, v21

    .end local v21    # "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    .restart local v20    # "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    goto :goto_1
.end method

.method public getUnreadMsgCount()I
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 210
    const/4 v7, 0x0

    .line 211
    .local v7, "number":I
    iget-object v0, p0, Lcom/lzx/iteam/net/MsgCenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lzx/iteam/provider/CloudContactsDB$MsgItem;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "count(*)"

    aput-object v3, v2, v8

    const-string v3, "is_readed=0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 212
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 213
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 214
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 215
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 217
    :cond_0
    return v7
.end method

.method public removeContentChangeListener(Lcom/lzx/iteam/net/MsgCenter$OnContentChange;)V
    .locals 1
    .param p1, "listener"    # Lcom/lzx/iteam/net/MsgCenter$OnContentChange;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lzx/iteam/net/MsgCenter;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public typeMsgExist(JI)J
    .locals 7
    .param p1, "cloudId"    # J
    .param p3, "execCode"    # I

    .prologue
    .line 75
    const/4 v6, 0x0

    .line 77
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/lzx/iteam/net/MsgCenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lzx/iteam/provider/CloudContactsDB$MsgItem;->CONTENT_URI:Landroid/net/Uri;

    .line 78
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cloud_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 80
    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "execcode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 80
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 77
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 81
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 83
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 81
    :cond_0
    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 84
    :cond_2
    throw v0
.end method

.method public updateMsg(Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;)V
    .locals 6
    .param p1, "item"    # Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;

    .prologue
    .line 89
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 90
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "cloud_id"

    iget-wide v2, p1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->cloudId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 91
    const-string v1, "phone_num"

    iget-object v2, p1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->phoneNum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, "is_readed"

    iget v2, p1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->isReaded:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    const-string v1, "execcode"

    iget v2, p1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->execCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    const-string v1, "arg_list"

    iget-object v2, p1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->argList:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "date_time"

    iget-wide v2, p1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->dateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 96
    const-string v1, "display_text"

    iget-object v2, p1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->displayText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "msg_type_drawable_id"

    iget v2, p1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->msgTypeDrawableId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    const-string v1, "next_action_drawable_id"

    iget v2, p1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->nextActionDrawableId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    iget-object v1, p0, Lcom/lzx/iteam/net/MsgCenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lzx/iteam/provider/CloudContactsDB$MsgItem;->CONTENT_URI:Landroid/net/Uri;

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->msgId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 100
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 102
    invoke-direct {p0}, Lcom/lzx/iteam/net/MsgCenter;->notifyUi()V

    .line 103
    return-void
.end method

.method public updateMsgReaded(Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;)V
    .locals 6
    .param p1, "item"    # Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;

    .prologue
    .line 107
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 108
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "is_readed"

    iget v2, p1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->isReaded:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    const-string v1, "msg_type_drawable_id"

    iget v2, p1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->msgTypeDrawableId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string v1, "date_time"

    iget-wide v2, p1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->dateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 111
    iget-object v1, p0, Lcom/lzx/iteam/net/MsgCenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lzx/iteam/provider/CloudContactsDB$MsgItem;->CONTENT_URI:Landroid/net/Uri;

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->msgId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 111
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 113
    invoke-direct {p0}, Lcom/lzx/iteam/net/MsgCenter;->notifyUi()V

    .line 114
    return-void
.end method
