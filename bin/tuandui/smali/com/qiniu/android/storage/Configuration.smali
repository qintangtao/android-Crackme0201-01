.class public final Lcom/qiniu/android/storage/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/storage/Configuration$Builder;
    }
.end annotation


# static fields
.field public static final BLOCK_SIZE:I = 0x400000


# instance fields
.field public final chunkSize:I

.field public final connectTimeout:I

.field public final keyGen:Lcom/qiniu/android/storage/KeyGenerator;

.field public final proxy:Lcom/qiniu/android/http/Proxy;

.field public final putThreshold:I

.field public final recorder:Lcom/qiniu/android/storage/Recorder;

.field public final responseTimeout:I

.field public final retryMax:I

.field public final upHost:Ljava/lang/String;

.field public final upHostBackup:Ljava/lang/String;

.field public final upIp:Ljava/lang/String;

.field public final upPort:I

.field public urlConverter:Lcom/qiniu/android/http/UrlConverter;


# direct methods
.method private constructor <init>(Lcom/qiniu/android/storage/Configuration$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/qiniu/android/storage/Configuration$Builder;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    # getter for: Lcom/qiniu/android/storage/Configuration$Builder;->upHost:Ljava/lang/String;
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$000(Lcom/qiniu/android/storage/Configuration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration;->upHost:Ljava/lang/String;

    .line 73
    # getter for: Lcom/qiniu/android/storage/Configuration$Builder;->upHostBackup:Ljava/lang/String;
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$100(Lcom/qiniu/android/storage/Configuration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration;->upHostBackup:Ljava/lang/String;

    .line 74
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration;->getIp(Lcom/qiniu/android/storage/Configuration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration;->upIp:Ljava/lang/String;

    .line 75
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration;->getPort(Lcom/qiniu/android/storage/Configuration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/qiniu/android/storage/Configuration;->upPort:I

    .line 77
    # getter for: Lcom/qiniu/android/storage/Configuration$Builder;->chunkSize:I
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$200(Lcom/qiniu/android/storage/Configuration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/qiniu/android/storage/Configuration;->chunkSize:I

    .line 78
    # getter for: Lcom/qiniu/android/storage/Configuration$Builder;->putThreshold:I
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$300(Lcom/qiniu/android/storage/Configuration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/qiniu/android/storage/Configuration;->putThreshold:I

    .line 80
    # getter for: Lcom/qiniu/android/storage/Configuration$Builder;->connectTimeout:I
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$400(Lcom/qiniu/android/storage/Configuration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/qiniu/android/storage/Configuration;->connectTimeout:I

    .line 81
    # getter for: Lcom/qiniu/android/storage/Configuration$Builder;->responseTimeout:I
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$500(Lcom/qiniu/android/storage/Configuration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/qiniu/android/storage/Configuration;->responseTimeout:I

    .line 83
    # getter for: Lcom/qiniu/android/storage/Configuration$Builder;->recorder:Lcom/qiniu/android/storage/Recorder;
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$600(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/storage/Recorder;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    .line 84
    # getter for: Lcom/qiniu/android/storage/Configuration$Builder;->keyGen:Lcom/qiniu/android/storage/KeyGenerator;
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$700(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/storage/KeyGenerator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qiniu/android/storage/Configuration;->getKeyGen(Lcom/qiniu/android/storage/KeyGenerator;)Lcom/qiniu/android/storage/KeyGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration;->keyGen:Lcom/qiniu/android/storage/KeyGenerator;

    .line 86
    # getter for: Lcom/qiniu/android/storage/Configuration$Builder;->retryMax:I
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$800(Lcom/qiniu/android/storage/Configuration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/qiniu/android/storage/Configuration;->retryMax:I

    .line 88
    # getter for: Lcom/qiniu/android/storage/Configuration$Builder;->proxy:Lcom/qiniu/android/http/Proxy;
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$900(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/http/Proxy;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration;->proxy:Lcom/qiniu/android/http/Proxy;

    .line 90
    # getter for: Lcom/qiniu/android/storage/Configuration$Builder;->urlConverter:Lcom/qiniu/android/http/UrlConverter;
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$1000(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/http/UrlConverter;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration;->urlConverter:Lcom/qiniu/android/http/UrlConverter;

    .line 91
    return-void
.end method

.method synthetic constructor <init>(Lcom/qiniu/android/storage/Configuration$Builder;Lcom/qiniu/android/storage/Configuration$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qiniu/android/storage/Configuration$Builder;
    .param p2, "x1"    # Lcom/qiniu/android/storage/Configuration$1;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/qiniu/android/storage/Configuration;-><init>(Lcom/qiniu/android/storage/Configuration$Builder;)V

    return-void
.end method

.method private static getIp(Lcom/qiniu/android/storage/Configuration$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "builder"    # Lcom/qiniu/android/storage/Configuration$Builder;

    .prologue
    .line 101
    # getter for: Lcom/qiniu/android/storage/Configuration$Builder;->urlConverter:Lcom/qiniu/android/http/UrlConverter;
    invoke-static {p0}, Lcom/qiniu/android/storage/Configuration$Builder;->access$1000(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/http/UrlConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 104
    :goto_0
    return-object v0

    :cond_0
    # getter for: Lcom/qiniu/android/storage/Configuration$Builder;->upIp:Ljava/lang/String;
    invoke-static {p0}, Lcom/qiniu/android/storage/Configuration$Builder;->access$1200(Lcom/qiniu/android/storage/Configuration$Builder;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getKeyGen(Lcom/qiniu/android/storage/KeyGenerator;)Lcom/qiniu/android/storage/KeyGenerator;
    .locals 0
    .param p1, "keyGen"    # Lcom/qiniu/android/storage/KeyGenerator;

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance p1, Lcom/qiniu/android/storage/Configuration$1;

    .end local p1    # "keyGen":Lcom/qiniu/android/storage/KeyGenerator;
    invoke-direct {p1, p0}, Lcom/qiniu/android/storage/Configuration$1;-><init>(Lcom/qiniu/android/storage/Configuration;)V

    .line 116
    .restart local p1    # "keyGen":Lcom/qiniu/android/storage/KeyGenerator;
    :cond_0
    return-object p1
.end method

.method private static getPort(Lcom/qiniu/android/storage/Configuration$Builder;)I
    .locals 1
    .param p0, "builder"    # Lcom/qiniu/android/storage/Configuration$Builder;

    .prologue
    .line 94
    # getter for: Lcom/qiniu/android/storage/Configuration$Builder;->urlConverter:Lcom/qiniu/android/http/UrlConverter;
    invoke-static {p0}, Lcom/qiniu/android/storage/Configuration$Builder;->access$1000(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/http/UrlConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    const/16 v0, 0x50

    .line 97
    :goto_0
    return v0

    :cond_0
    # getter for: Lcom/qiniu/android/storage/Configuration$Builder;->upPort:I
    invoke-static {p0}, Lcom/qiniu/android/storage/Configuration$Builder;->access$1100(Lcom/qiniu/android/storage/Configuration$Builder;)I

    move-result v0

    goto :goto_0
.end method
