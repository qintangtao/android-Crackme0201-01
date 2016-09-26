.class public Lcom/lzx/iteam/net/LocalLogin;
.super Ljava/lang/Object;
.source "LocalLogin.java"


# static fields
.field public static final VISITOR_SID:Ljava/lang/String; = "AA2Fhot5Uu4AlYxYm7YRgg=="

.field private static sInstance:Lcom/lzx/iteam/net/LocalLogin;


# instance fields
.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mCm:Landroid/net/ConnectivityManager;

.field public mPassWord:Ljava/lang/String;

.field public mPhoneNum:Ljava/lang/String;

.field public mSid:Ljava/lang/String;

.field public mUserId:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "AA2Fhot5Uu4AlYxYm7YRgg=="

    iput-object v0, p0, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/lzx/iteam/net/LocalLogin;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/lzx/iteam/net/LocalLogin;->sInstance:Lcom/lzx/iteam/net/LocalLogin;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/lzx/iteam/net/LocalLogin;

    invoke-direct {v0}, Lcom/lzx/iteam/net/LocalLogin;-><init>()V

    sput-object v0, Lcom/lzx/iteam/net/LocalLogin;->sInstance:Lcom/lzx/iteam/net/LocalLogin;

    .line 86
    :cond_0
    sget-object v0, Lcom/lzx/iteam/net/LocalLogin;->sInstance:Lcom/lzx/iteam/net/LocalLogin;

    return-object v0
.end method


# virtual methods
.method public isActiveScCall(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    new-instance v1, Lcom/lzx/iteam/net/StorageData;

    invoke-direct {v1}, Lcom/lzx/iteam/net/StorageData;-><init>()V

    .line 45
    .local v1, "storageData":Lcom/lzx/iteam/net/StorageData;
    invoke-virtual {v1, p1}, Lcom/lzx/iteam/net/StorageData;->readSecondCall(Landroid/content/Context;)Lcom/lzx/iteam/bean/SecondCallData;

    move-result-object v0

    .line 46
    .local v0, "data":Lcom/lzx/iteam/bean/SecondCallData;
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isLogedin()Z
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    .line 78
    .local v0, "sss":Ljava/lang/String;
    const-string v1, "sss"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v1, p0, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AA2Fhot5Uu4AlYxYm7YRgg=="

    iget-object v2, p0, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNetworkEnable(Landroid/content/Context;)Z
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 50
    iget-object v1, p0, Lcom/lzx/iteam/net/LocalLogin;->mCm:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    .line 52
    const-string v1, "connectivity"

    .line 51
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/lzx/iteam/net/LocalLogin;->mCm:Landroid/net/ConnectivityManager;

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/net/LocalLogin;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 55
    .local v0, "info":Landroid/net/NetworkInfo;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 56
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    goto :goto_0
.end method

.method public localDeactive(Landroid/content/Context;)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 60
    const-string v2, "AA2Fhot5Uu4AlYxYm7YRgg=="

    iput-object v2, p0, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    .line 61
    invoke-static {p1}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v2

    const-string v3, "team_sid"

    const-string v4, "AA2Fhot5Uu4AlYxYm7YRgg=="

    invoke-virtual {v2, v3, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 64
    new-instance v1, Lcom/lzx/iteam/net/StorageData;

    invoke-direct {v1}, Lcom/lzx/iteam/net/StorageData;-><init>()V

    .line 65
    .local v1, "storageData":Lcom/lzx/iteam/net/StorageData;
    invoke-virtual {v1, p1}, Lcom/lzx/iteam/net/StorageData;->delete(Landroid/content/Context;)V

    .line 68
    invoke-static {p1}, Lcom/lzx/iteam/net/CloudGroupListCenter;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/CloudGroupListCenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/net/CloudGroupListCenter;->eraseGroupData()V

    .line 69
    invoke-static {p1}, Lcom/lzx/iteam/net/EventListCenter;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/EventListCenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/net/EventListCenter;->eraseEventData()V

    .line 70
    invoke-static {p1}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    .line 72
    .local v0, "prefUtil":Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-virtual {v0}, Lcom/lzx/iteam/util/PreferenceUtil;->delCloudContact()V

    .line 73
    invoke-virtual {v0}, Lcom/lzx/iteam/util/PreferenceUtil;->clearLocalGid()V

    .line 74
    return-void
.end method

.method public login(Landroid/content/Context;)Z
    .locals 3
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 32
    new-instance v1, Lcom/lzx/iteam/net/StorageData;

    invoke-direct {v1}, Lcom/lzx/iteam/net/StorageData;-><init>()V

    .line 34
    .local v1, "storageData":Lcom/lzx/iteam/net/StorageData;
    const-string v2, "key.obj"

    invoke-virtual {v1, p1, v2}, Lcom/lzx/iteam/net/StorageData;->readOut(Landroid/content/Context;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/net/SerializeData;

    .line 35
    .local v0, "data":Lcom/lzx/iteam/net/SerializeData;
    if-eqz v0, :cond_0

    .line 36
    iget-object v2, v0, Lcom/lzx/iteam/net/SerializeData;->mSid:Ljava/lang/String;

    iput-object v2, p0, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    .line 37
    iget-object v2, v0, Lcom/lzx/iteam/net/SerializeData;->number:Ljava/lang/String;

    iput-object v2, p0, Lcom/lzx/iteam/net/LocalLogin;->mPhoneNum:Ljava/lang/String;

    .line 39
    :cond_0
    iget-object v2, p0, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
