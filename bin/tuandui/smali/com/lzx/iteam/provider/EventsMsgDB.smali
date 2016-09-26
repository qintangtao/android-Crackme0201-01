.class public Lcom/lzx/iteam/provider/EventsMsgDB;
.super Ljava/lang/Object;
.source "EventsMsgDB.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "event.db"

.field private static final EVENT_AVATAR:Ljava/lang/String; = "event_avatar"

.field private static final EVENT_CONTENT:Ljava/lang/String; = "event_reply_content"

.field private static final EVENT_ID:Ljava/lang/String; = "event_id"

.field private static final EVENT_REPLY_ID:Ljava/lang/String; = "event_reply_id"

.field private static final EVENT_UPDATE_TIME:Ljava/lang/String; = "event_update_time"

.field private static final EVENT_USER_ID:Ljava/lang/String; = "event_user_id"

.field private static final EVENT_USER_NAME:Ljava/lang/String; = "event_user_name"

.field private static final IS_READED:Ljava/lang/String; = "is_readed"


# instance fields
.field private mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "event.db"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/provider/EventsMsgDB;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 34
    return-void
.end method

.method private createEventTable(Ljava/lang/String;)V
    .locals 3
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lzx/iteam/provider/EventsMsgDB;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CREATE table IF NOT EXISTS _"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 44
    const-string v2, " (_id INTEGER PRIMARY KEY AUTOINCREMENT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 45
    const-string v2, "event_reply_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 46
    const-string v2, "event_user_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 47
    const-string v2, "event_user_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 48
    const-string v2, "event_update_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 49
    const-string v2, "event_reply_content"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 50
    const-string v2, "event_avatar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 51
    const-string v2, "is_readed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " integer ); "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    return-void
.end method


# virtual methods
.method public deleteMessagesByEventID(Ljava/lang/String;)I
    .locals 4
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 167
    iget-object v0, p0, Lcom/lzx/iteam/provider/EventsMsgDB;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public findEventReplyByEventId(Ljava/lang/String;II)Ljava/util/ArrayList;
    .locals 8
    .param p1, "eventID"    # Ljava/lang/String;
    .param p2, "currentPage"    # I
    .param p3, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/aidl/EventReplyNewData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 76
    invoke-direct {p0, p1}, Lcom/lzx/iteam/provider/EventsMsgDB;->createEventTable(Ljava/lang/String;)V

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v2, "eventReplyDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/aidl/EventReplyNewData;>;"
    add-int/lit8 v5, p2, -0x1

    mul-int v4, v5, p3

    .line 82
    .local v4, "start":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "select * from _"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " order by _id  desc "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "sql":Ljava/lang/String;
    const/4 v0, 0x0

    .line 85
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lcom/lzx/iteam/provider/EventsMsgDB;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 86
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 96
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 104
    :cond_0
    :goto_1
    return-object v2

    .line 87
    :cond_1
    :try_start_1
    new-instance v1, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;

    invoke-direct {v1}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;-><init>()V

    .line 88
    .local v1, "eventReplyData":Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    const-string v5, "event_user_name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setUserName(Ljava/lang/String;)V

    .line 89
    const-string v5, "event_user_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setUserId(Ljava/lang/String;)V

    .line 90
    const-string v5, "event_update_time"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setUpdateTime(Ljava/lang/String;)V

    .line 91
    const-string v5, "event_reply_content"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setContent(Ljava/lang/String;)V

    .line 92
    const-string v5, "event_avatar"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setAvatar(Ljava/lang/String;)V

    .line 93
    const-string v5, "is_readed"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v6, :cond_2

    move v5, v6

    :goto_2
    invoke-virtual {v1, v5}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setIsReaded(Z)V

    .line 94
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    .end local v1    # "eventReplyData":Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    :catch_0
    move-exception v5

    :try_start_2
    const-string v5, "EventsMsgDB"

    const-string v6, "error___findEventReplyByEventId"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 93
    .restart local v1    # "eventReplyData":Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 99
    .end local v1    # "eventReplyData":Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    :catchall_0
    move-exception v5

    .line 100
    if-eqz v0, :cond_3

    .line 101
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 103
    :cond_3
    throw v5
.end method

.method public getUnReadCountOfAllEvent(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "eventIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 143
    .local v0, "count":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 146
    return v0

    .line 143
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 144
    .local v1, "eventId":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/provider/EventsMsgDB;->getUnReadCountOfOneEvent(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0
.end method

.method public getUnReadCountOfOneEvent(Ljava/lang/String;)I
    .locals 5
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 117
    .local v0, "count":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lzx/iteam/provider/EventsMsgDB;->createEventTable(Ljava/lang/String;)V

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "select count(*) as count from _"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " where "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 120
    const-string v4, "is_readed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 119
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "sql":Ljava/lang/String;
    iget-object v3, p0, Lcom/lzx/iteam/provider/EventsMsgDB;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 122
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    const-string v3, "count"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 128
    :cond_0
    if-eqz v1, :cond_1

    .line 129
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 132
    .end local v2    # "sql":Ljava/lang/String;
    :cond_1
    :goto_0
    return v0

    .line 126
    :catch_0
    move-exception v3

    :try_start_1
    const-string v3, "EventsMsgDB"

    const-string v4, "error___getUnReadCountOfOneEvent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    if-eqz v1, :cond_1

    .line 129
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v3

    .line 128
    if-eqz v1, :cond_2

    .line 129
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 131
    :cond_2
    throw v3
.end method

.method public insertEventReply(Lcom/lzx/iteam/bean/aidl/EventReplyNewData;)V
    .locals 8
    .param p1, "eventReplyData"    # Lcom/lzx/iteam/bean/aidl/EventReplyNewData;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 59
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->getEventId()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "eventId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lzx/iteam/provider/EventsMsgDB;->createEventTable(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->isReaded()Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 62
    .local v1, "isReaded":I
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/provider/EventsMsgDB;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "insert into _"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "event_user_name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "event_user_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "event_update_time"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "event_reply_content"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "event_avatar"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "is_readed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 64
    const-string v6, ") values(?,?,?,?,?,?)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 65
    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->getUserName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 66
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->getUserId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x2

    .line 67
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->getUpdateTime()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->getContent()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x4

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->getAvatar()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    .line 62
    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    return-void

    .end local v1    # "isReaded":I
    :cond_0
    move v1, v3

    .line 61
    goto/16 :goto_0
.end method

.method public updateAllMsgReaded(Ljava/lang/String;)V
    .locals 3
    .param p1, "eventID"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/lzx/iteam/provider/EventsMsgDB;->createEventTable(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/lzx/iteam/provider/EventsMsgDB;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update _"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is_readed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = 1 where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is_readed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = 0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 156
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lzx/iteam/EventsFragment;->isUpDate:Z

    .line 159
    return-void
.end method
