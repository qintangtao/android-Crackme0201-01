.class public Lorg/jivesoftware/smack/AndroidConnectionConfiguration;
.super Lorg/jivesoftware/smack/ConnectionConfiguration;
.source "AndroidConnectionConfiguration.java"


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0x2710


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration;-><init>()V

    .line 33
    const/16 v0, 0x2710

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smack/AndroidConnectionConfiguration;->AndroidInit(Ljava/lang/String;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration;-><init>()V

    .line 44
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/AndroidConnectionConfiguration;->AndroidInit(Ljava/lang/String;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lorg/jivesoftware/smack/ConnectionConfiguration;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lorg/jivesoftware/smack/AndroidConnectionConfiguration;->AndroidInit()V

    .line 50
    return-void
.end method

.method private AndroidInit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 54
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 55
    const-string v1, "AndroidCAStore"

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/AndroidConnectionConfiguration;->setTruststoreType(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, v3}, Lorg/jivesoftware/smack/AndroidConnectionConfiguration;->setTruststorePassword(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, v3}, Lorg/jivesoftware/smack/AndroidConnectionConfiguration;->setTruststorePath(Ljava/lang/String;)V

    .line 67
    :goto_0
    return-void

    .line 59
    :cond_0
    const-string v1, "BKS"

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/AndroidConnectionConfiguration;->setTruststoreType(Ljava/lang/String;)V

    .line 60
    const-string v1, "javax.net.ssl.trustStore"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "java.home"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "etc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 63
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "security"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 64
    const-string v2, "cacerts.bks"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    :cond_1
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/AndroidConnectionConfiguration;->setTruststorePath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private AndroidInit(Ljava/lang/String;I)V
    .locals 7
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/jivesoftware/smack/AndroidConnectionConfiguration;->AndroidInit()V

    .line 95
    new-instance v0, Lorg/jivesoftware/smack/AndroidConnectionConfiguration$1DnsSrvLookupRunnable;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smack/AndroidConnectionConfiguration$1DnsSrvLookupRunnable;-><init>(Lorg/jivesoftware/smack/AndroidConnectionConfiguration;Ljava/lang/String;)V

    .line 96
    .local v0, "dnsSrv":Lorg/jivesoftware/smack/AndroidConnectionConfiguration$1DnsSrvLookupRunnable;
    new-instance v3, Ljava/lang/Thread;

    const-string v4, "dns-srv-lookup"

    invoke-direct {v3, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 97
    .local v3, "t":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 99
    int-to-long v4, p2

    :try_start_0
    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    invoke-virtual {v0}, Lorg/jivesoftware/smack/AndroidConnectionConfiguration$1DnsSrvLookupRunnable;->getHostAddresses()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lorg/jivesoftware/smack/AndroidConnectionConfiguration;->hostAddresses:Ljava/util/List;

    .line 105
    iget-object v4, p0, Lorg/jivesoftware/smack/AndroidConnectionConfiguration;->hostAddresses:Ljava/util/List;

    if-nez v4, :cond_0

    .line 106
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    const-string v5, "DNS lookup failure"

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DNS lookup timeout after "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 109
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    invoke-static {}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->forDefaultProxy()Lorg/jivesoftware/smack/proxy/ProxyInfo;

    move-result-object v2

    .line 111
    .local v2, "proxy":Lorg/jivesoftware/smack/proxy/ProxyInfo;
    invoke-virtual {p0, p1, v2}, Lorg/jivesoftware/smack/AndroidConnectionConfiguration;->init(Ljava/lang/String;Lorg/jivesoftware/smack/proxy/ProxyInfo;)V

    .line 112
    return-void
.end method
