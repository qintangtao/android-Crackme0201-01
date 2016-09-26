.class public Lcom/lzx/iteam/net/TalkListCenter;
.super Ljava/lang/Object;
.source "TalkListCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/net/TalkListCenter$TalkDataListener;
    }
.end annotation


# static fields
.field private static final MSG_TALK_GETLIST:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "get_talk_data"

.field private static sInstance:Lcom/lzx/iteam/net/TalkListCenter;


# instance fields
.field private isUpDate:Z

.field private mAction:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

.field private mHandler:Landroid/os/Handler;

.field private mHelper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

.field private mListener:Lcom/lzx/iteam/net/TalkListCenter$TalkDataListener;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mSetUserId:Ljava/lang/String;

.field private mTalkListData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/TalkListData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/net/TalkListCenter;->mTalkListData:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Lcom/lzx/iteam/net/TalkListCenter$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/net/TalkListCenter$1;-><init>(Lcom/lzx/iteam/net/TalkListCenter;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/TalkListCenter;->mHandler:Landroid/os/Handler;

    .line 123
    iput-object p1, p0, Lcom/lzx/iteam/net/TalkListCenter;->mContext:Landroid/content/Context;

    .line 124
    new-instance v0, Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    iget-object v1, p0, Lcom/lzx/iteam/net/TalkListCenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/TalkListCenter;->mHelper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    .line 125
    iget-object v0, p0, Lcom/lzx/iteam/net/TalkListCenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/net/TalkListCenter;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 126
    iget-object v0, p0, Lcom/lzx/iteam/net/TalkListCenter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/lzx/iteam/TalkListActivity;

    invoke-static {v0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/net/TalkListCenter;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    .line 128
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/net/TalkListCenter;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/lzx/iteam/net/TalkListCenter;->isUpDate:Z

    return v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/net/TalkListCenter;)Lcom/lzx/iteam/util/PreferenceUtil;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lzx/iteam/net/TalkListCenter;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/net/TalkListCenter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lzx/iteam/net/TalkListCenter;->mTalkListData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/net/TalkListCenter;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 1

    .prologue
    .line 454
    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/net/TalkListCenter;->updateCloudTalkData(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/net/TalkListCenter;)V
    .locals 0

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/lzx/iteam/net/TalkListCenter;->notifyCloudTalkUpdate()V

    return-void
.end method

.method static synthetic access$5(Lcom/lzx/iteam/net/TalkListCenter;)Lcom/lzx/iteam/net/TalkListCenter$TalkDataListener;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lzx/iteam/net/TalkListCenter;->mListener:Lcom/lzx/iteam/net/TalkListCenter$TalkDataListener;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/net/TalkListCenter;)V
    .locals 0

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/lzx/iteam/net/TalkListCenter;->notifyAddTalkList()V

    return-void
.end method

.method static synthetic access$7(Lcom/lzx/iteam/net/TalkListCenter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lzx/iteam/net/TalkListCenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lzx/iteam/net/TalkListCenter;)Lcom/lzx/iteam/util/AllDialogUtil;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lzx/iteam/net/TalkListCenter;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    return-object v0
.end method

.method private deleteCloudTalkData(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/TalkListData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p1, "talkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/TalkListData;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 356
    :cond_0
    const-string v1, "get_talk_data"

    const-string v2, "deleteCloudGroupItem with null group list."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 372
    return-void

    .line 368
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/TalkListData;

    iget-object v1, v1, Lcom/lzx/iteam/bean/TalkListData;->talkId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/net/TalkListCenter;->deleteTalkById(Ljava/lang/String;)I

    .line 369
    const-string v2, "get_talk_data"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "--delete_ talk Id--"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/TalkListData;

    iget-object v1, v1, Lcom/lzx/iteam/bean/TalkListData;->talkId:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getCircleTalkData(I)V
    .locals 6
    .param p1, "pageIndex"    # I

    .prologue
    .line 375
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 377
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    iget-boolean v2, p0, Lcom/lzx/iteam/net/TalkListCenter;->isUpDate:Z

    if-eqz v2, :cond_0

    .line 379
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pagesize"

    new-instance v4, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, p1, 0xa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pageindex"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    :goto_0
    new-instance v0, Lcom/lzx/iteam/net/GetTalkListMsg;

    iget-object v2, p0, Lcom/lzx/iteam/net/TalkListCenter;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/net/TalkListCenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v3}, Lcom/lzx/iteam/net/GetTalkListMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 386
    .local v0, "message":Lcom/lzx/iteam/net/GetTalkListMsg;
    const-string v2, "/api/talk/list"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetTalkListMsg;->mApi:Ljava/lang/String;

    .line 387
    iput-object v1, v0, Lcom/lzx/iteam/net/GetTalkListMsg;->mParams:Ljava/util/List;

    .line 388
    iget-object v2, p0, Lcom/lzx/iteam/net/TalkListCenter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execTalkHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 389
    return-void

    .line 382
    .end local v0    # "message":Lcom/lzx/iteam/net/GetTalkListMsg;
    :cond_0
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pagesize"

    const-string v4, "10"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pageindex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/TalkListCenter;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 131
    sget-object v0, Lcom/lzx/iteam/net/TalkListCenter;->sInstance:Lcom/lzx/iteam/net/TalkListCenter;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/lzx/iteam/net/TalkListCenter;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/net/TalkListCenter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lzx/iteam/net/TalkListCenter;->sInstance:Lcom/lzx/iteam/net/TalkListCenter;

    .line 134
    :cond_0
    sget-object v0, Lcom/lzx/iteam/net/TalkListCenter;->sInstance:Lcom/lzx/iteam/net/TalkListCenter;

    return-object v0
.end method

.method private getLocalTalkData()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/TalkListData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v10, "localData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/TalkListData;>;"
    const/4 v0, 0x0

    .line 184
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 186
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/lzx/iteam/net/TalkListCenter;->mHelper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v1}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 187
    const-string v1, "talk_table"

    const/4 v2, 0x0

    const-string v3, "talk_action = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lzx/iteam/net/TalkListCenter;->mAction:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "talk_create_time desc"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 188
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 209
    if-eqz v8, :cond_0

    .line 210
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 212
    :cond_0
    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 216
    :cond_1
    :goto_1
    return-object v10

    .line 189
    :cond_2
    :try_start_1
    new-instance v11, Lcom/lzx/iteam/bean/TalkListData;

    invoke-direct {v11}, Lcom/lzx/iteam/bean/TalkListData;-><init>()V

    .line 190
    .local v11, "talkListData":Lcom/lzx/iteam/bean/TalkListData;
    const-string v1, "talk_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/lzx/iteam/bean/TalkListData;->talkId:Ljava/lang/String;

    .line 191
    const-string v1, "user_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/lzx/iteam/bean/TalkListData;->uId:Ljava/lang/String;

    .line 192
    const-string v1, "user_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/lzx/iteam/bean/TalkListData;->uName:Ljava/lang/String;

    .line 193
    const-string v1, "user_img"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/lzx/iteam/bean/TalkListData;->uImage:Ljava/lang/String;

    .line 194
    const-string v1, "talk_text"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/lzx/iteam/bean/TalkListData;->text:Ljava/lang/String;

    .line 195
    const-string v1, "talk_content_type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/lzx/iteam/bean/TalkListData;->contentType:Ljava/lang/String;

    .line 196
    const-string v1, "talk_content_key"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/lzx/iteam/bean/TalkListData;->contentKey:Ljava/lang/String;

    .line 197
    const-string v1, "talk_thumb_image"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/lzx/iteam/bean/TalkListData;->thumbImage:Ljava/lang/String;

    .line 198
    const-string v1, "talk_ori_image"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/lzx/iteam/bean/TalkListData;->oriImage:Ljava/lang/String;

    .line 199
    const-string v1, "talk_update_time"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/lzx/iteam/bean/TalkListData;->updateTime:Ljava/lang/String;

    .line 200
    const-string v1, "talk_create_time"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/lzx/iteam/bean/TalkListData;->createTime:Ljava/lang/String;

    .line 201
    const-string v1, "talk_isPraise"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/lzx/iteam/bean/TalkListData;->isPraise:Ljava/lang/String;

    .line 202
    const-string v1, "talk_comments_list"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->objectWithString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v11, Lcom/lzx/iteam/bean/TalkListData;->comments:Ljava/util/ArrayList;

    .line 203
    const-string v1, "talk_praises_list"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->objectWithString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v11, Lcom/lzx/iteam/bean/TalkListData;->praises:Ljava/util/ArrayList;

    .line 204
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 206
    .end local v11    # "talkListData":Lcom/lzx/iteam/bean/TalkListData;
    :catch_0
    move-exception v9

    .line 207
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "get_talk_data"

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

    .line 209
    if-eqz v8, :cond_3

    .line 210
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 212
    :cond_3
    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_1

    .line 208
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 209
    if-eqz v8, :cond_4

    .line 210
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 212
    :cond_4
    if-eqz v0, :cond_5

    .line 213
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 215
    :cond_5
    throw v1
.end method

.method private getMyTalkList(I)V
    .locals 6
    .param p1, "pageIndex"    # I

    .prologue
    .line 393
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 395
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    sget-object v2, Lcom/lzx/iteam/TalkListActivity;->OTHER_PERSONAL_SPACE:Ljava/lang/String;

    iget-object v3, p0, Lcom/lzx/iteam/net/TalkListCenter;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "set_user_id"

    iget-object v4, p0, Lcom/lzx/iteam/net/TalkListCenter;->mSetUserId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_0
    iget-boolean v2, p0, Lcom/lzx/iteam/net/TalkListCenter;->isUpDate:Z

    if-eqz v2, :cond_1

    .line 400
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pagesize"

    new-instance v4, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, p1, 0xa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pageindex"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    :goto_0
    new-instance v0, Lcom/lzx/iteam/net/GetTalkListMsg;

    iget-object v2, p0, Lcom/lzx/iteam/net/TalkListCenter;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/net/TalkListCenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v3}, Lcom/lzx/iteam/net/GetTalkListMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 407
    .local v0, "message":Lcom/lzx/iteam/net/GetTalkListMsg;
    const-string v2, "/api/talk/self"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetTalkListMsg;->mApi:Ljava/lang/String;

    .line 408
    iput-object v1, v0, Lcom/lzx/iteam/net/GetTalkListMsg;->mParams:Ljava/util/List;

    .line 409
    iget-object v2, p0, Lcom/lzx/iteam/net/TalkListCenter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execTalkHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 410
    return-void

    .line 403
    .end local v0    # "message":Lcom/lzx/iteam/net/GetTalkListMsg;
    :cond_1
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pagesize"

    const-string v4, "10"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pageindex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private notifyAddTalkList()V
    .locals 2

    .prologue
    .line 506
    invoke-direct {p0}, Lcom/lzx/iteam/net/TalkListCenter;->getLocalTalkData()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/net/TalkListCenter;->mTalkListData:Ljava/util/ArrayList;

    .line 507
    iget-object v0, p0, Lcom/lzx/iteam/net/TalkListCenter;->mListener:Lcom/lzx/iteam/net/TalkListCenter$TalkDataListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/net/TalkListCenter;->mListener:Lcom/lzx/iteam/net/TalkListCenter$TalkDataListener;

    iget-object v1, p0, Lcom/lzx/iteam/net/TalkListCenter;->mTalkListData:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/lzx/iteam/net/TalkListCenter$TalkDataListener;->onAddMore(Ljava/util/ArrayList;)V

    .line 508
    :cond_0
    return-void
.end method

.method private notifyCloudTalkUpdate()V
    .locals 2

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/lzx/iteam/net/TalkListCenter;->getLocalTalkData()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/net/TalkListCenter;->mTalkListData:Ljava/util/ArrayList;

    .line 502
    iget-object v0, p0, Lcom/lzx/iteam/net/TalkListCenter;->mListener:Lcom/lzx/iteam/net/TalkListCenter$TalkDataListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/net/TalkListCenter;->mListener:Lcom/lzx/iteam/net/TalkListCenter$TalkDataListener;

    iget-object v1, p0, Lcom/lzx/iteam/net/TalkListCenter;->mTalkListData:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/lzx/iteam/net/TalkListCenter$TalkDataListener;->onChange(Ljava/util/ArrayList;)V

    .line 503
    :cond_0
    return-void
.end method

.method private removeTalkById(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/lzx/iteam/bean/TalkListData;
    .locals 2
    .param p1, "talkId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/TalkListData;",
            ">;)",
            "Lcom/lzx/iteam/bean/TalkListData;"
        }
    .end annotation

    .prologue
    .line 492
    .local p2, "localTalkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/TalkListData;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 497
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 493
    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/TalkListData;

    iget-object v1, v1, Lcom/lzx/iteam/bean/TalkListData;->talkId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 494
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/TalkListData;

    goto :goto_1

    .line 492
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateCloudTalkData(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/TalkListData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/TalkListData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 455
    .local p1, "localTalkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/TalkListData;>;"
    .local p2, "cloudTalkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/TalkListData;>;"
    const/4 v4, 0x0

    .line 458
    .local v4, "needUpdate":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 459
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v1, v6, :cond_0

    move v5, v4

    .line 487
    .end local v1    # "i":I
    .end local v4    # "needUpdate":Z
    .local v5, "needUpdate":Z
    :goto_1
    return v5

    .line 460
    .end local v5    # "needUpdate":Z
    .restart local v1    # "i":I
    .restart local v4    # "needUpdate":Z
    :cond_0
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lzx/iteam/bean/TalkListData;

    invoke-virtual {p0, v6}, Lcom/lzx/iteam/net/TalkListCenter;->insertTalkData(Lcom/lzx/iteam/bean/TalkListData;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_2
    or-int/2addr v4, v6

    .line 459
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 460
    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    .line 465
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 466
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lzx/iteam/bean/TalkListData;>;"
    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 483
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 484
    invoke-direct {p0, p1}, Lcom/lzx/iteam/net/TalkListCenter;->deleteCloudTalkData(Ljava/util/ArrayList;)V

    .line 485
    const/4 v4, 0x1

    :cond_4
    move v5, v4

    .line 487
    .end local v4    # "needUpdate":Z
    .restart local v5    # "needUpdate":Z
    goto :goto_1

    .line 467
    .end local v5    # "needUpdate":Z
    .restart local v4    # "needUpdate":Z
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/TalkListData;

    .line 468
    .local v0, "cloudItem":Lcom/lzx/iteam/bean/TalkListData;
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 470
    iget-object v6, v0, Lcom/lzx/iteam/bean/TalkListData;->talkId:Ljava/lang/String;

    invoke-direct {p0, v6, p1}, Lcom/lzx/iteam/net/TalkListCenter;->removeTalkById(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/lzx/iteam/bean/TalkListData;

    move-result-object v3

    .line 472
    .local v3, "localItem":Lcom/lzx/iteam/bean/TalkListData;
    if-nez v3, :cond_7

    .line 473
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/net/TalkListCenter;->insertTalkData(Lcom/lzx/iteam/bean/TalkListData;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    :goto_4
    or-int/2addr v4, v6

    .line 474
    goto :goto_3

    .line 473
    :cond_6
    const/4 v6, 0x0

    goto :goto_4

    .line 477
    :cond_7
    iget-object v6, v0, Lcom/lzx/iteam/bean/TalkListData;->updateTime:Ljava/lang/String;

    iget-object v7, v3, Lcom/lzx/iteam/bean/TalkListData;->updateTime:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 478
    iget-object v6, v0, Lcom/lzx/iteam/bean/TalkListData;->talkId:Ljava/lang/String;

    invoke-virtual {p0, v6, v0}, Lcom/lzx/iteam/net/TalkListCenter;->updateCloudTalkData(Ljava/lang/String;Lcom/lzx/iteam/bean/TalkListData;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    :goto_5
    or-int/2addr v4, v6

    goto :goto_3

    :cond_8
    const/4 v6, 0x0

    goto :goto_5
.end method


# virtual methods
.method public declared-synchronized deleteAllTalk(Ljava/lang/String;)Z
    .locals 9
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 338
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/lzx/iteam/net/TalkListCenter;->mHelper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v5}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 339
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 341
    .local v2, "result":I
    :try_start_1
    const-string v5, "talk_table"

    const-string v6, "talk_action = ? "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 342
    const-string v5, "get_talk_data"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "delete"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 347
    if-eqz v0, :cond_0

    .line 348
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 351
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    :goto_1
    monitor-exit p0

    return v3

    .line 344
    :catch_0
    move-exception v1

    .line 345
    .local v1, "e":Landroid/database/SQLException;
    :try_start_3
    const-string v5, "get_talk_data"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " error deleteAllTalk"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 347
    if-eqz v0, :cond_0

    .line 348
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 338
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "e":Landroid/database/SQLException;
    .end local v2    # "result":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 346
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "result":I
    :catchall_1
    move-exception v3

    .line 347
    if-eqz v0, :cond_1

    .line 348
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 350
    :cond_1
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_2
    move v3, v4

    .line 351
    goto :goto_1
.end method

.method public deleteTalkById(Ljava/lang/String;)I
    .locals 7
    .param p1, "talkId"    # Ljava/lang/String;

    .prologue
    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 319
    .local v1, "delete":I
    :try_start_0
    iget-object v3, p0, Lcom/lzx/iteam/net/TalkListCenter;->mHelper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v3}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 320
    const-string v3, "talk_table"

    const-string v4, " talk_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 324
    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 328
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

    .line 329
    return v1

    .line 321
    :catch_0
    move-exception v2

    .line 322
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v3, "get_talk_data"

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

    .line 324
    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 323
    .end local v2    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    .line 324
    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 327
    :cond_1
    throw v3
.end method

.method public getTalkCount(Ljava/lang/String;)I
    .locals 8
    .param p1, "talkId"    # Ljava/lang/String;

    .prologue
    .line 420
    const/4 v2, 0x0

    .line 421
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 422
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 424
    .local v0, "count":I
    :try_start_0
    iget-object v5, p0, Lcom/lzx/iteam/net/TalkListCenter;->mHelper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v5}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 425
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/lzx/iteam/net/TalkListCenter;->mAction:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 426
    .local v4, "whereArgs":[Ljava/lang/String;
    const-string v5, "select count(*) from talk_table where talk_id = ? and talk_action = ?"

    invoke-virtual {v2, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 427
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 428
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 433
    if-eqz v1, :cond_0

    .line 434
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 436
    :cond_0
    if-eqz v2, :cond_1

    .line 437
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 440
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :cond_1
    :goto_0
    return v0

    .line 429
    :catch_0
    move-exception v3

    .line 431
    .local v3, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v5, "get_talk_data"

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

    .line 433
    if-eqz v1, :cond_2

    .line 434
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 436
    :cond_2
    if-eqz v2, :cond_1

    .line 437
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 432
    .end local v3    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    .line 433
    if-eqz v1, :cond_3

    .line 434
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 436
    :cond_3
    if-eqz v2, :cond_4

    .line 437
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 439
    :cond_4
    throw v5
.end method

.method public getTalkData(IZLjava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "pageIndex"    # I
    .param p2, "update"    # Z
    .param p3, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/TalkListData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iput-boolean p2, p0, Lcom/lzx/iteam/net/TalkListCenter;->isUpDate:Z

    .line 157
    iput-object p3, p0, Lcom/lzx/iteam/net/TalkListCenter;->mAction:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/lzx/iteam/net/TalkListCenter;->mTalkListData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 159
    invoke-direct {p0}, Lcom/lzx/iteam/net/TalkListCenter;->getLocalTalkData()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/net/TalkListCenter;->mTalkListData:Ljava/util/ArrayList;

    .line 173
    sget-object v0, Lcom/lzx/iteam/TalkListActivity;->CONTACTS_CIRCLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/lzx/iteam/net/TalkListCenter;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    invoke-direct {p0, p1}, Lcom/lzx/iteam/net/TalkListCenter;->getCircleTalkData(I)V

    .line 178
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lzx/iteam/net/TalkListCenter;->mTalkListData:Ljava/util/ArrayList;

    return-object v0

    .line 175
    :cond_1
    sget-object v0, Lcom/lzx/iteam/TalkListActivity;->MY_PERSONAL_SPACE:Ljava/lang/String;

    iget-object v1, p0, Lcom/lzx/iteam/net/TalkListCenter;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/lzx/iteam/TalkListActivity;->OTHER_PERSONAL_SPACE:Ljava/lang/String;

    iget-object v1, p0, Lcom/lzx/iteam/net/TalkListCenter;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    :cond_2
    invoke-direct {p0, p1}, Lcom/lzx/iteam/net/TalkListCenter;->getMyTalkList(I)V

    goto :goto_0
.end method

.method public declared-synchronized insertTalkData(Lcom/lzx/iteam/bean/TalkListData;)J
    .locals 8
    .param p1, "talkListData"    # Lcom/lzx/iteam/bean/TalkListData;

    .prologue
    .line 221
    monitor-enter p0

    const/4 v0, 0x0

    .line 222
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, 0x0

    .line 223
    .local v2, "flag":J
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    .local v4, "values":Landroid/content/ContentValues;
    :try_start_1
    iget-object v5, p1, Lcom/lzx/iteam/bean/TalkListData;->talkId:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/lzx/iteam/net/TalkListCenter;->getTalkCount(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 226
    iget-object v5, p0, Lcom/lzx/iteam/net/TalkListCenter;->mHelper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v5}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 227
    const-string v5, "talk_id"

    iget-object v6, p1, Lcom/lzx/iteam/bean/TalkListData;->talkId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v5, "user_id"

    iget-object v6, p1, Lcom/lzx/iteam/bean/TalkListData;->uId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v5, "user_name"

    iget-object v6, p1, Lcom/lzx/iteam/bean/TalkListData;->uName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v5, "user_img"

    iget-object v6, p1, Lcom/lzx/iteam/bean/TalkListData;->uImage:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v5, "talk_text"

    iget-object v6, p1, Lcom/lzx/iteam/bean/TalkListData;->text:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v5, "talk_thumb_image"

    iget-object v6, p1, Lcom/lzx/iteam/bean/TalkListData;->thumbImage:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v5, "talk_ori_image"

    iget-object v6, p1, Lcom/lzx/iteam/bean/TalkListData;->oriImage:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v5, "talk_update_time"

    iget-object v6, p1, Lcom/lzx/iteam/bean/TalkListData;->updateTime:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v5, "talk_create_time"

    iget-object v6, p1, Lcom/lzx/iteam/bean/TalkListData;->createTime:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v5, "talk_comments"

    iget-object v6, p1, Lcom/lzx/iteam/bean/TalkListData;->talkComments:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v5, "talk_content_type"

    iget-object v6, p1, Lcom/lzx/iteam/bean/TalkListData;->contentType:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v5, "talk_content_key"

    iget-object v6, p1, Lcom/lzx/iteam/bean/TalkListData;->contentKey:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v5, "talk_isPraise"

    iget-object v6, p1, Lcom/lzx/iteam/bean/TalkListData;->isPraise:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v5, "talk_comments_list"

    iget-object v6, p1, Lcom/lzx/iteam/bean/TalkListData;->comments:Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/lzx/iteam/util/StringUtil;->stringWithObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v5, "talk_praises_list"

    iget-object v6, p1, Lcom/lzx/iteam/bean/TalkListData;->praises:Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/lzx/iteam/util/StringUtil;->stringWithObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v5, "talk_action"

    iget-object v6, p0, Lcom/lzx/iteam/net/TalkListCenter;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v5, "talk_table"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 248
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 250
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

    .line 251
    monitor-exit p0

    return-wide v2

    .line 245
    :catch_0
    move-exception v1

    .line 246
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "get_talk_data"

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

    .line 248
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 221
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 247
    .restart local v4    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v5

    .line 248
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 249
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setUpdateTalkListener(Lcom/lzx/iteam/net/TalkListCenter$TalkDataListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lzx/iteam/net/TalkListCenter$TalkDataListener;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/lzx/iteam/net/TalkListCenter;->mListener:Lcom/lzx/iteam/net/TalkListCenter$TalkDataListener;

    .line 153
    return-void
.end method

.method public setUsetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/lzx/iteam/net/TalkListCenter;->mSetUserId:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public declared-synchronized upDateCloudTalkData(ZLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)J
    .locals 9
    .param p1, "action"    # Z
    .param p2, "praise"    # Ljava/lang/String;
    .param p4, "talkId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .line 262
    .local p3, "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/lzx/iteam/net/TalkListCenter;->mHelper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v6}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 263
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, 0x0

    .line 264
    .local v2, "flag":J
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 265
    .local v1, "values":Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    .line 266
    const-string v6, "talk_isPraise"

    invoke-virtual {v1, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v6, "talk_praises_list"

    invoke-static {p3}, Lcom/lzx/iteam/util/StringUtil;->stringWithObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :goto_0
    const-string v5, "talk_id = ? "

    .line 272
    .local v5, "whereClause":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p4, v4, v6

    .line 273
    .local v4, "whereArgs":[Ljava/lang/String;
    const-string v6, "talk_table"

    invoke-virtual {v0, v6, v1, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    int-to-long v2, v6

    .line 274
    const-string v6, "upda_tatalk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u4fee\u6539\u7ed3\u679c"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "talk_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    monitor-exit p0

    return-wide v2

    .line 269
    .end local v4    # "whereArgs":[Ljava/lang/String;
    .end local v5    # "whereClause":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v6, "talk_comments_list"

    invoke-static {p3}, Lcom/lzx/iteam/util/StringUtil;->stringWithObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 262
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "values":Landroid/content/ContentValues;
    .end local v2    # "flag":J
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized updateCloudTalkData(Ljava/lang/String;Lcom/lzx/iteam/bean/TalkListData;)J
    .locals 9
    .param p1, "talkId"    # Ljava/lang/String;
    .param p2, "talkListData"    # Lcom/lzx/iteam/bean/TalkListData;

    .prologue
    .line 279
    monitor-enter p0

    const/4 v0, 0x0

    .line 280
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, 0x0

    .line 281
    .local v2, "flag":J
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    .local v4, "values":Landroid/content/ContentValues;
    :try_start_1
    iget-object v5, p0, Lcom/lzx/iteam/net/TalkListCenter;->mHelper:Lcom/lzx/iteam/provider/CloudContactsDBHelper;

    invoke-virtual {v5}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 284
    const-string v5, "talk_id"

    iget-object v6, p2, Lcom/lzx/iteam/bean/TalkListData;->talkId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v5, "user_id"

    iget-object v6, p2, Lcom/lzx/iteam/bean/TalkListData;->uId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v5, "user_name"

    iget-object v6, p2, Lcom/lzx/iteam/bean/TalkListData;->uName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v5, "user_img"

    iget-object v6, p2, Lcom/lzx/iteam/bean/TalkListData;->uImage:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v5, "talk_text"

    iget-object v6, p2, Lcom/lzx/iteam/bean/TalkListData;->text:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v5, "talk_thumb_image"

    iget-object v6, p2, Lcom/lzx/iteam/bean/TalkListData;->thumbImage:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v5, "talk_ori_image"

    iget-object v6, p2, Lcom/lzx/iteam/bean/TalkListData;->oriImage:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v5, "talk_update_time"

    iget-object v6, p2, Lcom/lzx/iteam/bean/TalkListData;->updateTime:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v5, "talk_create_time"

    iget-object v6, p2, Lcom/lzx/iteam/bean/TalkListData;->createTime:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v5, "talk_comments"

    iget-object v6, p2, Lcom/lzx/iteam/bean/TalkListData;->talkComments:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v5, "talk_content_type"

    iget-object v6, p2, Lcom/lzx/iteam/bean/TalkListData;->contentType:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v5, "talk_content_key"

    iget-object v6, p2, Lcom/lzx/iteam/bean/TalkListData;->contentKey:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v5, "talk_isPraise"

    iget-object v6, p2, Lcom/lzx/iteam/bean/TalkListData;->isPraise:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v5, "talk_comments_list"

    iget-object v6, p2, Lcom/lzx/iteam/bean/TalkListData;->comments:Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/lzx/iteam/util/StringUtil;->stringWithObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v5, "talk_praises_list"

    iget-object v6, p2, Lcom/lzx/iteam/bean/TalkListData;->praises:Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/lzx/iteam/util/StringUtil;->stringWithObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v5, "talk_table"

    const-string v6, " talk_id = ? "

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

    .line 303
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 305
    :goto_0
    const-string v5, "get_talk_data"

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

    .line 306
    monitor-exit p0

    return-wide v2

    .line 300
    :catch_0
    move-exception v1

    .line 301
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "get_talk_data"

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

    .line 303
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 279
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 302
    .restart local v4    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v5

    .line 303
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 304
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
