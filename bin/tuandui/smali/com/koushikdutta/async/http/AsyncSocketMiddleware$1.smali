.class Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;
.super Lcom/koushikdutta/async/future/TransformFuture;
.source "AsyncSocketMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->getSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/future/TransformFuture",
        "<",
        "Lcom/koushikdutta/async/AsyncSocket;",
        "[",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# instance fields
.field lastException:Ljava/lang/Exception;

.field final synthetic this$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

.field private final synthetic val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

.field private final synthetic val$port:I

.field private final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;ILandroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->this$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iput p3, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->val$port:I

    iput-object p4, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->val$uri:Landroid/net/Uri;

    .line 194
    invoke-direct {p0}, Lcom/koushikdutta/async/future/TransformFuture;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;)Lcom/koushikdutta/async/http/AsyncSocketMiddleware;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->this$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    return-object v0
.end method


# virtual methods
.method protected error(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 199
    invoke-super {p0, p1}, Lcom/koushikdutta/async/future/TransformFuture;->error(Ljava/lang/Exception;)V

    .line 200
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->connectCallback:Lcom/koushikdutta/async/callback/ConnectCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 201
    return-void
.end method

.method protected bridge synthetic transform(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    check-cast p1, [Ljava/net/InetAddress;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->transform([Ljava/net/InetAddress;)V

    return-void
.end method

.method protected transform([Ljava/net/InetAddress;)V
    .locals 9
    .param p1, "result"    # [Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 205
    new-instance v6, Lcom/koushikdutta/async/future/Continuation;

    new-instance v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;)V

    invoke-direct {v6, v0}, Lcom/koushikdutta/async/future/Continuation;-><init>(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 215
    .local v6, "keepTrying":Lcom/koushikdutta/async/future/Continuation;
    array-length v8, p1

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-lt v7, v8, :cond_0

    .line 252
    invoke-virtual {v6}, Lcom/koushikdutta/async/future/Continuation;->start()Lcom/koushikdutta/async/future/Continuation;

    .line 253
    return-void

    .line 215
    :cond_0
    aget-object v2, p1, v7

    .line 216
    .local v2, "address":Ljava/net/InetAddress;
    new-instance v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    iget v3, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->val$port:I

    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->val$uri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;Ljava/net/InetAddress;ILandroid/net/Uri;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)V

    invoke-virtual {v6, v0}, Lcom/koushikdutta/async/future/Continuation;->add(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;

    .line 215
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0
.end method
