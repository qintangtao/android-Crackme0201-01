.class Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;
.super Ljava/lang/Object;
.source "AsyncSSLSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;

.field private final synthetic val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

.field private final synthetic val$port:I

.field private final synthetic val$socket:Lcom/koushikdutta/async/AsyncSocket;

.field private final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;Lcom/koushikdutta/async/callback/ConnectCallback;Lcom/koushikdutta/async/AsyncSocket;Landroid/net/Uri;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;->this$1:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    iput-object p4, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;->val$uri:Landroid/net/Uri;

    iput p5, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;->val$port:I

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;)Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;->this$1:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;

    return-object v0
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 7
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, p1, v1}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 142
    :goto_0
    return-void

    .line 98
    :cond_0
    new-instance v6, Lcom/koushikdutta/async/LineEmitter;

    invoke-direct {v6}, Lcom/koushikdutta/async/LineEmitter;-><init>()V

    .line 99
    .local v6, "liner":Lcom/koushikdutta/async/LineEmitter;
    new-instance v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$1;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;->val$uri:Landroid/net/Uri;

    iget v5, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;->val$port:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$1;-><init>(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/callback/ConnectCallback;Landroid/net/Uri;I)V

    invoke-virtual {v6, v0}, Lcom/koushikdutta/async/LineEmitter;->setLineCallback(Lcom/koushikdutta/async/LineEmitter$StringCallback;)V

    .line 127
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, v6}, Lcom/koushikdutta/async/AsyncSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 129
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    new-instance v1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$2;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-direct {v1, p0, v2, v3}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$2;-><init>(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/callback/ConnectCallback;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    goto :goto_0
.end method
