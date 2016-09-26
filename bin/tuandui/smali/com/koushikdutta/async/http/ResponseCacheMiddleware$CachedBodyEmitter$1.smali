.class Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter$1;
.super Ljava/lang/Object;
.source "ResponseCacheMiddleware.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter$1;->this$1:Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter$1;->this$1:Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;->spewInternal()V

    .line 402
    return-void
.end method
