.class public Lcom/lzx/iteam/net/CloudGroupListCenter;
.super Ljava/lang/Object;
.source "CloudGroupListCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/net/CloudGroupListCenter$CloudGroupDataListener;
    }
.end annotation


# static fields
.field private static final MSG_GROUP_GETLIST:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "GetGroupsListMessage"

.field private static sInstance:Lcom/lzx/iteam/net/CloudGroupListCenter;


# instance fields
.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/lzx/iteam/net/CloudGroupListCenter$CloudGroupDataListener;

.field private mLocalGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/CloudGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalLogin:Lcom/lzx/iteam/net/LocalLogin;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/net/CloudGroupListCenter;->mLocalGroupList:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Lcom/lzx/iteam/net/CloudGroupListCenter$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/net/CloudGroupListCenter$1;-><init>(Lcom/lzx/iteam/net/CloudGroupListCenter;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/CloudGroupListCenter;->mHandler:Landroid/os/Handler;

    .line 95
    iput-object p1, p0, Lcom/lzx/iteam/net/CloudGroupListCenter;->mContext:Landroid/content/Context;

    .line 96
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/net/CloudGroupListCenter;->mLocalLogin:Lcom/lzx/iteam/net/LocalLogin;

    .line 97
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-direct {v0, p1}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/CloudGroupListCenter;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 98
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/net/CloudGroupListCenter;)Lcom/lzx/iteam/net/CloudGroupListCenter$CloudGroupDataListener;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lzx/iteam/net/CloudGroupListCenter;->mListener:Lcom/lzx/iteam/net/CloudGroupListCenter$CloudGroupDataListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/net/CloudGroupListCenter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lzx/iteam/net/CloudGroupListCenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private deleteCloudGroupItem(Ljava/util/ArrayList;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/CloudGroup;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudGroup;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 186
    :cond_0
    const-string v1, "GetGroupsListMessage"

    const-string v2, "deleteCloudGroupItem with null group list."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v1, 0x0

    .line 202
    :goto_0
    return v1

    .line 199
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 202
    const/4 v1, 0x1

    goto :goto_0

    .line 200
    :cond_2
    iget-object v2, p0, Lcom/lzx/iteam/net/CloudGroupListCenter;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/CloudGroup;

    iget-wide v4, v1, Lcom/lzx/iteam/bean/CloudGroup;->groupId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;->deleteGroupByGroupId(Ljava/lang/String;)I

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/CloudGroupListCenter;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 101
    sget-object v0, Lcom/lzx/iteam/net/CloudGroupListCenter;->sInstance:Lcom/lzx/iteam/net/CloudGroupListCenter;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/lzx/iteam/net/CloudGroupListCenter;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/net/CloudGroupListCenter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lzx/iteam/net/CloudGroupListCenter;->sInstance:Lcom/lzx/iteam/net/CloudGroupListCenter;

    .line 104
    :cond_0
    sget-object v0, Lcom/lzx/iteam/net/CloudGroupListCenter;->sInstance:Lcom/lzx/iteam/net/CloudGroupListCenter;

    return-object v0
.end method

.method public static isT9Key(Ljava/lang/String;)Z
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 308
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 317
    :cond_0
    :goto_0
    return v2

    .line 310
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 311
    .local v0, "c":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-lt v1, v3, :cond_2

    .line 317
    const/4 v2, 0x0

    goto :goto_0

    .line 312
    :cond_2
    aget-char v3, v0, v1

    const/16 v4, 0x39

    if-gt v3, v4, :cond_3

    aget-char v3, v0, v1

    const/16 v4, 0x30

    if-ge v3, v4, :cond_0

    .line 311
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private removeGroupById(JLjava/util/ArrayList;)Lcom/lzx/iteam/bean/CloudGroup;
    .locals 5
    .param p1, "gid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/CloudGroup;",
            ">;)",
            "Lcom/lzx/iteam/bean/CloudGroup;"
        }
    .end annotation

    .prologue
    .line 269
    .local p3, "cloudGroupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudGroup;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 274
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 270
    :cond_0
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/CloudGroup;

    iget-wide v2, v1, Lcom/lzx/iteam/bean/CloudGroup;->groupId:J

    cmp-long v1, v2, p1

    if-nez v1, :cond_1

    .line 271
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/CloudGroup;

    goto :goto_1

    .line 269
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static searchReplace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 321
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, ""

    .line 327
    :cond_0
    :goto_0
    return-object p0

    .line 323
    :cond_1
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static startActivitySafe(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 332
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 335
    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 336
    const/4 v1, 0x1

    .line 334
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private updateCloudGroupData(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/CloudGroup;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/CloudGroup;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "localGroupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudGroup;>;"
    .local p2, "cloudGroupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudGroup;>;"
    const/4 v4, 0x0

    .line 151
    .local v4, "needUpdate":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 152
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v1, v6, :cond_0

    move v5, v4

    .line 181
    .end local v1    # "i":I
    .end local v4    # "needUpdate":Z
    .local v5, "needUpdate":Z
    :goto_1
    return v5

    .line 153
    .end local v5    # "needUpdate":Z
    .restart local v1    # "i":I
    .restart local v4    # "needUpdate":Z
    :cond_0
    iget-object v7, p0, Lcom/lzx/iteam/net/CloudGroupListCenter;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lzx/iteam/bean/CloudGroup;

    invoke-virtual {v7, v6}, Lcom/lzx/iteam/provider/CloudDBOperation;->insertCloudGroup(Lcom/lzx/iteam/bean/CloudGroup;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_2
    or-int/2addr v4, v6

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    .line 158
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 159
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lzx/iteam/bean/CloudGroup;>;"
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 177
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 178
    invoke-direct {p0, p1}, Lcom/lzx/iteam/net/CloudGroupListCenter;->deleteCloudGroupItem(Ljava/util/ArrayList;)I

    move-result v6

    if-lez v6, :cond_8

    const/4 v6, 0x1

    :goto_4
    or-int/2addr v4, v6

    :cond_3
    move v5, v4

    .line 181
    .end local v4    # "needUpdate":Z
    .restart local v5    # "needUpdate":Z
    goto :goto_1

    .line 160
    .end local v5    # "needUpdate":Z
    .restart local v4    # "needUpdate":Z
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/CloudGroup;

    .line 161
    .local v0, "cloudItem":Lcom/lzx/iteam/bean/CloudGroup;
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 163
    iget-wide v6, v0, Lcom/lzx/iteam/bean/CloudGroup;->groupId:J

    invoke-direct {p0, v6, v7, p1}, Lcom/lzx/iteam/net/CloudGroupListCenter;->removeGroupById(JLjava/util/ArrayList;)Lcom/lzx/iteam/bean/CloudGroup;

    move-result-object v3

    .line 165
    .local v3, "localItem":Lcom/lzx/iteam/bean/CloudGroup;
    if-nez v3, :cond_6

    .line 166
    iget-object v6, p0, Lcom/lzx/iteam/net/CloudGroupListCenter;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-virtual {v6, v0}, Lcom/lzx/iteam/provider/CloudDBOperation;->insertCloudGroup(Lcom/lzx/iteam/bean/CloudGroup;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    :goto_5
    or-int/2addr v4, v6

    .line 167
    goto :goto_3

    .line 166
    :cond_5
    const/4 v6, 0x0

    goto :goto_5

    .line 172
    :cond_6
    iget-object v6, p0, Lcom/lzx/iteam/net/CloudGroupListCenter;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-virtual {v6, v0}, Lcom/lzx/iteam/provider/CloudDBOperation;->updateCloudGroupItem(Lcom/lzx/iteam/bean/CloudGroup;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_7

    const/4 v6, 0x1

    :goto_6
    or-int/2addr v4, v6

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    goto :goto_6

    .line 178
    .end local v0    # "cloudItem":Lcom/lzx/iteam/bean/CloudGroup;
    .end local v3    # "localItem":Lcom/lzx/iteam/bean/CloudGroup;
    :cond_8
    const/4 v6, 0x0

    goto :goto_4
.end method


# virtual methods
.method public eraseGroupData()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/lzx/iteam/net/CloudGroupListCenter;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-virtual {v0}, Lcom/lzx/iteam/provider/CloudDBOperation;->deleteAllGroup()Z

    .line 224
    return-void
.end method

.method public getCloudGroupList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/CloudGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lcom/lzx/iteam/net/CloudGroupListCenter;->mLocalGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 300
    iget-object v0, p0, Lcom/lzx/iteam/net/CloudGroupListCenter;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-virtual {v0}, Lcom/lzx/iteam/provider/CloudDBOperation;->getLocalGroupList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/net/CloudGroupListCenter;->mLocalGroupList:Ljava/util/ArrayList;

    .line 301
    iget-object v0, p0, Lcom/lzx/iteam/net/CloudGroupListCenter;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/lzx/iteam/net/CloudGroupListCenter;->reqCloudGroupList(Landroid/content/Context;Landroid/os/Message;)V

    .line 302
    iget-object v0, p0, Lcom/lzx/iteam/net/CloudGroupListCenter;->mLocalGroupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public removeGroupListListener()V
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/net/CloudGroupListCenter;->mListener:Lcom/lzx/iteam/net/CloudGroupListCenter$CloudGroupDataListener;

    .line 294
    return-void
.end method

.method public reqCloudGroupList(Landroid/content/Context;Landroid/os/Message;)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/os/Message;

    .prologue
    .line 278
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v0, Lcom/lzx/iteam/net/GetGroupListMsg;

    invoke-direct {v0, p1, p2}, Lcom/lzx/iteam/net/GetGroupListMsg;-><init>(Landroid/content/Context;Landroid/os/Message;)V

    .line 283
    .local v0, "getGroup":Lcom/lzx/iteam/net/GetGroupListMsg;
    const-string v2, "/api/group/list"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->mApi:Ljava/lang/String;

    .line 284
    iput-object v1, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->mParams:Ljava/util/List;

    .line 285
    invoke-static {p1}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 286
    return-void
.end method

.method public setGroupListListener(Lcom/lzx/iteam/net/CloudGroupListCenter$CloudGroupDataListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lzx/iteam/net/CloudGroupListCenter$CloudGroupDataListener;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/lzx/iteam/net/CloudGroupListCenter;->mListener:Lcom/lzx/iteam/net/CloudGroupListCenter$CloudGroupDataListener;

    .line 290
    return-void
.end method
