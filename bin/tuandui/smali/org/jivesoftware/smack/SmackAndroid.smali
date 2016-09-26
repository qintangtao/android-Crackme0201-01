.class public Lorg/jivesoftware/smack/SmackAndroid;
.super Ljava/lang/Object;
.source "SmackAndroid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/SmackAndroid$ConnectivtyChangedReceiver;
    }
.end annotation


# static fields
.field private static sSmackAndroid:Lorg/jivesoftware/smack/SmackAndroid;


# instance fields
.field private mConnectivityChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mCtx:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lorg/jivesoftware/smack/SmackAndroid;->sSmackAndroid:Lorg/jivesoftware/smack/SmackAndroid;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/jivesoftware/smack/SmackAndroid;->mCtx:Landroid/content/Context;

    .line 22
    invoke-static {}, Lorg/jivesoftware/smack/util/dns/DNSJavaResolver;->getInstance()Lorg/jivesoftware/smack/util/dns/DNSResolver;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/DNSUtil;->setDNSResolver(Lorg/jivesoftware/smack/util/dns/DNSResolver;)V

    .line 23
    invoke-static {p1}, Lorg/jivesoftware/smackx/InitStaticCode;->initStaticCode(Landroid/content/Context;)V

    .line 24
    invoke-static {}, Lorg/jivesoftware/smackx/ConfigureProviderManager;->configureProviderManager()V

    .line 25
    invoke-direct {p0}, Lorg/jivesoftware/smack/SmackAndroid;->maybeRegisterReceiver()V

    .line 26
    return-void
.end method

.method public static init(Landroid/content/Context;)Lorg/jivesoftware/smack/SmackAndroid;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 29
    sget-object v0, Lorg/jivesoftware/smack/SmackAndroid;->sSmackAndroid:Lorg/jivesoftware/smack/SmackAndroid;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lorg/jivesoftware/smack/SmackAndroid;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/SmackAndroid;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/jivesoftware/smack/SmackAndroid;->sSmackAndroid:Lorg/jivesoftware/smack/SmackAndroid;

    .line 34
    :goto_0
    sget-object v0, Lorg/jivesoftware/smack/SmackAndroid;->sSmackAndroid:Lorg/jivesoftware/smack/SmackAndroid;

    return-object v0

    .line 32
    :cond_0
    sget-object v0, Lorg/jivesoftware/smack/SmackAndroid;->sSmackAndroid:Lorg/jivesoftware/smack/SmackAndroid;

    invoke-direct {v0}, Lorg/jivesoftware/smack/SmackAndroid;->maybeRegisterReceiver()V

    goto :goto_0
.end method

.method private maybeRegisterReceiver()V
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Lorg/jivesoftware/smack/SmackAndroid;->mConnectivityChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lorg/jivesoftware/smack/SmackAndroid$ConnectivtyChangedReceiver;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/SmackAndroid$ConnectivtyChangedReceiver;-><init>(Lorg/jivesoftware/smack/SmackAndroid;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/SmackAndroid;->mConnectivityChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    iget-object v0, p0, Lorg/jivesoftware/smack/SmackAndroid;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lorg/jivesoftware/smack/SmackAndroid;->mConnectivityChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lorg/jivesoftware/smack/SmackAndroid;->mConnectivityChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lorg/jivesoftware/smack/SmackAndroid;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lorg/jivesoftware/smack/SmackAndroid;->mConnectivityChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/SmackAndroid;->mConnectivityChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    :cond_0
    return-void
.end method
