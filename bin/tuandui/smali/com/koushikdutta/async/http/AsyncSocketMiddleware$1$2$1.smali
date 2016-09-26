.class Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;
.super Ljava/lang/Object;
.source "AsyncSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->onContinue(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

.field private final synthetic val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

.field private final synthetic val$next:Lcom/koushikdutta/async/callback/CompletedCallback;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;Lcom/koushikdutta/async/callback/CompletedCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->this$2:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->val$next:Lcom/koushikdutta/async/callback/CompletedCallback;

    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 4
    .param p1, "ex"    # Ljava/lang/Exception;
    .param p2, "socket"    # Lcom/koushikdutta/async/AsyncSocket;

    .prologue
    const/4 v3, 0x0

    .line 222
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->this$2:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    # getter for: Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;
    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->access$0(Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;)Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->this$2:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    # getter for: Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;
    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->access$0(Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;)Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "internal error during connect"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->lastException:Ljava/lang/Exception;

    .line 224
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->val$next:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, v3}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    if-eqz p1, :cond_2

    .line 230
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->this$2:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    # getter for: Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;
    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->access$0(Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;)Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    move-result-object v0

    iput-object p1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->lastException:Ljava/lang/Exception;

    .line 231
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->val$next:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, v3}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    goto :goto_0

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->this$2:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    # getter for: Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;
    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->access$0(Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;)Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->isDone()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->this$2:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    # getter for: Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;
    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->access$0(Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;)Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v1, "Recycling extra socket leftover from cancelled operation"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logd(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->this$2:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    # getter for: Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;
    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->access$0(Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;)Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    move-result-object v0

    # getter for: Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->this$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;
    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->access$1(Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;)Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    move-result-object v0

    # invokes: Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->idleSocket(Lcom/koushikdutta/async/AsyncSocket;)V
    invoke-static {v0, p2}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->access$0(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 239
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->this$2:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    # getter for: Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;
    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->access$0(Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;)Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    move-result-object v0

    # getter for: Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->this$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;
    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->access$1(Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;)Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    # invokes: Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->recycleSocket(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    invoke-static {v0, p2, v1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->access$1(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    goto :goto_0

    .line 243
    :cond_4
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->this$2:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    # getter for: Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;
    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->access$0(Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;)Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    move-result-object v0

    invoke-virtual {v0, v3, p2}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->connectCallback:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-interface {v0, p1, p2}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    goto :goto_0
.end method
