.class public interface abstract Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
.super Ljava/lang/Object;
.source "AsyncHttpClientMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;,
        Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;,
        Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnHeadersReceivedData;,
        Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;,
        Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnSocketData;
    }
.end annotation


# virtual methods
.method public abstract getSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;
.end method

.method public abstract onBodyDecoder(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;)V
.end method

.method public abstract onHeadersReceived(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnHeadersReceivedData;)V
.end method

.method public abstract onRequestComplete(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;)V
.end method

.method public abstract onSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnSocketData;)V
.end method
