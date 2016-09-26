.class public Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;
.super Ljava/lang/Object;
.source "ResponseCacheMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/ResponseCacheMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheData"
.end annotation


# instance fields
.field cachedResponseHeaders:Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

.field candidate:Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;

.field contentLength:J

.field snapshot:[Ljava/io/FileInputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
