.class Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSSLSocket;
.super Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;
.source "ResponseCacheMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/AsyncSSLSocket;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/ResponseCacheMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CachedSSLSocket"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/ResponseCacheMiddleware;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/ResponseCacheMiddleware;Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;J)V
    .locals 1
    .param p2, "cacheResponse"    # Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;
    .param p3, "contentLength"    # J

    .prologue
    .line 677
    iput-object p1, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSSLSocket;->this$0:Lcom/koushikdutta/async/http/ResponseCacheMiddleware;

    .line 678
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;-><init>(Lcom/koushikdutta/async/http/ResponseCacheMiddleware;Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;J)V

    .line 679
    return-void
.end method


# virtual methods
.method public getPeerCertificates()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 683
    const/4 v0, 0x0

    return-object v0
.end method
