.class public Lcom/lzx/iteam/util/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/lzx/iteam/util/NetworkUtil;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/util/NetworkUtil;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lzx/iteam/util/NetworkUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static checkNetwork(Landroid/content/Context;)Z
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 26
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 28
    .local v0, "manager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v2

    .line 32
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 34
    .local v1, "networkinfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkNetworkDialog()Z
    .locals 6

    .prologue
    .line 45
    const/4 v2, 0x0

    .line 46
    .local v2, "flag":Z
    iget-object v3, p0, Lcom/lzx/iteam/util/NetworkUtil;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 47
    .local v1, "cwjManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 48
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 49
    :cond_0
    if-nez v2, :cond_1

    .line 50
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/lzx/iteam/util/NetworkUtil;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "\u6ca1\u6709\u53ef\u7528\u7684\u7f51\u7edc"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "\u8bf7\u5f00\u542fGPRS\u6216WIFI\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 51
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const-string v3, "\u786e\u5b9a"

    new-instance v4, Lcom/lzx/iteam/util/NetworkUtil$1;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/util/NetworkUtil$1;-><init>(Lcom/lzx/iteam/util/NetworkUtil;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 60
    const-string v4, "\u53d6\u6d88"

    new-instance v5, Lcom/lzx/iteam/util/NetworkUtil$2;

    invoke-direct {v5, p0}, Lcom/lzx/iteam/util/NetworkUtil$2;-><init>(Lcom/lzx/iteam/util/NetworkUtil;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 64
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 65
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 68
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    :cond_1
    return v2
.end method


# virtual methods
.method public checkWifiOr3G()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 77
    iget-object v6, p0, Lcom/lzx/iteam/util/NetworkUtil;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 80
    .local v1, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 82
    .local v2, "mobile":Landroid/net/NetworkInfo$State;
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 85
    .local v3, "wifi":Landroid/net/NetworkInfo$State;
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v6, :cond_0

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v2, v6, :cond_1

    :cond_0
    move v4, v5

    .line 103
    :goto_0
    return v4

    .line 87
    :cond_1
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v6, :cond_2

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v3, v6, :cond_3

    :cond_2
    move v4, v5

    .line 88
    goto :goto_0

    .line 91
    :cond_3
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/lzx/iteam/util/NetworkUtil;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v6, "\u6ca1\u6709\u53ef\u7528\u7684\u7f51\u7edc"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "\u8bf7\u5f00\u542fGPRS\u6216WIFI\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 92
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const-string v5, "\u8bbe\u7f6e\u7f51\u7edc"

    new-instance v6, Lcom/lzx/iteam/util/NetworkUtil$3;

    invoke-direct {v6, p0}, Lcom/lzx/iteam/util/NetworkUtil$3;-><init>(Lcom/lzx/iteam/util/NetworkUtil;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 97
    const-string v6, "\u53d6\u6d88"

    new-instance v7, Lcom/lzx/iteam/util/NetworkUtil$4;

    invoke-direct {v7, p0}, Lcom/lzx/iteam/util/NetworkUtil$4;-><init>(Lcom/lzx/iteam/util/NetworkUtil;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 101
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 102
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
