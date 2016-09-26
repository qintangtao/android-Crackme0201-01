.class public Lcom/lzx/iteam/provider/CloudDBOperation;
.super Ljava/lang/Object;
.source "CloudDBOperation.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "CloudDBOperation"

    sput-object v0, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-direct {v0, p1}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    .line 33
    invoke-static {p1}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 34
    iget-object v0, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "useid"

    const-string v2, "\uff0d1"

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->mUserId:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public deleteAllApproval(Ljava/lang/String;ILjava/lang/String;)I
    .locals 9
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "listType"    # I
    .param p3, "groupId"    # Ljava/lang/String;

    .prologue
    .line 2260
    const/4 v0, 0x0

    .line 2261
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 2263
    .local v1, "delete":I
    :try_start_0
    iget-object v3, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v3}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2264
    const-string v3, "approval_table"

    const-string v4, " my_user_id = ? and list_type = ? and approval_group_id = ? "

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2268
    if-eqz v0, :cond_0

    .line 2269
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2272
    :cond_0
    :goto_0
    const-string v3, "delete"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u5220\u9664"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    return v1

    .line 2265
    :catch_0
    move-exception v2

    .line 2266
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v3, "delete"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u5220\u9664"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2268
    if-eqz v0, :cond_0

    .line 2269
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 2267
    .end local v2    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    .line 2268
    if-eqz v0, :cond_1

    .line 2269
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2271
    :cond_1
    throw v3
.end method

.method public declared-synchronized deleteAllChatGroup()Z
    .locals 5

    .prologue
    .line 359
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v2}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 360
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "chatgroup_table"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 361
    .local v1, "result":I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 359
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "result":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized deleteAllEvents()Z
    .locals 6

    .prologue
    .line 1000
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v3}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1001
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 1003
    .local v2, "result":I
    :try_start_1
    const-string v3, "event_table"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 1007
    if-eqz v0, :cond_0

    .line 1008
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1011
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    const/4 v3, 0x1

    :goto_1
    monitor-exit p0

    return v3

    .line 1004
    :catch_0
    move-exception v1

    .line 1005
    .local v1, "e":Landroid/database/SQLException;
    :try_start_3
    sget-object v3, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " error deleteAllEvents"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1007
    if-eqz v0, :cond_0

    .line 1008
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1000
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "e":Landroid/database/SQLException;
    .end local v2    # "result":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1006
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "result":I
    :catchall_1
    move-exception v3

    .line 1007
    if-eqz v0, :cond_1

    .line 1008
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1010
    :cond_1
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1011
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public declared-synchronized deleteAllGroup()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 264
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v5}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 265
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 267
    .local v2, "result":I
    :try_start_1
    const-string v5, "cloud_group"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 271
    if-eqz v0, :cond_0

    .line 272
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 275
    :cond_0
    :goto_0
    const-string v6, "delete"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v5, "\u7ed3\u679c "

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    move v5, v3

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    if-eqz v2, :cond_3

    :goto_2
    monitor-exit p0

    return v3

    .line 268
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e":Landroid/database/SQLException;
    :try_start_3
    sget-object v5, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " error deleteAllEvents"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 271
    if-eqz v0, :cond_0

    .line 272
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 264
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "e":Landroid/database/SQLException;
    .end local v2    # "result":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 270
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "result":I
    :catchall_1
    move-exception v3

    .line 271
    if-eqz v0, :cond_1

    .line 272
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 274
    :cond_1
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_2
    move v5, v4

    .line 275
    goto :goto_1

    :cond_3
    move v3, v4

    .line 276
    goto :goto_2
.end method

.method public deleteAllStatusData()V
    .locals 5

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v2, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v2}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 63
    const-string v2, "state_table"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    sget-object v2, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error inserting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 67
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    .line 68
    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 71
    :cond_1
    throw v2
.end method

.method public deleteAllTalkMyMsg()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1831
    iget-object v2, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v2}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1832
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "talk_my_msg_table"

    invoke-virtual {v0, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1833
    .local v1, "delete":I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1834
    const-string v2, "delete"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u5220\u9664\u6211\u7684\u6d88\u606f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    return v1
.end method

.method public deleteAttendanceCalendarByDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "year"    # Ljava/lang/String;
    .param p3, "month"    # Ljava/lang/String;
    .param p4, "groupId"    # Ljava/lang/String;

    .prologue
    .line 2080
    const/4 v0, 0x0

    .line 2081
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 2083
    .local v1, "delete":I
    :try_start_0
    iget-object v3, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v3}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2084
    const-string v3, "attendance_calendar_table"

    const-string v4, " user_id = ? and year = ? and month = ? and group_id = ? "

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    const/4 v6, 0x3

    aput-object p4, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2088
    if-eqz v0, :cond_0

    .line 2089
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2092
    :cond_0
    :goto_0
    const-string v3, "delete"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u5220\u9664"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    return v1

    .line 2085
    :catch_0
    move-exception v2

    .line 2086
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v3, "delete"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u5220\u9664"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2088
    if-eqz v0, :cond_0

    .line 2089
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 2087
    .end local v2    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    .line 2088
    if-eqz v0, :cond_1

    .line 2089
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2091
    :cond_1
    throw v3
.end method

.method public deleteCalendarByDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "year"    # Ljava/lang/String;
    .param p3, "month"    # Ljava/lang/String;

    .prologue
    .line 2007
    const/4 v0, 0x0

    .line 2008
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 2010
    .local v1, "delete":I
    :try_start_0
    iget-object v3, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v3}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2011
    const-string v3, "calendar_table"

    const-string v4, " user_id = ? and year = ? and month = ? "

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2015
    if-eqz v0, :cond_0

    .line 2016
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2019
    :cond_0
    :goto_0
    const-string v3, "delete"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u5220\u9664"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    return v1

    .line 2012
    :catch_0
    move-exception v2

    .line 2013
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v3, "delete"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u5220\u9664"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2015
    if-eqz v0, :cond_0

    .line 2016
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 2014
    .end local v2    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    .line 2015
    if-eqz v0, :cond_1

    .line 2016
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2018
    :cond_1
    throw v3
.end method

.method public declared-synchronized deleteChatGroup(Ljava/lang/String;)Z
    .locals 8
    .param p1, "chatGroupID"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 347
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v4}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 348
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "chatgroup_table"

    const-string v5, "chatgroup_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 349
    .local v1, "result":I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    if-eqz v1, :cond_0

    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    .line 347
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "result":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized deleteContactByGroupId(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "groupId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1660
    monitor-enter p0

    const/4 v0, 0x0

    .line 1661
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 1663
    .local v1, "delete":I
    :try_start_0
    iget-object v5, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v5}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1664
    const-string v5, "contact_table"

    const-string v6, " my_user_id = ? and contact_group_id = ? "

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    .line 1668
    if-eqz v0, :cond_0

    .line 1669
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1672
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    :goto_1
    monitor-exit p0

    return v3

    .line 1665
    :catch_0
    move-exception v2

    .line 1666
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "deleteContactByGroupId"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1668
    if-eqz v0, :cond_0

    .line 1669
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1660
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1667
    :catchall_1
    move-exception v3

    .line 1668
    if-eqz v0, :cond_1

    .line 1669
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1671
    :cond_1
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    move v3, v4

    .line 1672
    goto :goto_1
.end method

.method public declared-synchronized deleteContactByPhone(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1677
    monitor-enter p0

    const/4 v0, 0x0

    .line 1678
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 1680
    .local v1, "delete":I
    :try_start_0
    iget-object v5, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v5}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1681
    const-string v5, "contact_table"

    const-string v6, " my_user_id = ? and contact_phone = ? "

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    .line 1686
    if-eqz v0, :cond_0

    .line 1687
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1690
    :cond_0
    :goto_0
    const-string v5, "deleteContactByPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u5220\u9664\u6211\u7684contact"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1691
    if-eqz v1, :cond_2

    :goto_1
    monitor-exit p0

    return v3

    .line 1683
    :catch_0
    move-exception v2

    .line 1684
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "deleteContactByPhone"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1686
    if-eqz v0, :cond_0

    .line 1687
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1677
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1685
    :catchall_1
    move-exception v3

    .line 1686
    if-eqz v0, :cond_1

    .line 1687
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1689
    :cond_1
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    move v3, v4

    .line 1691
    goto :goto_1
.end method

.method public deleteEventByEventId(Ljava/lang/String;)I
    .locals 7
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 1021
    iget-object v3, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v3}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1022
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 1024
    .local v1, "delete":I
    :try_start_0
    const-string v3, "event_table"

    const-string v4, "event_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1028
    if-eqz v0, :cond_0

    .line 1029
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1034
    :cond_0
    :goto_0
    const-string v3, "delete"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u5220\u9664"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    return v1

    .line 1025
    :catch_0
    move-exception v2

    .line 1026
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    sget-object v3, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error deleteEventByEventId"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1028
    if-eqz v0, :cond_0

    .line 1029
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 1027
    .end local v2    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    .line 1028
    if-eqz v0, :cond_1

    .line 1029
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1031
    :cond_1
    throw v3
.end method

.method public deleteEventDraftsByEventId(Ljava/lang/String;)I
    .locals 7
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 1349
    const/4 v0, 0x0

    .line 1350
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 1352
    .local v1, "delete":I
    :try_start_0
    iget-object v3, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v3}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1353
    const-string v3, "event_drafts_table"

    const-string v4, "event_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1357
    if-eqz v0, :cond_0

    .line 1358
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1361
    :cond_0
    :goto_0
    const-string v3, "delete_drafts"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u5220\u9664"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    return v1

    .line 1354
    :catch_0
    move-exception v2

    .line 1355
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    sget-object v3, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " error deleteEventDraftsByEventId "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1357
    if-eqz v0, :cond_0

    .line 1358
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 1356
    .end local v2    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    .line 1357
    if-eqz v0, :cond_1

    .line 1358
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1360
    :cond_1
    throw v3
.end method

.method public deleteEventModel()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1195
    iget-object v2, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v2}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1196
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "event_model_table"

    invoke-virtual {v0, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1197
    .local v1, "delete":I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1198
    const-string v2, "delete_model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u5220\u9664"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    return v1
.end method

.method public deleteEventModelByEventId(Ljava/lang/String;)I
    .locals 7
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 1172
    const/4 v0, 0x0

    .line 1173
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 1175
    .local v1, "delete":I
    :try_start_0
    iget-object v3, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v3}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1176
    const-string v3, "event_model_table"

    const-string v4, "event_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1180
    if-eqz v0, :cond_0

    .line 1181
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1184
    :cond_0
    :goto_0
    const-string v3, "delete_model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u5220\u9664"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    return v1

    .line 1177
    :catch_0
    move-exception v2

    .line 1178
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    sget-object v3, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " error deleteEventModelByEventId "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1180
    if-eqz v0, :cond_0

    .line 1181
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 1179
    .end local v2    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    .line 1180
    if-eqz v0, :cond_1

    .line 1181
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1183
    :cond_1
    throw v3
.end method

.method public deleteGroupByGroupId(Ljava/lang/String;)I
    .locals 7
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 286
    iget-object v3, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v3}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 287
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 289
    .local v1, "delete":I
    :try_start_0
    const-string v3, "cloud_group"

    const-string v4, "group_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 293
    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 297
    :cond_0
    :goto_0
    const-string v3, "delete"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u5220\u9664"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return v1

    .line 290
    :catch_0
    move-exception v2

    .line 291
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    sget-object v3, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error deleteGroupByGroupId"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 292
    .end local v2    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    .line 293
    if-eqz v0, :cond_1

    .line 294
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 296
    :cond_1
    throw v3
.end method

.method public deleteOneAlarmWarn(Ljava/lang/String;)I
    .locals 7
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 1965
    const/4 v0, 0x0

    .line 1966
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 1968
    .local v1, "delete":I
    :try_start_0
    iget-object v3, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v3}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1969
    const-string v3, "alarm_warn_table"

    const-string v4, "event_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1973
    if-eqz v0, :cond_0

    .line 1974
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1977
    :cond_0
    :goto_0
    const-string v3, "delete"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u5220\u9664"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    return v1

    .line 1970
    :catch_0
    move-exception v2

    .line 1971
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v3, "delete"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u5220\u9664"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1973
    if-eqz v0, :cond_0

    .line 1974
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 1972
    .end local v2    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    .line 1973
    if-eqz v0, :cond_1

    .line 1974
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1976
    :cond_1
    throw v3
.end method

.method public deleteOneApproval(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "listType"    # I
    .param p3, "groupId"    # Ljava/lang/String;
    .param p4, "approvalId"    # Ljava/lang/String;

    .prologue
    .line 2243
    const/4 v0, 0x0

    .line 2244
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 2246
    .local v1, "delete":I
    :try_start_0
    iget-object v3, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v3}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2247
    const-string v3, "approval_table"

    const-string v4, " my_user_id = ? and list_type = ? and approval_group_id = ? and approval_id = ? "

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    const/4 v6, 0x3

    aput-object p4, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2251
    if-eqz v0, :cond_0

    .line 2252
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2255
    :cond_0
    :goto_0
    const-string v3, "deleteOneApproval"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u5220\u9664"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    return v1

    .line 2248
    :catch_0
    move-exception v2

    .line 2249
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v3, "deleteOneApproval"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u5220\u9664"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2251
    if-eqz v0, :cond_0

    .line 2252
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 2250
    .end local v2    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    .line 2251
    if-eqz v0, :cond_1

    .line 2252
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2254
    :cond_1
    throw v3
.end method

.method public deleteOneTalkMyMsg(Ljava/lang/String;)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1845
    const/4 v0, 0x0

    .line 1846
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 1848
    .local v1, "delete":I
    :try_start_0
    iget-object v3, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v3}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1849
    const-string v3, "talk_my_msg_table"

    const-string v4, "_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1853
    if-eqz v0, :cond_0

    .line 1854
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1857
    :cond_0
    :goto_0
    const-string v3, "delete_model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u5220\u9664"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    return v1

    .line 1850
    :catch_0
    move-exception v2

    .line 1851
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v3, "delete"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u5220\u9664\u6211\u7684\u6d88\u606f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1853
    if-eqz v0, :cond_0

    .line 1854
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 1852
    .end local v2    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    .line 1853
    if-eqz v0, :cond_1

    .line 1854
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1856
    :cond_1
    throw v3
.end method

.method public deleteStateData(Ljava/lang/Integer;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v2, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v2}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 79
    const-string v2, "state_table"

    const-string v3, "state_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 80
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 79
    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    sget-object v2, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error delete Data: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 86
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    .line 87
    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 90
    :cond_1
    throw v2
.end method

.method public declared-synchronized findAllChatGroup()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/ChatGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 463
    monitor-enter p0

    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    .local v11, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ChatGroup;>;"
    const/4 v0, 0x0

    .line 465
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 467
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v1, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v1}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 469
    const-string v1, "chatgroup_table"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "lastupdate_time desc"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 470
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-nez v1, :cond_2

    .line 490
    if-eqz v9, :cond_0

    .line 491
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 493
    :cond_0
    if-eqz v0, :cond_1

    .line 494
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 498
    :cond_1
    :goto_1
    const-string v1, "GetChatList"

    const-string v2, "GetChatList"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 499
    monitor-exit p0

    return-object v11

    .line 471
    :cond_2
    :try_start_3
    new-instance v8, Lcom/lzx/iteam/bean/ChatGroup;

    invoke-direct {v8}, Lcom/lzx/iteam/bean/ChatGroup;-><init>()V

    .line 472
    .local v8, "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    const-string v1, "chatgroup_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lzx/iteam/bean/ChatGroup;->id:Ljava/lang/String;

    .line 473
    const-string v1, "chatgroup_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lzx/iteam/bean/ChatGroup;->name:Ljava/lang/String;

    .line 474
    const-string v1, "lastupdate_time"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lzx/iteam/bean/ChatGroup;->lastUpdateTime:Ljava/lang/String;

    .line 475
    const-string v1, "chatgroup_img"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lzx/iteam/bean/ChatGroup;->img:Ljava/lang/String;

    .line 476
    const-string v1, "last_msg_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lzx/iteam/bean/ChatGroup;->lastMsgName:Ljava/lang/String;

    .line 477
    const-string v1, "last_msg_content"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lzx/iteam/bean/ChatGroup;->lastMsgContent:Ljava/lang/String;

    .line 478
    const-string v1, "user_type"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lzx/iteam/bean/ChatGroup;->userType:Ljava/lang/String;

    .line 480
    const-string v1, "is_new"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lzx/iteam/bean/ChatGroup;->isNew:Ljava/lang/String;

    .line 481
    const-string v1, "unread_count"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lzx/iteam/bean/ChatGroup;->unreadCount:Ljava/lang/String;

    .line 482
    const-string v1, "member_count"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lzx/iteam/bean/ChatGroup;->memberCount:Ljava/lang/String;

    .line 483
    const-string v1, "type"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lzx/iteam/bean/ChatGroup;->type:Ljava/lang/String;

    .line 484
    const-string v1, "is_active"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lzx/iteam/bean/ChatGroup;->isActive:Ljava/lang/String;

    .line 485
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 487
    .end local v8    # "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    :catch_0
    move-exception v10

    .line 488
    .local v10, "e":Landroid/database/SQLException;
    :try_start_4
    sget-object v1, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error findAllChatGroup "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 490
    if-eqz v9, :cond_3

    .line 491
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 493
    :cond_3
    if-eqz v0, :cond_1

    .line 494
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 463
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "e":Landroid/database/SQLException;
    .end local v11    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ChatGroup;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 489
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ChatGroup;>;"
    :catchall_1
    move-exception v1

    .line 490
    if-eqz v9, :cond_4

    .line 491
    :try_start_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 493
    :cond_4
    if-eqz v0, :cond_5

    .line 494
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 496
    :cond_5
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized findAllEventsDrafts(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/EventListData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1406
    monitor-enter p0

    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1407
    .local v11, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/bean/EventListData;>;"
    const/4 v0, 0x0

    .line 1408
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 1410
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v1, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v1}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1411
    const-string v1, "event_drafts_table"

    const/4 v2, 0x0

    const-string v3, " user_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1413
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-nez v1, :cond_2

    .line 1440
    if-eqz v8, :cond_0

    .line 1441
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1443
    :cond_0
    if-eqz v0, :cond_1

    .line 1444
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1447
    :cond_1
    :goto_1
    const-string v1, "find_event"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u67e5\u627e\u5230\uff1a  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1448
    monitor-exit p0

    return-object v11

    .line 1414
    :cond_2
    :try_start_3
    new-instance v10, Lcom/lzx/iteam/bean/EventListData;

    invoke-direct {v10}, Lcom/lzx/iteam/bean/EventListData;-><init>()V

    .line 1415
    .local v10, "eventsListData":Lcom/lzx/iteam/bean/EventListData;
    const-string v1, "event_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventId(Ljava/lang/String;)V

    .line 1416
    const-string v1, "event_type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventType(Ljava/lang/String;)V

    .line 1417
    const-string v1, "event_type_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventName(Ljava/lang/String;)V

    .line 1418
    const-string v1, "event_title"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventTitle(Ljava/lang/String;)V

    .line 1419
    const-string v1, "event_receiver"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setReceiver(Ljava/lang/String;)V

    .line 1420
    const-string v1, "event_time"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setUpdateTime(Ljava/lang/String;)V

    .line 1421
    const-string v1, "content1"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setContent1(Ljava/lang/String;)V

    .line 1422
    const-string v1, "content2"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setContent2(Ljava/lang/String;)V

    .line 1423
    const-string v1, "content3"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setContent3(Ljava/lang/String;)V

    .line 1424
    const-string v1, "init_title1"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle1(Ljava/lang/String;)V

    .line 1425
    const-string v1, "init_title2"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle2(Ljava/lang/String;)V

    .line 1426
    const-string v1, "init_title3"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle3(Ljava/lang/String;)V

    .line 1427
    const-string v1, "attachment_thumb_image"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setThumbImage(Ljava/lang/String;)V

    .line 1428
    const-string v1, "attachment_ori_image"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setOriImage(Ljava/lang/String;)V

    .line 1429
    const-string v1, "user_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setUserId(Ljava/lang/String;)V

    .line 1430
    const-string v1, "author"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setAuthor(Ljava/lang/String;)V

    .line 1431
    const-string v1, "activity_time"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setActivityTime(Ljava/lang/String;)V

    .line 1432
    const-string v1, "end_time"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setEndTime(Ljava/lang/String;)V

    .line 1433
    const-string v1, "is_qrcode"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setIsQrcode(Ljava/lang/String;)V

    .line 1434
    const-string v1, "activity_site"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setActivitySite(Ljava/lang/String;)V

    .line 1435
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 1437
    .end local v10    # "eventsListData":Lcom/lzx/iteam/bean/EventListData;
    :catch_0
    move-exception v9

    .line 1438
    .local v9, "e":Landroid/database/SQLException;
    :try_start_4
    sget-object v1, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error findAllEventsDrafts"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1440
    if-eqz v8, :cond_3

    .line 1441
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1443
    :cond_3
    if-eqz v0, :cond_1

    .line 1444
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 1406
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "e":Landroid/database/SQLException;
    .end local v11    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/bean/EventListData;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1439
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/bean/EventListData;>;"
    :catchall_1
    move-exception v1

    .line 1440
    if-eqz v8, :cond_4

    .line 1441
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1443
    :cond_4
    if-eqz v0, :cond_5

    .line 1444
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1446
    :cond_5
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized findAllEventsModel()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/EventListData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1081
    monitor-enter p0

    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1082
    .local v11, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/bean/EventListData;>;"
    const/4 v0, 0x0

    .line 1083
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 1086
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v1, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v1}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1087
    const-string v1, "event_model_table"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1088
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-nez v1, :cond_2

    .line 1111
    if-eqz v8, :cond_0

    .line 1112
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1114
    :cond_0
    if-eqz v0, :cond_1

    .line 1116
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1118
    :cond_1
    const-string v1, "find_event"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u67e5\u627e\u5230\uff1a  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1120
    :goto_1
    monitor-exit p0

    return-object v11

    .line 1089
    :cond_2
    :try_start_3
    new-instance v10, Lcom/lzx/iteam/bean/EventListData;

    invoke-direct {v10}, Lcom/lzx/iteam/bean/EventListData;-><init>()V

    .line 1090
    .local v10, "eventsListData":Lcom/lzx/iteam/bean/EventListData;
    const-string v1, "event_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventId(Ljava/lang/String;)V

    .line 1091
    const-string v1, "event_type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventType(Ljava/lang/String;)V

    .line 1092
    const-string v1, "event_type_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventName(Ljava/lang/String;)V

    .line 1093
    const-string v1, "event_title"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventTitle(Ljava/lang/String;)V

    .line 1094
    const-string v1, "event_receiver"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setReceiver(Ljava/lang/String;)V

    .line 1095
    const-string v1, "event_time"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setUpdateTime(Ljava/lang/String;)V

    .line 1096
    const-string v1, "content1"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setContent1(Ljava/lang/String;)V

    .line 1097
    const-string v1, "content2"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setContent2(Ljava/lang/String;)V

    .line 1098
    const-string v1, "content3"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setContent3(Ljava/lang/String;)V

    .line 1099
    const-string v1, "init_title1"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle1(Ljava/lang/String;)V

    .line 1100
    const-string v1, "init_title2"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle2(Ljava/lang/String;)V

    .line 1101
    const-string v1, "init_title3"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle3(Ljava/lang/String;)V

    .line 1102
    const-string v1, "attachment_thumb_image"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setThumbImage(Ljava/lang/String;)V

    .line 1103
    const-string v1, "attachment_ori_image"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setOriImage(Ljava/lang/String;)V

    .line 1104
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 1107
    .end local v10    # "eventsListData":Lcom/lzx/iteam/bean/EventListData;
    :catch_0
    move-exception v9

    .line 1109
    .local v9, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v1, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error findAllEventsByWhere "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1111
    if-eqz v8, :cond_3

    .line 1112
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1114
    :cond_3
    if-eqz v0, :cond_4

    .line 1116
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1118
    :cond_4
    const-string v1, "find_event"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u67e5\u627e\u5230\uff1a  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 1081
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/bean/EventListData;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1110
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/bean/EventListData;>;"
    :catchall_1
    move-exception v1

    .line 1111
    if-eqz v8, :cond_5

    .line 1112
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1114
    :cond_5
    if-eqz v0, :cond_6

    .line 1116
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1118
    :cond_6
    const-string v2, "find_event"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u67e5\u627e\u5230\uff1a  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public findApprovalData(Ljava/lang/String;ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "listType"    # I
    .param p3, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/ApprovalData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2173
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2174
    .local v11, "localData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ApprovalData;>;"
    const/4 v0, 0x0

    .line 2175
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 2177
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v1}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2178
    const-string v1, "approval_table"

    const/4 v2, 0x0

    const-string v3, " my_user_id = ? and list_type = ? and approval_group_id = ? "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2179
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2208
    const-string v1, "approval_fragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "   findApprovalData  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2212
    if-eqz v9, :cond_0

    .line 2213
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2215
    :cond_0
    if-eqz v0, :cond_1

    .line 2216
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2219
    :cond_1
    :goto_1
    return-object v11

    .line 2180
    :cond_2
    :try_start_1
    new-instance v8, Lcom/lzx/iteam/bean/ApprovalData;

    invoke-direct {v8}, Lcom/lzx/iteam/bean/ApprovalData;-><init>()V

    .line 2181
    .local v8, "approvalData":Lcom/lzx/iteam/bean/ApprovalData;
    const-string v1, "user_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/lzx/iteam/bean/ApprovalData;->setUser_id(Ljava/lang/String;)V

    .line 2182
    const-string v1, "user_image"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/lzx/iteam/bean/ApprovalData;->setUser_image(Ljava/lang/String;)V

    .line 2183
    const-string v1, "user_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/lzx/iteam/bean/ApprovalData;->setUser_name(Ljava/lang/String;)V

    .line 2185
    const-string v1, "approval_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_id(Ljava/lang/String;)V

    .line 2186
    const-string v1, "approval_group_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_group_id(Ljava/lang/String;)V

    .line 2187
    const-string v1, "approval_type"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_type(I)V

    .line 2188
    const-string v1, "approval_leave_type"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_leave_type(I)V

    .line 2189
    const-string v1, "approval_address"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_address(Ljava/lang/String;)V

    .line 2190
    const-string v1, "approval_start_time"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_start_time(Ljava/lang/String;)V

    .line 2191
    const-string v1, "approval_end_time"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_end_time(Ljava/lang/String;)V

    .line 2192
    const-string v1, "approval_start_part"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_start_part(I)V

    .line 2193
    const-string v1, "approval_end_part"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_end_part(I)V

    .line 2194
    const-string v1, "approval_day"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-virtual {v8, v1}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_day(F)V

    .line 2195
    const-string v1, "approval_reason"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_reason(Ljava/lang/String;)V

    .line 2197
    const-string v1, "approve_admin"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/lzx/iteam/bean/ApprovalData;->setApprove_admin(Ljava/lang/String;)V

    .line 2198
    const-string v1, "approve_admin_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/lzx/iteam/bean/ApprovalData;->setApprove_admin_name(Ljava/lang/String;)V

    .line 2199
    const-string v1, "approve_admin_image"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/lzx/iteam/bean/ApprovalData;->setApprove_admin_image(Ljava/lang/String;)V

    .line 2201
    const-string v1, "approval_done_time"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_done_time(Ljava/lang/String;)V

    .line 2202
    const-string v1, "approval_time"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_time(Ljava/lang/String;)V

    .line 2203
    const-string v1, "approval_status"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_status(I)V

    .line 2206
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 2209
    .end local v8    # "approvalData":Lcom/lzx/iteam/bean/ApprovalData;
    :catch_0
    move-exception v10

    .line 2210
    .local v10, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "findAttendanceCalendarData  error"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2212
    if-eqz v9, :cond_3

    .line 2213
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2215
    :cond_3
    if-eqz v0, :cond_1

    .line 2216
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_1

    .line 2211
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 2212
    if-eqz v9, :cond_4

    .line 2213
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2215
    :cond_4
    if-eqz v0, :cond_5

    .line 2216
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2218
    :cond_5
    throw v1
.end method

.method public findAttendanceCalendarData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "year"    # Ljava/lang/String;
    .param p3, "month"    # Ljava/lang/String;
    .param p4, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/AttendanceCalendarData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2097
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2098
    .local v11, "localData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/AttendanceCalendarData;>;"
    const/4 v0, 0x0

    .line 2099
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 2101
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v1}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2103
    const-string v1, "attendance_calendar_table"

    const/4 v2, 0x0

    const-string v3, " user_id = ? and year = ? and month = ? and group_id = ? "

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2104
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 2117
    if-eqz v9, :cond_0

    .line 2118
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2120
    :cond_0
    if-eqz v0, :cond_1

    .line 2121
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2124
    :cond_1
    :goto_1
    return-object v11

    .line 2105
    :cond_2
    :try_start_1
    new-instance v8, Lcom/lzx/iteam/bean/AttendanceCalendarData;

    invoke-direct {v8}, Lcom/lzx/iteam/bean/AttendanceCalendarData;-><init>()V

    .line 2106
    .local v8, "attendanceCalendarData":Lcom/lzx/iteam/bean/AttendanceCalendarData;
    const-string v1, "year"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/lzx/iteam/bean/AttendanceCalendarData;->setYear(Ljava/lang/String;)V

    .line 2107
    const-string v1, "month"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/lzx/iteam/bean/AttendanceCalendarData;->setMonth(Ljava/lang/String;)V

    .line 2108
    const-string v1, "day"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/lzx/iteam/bean/AttendanceCalendarData;->setDay(Ljava/lang/String;)V

    .line 2109
    const-string v1, "status"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/lzx/iteam/bean/AttendanceCalendarData;->setStatus(Ljava/lang/String;)V

    .line 2110
    const-string v1, "cheat"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/lzx/iteam/bean/AttendanceCalendarData;->setCheat(Ljava/lang/String;)V

    .line 2111
    const-string v1, "group_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/lzx/iteam/bean/AttendanceCalendarData;->setGroupId(Ljava/lang/String;)V

    .line 2112
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2114
    .end local v8    # "attendanceCalendarData":Lcom/lzx/iteam/bean/AttendanceCalendarData;
    :catch_0
    move-exception v10

    .line 2115
    .local v10, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "findAttendanceCalendarData  error"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2117
    if-eqz v9, :cond_3

    .line 2118
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2120
    :cond_3
    if-eqz v0, :cond_1

    .line 2121
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 2116
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 2117
    if-eqz v9, :cond_4

    .line 2118
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2120
    :cond_4
    if-eqz v0, :cond_5

    .line 2121
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2123
    :cond_5
    throw v1
.end method

.method public findCalendarData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "year"    # Ljava/lang/String;
    .param p3, "month"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/ScheduleListData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2024
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2025
    .local v10, "localData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ScheduleListData;>;"
    const/4 v0, 0x0

    .line 2026
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 2028
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v1}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2030
    const-string v1, "calendar_table"

    const/4 v2, 0x0

    const-string v3, " user_id = ? and year = ? and month = ? "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2031
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 2043
    if-eqz v8, :cond_0

    .line 2044
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2046
    :cond_0
    if-eqz v0, :cond_1

    .line 2047
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2050
    :cond_1
    :goto_1
    return-object v10

    .line 2032
    :cond_2
    :try_start_1
    new-instance v11, Lcom/lzx/iteam/bean/ScheduleListData;

    invoke-direct {v11}, Lcom/lzx/iteam/bean/ScheduleListData;-><init>()V

    .line 2033
    .local v11, "scheduleListData":Lcom/lzx/iteam/bean/ScheduleListData;
    const-string v1, "year"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/lzx/iteam/bean/ScheduleListData;->setYear(Ljava/lang/String;)V

    .line 2034
    const-string v1, "month"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/lzx/iteam/bean/ScheduleListData;->setMonth(Ljava/lang/String;)V

    .line 2035
    const-string v1, "day"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/lzx/iteam/bean/ScheduleListData;->setDay(Ljava/lang/String;)V

    .line 2036
    const-string v1, "status"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/lzx/iteam/bean/ScheduleListData;->setStatus(Ljava/lang/String;)V

    .line 2037
    const-string v1, "state"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/lzx/iteam/bean/ScheduleListData;->setState(Ljava/lang/String;)V

    .line 2038
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2040
    .end local v11    # "scheduleListData":Lcom/lzx/iteam/bean/ScheduleListData;
    :catch_0
    move-exception v9

    .line 2041
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "findTalk  error"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2043
    if-eqz v8, :cond_3

    .line 2044
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2046
    :cond_3
    if-eqz v0, :cond_1

    .line 2047
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 2042
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 2043
    if-eqz v8, :cond_4

    .line 2044
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2046
    :cond_4
    if-eqz v0, :cond_5

    .line 2047
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2049
    :cond_5
    throw v1
.end method

.method public declared-synchronized findEventModeByEventId(Ljava/lang/String;)Lcom/lzx/iteam/bean/EventListData;
    .locals 11
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 1130
    monitor-enter p0

    :try_start_0
    new-instance v10, Lcom/lzx/iteam/bean/EventListData;

    invoke-direct {v10}, Lcom/lzx/iteam/bean/EventListData;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1131
    .local v10, "eventsListData":Lcom/lzx/iteam/bean/EventListData;
    const/4 v0, 0x0

    .line 1132
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 1134
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v1, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v1}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1135
    const-string v1, "event_model_table"

    const/4 v2, 0x0

    const-string v3, "event_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1136
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-nez v1, :cond_2

    .line 1155
    if-eqz v8, :cond_0

    .line 1156
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1158
    :cond_0
    if-eqz v0, :cond_1

    .line 1159
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1162
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v10

    .line 1137
    :cond_2
    :try_start_3
    const-string v1, "event_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventId(Ljava/lang/String;)V

    .line 1138
    const-string v1, "event_type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventType(Ljava/lang/String;)V

    .line 1139
    const-string v1, "event_type_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventName(Ljava/lang/String;)V

    .line 1140
    const-string v1, "event_title"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventTitle(Ljava/lang/String;)V

    .line 1141
    const-string v1, "event_receiver"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setReceiver(Ljava/lang/String;)V

    .line 1142
    const-string v1, "event_time"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setUpdateTime(Ljava/lang/String;)V

    .line 1143
    const-string v1, "content1"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setContent1(Ljava/lang/String;)V

    .line 1144
    const-string v1, "content2"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setContent2(Ljava/lang/String;)V

    .line 1145
    const-string v1, "content3"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setContent3(Ljava/lang/String;)V

    .line 1146
    const-string v1, "init_title1"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle1(Ljava/lang/String;)V

    .line 1147
    const-string v1, "init_title2"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle2(Ljava/lang/String;)V

    .line 1148
    const-string v1, "init_title3"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle3(Ljava/lang/String;)V

    .line 1149
    const-string v1, "attachment_thumb_image"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setThumbImage(Ljava/lang/String;)V

    .line 1150
    const-string v1, "attachment_ori_image"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setOriImage(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 1152
    :catch_0
    move-exception v9

    .line 1153
    .local v9, "e":Landroid/database/SQLException;
    :try_start_4
    sget-object v1, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error findEventModeByEventId"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1155
    if-eqz v8, :cond_3

    .line 1156
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1158
    :cond_3
    if-eqz v0, :cond_1

    .line 1159
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 1130
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "e":Landroid/database/SQLException;
    .end local v10    # "eventsListData":Lcom/lzx/iteam/bean/EventListData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1154
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "eventsListData":Lcom/lzx/iteam/bean/EventListData;
    :catchall_1
    move-exception v1

    .line 1155
    if-eqz v8, :cond_4

    .line 1156
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1158
    :cond_4
    if-eqz v0, :cond_5

    .line 1159
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1161
    :cond_5
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized findEventsByType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/EventListData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 790
    monitor-enter p0

    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    .local v11, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/EventListData;>;"
    const/4 v0, 0x0

    .line 792
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 794
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v1, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v1}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 795
    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 796
    const-string v1, "event_table"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "update_time desc"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 800
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-nez v1, :cond_3

    .line 844
    if-eqz v8, :cond_0

    .line 845
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 847
    :cond_0
    if-eqz v0, :cond_1

    .line 848
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 851
    :cond_1
    :goto_1
    const-string v1, "EventList_query"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "size--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 852
    monitor-exit p0

    return-object v11

    .line 798
    :cond_2
    :try_start_3
    const-string v1, "event_table"

    const/4 v2, 0x0

    const-string v3, "event_type = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "update_time desc"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 800
    goto :goto_0

    .line 801
    :cond_3
    new-instance v10, Lcom/lzx/iteam/bean/EventListData;

    invoke-direct {v10}, Lcom/lzx/iteam/bean/EventListData;-><init>()V

    .line 802
    .local v10, "eventsListData":Lcom/lzx/iteam/bean/EventListData;
    const-string v1, "event_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventId(Ljava/lang/String;)V

    .line 803
    const-string v1, "update_time"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setUpdateTime(Ljava/lang/String;)V

    .line 804
    const-string v1, "event_type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventType(Ljava/lang/String;)V

    .line 805
    const-string v1, "event_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventName(Ljava/lang/String;)V

    .line 806
    const-string v1, "user_type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setUserType(Ljava/lang/String;)V

    .line 807
    const-string v1, "has_read"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setHasRead(Ljava/lang/String;)V

    .line 808
    const-string v1, "create_time"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setCreateTime(Ljava/lang/String;)V

    .line 809
    const-string v1, "user_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setUserId(Ljava/lang/String;)V

    .line 810
    const-string v1, "user_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setUserName(Ljava/lang/String;)V

    .line 811
    const-string v1, "member_count"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setMemberCount(Ljava/lang/String;)V

    .line 812
    const-string v1, "event_title"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventTitle(Ljava/lang/String;)V

    .line 813
    const-string v1, "content1"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setContent1(Ljava/lang/String;)V

    .line 814
    const-string v1, "content2"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setContent2(Ljava/lang/String;)V

    .line 815
    const-string v1, "content3"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setContent3(Ljava/lang/String;)V

    .line 816
    const-string v1, "init_title1"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle1(Ljava/lang/String;)V

    .line 817
    const-string v1, "init_title2"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle2(Ljava/lang/String;)V

    .line 818
    const-string v1, "init_title3"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle3(Ljava/lang/String;)V

    .line 819
    const-string v1, "url1"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setUrl1(Ljava/lang/String;)V

    .line 820
    const-string v1, "url2"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setUrl2(Ljava/lang/String;)V

    .line 821
    const-string v1, "url3"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setUrl3(Ljava/lang/String;)V

    .line 822
    const-string v1, "reply_count"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setReplyCount(Ljava/lang/String;)V

    .line 823
    const-string v1, "reply_last_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setReplyLastName(Ljava/lang/String;)V

    .line 824
    const-string v1, "reply_last_content"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setReplyLastContent(Ljava/lang/String;)V

    .line 825
    const-string v1, "unread_count"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setUnReadCount(Ljava/lang/String;)V

    .line 826
    const-string v1, "attachment_thumb_image"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setThumbImage(Ljava/lang/String;)V

    .line 827
    const-string v1, "attachment_ori_image"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setOriImage(Ljava/lang/String;)V

    .line 828
    const-string v1, "author"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setAuthor(Ljava/lang/String;)V

    .line 829
    const-string v1, "event_avatar"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventAvatar(Ljava/lang/String;)V

    .line 830
    const-string v1, "receiver"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setReceiver(Ljava/lang/String;)V

    .line 831
    const-string v1, "activity_time"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setActivityTime(Ljava/lang/String;)V

    .line 832
    const-string v1, "activity_site"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setActivitySite(Ljava/lang/String;)V

    .line 833
    const-string v1, "join_count"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setJoinCount(Ljava/lang/String;)V

    .line 834
    const-string v1, "has_join"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setHasJoin(Ljava/lang/String;)V

    .line 835
    const-string v1, "votes"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setVotes(Ljava/lang/String;)V

    .line 836
    const-string v1, "end_time"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setEndTime(Ljava/lang/String;)V

    .line 837
    const-string v1, "is_qrcode"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setIsQrcode(Ljava/lang/String;)V

    .line 838
    const-string v1, "qrcode"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setQrcode(Ljava/lang/String;)V

    .line 839
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 841
    .end local v10    # "eventsListData":Lcom/lzx/iteam/bean/EventListData;
    :catch_0
    move-exception v9

    .line 842
    .local v9, "e":Landroid/database/SQLException;
    :try_start_4
    sget-object v1, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error findEventsByType "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 844
    if-eqz v8, :cond_4

    .line 845
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 847
    :cond_4
    if-eqz v0, :cond_1

    .line 848
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 790
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "e":Landroid/database/SQLException;
    .end local v11    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/EventListData;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 843
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/EventListData;>;"
    :catchall_1
    move-exception v1

    .line 844
    if-eqz v8, :cond_5

    .line 845
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 847
    :cond_5
    if-eqz v0, :cond_6

    .line 848
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 850
    :cond_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized findEventsByType(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 17
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/EventListData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 714
    monitor-enter p0

    :try_start_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    .local v14, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/EventListData;>;"
    const/4 v1, 0x0

    .line 716
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 718
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 719
    .local v15, "start":I
    move/from16 v12, p2

    .line 721
    .local v12, "end":I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v2}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 722
    const-string v2, "0"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 723
    const-string v2, "event_table"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "update_time desc"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 727
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_3

    .line 772
    if-eqz v10, :cond_0

    .line 773
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 775
    :cond_0
    if-eqz v1, :cond_1

    .line 777
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 780
    :cond_1
    :goto_1
    const-string v2, "EventList"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "--\u6240\u6709size--"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 781
    monitor-exit p0

    return-object v14

    .line 725
    :cond_2
    :try_start_3
    const-string v2, "event_table"

    const/4 v3, 0x0

    const-string v4, "event_type = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "update_time desc"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 727
    goto :goto_0

    .line 728
    :cond_3
    new-instance v13, Lcom/lzx/iteam/bean/EventListData;

    invoke-direct {v13}, Lcom/lzx/iteam/bean/EventListData;-><init>()V

    .line 729
    .local v13, "eventsListData":Lcom/lzx/iteam/bean/EventListData;
    const-string v2, "event_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setEventId(Ljava/lang/String;)V

    .line 730
    const-string v2, "update_time"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setUpdateTime(Ljava/lang/String;)V

    .line 731
    const-string v2, "event_type"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setEventType(Ljava/lang/String;)V

    .line 732
    const-string v2, "event_name"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setEventName(Ljava/lang/String;)V

    .line 733
    const-string v2, "user_type"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setUserType(Ljava/lang/String;)V

    .line 734
    const-string v2, "has_read"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setHasRead(Ljava/lang/String;)V

    .line 735
    const-string v2, "create_time"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setCreateTime(Ljava/lang/String;)V

    .line 736
    const-string v2, "user_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setUserId(Ljava/lang/String;)V

    .line 737
    const-string v2, "user_name"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setUserName(Ljava/lang/String;)V

    .line 738
    const-string v2, "member_count"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setMemberCount(Ljava/lang/String;)V

    .line 739
    const-string v2, "event_title"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setEventTitle(Ljava/lang/String;)V

    .line 740
    const-string v2, "content1"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setContent1(Ljava/lang/String;)V

    .line 741
    const-string v2, "content2"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setContent2(Ljava/lang/String;)V

    .line 742
    const-string v2, "content3"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setContent3(Ljava/lang/String;)V

    .line 743
    const-string v2, "init_title1"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle1(Ljava/lang/String;)V

    .line 744
    const-string v2, "init_title2"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle2(Ljava/lang/String;)V

    .line 745
    const-string v2, "init_title3"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle3(Ljava/lang/String;)V

    .line 746
    const-string v2, "url1"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setUrl1(Ljava/lang/String;)V

    .line 747
    const-string v2, "url2"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setUrl2(Ljava/lang/String;)V

    .line 748
    const-string v2, "url3"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setUrl3(Ljava/lang/String;)V

    .line 749
    const-string v2, "reply_count"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setReplyCount(Ljava/lang/String;)V

    .line 750
    const-string v2, "reply_last_name"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setReplyLastName(Ljava/lang/String;)V

    .line 751
    const-string v2, "reply_last_content"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setReplyLastContent(Ljava/lang/String;)V

    .line 752
    const-string v2, "attachment_thumb_image"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setThumbImage(Ljava/lang/String;)V

    .line 753
    const-string v2, "attachment_ori_image"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setOriImage(Ljava/lang/String;)V

    .line 754
    const-string v2, "unread_count"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setUnReadCount(Ljava/lang/String;)V

    .line 755
    const-string v2, "author"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setAuthor(Ljava/lang/String;)V

    .line 756
    const-string v2, "event_avatar"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setEventAvatar(Ljava/lang/String;)V

    .line 757
    const-string v2, "receiver"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setReceiver(Ljava/lang/String;)V

    .line 758
    const-string v2, "activity_time"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setActivityTime(Ljava/lang/String;)V

    .line 759
    const-string v2, "activity_site"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setActivitySite(Ljava/lang/String;)V

    .line 760
    const-string v2, "join_count"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setJoinCount(Ljava/lang/String;)V

    .line 761
    const-string v2, "has_join"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setHasJoin(Ljava/lang/String;)V

    .line 762
    const-string v2, "votes"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setVotes(Ljava/lang/String;)V

    .line 763
    const-string v2, "end_time"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setEndTime(Ljava/lang/String;)V

    .line 764
    const-string v2, "is_qrcode"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setIsQrcode(Ljava/lang/String;)V

    .line 765
    const-string v2, "qrcode"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setQrcode(Ljava/lang/String;)V

    .line 766
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 769
    .end local v13    # "eventsListData":Lcom/lzx/iteam/bean/EventListData;
    :catch_0
    move-exception v11

    .line 770
    .local v11, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v2, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " error  findEvents"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 772
    if-eqz v10, :cond_4

    .line 773
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 775
    :cond_4
    if-eqz v1, :cond_1

    .line 777
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 714
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "end":I
    .end local v14    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/EventListData;>;"
    .end local v15    # "start":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 771
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "end":I
    .restart local v14    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/EventListData;>;"
    .restart local v15    # "start":I
    :catchall_1
    move-exception v2

    .line 772
    if-eqz v10, :cond_5

    .line 773
    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 775
    :cond_5
    if-eqz v1, :cond_6

    .line 777
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 779
    :cond_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized findEventsByType(Ljava/lang/String;II)Ljava/util/ArrayList;
    .locals 17
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "currentPage"    # I
    .param p3, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/EventListData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 638
    monitor-enter p0

    :try_start_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    .local v14, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/EventListData;>;"
    const/4 v1, 0x0

    .line 640
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 642
    .local v10, "cursor":Landroid/database/Cursor;
    add-int/lit8 v2, p2, -0x1

    mul-int v15, v2, p3

    .line 643
    .local v15, "start":I
    add-int v12, v15, p3

    .line 645
    .local v12, "end":I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v2}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 646
    const-string v2, "0"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 647
    const-string v2, "event_table"

    const/4 v3, 0x0

    const-string v4, "my_userid = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/provider/CloudDBOperation;->mUserId:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "update_time desc"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 651
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_3

    .line 694
    if-eqz v10, :cond_0

    .line 695
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 697
    :cond_0
    if-eqz v1, :cond_1

    .line 699
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 704
    :cond_1
    :goto_1
    const-string v2, "EventList"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "--\u6240\u6709size--"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 705
    monitor-exit p0

    return-object v14

    .line 649
    :cond_2
    :try_start_3
    const-string v2, "event_table"

    const/4 v3, 0x0

    const-string v4, "event_type = ? and my_userid= ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/provider/CloudDBOperation;->mUserId:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "update_time desc"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 651
    goto :goto_0

    .line 652
    :cond_3
    new-instance v13, Lcom/lzx/iteam/bean/EventListData;

    invoke-direct {v13}, Lcom/lzx/iteam/bean/EventListData;-><init>()V

    .line 653
    .local v13, "eventsListData":Lcom/lzx/iteam/bean/EventListData;
    const-string v2, "event_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setEventId(Ljava/lang/String;)V

    .line 654
    const-string v2, "update_time"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setUpdateTime(Ljava/lang/String;)V

    .line 655
    const-string v2, "event_type"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setEventType(Ljava/lang/String;)V

    .line 656
    const-string v2, "event_name"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setEventName(Ljava/lang/String;)V

    .line 657
    const-string v2, "user_type"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setUserType(Ljava/lang/String;)V

    .line 658
    const-string v2, "has_read"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setHasRead(Ljava/lang/String;)V

    .line 659
    const-string v2, "create_time"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setCreateTime(Ljava/lang/String;)V

    .line 660
    const-string v2, "user_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setUserId(Ljava/lang/String;)V

    .line 661
    const-string v2, "user_name"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setUserName(Ljava/lang/String;)V

    .line 662
    const-string v2, "member_count"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setMemberCount(Ljava/lang/String;)V

    .line 663
    const-string v2, "event_title"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setEventTitle(Ljava/lang/String;)V

    .line 664
    const-string v2, "content1"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setContent1(Ljava/lang/String;)V

    .line 665
    const-string v2, "content2"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setContent2(Ljava/lang/String;)V

    .line 666
    const-string v2, "content3"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setContent3(Ljava/lang/String;)V

    .line 667
    const-string v2, "init_title1"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle1(Ljava/lang/String;)V

    .line 668
    const-string v2, "init_title2"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle2(Ljava/lang/String;)V

    .line 669
    const-string v2, "init_title3"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle3(Ljava/lang/String;)V

    .line 670
    const-string v2, "url1"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setUrl1(Ljava/lang/String;)V

    .line 671
    const-string v2, "url2"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setUrl2(Ljava/lang/String;)V

    .line 672
    const-string v2, "url3"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setUrl3(Ljava/lang/String;)V

    .line 673
    const-string v2, "reply_count"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setReplyCount(Ljava/lang/String;)V

    .line 674
    const-string v2, "reply_last_name"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setReplyLastName(Ljava/lang/String;)V

    .line 675
    const-string v2, "reply_last_content"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setReplyLastContent(Ljava/lang/String;)V

    .line 676
    const-string v2, "attachment_thumb_image"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setThumbImage(Ljava/lang/String;)V

    .line 677
    const-string v2, "attachment_ori_image"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setOriImage(Ljava/lang/String;)V

    .line 678
    const-string v2, "unread_count"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setUnReadCount(Ljava/lang/String;)V

    .line 679
    const-string v2, "author"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setAuthor(Ljava/lang/String;)V

    .line 680
    const-string v2, "event_avatar"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setEventAvatar(Ljava/lang/String;)V

    .line 681
    const-string v2, "receiver"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setReceiver(Ljava/lang/String;)V

    .line 682
    const-string v2, "activity_time"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setActivityTime(Ljava/lang/String;)V

    .line 683
    const-string v2, "activity_site"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setActivitySite(Ljava/lang/String;)V

    .line 684
    const-string v2, "join_count"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setJoinCount(Ljava/lang/String;)V

    .line 685
    const-string v2, "has_join"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setHasJoin(Ljava/lang/String;)V

    .line 686
    const-string v2, "votes"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setVotes(Ljava/lang/String;)V

    .line 687
    const-string v2, "qrcode"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/lzx/iteam/bean/EventListData;->setQrcode(Ljava/lang/String;)V

    .line 688
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 691
    .end local v13    # "eventsListData":Lcom/lzx/iteam/bean/EventListData;
    :catch_0
    move-exception v11

    .line 692
    .local v11, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v2, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " error  findEvents"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 694
    if-eqz v10, :cond_4

    .line 695
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 697
    :cond_4
    if-eqz v1, :cond_1

    .line 699
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 638
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "end":I
    .end local v14    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/EventListData;>;"
    .end local v15    # "start":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 693
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "end":I
    .restart local v14    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/EventListData;>;"
    .restart local v15    # "start":I
    :catchall_1
    move-exception v2

    .line 694
    if-eqz v10, :cond_5

    .line 695
    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 697
    :cond_5
    if-eqz v1, :cond_6

    .line 699
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 701
    :cond_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized findOneContact(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1568
    monitor-enter p0

    const/4 v0, 0x0

    .line 1569
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1570
    .local v8, "contact":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 1572
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v1, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v1}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1573
    const-string v1, "contact_table"

    const/4 v2, 0x0

    const-string v3, "contact_phone = ? and my_user_id = ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1574
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1575
    const-string v1, "contact_group"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1576
    const-string v1, "contact_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1577
    const-string v1, "contact_job"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1582
    :cond_0
    if-eqz v0, :cond_1

    .line 1583
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1585
    :cond_1
    if-eqz v9, :cond_2

    .line 1586
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1589
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v8

    .line 1579
    :catch_0
    move-exception v10

    .line 1580
    .local v10, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "findOneContact"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1582
    if-eqz v0, :cond_3

    .line 1583
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1585
    :cond_3
    if-eqz v9, :cond_2

    .line 1586
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1568
    .end local v8    # "contact":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1581
    .restart local v8    # "contact":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    .line 1582
    if-eqz v0, :cond_4

    .line 1583
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1585
    :cond_4
    if-eqz v9, :cond_5

    .line 1586
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1588
    :cond_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized findOneContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1601
    monitor-enter p0

    const/4 v0, 0x0

    .line 1602
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1603
    .local v8, "contact":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 1605
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v1, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v1}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1606
    const-string v1, "contact_table"

    const/4 v2, 0x0

    const-string v3, "contact_phone = ? and my_user_id = ? and contact_group_id = ? "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1607
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1608
    const-string v1, "contact_group"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1609
    const-string v1, "contact_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1610
    const-string v1, "contact_job"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1615
    :cond_0
    if-eqz v0, :cond_1

    .line 1616
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1618
    :cond_1
    if-eqz v9, :cond_2

    .line 1619
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1622
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v8

    .line 1612
    :catch_0
    move-exception v10

    .line 1613
    .local v10, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "findOneContact"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1615
    if-eqz v0, :cond_3

    .line 1616
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1618
    :cond_3
    if-eqz v9, :cond_2

    .line 1619
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1601
    .end local v8    # "contact":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1614
    .restart local v8    # "contact":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    .line 1615
    if-eqz v0, :cond_4

    .line 1616
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1618
    :cond_4
    if-eqz v9, :cond_5

    .line 1619
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1621
    :cond_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized findOneEventById(Ljava/lang/String;)Lcom/lzx/iteam/bean/EventListData;
    .locals 11
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 861
    monitor-enter p0

    const/4 v0, 0x0

    .line 862
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 863
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v10, Lcom/lzx/iteam/bean/EventListData;

    invoke-direct {v10}, Lcom/lzx/iteam/bean/EventListData;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 865
    .local v10, "eventsListData":Lcom/lzx/iteam/bean/EventListData;
    :try_start_1
    iget-object v1, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v1}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 866
    const-string v1, "event_table"

    const/4 v2, 0x0

    const-string v3, "event_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 867
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-nez v1, :cond_2

    .line 903
    if-eqz v8, :cond_0

    .line 904
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 906
    :cond_0
    if-eqz v0, :cond_1

    .line 907
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 910
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v10

    .line 868
    :cond_2
    :try_start_3
    const-string v1, "event_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventId(Ljava/lang/String;)V

    .line 869
    const-string v1, "update_time"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setUpdateTime(Ljava/lang/String;)V

    .line 870
    const-string v1, "event_type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventType(Ljava/lang/String;)V

    .line 871
    const-string v1, "event_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventName(Ljava/lang/String;)V

    .line 872
    const-string v1, "user_type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setUserType(Ljava/lang/String;)V

    .line 873
    const-string v1, "has_read"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setHasRead(Ljava/lang/String;)V

    .line 874
    const-string v1, "create_time"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setCreateTime(Ljava/lang/String;)V

    .line 875
    const-string v1, "user_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setUserId(Ljava/lang/String;)V

    .line 876
    const-string v1, "user_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setUserName(Ljava/lang/String;)V

    .line 877
    const-string v1, "member_count"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setMemberCount(Ljava/lang/String;)V

    .line 878
    const-string v1, "event_title"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventTitle(Ljava/lang/String;)V

    .line 879
    const-string v1, "content1"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setContent1(Ljava/lang/String;)V

    .line 880
    const-string v1, "content2"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setContent2(Ljava/lang/String;)V

    .line 881
    const-string v1, "content3"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setContent3(Ljava/lang/String;)V

    .line 882
    const-string v1, "init_title1"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle1(Ljava/lang/String;)V

    .line 883
    const-string v1, "init_title2"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle2(Ljava/lang/String;)V

    .line 884
    const-string v1, "init_title3"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle3(Ljava/lang/String;)V

    .line 885
    const-string v1, "url1"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setUrl1(Ljava/lang/String;)V

    .line 886
    const-string v1, "url2"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setUrl2(Ljava/lang/String;)V

    .line 887
    const-string v1, "url3"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setUrl3(Ljava/lang/String;)V

    .line 888
    const-string v1, "reply_count"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setReplyCount(Ljava/lang/String;)V

    .line 889
    const-string v1, "attachment_thumb_image"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setThumbImage(Ljava/lang/String;)V

    .line 890
    const-string v1, "attachment_ori_image"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setOriImage(Ljava/lang/String;)V

    .line 891
    const-string v1, "author"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setAuthor(Ljava/lang/String;)V

    .line 892
    const-string v1, "event_avatar"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventAvatar(Ljava/lang/String;)V

    .line 893
    const-string v1, "receiver"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setReceiver(Ljava/lang/String;)V

    .line 894
    const-string v1, "activity_time"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setActivityTime(Ljava/lang/String;)V

    .line 895
    const-string v1, "activity_site"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setActivitySite(Ljava/lang/String;)V

    .line 896
    const-string v1, "join_count"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setJoinCount(Ljava/lang/String;)V

    .line 897
    const-string v1, "has_join"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setHasJoin(Ljava/lang/String;)V

    .line 898
    const-string v1, "votes"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lzx/iteam/bean/EventListData;->setVotes(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 900
    :catch_0
    move-exception v9

    .line 901
    .local v9, "e":Landroid/database/SQLException;
    :try_start_4
    sget-object v1, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error findOneEventById"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 903
    if-eqz v8, :cond_3

    .line 904
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 906
    :cond_3
    if-eqz v0, :cond_1

    .line 907
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 861
    .end local v9    # "e":Landroid/database/SQLException;
    .end local v10    # "eventsListData":Lcom/lzx/iteam/bean/EventListData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 902
    .restart local v10    # "eventsListData":Lcom/lzx/iteam/bean/EventListData;
    :catchall_1
    move-exception v1

    .line 903
    if-eqz v8, :cond_4

    .line 904
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 906
    :cond_4
    if-eqz v0, :cond_5

    .line 907
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 909
    :cond_5
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized findUserMsgById(Ljava/lang/String;)Lcom/lzx/iteam/bean/ChatContact;
    .locals 10
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 1704
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v1}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1705
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v8, Lcom/lzx/iteam/bean/ChatContact;

    invoke-direct {v8}, Lcom/lzx/iteam/bean/ChatContact;-><init>()V

    .line 1706
    .local v8, "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    const-string v1, "user_table"

    const/4 v2, 0x0

    const-string v3, "user_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1707
    .local v9, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1712
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1713
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1714
    const-string v1, "User"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--findUserMsg--userId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cloudContact--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Lcom/lzx/iteam/bean/ChatContact;->userName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1715
    monitor-exit p0

    return-object v8

    .line 1708
    :cond_0
    :try_start_1
    const-string v1, "user_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lzx/iteam/bean/ChatContact;->userId:Ljava/lang/String;

    .line 1709
    const-string v1, "user_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lzx/iteam/bean/ChatContact;->userName:Ljava/lang/String;

    .line 1710
    const-string v1, "user_img"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lzx/iteam/bean/ChatContact;->userImg:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1704
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAlarmWarnData()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/ScheduleData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1894
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1895
    .local v10, "localData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ScheduleData;>;"
    const/4 v0, 0x0

    .line 1896
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 1898
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v1}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1899
    const-string v1, "alarm_warn_table"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1900
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 1920
    if-eqz v8, :cond_0

    .line 1921
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1923
    :cond_0
    if-eqz v0, :cond_1

    .line 1924
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1927
    :cond_1
    :goto_1
    return-object v10

    .line 1901
    :cond_2
    :try_start_1
    new-instance v11, Lcom/lzx/iteam/bean/ScheduleData;

    invoke-direct {v11}, Lcom/lzx/iteam/bean/ScheduleData;-><init>()V

    .line 1902
    .local v11, "scheduleData":Lcom/lzx/iteam/bean/ScheduleData;
    const-string v1, "event_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setId(Ljava/lang/String;)V

    .line 1903
    const-string v1, "event_title"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setTitle(Ljava/lang/String;)V

    .line 1904
    const-string v1, "address"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setAddress(Ljava/lang/String;)V

    .line 1905
    const-string v1, "remark"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setRemark(Ljava/lang/String;)V

    .line 1906
    const-string v1, "start_datetime"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setStartTime(Ljava/lang/String;)V

    .line 1907
    const-string v1, "end_datetime"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setEndTime(Ljava/lang/String;)V

    .line 1908
    const-string v1, "alert_datetime"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setAlertTime(Ljava/lang/String;)V

    .line 1909
    const-string v1, "create_time"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setCreateTime(Ljava/lang/String;)V

    .line 1910
    const-string v1, "update_time"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setUpdateTime(Ljava/lang/String;)V

    .line 1911
    const-string v1, "boss_uid"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setBossUid(Ljava/lang/String;)V

    .line 1912
    const-string v1, "delegate_user"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setPublishedUId(Ljava/lang/String;)V

    .line 1913
    const-string v1, "delegater_username"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setPublishedUName(Ljava/lang/String;)V

    .line 1914
    const-string v1, "notice"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setNotice(Ljava/lang/String;)V

    .line 1915
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1917
    .end local v11    # "scheduleData":Lcom/lzx/iteam/bean/ScheduleData;
    :catch_0
    move-exception v9

    .line 1918
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "findTalk  error"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1920
    if-eqz v8, :cond_3

    .line 1921
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1923
    :cond_3
    if-eqz v0, :cond_1

    .line 1924
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_1

    .line 1919
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 1920
    if-eqz v8, :cond_4

    .line 1921
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1923
    :cond_4
    if-eqz v0, :cond_5

    .line 1924
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1926
    :cond_5
    throw v1
.end method

.method public getChatGroupCount(Ljava/lang/String;)I
    .locals 8
    .param p1, "chatGroupId"    # Ljava/lang/String;

    .prologue
    .line 418
    const/4 v2, 0x0

    .line 419
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 420
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 422
    .local v0, "count":I
    :try_start_0
    iget-object v5, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v5}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 423
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 424
    .local v4, "whereArgs":[Ljava/lang/String;
    const-string v5, "select count(*) from chatgroup_table where chatgroup_id = ?"

    invoke-virtual {v2, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 425
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 426
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 431
    if-eqz v1, :cond_0

    .line 432
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 434
    :cond_0
    if-eqz v2, :cond_1

    .line 435
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 438
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :cond_1
    :goto_0
    return v0

    .line 427
    :catch_0
    move-exception v3

    .line 429
    .local v3, "e":Landroid/database/SQLException;
    :try_start_1
    sget-object v5, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error getCount: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    if-eqz v1, :cond_2

    .line 432
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 434
    :cond_2
    if-eqz v2, :cond_1

    .line 435
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 430
    .end local v3    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    .line 431
    if-eqz v1, :cond_3

    .line 432
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 434
    :cond_3
    if-eqz v2, :cond_4

    .line 435
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 437
    :cond_4
    throw v5
.end method

.method public getCount()I
    .locals 7

    .prologue
    .line 114
    const/4 v2, 0x0

    .line 115
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 116
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 118
    .local v0, "count":I
    :try_start_0
    iget-object v4, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v4}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 119
    const-string v4, "select count(*) from state_table"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 120
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 121
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 127
    if-eqz v1, :cond_0

    .line 128
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_0
    if-eqz v2, :cond_1

    .line 131
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 134
    :cond_1
    :goto_0
    return v0

    .line 123
    :catch_0
    move-exception v3

    .line 125
    .local v3, "e":Landroid/database/SQLException;
    :try_start_1
    sget-object v4, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error getCount: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    if-eqz v1, :cond_2

    .line 128
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_2
    if-eqz v2, :cond_1

    .line 131
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 126
    .end local v3    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    .line 127
    if-eqz v1, :cond_3

    .line 128
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_3
    if-eqz v2, :cond_4

    .line 131
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 133
    :cond_4
    throw v4
.end method

.method public getEventCount(Ljava/lang/String;)I
    .locals 8
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 609
    const/4 v2, 0x0

    .line 610
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 611
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 613
    .local v0, "count":I
    :try_start_0
    iget-object v5, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v5}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 614
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 615
    .local v4, "whereArgs":[Ljava/lang/String;
    const-string v5, "select count(*) from event_table where event_id = ?"

    invoke-virtual {v2, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 616
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 617
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 622
    if-eqz v1, :cond_0

    .line 623
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 625
    :cond_0
    if-eqz v2, :cond_1

    .line 626
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 629
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :cond_1
    :goto_0
    return v0

    .line 618
    :catch_0
    move-exception v3

    .line 620
    .local v3, "e":Landroid/database/SQLException;
    :try_start_1
    sget-object v5, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error getCount: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 622
    if-eqz v1, :cond_2

    .line 623
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 625
    :cond_2
    if-eqz v2, :cond_1

    .line 626
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 621
    .end local v3    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    .line 622
    if-eqz v1, :cond_3

    .line 623
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 625
    :cond_3
    if-eqz v2, :cond_4

    .line 626
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 628
    :cond_4
    throw v5
.end method

.method public getLocalGroupList()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/CloudGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v11, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudGroup;>;"
    const/4 v0, 0x0

    .line 174
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 176
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v1}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 177
    const-string v1, "cloud_group"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 178
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 197
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 199
    :cond_0
    :goto_1
    const-string v1, "GetGroupList"

    const-string v2, "GetGroupList"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-object v11

    .line 179
    :cond_1
    :try_start_1
    new-instance v10, Lcom/lzx/iteam/bean/CloudGroup;

    invoke-direct {v10}, Lcom/lzx/iteam/bean/CloudGroup;-><init>()V

    .line 180
    .local v10, "groupItem":Lcom/lzx/iteam/bean/CloudGroup;
    const-string v1, "group_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/lzx/iteam/bean/CloudGroup;->groupId:J

    .line 181
    const-string v1, "group_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/lzx/iteam/bean/CloudGroup;->groupName:Ljava/lang/String;

    .line 182
    const-string v1, "group_type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v10, Lcom/lzx/iteam/bean/CloudGroup;->groupType:I

    .line 183
    const-string v1, "contact_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/lzx/iteam/bean/CloudGroup;->contactId:Ljava/lang/String;

    .line 184
    const-string v1, "contact_count"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v10, Lcom/lzx/iteam/bean/CloudGroup;->contactCount:I

    .line 185
    const-string v1, "member_count"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v10, Lcom/lzx/iteam/bean/CloudGroup;->memberCount:I

    .line 186
    const-string v1, "update_time"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/lzx/iteam/bean/CloudGroup;->updateTime:J

    .line 187
    const-string v1, "group_img"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/lzx/iteam/bean/CloudGroup;->groupImg:Ljava/lang/String;

    .line 188
    const-string v1, "user_type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/lzx/iteam/bean/CloudGroup;->userType:Ljava/lang/String;

    .line 189
    const-string v1, "is_new"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/lzx/iteam/bean/CloudGroup;->isNew:Ljava/lang/String;

    .line 190
    const-string v1, "has_tags"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/lzx/iteam/bean/CloudGroup;->hasTags:Ljava/lang/String;

    .line 191
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 194
    .end local v10    # "groupItem":Lcom/lzx/iteam/bean/CloudGroup;
    :catch_0
    move-exception v9

    .line 195
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 196
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 197
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_2
    throw v1
.end method

.method public getTalkMyMsgData()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/MyTalkMessageData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1756
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1757
    .local v10, "localData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/MyTalkMessageData;>;"
    const/4 v0, 0x0

    .line 1758
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 1760
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v1}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1761
    const-string v1, "talk_my_msg_table"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "msg_ctime desc"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1762
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 1784
    if-eqz v8, :cond_0

    .line 1785
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1787
    :cond_0
    if-eqz v0, :cond_1

    .line 1788
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1791
    :cond_1
    :goto_1
    return-object v10

    .line 1763
    :cond_2
    :try_start_1
    new-instance v11, Lcom/lzx/iteam/bean/MyTalkMessageData;

    invoke-direct {v11}, Lcom/lzx/iteam/bean/MyTalkMessageData;-><init>()V

    .line 1764
    .local v11, "talkMessageData":Lcom/lzx/iteam/bean/MyTalkMessageData;
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/lzx/iteam/bean/MyTalkMessageData;->_id:Ljava/lang/String;

    .line 1765
    const-string v1, "talk_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/lzx/iteam/bean/MyTalkMessageData;->talkId:Ljava/lang/String;

    .line 1766
    const-string v1, "msg_type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/lzx/iteam/bean/MyTalkMessageData;->msgType:Ljava/lang/String;

    .line 1767
    const-string v1, "msg_uid"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/lzx/iteam/bean/MyTalkMessageData;->msgUId:Ljava/lang/String;

    .line 1768
    const-string v1, "msg_uname"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/lzx/iteam/bean/MyTalkMessageData;->msgUName:Ljava/lang/String;

    .line 1769
    const-string v1, "msg_uimg"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/lzx/iteam/bean/MyTalkMessageData;->msgUImg:Ljava/lang/String;

    .line 1770
    const-string v1, "msg_recv_uid"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/lzx/iteam/bean/MyTalkMessageData;->msgRecvUId:Ljava/lang/String;

    .line 1771
    const-string v1, "msg_recv_umane"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/lzx/iteam/bean/MyTalkMessageData;->msgRecvUName:Ljava/lang/String;

    .line 1772
    const-string v1, "msg_comment"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/lzx/iteam/bean/MyTalkMessageData;->msgComment:Ljava/lang/String;

    .line 1773
    const-string v1, "msg_ctime"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/lzx/iteam/bean/MyTalkMessageData;->msgCTime:Ljava/lang/String;

    .line 1774
    const-string v1, "talk_thumb"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/lzx/iteam/bean/MyTalkMessageData;->talkThumb:Ljava/lang/String;

    .line 1775
    const-string v1, "talk_uid"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/lzx/iteam/bean/MyTalkMessageData;->talkUId:Ljava/lang/String;

    .line 1776
    const-string v1, "talk_uname"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/lzx/iteam/bean/MyTalkMessageData;->talkUName:Ljava/lang/String;

    .line 1777
    const-string v1, "talk_uimg"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/lzx/iteam/bean/MyTalkMessageData;->talkUImage:Ljava/lang/String;

    .line 1778
    const-string v1, "talk_text"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/lzx/iteam/bean/MyTalkMessageData;->text:Ljava/lang/String;

    .line 1779
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1781
    .end local v11    # "talkMessageData":Lcom/lzx/iteam/bean/MyTalkMessageData;
    :catch_0
    move-exception v9

    .line 1782
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "findTalk  error"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1784
    if-eqz v8, :cond_3

    .line 1785
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1787
    :cond_3
    if-eqz v0, :cond_1

    .line 1788
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_1

    .line 1783
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 1784
    if-eqz v8, :cond_4

    .line 1785
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1787
    :cond_4
    if-eqz v0, :cond_5

    .line 1788
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1790
    :cond_5
    throw v1
.end method

.method public declared-synchronized insertAlarmWarnData(Lcom/lzx/iteam/bean/ScheduleData;)J
    .locals 8
    .param p1, "scheduleData"    # Lcom/lzx/iteam/bean/ScheduleData;

    .prologue
    .line 1864
    monitor-enter p0

    const/4 v0, 0x0

    .line 1865
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, 0x0

    .line 1866
    .local v2, "flag":J
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1868
    .local v4, "values":Landroid/content/ContentValues;
    :try_start_1
    iget-object v5, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v5}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1869
    const-string v5, "event_id"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ScheduleData;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    const-string v5, "event_title"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ScheduleData;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    const-string v5, "address"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ScheduleData;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    const-string v5, "remark"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ScheduleData;->getRemark()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    const-string v5, "start_datetime"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ScheduleData;->getStartTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    const-string v5, "end_datetime"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ScheduleData;->getEndTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    const-string v5, "alert_datetime"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ScheduleData;->getAlertTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    const-string v5, "create_time"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ScheduleData;->getCreateTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    const-string v5, "update_time"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ScheduleData;->getUpdateTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    const-string v5, "boss_uid"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ScheduleData;->getBossUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    const-string v5, "delegate_user"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ScheduleData;->getPublishedUId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    const-string v5, "delegater_username"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ScheduleData;->getPublishedUName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    const-string v5, "notice"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ScheduleData;->getNotice()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    const-string v5, "alarm_warn_table"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 1886
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1888
    :goto_0
    const-string v5, "Talk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "--insert_result--"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1889
    monitor-exit p0

    return-wide v2

    .line 1883
    :catch_0
    move-exception v1

    .line 1884
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v5, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "insert_error"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1886
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1864
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1885
    .restart local v4    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v5

    .line 1886
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1887
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized insertApprovalListData(Lcom/lzx/iteam/bean/ApprovalData;ILjava/lang/String;)J
    .locals 8
    .param p1, "approvalData"    # Lcom/lzx/iteam/bean/ApprovalData;
    .param p2, "listType"    # I
    .param p3, "uid"    # Ljava/lang/String;

    .prologue
    .line 2131
    monitor-enter p0

    const/4 v0, 0x0

    .line 2132
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, 0x0

    .line 2133
    .local v2, "flag":J
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2135
    .local v4, "values":Landroid/content/ContentValues;
    :try_start_1
    iget-object v5, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v5}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2136
    const-string v5, "my_user_id"

    invoke-virtual {v4, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2137
    const-string v5, "user_id"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ApprovalData;->getUser_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2138
    const-string v5, "user_name"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ApprovalData;->getUser_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2139
    const-string v5, "user_image"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ApprovalData;->getUser_image()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2141
    const-string v5, "list_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2142
    const-string v5, "approval_id"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2143
    const-string v5, "approval_group_id"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_group_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    const-string v5, "approval_type"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_type()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2145
    const-string v5, "approval_leave_type"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_leave_type()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2146
    const-string v5, "approval_address"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_address()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2147
    const-string v5, "approval_start_time"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_start_time()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    const-string v5, "approval_end_time"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_end_time()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2149
    const-string v5, "approval_start_part"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_start_part()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2150
    const-string v5, "approval_end_part"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_end_part()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2151
    const-string v5, "approval_day"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_day()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 2152
    const-string v5, "approval_reason"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_reason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2154
    const-string v5, "approve_admin"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ApprovalData;->getApprove_admin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2155
    const-string v5, "approve_admin_name"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ApprovalData;->getApprove_admin_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2156
    const-string v5, "approve_admin_image"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ApprovalData;->getApprove_admin_image()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    const-string v5, "approval_done_time"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_done_time()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2159
    const-string v5, "approval_time"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_time()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2160
    const-string v5, "approval_status"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_status()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2162
    const-string v5, "approval_table"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 2166
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2168
    :goto_0
    sget-object v5, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "--insertApprovalDataListData--"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2169
    monitor-exit p0

    return-wide v2

    .line 2163
    :catch_0
    move-exception v1

    .line 2164
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v5, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "insert_error"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2166
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 2131
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 2165
    .restart local v4    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v5

    .line 2166
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2167
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized insertAttendanceCalendarListData(Lcom/lzx/iteam/bean/AttendanceCalendarData;)J
    .locals 8
    .param p1, "attendanceCalendarData"    # Lcom/lzx/iteam/bean/AttendanceCalendarData;

    .prologue
    .line 2057
    monitor-enter p0

    const/4 v0, 0x0

    .line 2058
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, 0x0

    .line 2059
    .local v2, "flag":J
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2061
    .local v4, "values":Landroid/content/ContentValues;
    :try_start_1
    iget-object v5, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v5}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2062
    const-string v5, "user_id"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/AttendanceCalendarData;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2063
    const-string v5, "year"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/AttendanceCalendarData;->getYear()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    const-string v5, "month"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/AttendanceCalendarData;->getMonth()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    const-string v5, "day"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/AttendanceCalendarData;->getDay()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2066
    const-string v5, "status"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/AttendanceCalendarData;->getStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2067
    const-string v5, "cheat"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/AttendanceCalendarData;->getCheat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    const-string v5, "group_id"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/AttendanceCalendarData;->getGroupId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    const-string v5, "attendance_calendar_table"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 2073
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2075
    :goto_0
    sget-object v5, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "--insertAttendanceCalendarListData--"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2076
    monitor-exit p0

    return-wide v2

    .line 2070
    :catch_0
    move-exception v1

    .line 2071
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v5, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "insert_error"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2073
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 2057
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 2072
    .restart local v4    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v5

    .line 2073
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2074
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized insertCalendarListData(Lcom/lzx/iteam/bean/ScheduleListData;)J
    .locals 8
    .param p1, "scheduleListData"    # Lcom/lzx/iteam/bean/ScheduleListData;

    .prologue
    .line 1985
    monitor-enter p0

    const/4 v0, 0x0

    .line 1986
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, 0x0

    .line 1987
    .local v2, "flag":J
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1989
    .local v4, "values":Landroid/content/ContentValues;
    :try_start_1
    iget-object v5, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v5}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1990
    const-string v5, "user_id"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ScheduleListData;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    const-string v5, "year"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ScheduleListData;->getYear()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    const-string v5, "month"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ScheduleListData;->getMonth()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    const-string v5, "day"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ScheduleListData;->getDay()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1994
    const-string v5, "status"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ScheduleListData;->getStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1995
    const-string v5, "state"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ScheduleListData;->getState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    const-string v5, "calendar_table"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 2000
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2002
    :goto_0
    const-string v5, "Calendar"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "--insert_result--"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2003
    monitor-exit p0

    return-wide v2

    .line 1997
    :catch_0
    move-exception v1

    .line 1998
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v5, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "insert_error"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2000
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1985
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1999
    .restart local v4    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v5

    .line 2000
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2001
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized insertChatGroup(Lcom/lzx/iteam/bean/ChatGroup;)J
    .locals 8
    .param p1, "chatGroup"    # Lcom/lzx/iteam/bean/ChatGroup;

    .prologue
    .line 310
    monitor-enter p0

    const/4 v0, 0x0

    .line 311
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, 0x0

    .line 313
    .local v2, "flag":J
    :try_start_0
    iget-object v5, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v5}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 314
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 315
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "chatgroup_id"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ChatGroup;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v5, "chatgroup_name"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ChatGroup;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v5, "lastupdate_time"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ChatGroup;->getLastUpdateTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v5, "chatgroup_img"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ChatGroup;->getImg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v5, "last_msg_name"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ChatGroup;->getLastMsgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v5, "last_msg_content"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ChatGroup;->getLastMsgContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v5, "user_type"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ChatGroup;->getUserType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v5, "member_count"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ChatGroup;->getMemberCount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v5, "is_new"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ChatGroup;->getIsNew()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v5, "unread_count"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ChatGroup;->getUnreadCount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v5, "type"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ChatGroup;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v5, "is_active"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ChatGroup;->getIsActive()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v5, "chatgroup_table"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 333
    if-eqz v0, :cond_0

    .line 334
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v2

    .line 330
    :catch_0
    move-exception v1

    .line 331
    .local v1, "e":Landroid/database/SQLException;
    :try_start_2
    sget-object v5, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error insertChatGroup: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 333
    if-eqz v0, :cond_0

    .line 334
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 310
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 332
    :catchall_1
    move-exception v5

    .line 333
    if-eqz v0, :cond_1

    .line 334
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 336
    :cond_1
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized insertCloudGroup(Lcom/lzx/iteam/bean/CloudGroup;)J
    .locals 8
    .param p1, "item"    # Lcom/lzx/iteam/bean/CloudGroup;

    .prologue
    .line 144
    monitor-enter p0

    const/4 v0, 0x0

    .line 145
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, 0x0

    .line 147
    .local v2, "flag":J
    :try_start_0
    iget-object v5, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v5}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 148
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 149
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "group_id"

    iget-wide v6, p1, Lcom/lzx/iteam/bean/CloudGroup;->groupId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 150
    const-string v5, "group_name"

    iget-object v6, p1, Lcom/lzx/iteam/bean/CloudGroup;->groupName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v5, "group_type"

    iget v6, p1, Lcom/lzx/iteam/bean/CloudGroup;->groupType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 152
    const-string v5, "contact_id"

    iget-object v6, p1, Lcom/lzx/iteam/bean/CloudGroup;->contactId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v5, "contact_count"

    iget v6, p1, Lcom/lzx/iteam/bean/CloudGroup;->contactCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    const-string v5, "member_count"

    iget v6, p1, Lcom/lzx/iteam/bean/CloudGroup;->memberCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    const-string v5, "update_time"

    iget-wide v6, p1, Lcom/lzx/iteam/bean/CloudGroup;->updateTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 156
    const-string v5, "group_img"

    iget-object v6, p1, Lcom/lzx/iteam/bean/CloudGroup;->groupImg:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v5, "user_type"

    iget-object v6, p1, Lcom/lzx/iteam/bean/CloudGroup;->userType:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v5, "is_new"

    iget-object v6, p1, Lcom/lzx/iteam/bean/CloudGroup;->isNew:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v5, "has_tags"

    iget-object v6, p1, Lcom/lzx/iteam/bean/CloudGroup;->hasTags:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v5, "cloud_group"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 164
    if-eqz v0, :cond_0

    .line 165
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v2

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Landroid/database/SQLException;
    :try_start_2
    sget-object v5, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error insertChatGroup: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 164
    if-eqz v0, :cond_0

    .line 165
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 144
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 163
    :catchall_1
    move-exception v5

    .line 164
    if-eqz v0, :cond_1

    .line 165
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 167
    :cond_1
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized insertContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 7
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "job"    # Ljava/lang/String;
    .param p4, "groupName"    # Ljava/lang/String;
    .param p5, "contactName"    # Ljava/lang/String;
    .param p6, "groupId"    # Ljava/lang/String;

    .prologue
    .line 1538
    monitor-enter p0

    const/4 v0, 0x0

    .line 1539
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, 0x0

    .line 1541
    .local v2, "flag":J
    :try_start_0
    iget-object v4, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v4}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1542
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1543
    .local v1, "values":Landroid/content/ContentValues;
    const-string v4, "my_user_id"

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    const-string v4, "contact_name"

    invoke-virtual {v1, v4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    const-string v4, "contact_phone"

    invoke-virtual {v1, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    const-string v4, "contact_job"

    invoke-virtual {v1, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    const-string v4, "contact_group"

    invoke-virtual {v1, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    const-string v4, "contact_group_id"

    invoke-virtual {v1, v4, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    const-string v4, "contact_table"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 1553
    if-eqz v0, :cond_0

    .line 1554
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1557
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    const-string v4, "Contact_msg"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "--insert_result--"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1558
    monitor-exit p0

    return-wide v2

    .line 1551
    :catch_0
    move-exception v4

    :try_start_2
    const-string v4, "insertContact"

    const-string v5, " insertContact  \u5931\u8d25"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1553
    if-eqz v0, :cond_0

    .line 1554
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1538
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1552
    :catchall_1
    move-exception v4

    .line 1553
    if-eqz v0, :cond_1

    .line 1554
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1556
    :cond_1
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized insertEvent(Lcom/lzx/iteam/bean/EventListData;)J
    .locals 8
    .param p1, "eventsListData"    # Lcom/lzx/iteam/bean/EventListData;

    .prologue
    .line 542
    monitor-enter p0

    const/4 v0, 0x0

    .line 543
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, -0x1

    .line 545
    .local v2, "flag":J
    :try_start_0
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getEventId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lzx/iteam/provider/CloudDBOperation;->getEventCount(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 546
    iget-object v5, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v5}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 547
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 548
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "event_id"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getEventId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string v5, "update_time"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getUpdateTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const-string v5, "event_type"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getEventType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string v5, "event_name"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getEventName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const-string v5, "user_type"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getUserType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v5, "has_read"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getHasRead()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const-string v5, "create_time"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getCreateTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const-string v5, "user_id"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string v5, "user_name"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getUserName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v5, "member_count"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getMemberCount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v5, "event_title"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getEventTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string v5, "content1"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getContent1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string v5, "content2"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getContent2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string v5, "content3"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getContent3()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string v5, "init_title1"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v5, "init_title2"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string v5, "init_title3"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle3()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v5, "url1"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getUrl1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v5, "url2"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getUrl2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v5, "url3"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getUrl3()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v5, "init_title2"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string v5, "init_title3"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle3()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string v5, "has_read_count"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getHasReadCount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const-string v5, "reply_count"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getReplyCount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const-string v5, "reply_last_name"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getReplyLastName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-string v5, "reply_last_content"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getReplyLastContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string v5, "attachment_thumb_image"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getThumbImage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string v5, "attachment_ori_image"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getOriImage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v5, "unread_count"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getUnReadCount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v5, "author"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getAuthor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const-string v5, "event_avatar"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getEventAvatar()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string v5, "receiver"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getReceiver()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string v5, "activity_time"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getActivityTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v5, "activity_site"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getActivitySite()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v5, "join_count"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getJoinCount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v5, "has_join"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getHasJoin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string v5, "votes"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getVotes()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v5, "end_time"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getEndTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v5, "is_qrcode"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getIsQrcode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v5, "qrcode"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getQrcode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v5, "my_userid"

    iget-object v6, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->mUserId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v5, "event_table"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 594
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    if-eqz v0, :cond_1

    .line 595
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 598
    :cond_1
    :goto_0
    const/4 v5, 0x1

    sput-boolean v5, Lcom/lzx/iteam/EventsFragment;->isUpDate:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 599
    monitor-exit p0

    return-wide v2

    .line 591
    :catch_0
    move-exception v1

    .line 592
    .local v1, "e":Landroid/database/SQLException;
    :try_start_2
    sget-object v5, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "error insertEvent"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 594
    if-eqz v0, :cond_1

    .line 595
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 542
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 593
    :catchall_1
    move-exception v5

    .line 594
    if-eqz v0, :cond_2

    .line 595
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 597
    :cond_2
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized insertEventDrafts(Lcom/lzx/iteam/bean/EventListData;)J
    .locals 7
    .param p1, "eventsListData"    # Lcom/lzx/iteam/bean/EventListData;

    .prologue
    .line 1309
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v5}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1310
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1311
    .local v4, "values":Landroid/content/ContentValues;
    const-wide/16 v2, 0x0

    .line 1313
    .local v2, "flag":J
    :try_start_1
    const-string v5, "event_id"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getEventId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    const-string v5, "event_type"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getEventType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    const-string v5, "event_type_name"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getEventName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    const-string v5, "event_title"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getEventTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    const-string v5, "event_receiver"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getReceiver()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    const-string v5, "event_time"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getUpdateTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    const-string v5, "content1"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getContent1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    const-string v5, "content2"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getContent2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    const-string v5, "content3"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getContent3()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    const-string v5, "init_title1"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    const-string v5, "init_title2"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    const-string v5, "init_title3"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle3()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    const-string v5, "attachment_thumb_image"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getThumbImage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    const-string v5, "attachment_ori_image"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getOriImage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    const-string v5, "user_id"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    const-string v5, "author"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getAuthor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    const-string v5, "activity_site"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getActivitySite()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    const-string v5, "activity_time"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getActivityTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    const-string v5, "end_time"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getEndTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    const-string v5, "is_qrcode"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getIsQrcode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    const-string v5, "event_drafts_table"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 1337
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1339
    :goto_0
    monitor-exit p0

    return-wide v2

    .line 1334
    :catch_0
    move-exception v1

    .line 1335
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1337
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1309
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "flag":J
    .end local v4    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1336
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "flag":J
    .restart local v4    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v5

    .line 1337
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1338
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized insertEventModel(Lcom/lzx/iteam/bean/EventListData;)J
    .locals 7
    .param p1, "eventsListData"    # Lcom/lzx/iteam/bean/EventListData;

    .prologue
    .line 1209
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v5}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1210
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1211
    .local v4, "values":Landroid/content/ContentValues;
    const-wide/16 v2, 0x0

    .line 1213
    .local v2, "flag":J
    :try_start_1
    const-string v5, "event_id"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getEventId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    const-string v5, "event_type"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getEventType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    const-string v5, "event_type_name"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getEventName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    const-string v5, "event_title"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getEventTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    const-string v5, "event_receiver"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getReceiver()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    const-string v5, "event_time"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getUpdateTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    const-string v5, "content1"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getContent1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    const-string v5, "content2"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getContent2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    const-string v5, "content3"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getContent3()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    const-string v5, "init_title1"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    const-string v5, "init_title2"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    const-string v5, "init_title3"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle3()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    const-string v5, "attachment_thumb_image"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getThumbImage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    const-string v5, "attachment_ori_image"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getOriImage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    const-string v5, "user_id"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/EventListData;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    const-string v5, "event_model_table"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 1232
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1234
    :goto_0
    monitor-exit p0

    return-wide v2

    .line 1229
    :catch_0
    move-exception v1

    .line 1230
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1232
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1209
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "flag":J
    .end local v4    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1231
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "flag":J
    .restart local v4    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v5

    .line 1232
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1233
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public insertStateData(Ljava/lang/String;)J
    .locals 8
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 39
    const/4 v1, 0x0

    .line 40
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v4, 0x0

    .line 43
    .local v4, "i":J
    :try_start_0
    iget-object v3, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v3}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 44
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 45
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "state_text"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v3, "state_table"

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 52
    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 56
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-wide v4

    .line 48
    :catch_0
    move-exception v2

    .line 50
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    sget-object v3, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error inserting "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 51
    .end local v2    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    .line 52
    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 55
    :cond_1
    throw v3
.end method

.method public declared-synchronized insertTalkMyMsgData(Lcom/lzx/iteam/bean/MyTalkMessageData;)J
    .locals 8
    .param p1, "talkMessageData"    # Lcom/lzx/iteam/bean/MyTalkMessageData;

    .prologue
    .line 1796
    monitor-enter p0

    const/4 v0, 0x0

    .line 1797
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, 0x0

    .line 1798
    .local v2, "flag":J
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1800
    .local v4, "values":Landroid/content/ContentValues;
    :try_start_1
    iget-object v5, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v5}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1801
    const-string v5, "talk_id"

    iget-object v6, p1, Lcom/lzx/iteam/bean/MyTalkMessageData;->talkId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    const-string v5, "msg_type"

    iget-object v6, p1, Lcom/lzx/iteam/bean/MyTalkMessageData;->msgType:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    const-string v5, "msg_uid"

    iget-object v6, p1, Lcom/lzx/iteam/bean/MyTalkMessageData;->msgUId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    const-string v5, "msg_uname"

    iget-object v6, p1, Lcom/lzx/iteam/bean/MyTalkMessageData;->msgUName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    const-string v5, "msg_uimg"

    iget-object v6, p1, Lcom/lzx/iteam/bean/MyTalkMessageData;->msgUImg:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    const-string v5, "msg_recv_uid"

    iget-object v6, p1, Lcom/lzx/iteam/bean/MyTalkMessageData;->msgRecvUId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    const-string v5, "msg_recv_umane"

    iget-object v6, p1, Lcom/lzx/iteam/bean/MyTalkMessageData;->msgRecvUName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    const-string v5, "msg_comment"

    iget-object v6, p1, Lcom/lzx/iteam/bean/MyTalkMessageData;->msgComment:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    const-string v5, "msg_ctime"

    iget-object v6, p1, Lcom/lzx/iteam/bean/MyTalkMessageData;->msgCTime:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    const-string v5, "talk_thumb"

    iget-object v6, p1, Lcom/lzx/iteam/bean/MyTalkMessageData;->talkThumb:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    const-string v5, "talk_uid"

    iget-object v6, p1, Lcom/lzx/iteam/bean/MyTalkMessageData;->talkUId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    const-string v5, "talk_uname"

    iget-object v6, p1, Lcom/lzx/iteam/bean/MyTalkMessageData;->talkUName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    const-string v5, "talk_uimg"

    iget-object v6, p1, Lcom/lzx/iteam/bean/MyTalkMessageData;->talkUImage:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    const-string v5, "talk_text"

    iget-object v6, p1, Lcom/lzx/iteam/bean/MyTalkMessageData;->text:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    const-string v5, "talk_my_msg_table"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 1819
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1821
    :goto_0
    const-string v5, "Talk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "--insert_result--"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1822
    monitor-exit p0

    return-wide v2

    .line 1816
    :catch_0
    move-exception v1

    .line 1817
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v5, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "insert_error"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1819
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1796
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1818
    .restart local v4    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v5

    .line 1819
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1820
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized insertUserMsg(Lcom/lzx/iteam/bean/ChatContact;)J
    .locals 7
    .param p1, "chatContact"    # Lcom/lzx/iteam/bean/ChatContact;

    .prologue
    .line 1725
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v4}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1726
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1727
    .local v1, "values":Landroid/content/ContentValues;
    const-string v4, "user_id"

    iget-object v5, p1, Lcom/lzx/iteam/bean/ChatContact;->userId:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    const-string v4, "user_name"

    iget-object v5, p1, Lcom/lzx/iteam/bean/ChatContact;->userName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    const-string v4, "user_img"

    iget-object v5, p1, Lcom/lzx/iteam/bean/ChatContact;->userImg:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    const-string v4, "user_table"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 1731
    .local v2, "flag":J
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1732
    const-string v4, "User"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "--insert_result--"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1733
    monitor-exit p0

    return-wide v2

    .line 1725
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "values":Landroid/content/ContentValues;
    .end local v2    # "flag":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized isHaveEventById(Ljava/lang/String;)Z
    .locals 12
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 919
    monitor-enter p0

    const/4 v0, 0x0

    .line 920
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 922
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v1}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 923
    const-string v1, "event_table"

    const/4 v2, 0x0

    const-string v3, "event_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 924
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 932
    if-eqz v8, :cond_0

    .line 933
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 935
    :cond_0
    if-eqz v0, :cond_1

    .line 936
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    move v1, v10

    .line 939
    :goto_0
    monitor-exit p0

    return v1

    .line 932
    :cond_2
    if-eqz v8, :cond_3

    .line 933
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 935
    :cond_3
    if-eqz v0, :cond_4

    .line 936
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    move v1, v11

    .line 927
    goto :goto_0

    .line 929
    :catch_0
    move-exception v9

    .line 930
    .local v9, "e":Landroid/database/SQLException;
    :try_start_3
    sget-object v1, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error isHaveEventById"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 932
    if-eqz v8, :cond_5

    .line 933
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 935
    :cond_5
    if-eqz v0, :cond_6

    .line 936
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    move v1, v11

    .line 939
    goto :goto_0

    .line 931
    .end local v9    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    .line 932
    if-eqz v8, :cond_7

    .line 933
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 935
    :cond_7
    if-eqz v0, :cond_8

    .line 936
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 938
    :cond_8
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 919
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized queryEventByType(Ljava/lang/String;)Z
    .locals 11
    .param p1, "eventType"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1290
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v1}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1291
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "event_model_table"

    const/4 v2, 0x0

    const-string v3, "event_type_name = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1292
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1293
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v9

    .line 1297
    :goto_0
    monitor-exit p0

    return v1

    .line 1296
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v10

    .line 1297
    goto :goto_0

    .line 1290
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized queryEventDraftsById(Ljava/lang/String;)Z
    .locals 11
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1458
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v1}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1459
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "event_drafts_table"

    const/4 v2, 0x0

    const-string v3, "event_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1460
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1461
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v9

    .line 1465
    :goto_0
    monitor-exit p0

    return v1

    .line 1464
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v10

    .line 1465
    goto :goto_0

    .line 1458
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized queryEventModelById(Ljava/lang/String;)Z
    .locals 11
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1273
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v1}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1274
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "event_model_table"

    const/4 v2, 0x0

    const-string v3, "event_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1275
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1276
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v9

    .line 1280
    :goto_0
    monitor-exit p0

    return v1

    .line 1279
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v10

    .line 1280
    goto :goto_0

    .line 1273
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public upDateOneApproval(Ljava/lang/String;ILcom/lzx/iteam/bean/ApprovalData;)I
    .locals 10
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "listType"    # I
    .param p3, "approvalData"    # Lcom/lzx/iteam/bean/ApprovalData;

    .prologue
    .line 2223
    const/4 v0, 0x0

    .line 2224
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 2225
    .local v2, "update":I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2227
    .local v3, "values":Landroid/content/ContentValues;
    :try_start_0
    iget-object v4, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v4}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2228
    const-string v4, "approval_done_time"

    invoke-virtual {p3}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_done_time()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2229
    const-string v4, "approval_status"

    invoke-virtual {p3}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_status()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2230
    const-string v4, "approval_table"

    const-string v5, " my_user_id = ? and list_type = ? and approval_group_id = ? and approval_id = ? "

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {p3}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_group_id()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {p3}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_id()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2234
    if-eqz v0, :cond_0

    .line 2235
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2238
    :cond_0
    :goto_0
    const-string v4, "upDateOneApproval"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\u66f4\u65b0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    return v2

    .line 2231
    :catch_0
    move-exception v1

    .line 2232
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v4, "upDateOneApproval"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\u66f4\u65b0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2234
    if-eqz v0, :cond_0

    .line 2235
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 2233
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    .line 2234
    if-eqz v0, :cond_1

    .line 2235
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2237
    :cond_1
    throw v4
.end method

.method public declared-synchronized updataAlarmWarn(Ljava/lang/String;Lcom/lzx/iteam/bean/ScheduleData;)J
    .locals 7
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "scheduleData"    # Lcom/lzx/iteam/bean/ScheduleData;

    .prologue
    .line 1937
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v3}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1938
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1939
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "event_id"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/ScheduleData;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    const-string v3, "event_title"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/ScheduleData;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    const-string v3, "address"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/ScheduleData;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    const-string v3, "remark"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/ScheduleData;->getRemark()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1943
    const-string v3, "start_datetime"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/ScheduleData;->getStartTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    const-string v3, "end_datetime"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/ScheduleData;->getEndTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1945
    const-string v3, "alert_datetime"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/ScheduleData;->getAlertTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    const-string v3, "create_time"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/ScheduleData;->getCreateTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1947
    const-string v3, "update_time"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/ScheduleData;->getUpdateTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    const-string v3, "boss_uid"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/ScheduleData;->getBossUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1949
    const-string v3, "delegate_user"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/ScheduleData;->getPublishedUId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    const-string v3, "delegater_username"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/ScheduleData;->getPublishedUName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    const-string v3, "notice"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/ScheduleData;->getNotice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    const-string v3, "alarm_warn_table"

    const-string v4, " event_id = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1954
    .local v1, "update":I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1955
    const-string v3, "updata_result"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1956
    int-to-long v4, v1

    monitor-exit p0

    return-wide v4

    .line 1937
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "update":I
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized updataEventDrafts(Ljava/lang/String;Lcom/lzx/iteam/bean/EventListData;)J
    .locals 7
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "eventsListData"    # Lcom/lzx/iteam/bean/EventListData;

    .prologue
    .line 1371
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v3}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1372
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1373
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "event_id"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getEventId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    const-string v3, "event_type"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getEventType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    const-string v3, "event_type_name"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getEventName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    const-string v3, "event_title"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getEventTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    const-string v3, "event_receiver"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getReceiver()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    const-string v3, "event_time"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getUpdateTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    const-string v3, "content1"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getContent1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    const-string v3, "content2"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getContent2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    const-string v3, "content3"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getContent3()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    const-string v3, "init_title1"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    const-string v3, "init_title2"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    const-string v3, "init_title3"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle3()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    const-string v3, "attachment_thumb_image"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getThumbImage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    const-string v3, "attachment_ori_image"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getOriImage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    const-string v3, "author"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    const-string v3, "activity_site"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getActivitySite()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    const-string v3, "activity_time"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getActivityTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    const-string v3, "end_time"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getEndTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    const-string v3, "is_qrcode"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getIsQrcode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    const-string v3, "event_drafts_table"

    const-string v4, " event_id = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1394
    .local v1, "update":I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1395
    const-string v3, "updata_result"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1396
    int-to-long v4, v1

    monitor-exit p0

    return-wide v4

    .line 1371
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "update":I
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized updataEventModel(Ljava/lang/String;Lcom/lzx/iteam/bean/EventListData;)J
    .locals 7
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "eventsListData"    # Lcom/lzx/iteam/bean/EventListData;

    .prologue
    .line 1243
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v3}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1244
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1245
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "event_id"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getEventId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    const-string v3, "event_type"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getEventType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    const-string v3, "event_type_name"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getEventName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    const-string v3, "event_title"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getEventTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    const-string v3, "event_receiver"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getReceiver()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    const-string v3, "event_time"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getUpdateTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    const-string v3, "content1"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getContent1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    const-string v3, "content2"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getContent2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    const-string v3, "content3"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getContent3()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    const-string v3, "init_title1"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    const-string v3, "init_title2"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    const-string v3, "init_title3"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle3()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    const-string v3, "attachment_thumb_image"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getThumbImage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    const-string v3, "attachment_ori_image"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getOriImage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    const-string v3, "event_model_table"

    const-string v4, " event_id = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1261
    .local v1, "update":I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1262
    const-string v3, "updata_result"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1263
    int-to-long v4, v1

    monitor-exit p0

    return-wide v4

    .line 1243
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "update":I
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized updataUserMsg(Ljava/lang/String;Lcom/lzx/iteam/bean/ChatContact;)J
    .locals 7
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "chatContact"    # Lcom/lzx/iteam/bean/ChatContact;

    .prologue
    .line 1742
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v3}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1743
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1744
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "user_name"

    iget-object v4, p2, Lcom/lzx/iteam/bean/ChatContact;->userName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    const-string v3, "user_img"

    iget-object v4, p2, Lcom/lzx/iteam/bean/ChatContact;->userImg:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    const-string v3, "user_table"

    const-string v4, " user_id = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1747
    .local v1, "update":I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1748
    const-string v3, "User"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "--updata_result--"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1749
    int-to-long v4, v1

    monitor-exit p0

    return-wide v4

    .line 1742
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "update":I
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public updateChatGrupNameOrMembers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "chatGroupID"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "chatMembers"    # Ljava/lang/String;

    .prologue
    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 390
    .local v3, "values":Landroid/content/ContentValues;
    const/4 v2, 0x0

    .line 392
    .local v2, "update":I
    :try_start_0
    iget-object v6, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v6}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 393
    const-string v5, "chatgroup_id = ? "

    .line 394
    .local v5, "whereClause":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    .line 395
    .local v4, "whereArgs":[Ljava/lang/String;
    invoke-static {p2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 396
    const-string v6, "chatgroup_name"

    invoke-virtual {v3, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :goto_0
    const-string v6, "chatgroup_table"

    invoke-virtual {v0, v6, v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 404
    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 408
    .end local v4    # "whereArgs":[Ljava/lang/String;
    .end local v5    # "whereClause":Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v6, "updateChatGrupName"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "updateChatGrupName   "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return-void

    .line 398
    .restart local v4    # "whereArgs":[Ljava/lang/String;
    .restart local v5    # "whereClause":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v6, "member_count"

    invoke-virtual {v3, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 401
    .end local v4    # "whereArgs":[Ljava/lang/String;
    .end local v5    # "whereClause":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 402
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "updateChatGrupName"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 404
    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 403
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 404
    if-eqz v0, :cond_2

    .line 405
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 407
    :cond_2
    throw v6
.end method

.method public updateChatMessage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;Ljava/lang/String;)V
    .locals 6
    .param p1, "chatMsg"    # Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    .param p2, "chatGroupId"    # Ljava/lang/String;

    .prologue
    .line 507
    iget-object v4, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v4}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 508
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 509
    .local v1, "values":Landroid/content/ContentValues;
    const-string v4, "last_msg_name"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSenderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getMsgType()I

    move-result v4

    const/16 v5, 0x67

    if-ne v4, v5, :cond_0

    .line 511
    const-string v4, "last_msg_content"

    const-string v5, "[\u56fe\u7247]"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :goto_0
    const-string v4, "lastupdate_time"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSendTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v3, "chatgroup_id = ? "

    .line 528
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v2, v4

    .line 529
    .local v2, "whereArgs":[Ljava/lang/String;
    const-string v4, "chatgroup_table"

    invoke-virtual {v0, v4, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 530
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 531
    return-void

    .line 513
    .end local v2    # "whereArgs":[Ljava/lang/String;
    .end local v3    # "whereClause":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getMsgType()I

    move-result v4

    const/16 v5, 0x66

    if-ne v4, v5, :cond_1

    .line 514
    const-string v4, "last_msg_content"

    const-string v5, "[\u8bed\u97f3]"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 517
    :cond_1
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getMsgContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 518
    const-string v4, "last_msg_content"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 521
    :cond_2
    const-string v4, "last_msg_content"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getMsgContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateChatUnReadCount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "chatGroupID"    # Ljava/lang/String;
    .param p2, "unReadCount"    # Ljava/lang/String;

    .prologue
    .line 448
    iget-object v4, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v4}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 449
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 450
    .local v1, "values":Landroid/content/ContentValues;
    const-string v4, "unread_count"

    invoke-virtual {v1, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v3, "chatgroup_id = ? "

    .line 452
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    .line 453
    .local v2, "whereArgs":[Ljava/lang/String;
    const-string v4, "chatgroup_table"

    invoke-virtual {v0, v4, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 454
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 455
    return-void
.end method

.method public updateCloudGroupItem(Lcom/lzx/iteam/bean/CloudGroup;)J
    .locals 12
    .param p1, "item"    # Lcom/lzx/iteam/bean/CloudGroup;

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, 0x0

    .line 207
    .local v2, "flag":J
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 209
    .local v4, "values":Landroid/content/ContentValues;
    :try_start_0
    iget-object v5, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v5}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 210
    const-string v5, "group_name"

    iget-object v6, p1, Lcom/lzx/iteam/bean/CloudGroup;->groupName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v5, "group_type"

    iget v6, p1, Lcom/lzx/iteam/bean/CloudGroup;->groupType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 212
    const-string v5, "contact_id"

    iget-object v6, p1, Lcom/lzx/iteam/bean/CloudGroup;->contactId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v5, "contact_count"

    iget v6, p1, Lcom/lzx/iteam/bean/CloudGroup;->contactCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    const-string v5, "member_count"

    iget v6, p1, Lcom/lzx/iteam/bean/CloudGroup;->memberCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    const-string v5, "update_time"

    iget-wide v6, p1, Lcom/lzx/iteam/bean/CloudGroup;->updateTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 216
    const-string v5, "group_img"

    iget-object v6, p1, Lcom/lzx/iteam/bean/CloudGroup;->groupImg:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v5, "user_type"

    iget-object v6, p1, Lcom/lzx/iteam/bean/CloudGroup;->userType:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v5, "is_new"

    iget-object v6, p1, Lcom/lzx/iteam/bean/CloudGroup;->isNew:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v5, "has_tags"

    iget-object v6, p1, Lcom/lzx/iteam/bean/CloudGroup;->hasTags:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v5, "cloud_group"

    const-string v6, " group_id = ? "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    iget-wide v10, p1, Lcom/lzx/iteam/bean/CloudGroup;->groupId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    int-to-long v2, v5

    .line 225
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 227
    :goto_0
    return-wide v2

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 224
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 225
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 226
    throw v5
.end method

.method public updateCloudGrupName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "groupID"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 239
    .local v3, "values":Landroid/content/ContentValues;
    const/4 v2, 0x0

    .line 241
    .local v2, "update":I
    :try_start_0
    iget-object v6, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v6}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 242
    const-string v6, "group_name"

    invoke-virtual {v3, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v5, "group_id = ? "

    .line 244
    .local v5, "whereClause":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    .line 245
    .local v4, "whereArgs":[Ljava/lang/String;
    const-string v6, "cloud_group"

    invoke-virtual {v0, v6, v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 250
    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 254
    .end local v4    # "whereArgs":[Ljava/lang/String;
    .end local v5    # "whereClause":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v6, "updateCloudGrupName"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "updateCloudGrupName   "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void

    .line 247
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "updateCloudGrupName"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 249
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 250
    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 253
    :cond_1
    throw v6
.end method

.method public declared-synchronized updateContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "job"    # Ljava/lang/String;
    .param p4, "groupName"    # Ljava/lang/String;
    .param p5, "contactName"    # Ljava/lang/String;
    .param p6, "groupId"    # Ljava/lang/String;

    .prologue
    .line 1636
    monitor-enter p0

    const/4 v0, 0x0

    .line 1637
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 1639
    .local v2, "update":I
    :try_start_0
    iget-object v4, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v4}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1640
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1644
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "contact_group"

    invoke-virtual {v3, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    const-string v4, "contact_name"

    invoke-virtual {v3, v4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    const-string v4, "contact_job"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    const-string v4, "contact_table"

    const-string v5, " contact_phone = ? and my_user_id = ? and contact_group_id = ? "

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    aput-object p6, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    .line 1652
    if-eqz v0, :cond_0

    .line 1653
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1656
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    const/4 v4, 0x1

    :goto_1
    monitor-exit p0

    return v4

    .line 1649
    :catch_0
    move-exception v1

    .line 1650
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "updateContact"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1652
    if-eqz v0, :cond_0

    .line 1653
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1636
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1651
    :catchall_1
    move-exception v4

    .line 1652
    if-eqz v0, :cond_1

    .line 1653
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1655
    :cond_1
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1656
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public declared-synchronized updateEventApplyCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "eventID"    # Ljava/lang/String;
    .param p2, "applyCount"    # Ljava/lang/String;
    .param p3, "hasJoin"    # Ljava/lang/String;

    .prologue
    .line 1496
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v5}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1497
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1498
    .local v2, "values":Landroid/content/ContentValues;
    const-string v5, "join_count"

    invoke-virtual {v2, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    const-string v5, "has_join"

    invoke-virtual {v2, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    const-string v4, "event_id = ? "

    .line 1501
    .local v4, "whereClause":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v3, v5

    .line 1502
    .local v3, "whereArgs":[Ljava/lang/String;
    const-string v5, "event_table"

    invoke-virtual {v0, v5, v2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1503
    .local v1, "update":I
    const-string v5, "activity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1505
    const/4 v5, 0x1

    sput-boolean v5, Lcom/lzx/iteam/EventsFragment;->isUpDate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1506
    monitor-exit p0

    return-void

    .line 1496
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "update":I
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "whereArgs":[Ljava/lang/String;
    .end local v4    # "whereClause":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized updateEventData(Ljava/lang/String;Lcom/lzx/iteam/bean/EventListData;)J
    .locals 9
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "eventListData"    # Lcom/lzx/iteam/bean/EventListData;

    .prologue
    .line 943
    monitor-enter p0

    const/4 v0, 0x0

    .line 944
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, 0x0

    .line 945
    .local v2, "flag":J
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 947
    .local v4, "values":Landroid/content/ContentValues;
    :try_start_1
    iget-object v5, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v5}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 948
    const-string v5, "event_id"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getEventId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    const-string v5, "update_time"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getUpdateTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    const-string v5, "event_type"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getEventType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    const-string v5, "event_name"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getEventName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    const-string v5, "user_type"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getUserType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    const-string v5, "has_read"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getHasRead()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    const-string v5, "create_time"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getCreateTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const-string v5, "user_id"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    const-string v5, "user_name"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getUserName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    const-string v5, "member_count"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getMemberCount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    const-string v5, "event_title"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getEventTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    const-string v5, "content1"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getContent1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    const-string v5, "content2"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getContent2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    const-string v5, "content3"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getContent3()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    const-string v5, "init_title1"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    const-string v5, "init_title2"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    const-string v5, "init_title3"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle3()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    const-string v5, "url1"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getUrl1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const-string v5, "url2"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getUrl2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    const-string v5, "url3"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getUrl3()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    const-string v5, "init_title2"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    const-string v5, "init_title3"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle3()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    const-string v5, "has_read_count"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getHasReadCount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    const-string v5, "reply_count"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getReplyCount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    const-string v5, "reply_last_name"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getReplyLastName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    const-string v5, "reply_last_content"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getReplyLastContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    const-string v5, "attachment_thumb_image"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getThumbImage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    const-string v5, "attachment_ori_image"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getOriImage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const-string v5, "author"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getAuthor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    const-string v5, "event_avatar"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getEventAvatar()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    const-string v5, "receiver"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getReceiver()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    const-string v5, "activity_time"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getActivityTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    const-string v5, "activity_site"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getActivitySite()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    const-string v5, "join_count"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getJoinCount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const-string v5, "has_join"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getHasJoin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    const-string v5, "votes"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/EventListData;->getVotes()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    const-string v5, "event_table"

    const-string v6, " event_id = ? "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    int-to-long v2, v5

    .line 988
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 990
    :goto_0
    sget-object v5, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "--update_result--"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 991
    monitor-exit p0

    return-wide v2

    .line 985
    :catch_0
    move-exception v1

    .line 986
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v5, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "update_error"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 988
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 943
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 987
    .restart local v4    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v5

    .line 988
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 989
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public updateEventNotNew(Ljava/lang/String;)V
    .locals 7
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 1044
    iget-object v4, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v4}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1045
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1046
    .local v1, "values":Landroid/content/ContentValues;
    const-string v4, "has_read"

    const-string v5, "1"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    const-string v3, "event_id = ? "

    .line 1048
    .local v3, "whereClause":Ljava/lang/String;
    new-array v2, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    .line 1049
    .local v2, "whereArgs":[Ljava/lang/String;
    const-string v4, "event_table"

    invoke-virtual {v0, v4, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1050
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1051
    sput-boolean v6, Lcom/lzx/iteam/EventsFragment;->isUpDate:Z

    .line 1052
    return-void
.end method

.method public updateEventReply(Lcom/lzx/iteam/bean/aidl/EventReplyNewData;Ljava/lang/String;)V
    .locals 7
    .param p1, "eventReply"    # Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    .param p2, "eventId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 1060
    iget-object v4, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v4}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1061
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1062
    .local v1, "values":Landroid/content/ContentValues;
    const-string v4, "reply_last_name"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    const-string v4, "reply_last_content"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    const-string v4, "update_time"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->getUpdateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    const-string v3, "event_id = ? "

    .line 1066
    .local v3, "whereClause":Ljava/lang/String;
    new-array v2, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v2, v4

    .line 1067
    .local v2, "whereArgs":[Ljava/lang/String;
    const-string v4, "event_table"

    invoke-virtual {v0, v4, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1068
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1069
    sput-boolean v6, Lcom/lzx/iteam/EventsFragment;->isUpDate:Z

    .line 1070
    return-void
.end method

.method public declared-synchronized updateEventUnReadCount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "eventID"    # Ljava/lang/String;
    .param p2, "unReadCount"    # Ljava/lang/String;

    .prologue
    .line 1480
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v4}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1481
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1482
    .local v1, "values":Landroid/content/ContentValues;
    const-string v4, "unread_count"

    invoke-virtual {v1, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    const-string v3, "event_id = ? "

    .line 1484
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    .line 1485
    .local v2, "whereArgs":[Ljava/lang/String;
    const-string v4, "event_table"

    invoke-virtual {v0, v4, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1486
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1487
    monitor-exit p0

    return-void

    .line 1480
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "values":Landroid/content/ContentValues;
    .end local v2    # "whereArgs":[Ljava/lang/String;
    .end local v3    # "whereClause":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized updateEventVote(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "eventID"    # Ljava/lang/String;
    .param p2, "vote"    # Ljava/lang/String;

    .prologue
    .line 1515
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v5}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1516
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1517
    .local v2, "values":Landroid/content/ContentValues;
    const-string v5, "votes"

    invoke-virtual {v2, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    const-string v4, "event_id = ? "

    .line 1519
    .local v4, "whereClause":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v3, v5

    .line 1520
    .local v3, "whereArgs":[Ljava/lang/String;
    const-string v5, "event_table"

    invoke-virtual {v0, v5, v2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1521
    .local v1, "update":I
    const-string v5, "activity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1523
    const/4 v5, 0x1

    sput-boolean v5, Lcom/lzx/iteam/EventsFragment;->isUpDate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1524
    monitor-exit p0

    return-void

    .line 1515
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "update":I
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "whereArgs":[Ljava/lang/String;
    .end local v4    # "whereClause":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized updateLastTimeOfChatGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "chatGroupID"    # Ljava/lang/String;
    .param p2, "lastUpdateTime"    # Ljava/lang/String;

    .prologue
    .line 372
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v4}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 373
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 374
    .local v1, "values":Landroid/content/ContentValues;
    const-string v4, "lastupdate_time"

    invoke-virtual {v1, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v3, "chatgroup_id = ?"

    .line 376
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    .line 377
    .local v2, "whereArgs":[Ljava/lang/String;
    const-string v4, "chatgroup_table"

    invoke-virtual {v0, v4, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 378
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    monitor-exit p0

    return-void

    .line 372
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "values":Landroid/content/ContentValues;
    .end local v2    # "whereArgs":[Ljava/lang/String;
    .end local v3    # "whereClause":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public updateState(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 8
    .param p1, "id"    # Ljava/lang/Integer;
    .param p2, "stateText"    # Ljava/lang/String;

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 97
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v3, p0, Lcom/lzx/iteam/provider/CloudDBOperation;->helper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v3}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 98
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 99
    .local v2, "v":Landroid/content/ContentValues;
    const-string v3, "state_text"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v3, "state_table"

    const-string v4, "state_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 101
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 100
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 111
    .end local v2    # "v":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    sget-object v3, Lcom/lzx/iteam/provider/CloudDBOperation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error update: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 106
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    .line 107
    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 110
    :cond_1
    throw v3
.end method
