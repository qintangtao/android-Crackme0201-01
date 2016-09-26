.class public Lcom/koushikdutta/async/http/SimpleMiddleware;
.super Ljava/lang/Object;
.source "SimpleMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 1
    .param p1, "data"    # Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    .prologue
    .line 9
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBodyDecoder(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;)V
    .locals 0
    .param p1, "data"    # Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;

    .prologue
    .line 25
    return-void
.end method

.method public onHeadersReceived(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnHeadersReceivedData;)V
    .locals 0
    .param p1, "data"    # Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnHeadersReceivedData;

    .prologue
    .line 20
    return-void
.end method

.method public onRequestComplete(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;)V
    .locals 0
    .param p1, "data"    # Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;

    .prologue
    .line 30
    return-void
.end method

.method public onSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnSocketData;)V
    .locals 0
    .param p1, "data"    # Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnSocketData;

    .prologue
    .line 15
    return-void
.end method
