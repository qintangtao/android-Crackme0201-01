.class Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;
.super Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;
.source "AsyncHttpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->onHeadersReceived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)V
    .locals 0
    .param p2, "$anonymous0"    # Lcom/koushikdutta/async/AsyncSocket;
    .param p3, "$anonymous1"    # Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;->this$2:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    .line 119
    invoke-direct {p0, p2, p3}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;-><init>(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)V

    return-void
.end method


# virtual methods
.method protected onEnd()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->onEnd()V

    .line 123
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 124
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;->this$2:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->responseComplete:Z

    .line 126
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;->this$2:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    # invokes: Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->handleOnCompleted()V
    invoke-static {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->access$1(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;)V

    .line 127
    return-void
.end method
