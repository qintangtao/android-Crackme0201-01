.class Lcom/koushikdutta/async/http/ResponseCacheMiddleware$1;
.super Ljava/lang/Object;
.source "ResponseCacheMiddleware.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->getSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/ResponseCacheMiddleware;

.field private final synthetic val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

.field private final synthetic val$socket:Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/ResponseCacheMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$1;->this$0:Lcom/koushikdutta/async/http/ResponseCacheMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$1;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iput-object p3, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$1;->val$socket:Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$1;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->connectCallback:Lcom/koushikdutta/async/callback/ConnectCallback;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$1;->val$socket:Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;

    invoke-interface {v0, v1, v2}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 167
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$1;->val$socket:Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;->spewInternal()V

    .line 168
    return-void
.end method
