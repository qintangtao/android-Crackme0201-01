.class Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;
.super Ljava/lang/Object;
.source "AsyncSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ContinuationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->transform([Ljava/net/InetAddress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

.field private final synthetic val$address:Ljava/net/InetAddress;

.field private final synthetic val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

.field private final synthetic val$port:I

.field private final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;Ljava/net/InetAddress;ILandroid/net/Uri;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->val$address:Ljava/net/InetAddress;

    iput p3, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->val$port:I

    iput-object p4, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->val$uri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;)Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    return-object v0
.end method


# virtual methods
.method public onContinue(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 7
    .param p1, "continuation"    # Lcom/koushikdutta/async/future/Continuation;
    .param p2, "next"    # Lcom/koushikdutta/async/callback/CompletedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    # getter for: Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->this$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;
    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->access$1(Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;)Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    move-result-object v0

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->mClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->val$address:Ljava/net/InetAddress;

    iget v3, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->val$port:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    # getter for: Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->this$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;
    invoke-static {v2}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->access$1(Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;)Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    move-result-object v2

    new-instance v3, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;

    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    invoke-direct {v3, p0, p2, v4}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;Lcom/koushikdutta/async/callback/CompletedCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)V

    .line 247
    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->val$uri:Landroid/net/Uri;

    iget v5, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->val$port:I

    const/4 v6, 0x0

    .line 219
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->wrapCallback(Lcom/koushikdutta/async/callback/ConnectCallback;Landroid/net/Uri;IZ)Lcom/koushikdutta/async/callback/ConnectCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/AsyncServer;->connectSocket(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;

    .line 248
    return-void
.end method
