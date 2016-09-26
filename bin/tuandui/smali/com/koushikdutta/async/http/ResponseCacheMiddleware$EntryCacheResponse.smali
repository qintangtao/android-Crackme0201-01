.class Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;
.super Ljava/net/CacheResponse;
.source "ResponseCacheMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/ResponseCacheMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntryCacheResponse"
.end annotation


# instance fields
.field private final entry:Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;

.field private final snapshot:Ljava/io/FileInputStream;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;Ljava/io/FileInputStream;)V
    .locals 0
    .param p1, "entry"    # Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;
    .param p2, "snapshot"    # Ljava/io/FileInputStream;

    .prologue
    .line 662
    invoke-direct {p0}, Ljava/net/CacheResponse;-><init>()V

    .line 663
    iput-object p1, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;->entry:Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;

    .line 664
    iput-object p2, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;->snapshot:Ljava/io/FileInputStream;

    .line 665
    return-void
.end method


# virtual methods
.method public getBody()Ljava/io/FileInputStream;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;->snapshot:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public bridge synthetic getBody()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;->getBody()Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 668
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;->entry:Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;

    # getter for: Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->responseHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;
    invoke-static {v0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->access$0(Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;)Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
