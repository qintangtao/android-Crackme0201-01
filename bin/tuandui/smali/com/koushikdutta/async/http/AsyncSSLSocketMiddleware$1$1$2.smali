.class Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$2;
.super Ljava/lang/Object;
.source "AsyncSSLSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;->onCompleted(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;

.field private final synthetic val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

.field private final synthetic val$socket:Lcom/koushikdutta/async/AsyncSocket;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/callback/ConnectCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$2;->this$2:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$2;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$2;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$2;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 133
    new-instance p1, Ljava/io/IOException;

    .end local p1    # "ex":Ljava/lang/Exception;
    const-string v0, "socket closed before proxy connect response"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 134
    .restart local p1    # "ex":Ljava/lang/Exception;
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$2;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$2;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, p1, v1}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 135
    return-void
.end method
