.class Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;
.super Ljava/lang/Object;
.source "AsyncHttpResponseImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/LineEmitter$StringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mRawHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

.field final synthetic this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;->this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/libcore/RawHeaders;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;->mRawHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    return-void
.end method


# virtual methods
.method public onStringAvailable(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 110
    :try_start_0
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;->mRawHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 111
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;->mRawHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-virtual {v2, p1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const-string v2, "\r"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 114
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;->mRawHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-virtual {v2, p1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->addLine(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;->this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    invoke-virtual {v2, v1}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->report(Ljava/lang/Exception;)V

    goto :goto_0

    .line 117
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;->this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    new-instance v3, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;->this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    # getter for: Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;
    invoke-static {v4}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->access$0(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)Lcom/koushikdutta/async/http/AsyncHttpRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;->mRawHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-direct {v3, v4, v5}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/libcore/RawHeaders;)V

    iput-object v3, v2, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mHeaders:Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    .line 118
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;->this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->onHeadersReceived()V

    .line 120
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;->this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    # getter for: Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;
    invoke-static {v2}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->access$1(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)Lcom/koushikdutta/async/AsyncSocket;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 125
    const-string v2, "HEAD"

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;->this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    # getter for: Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;
    invoke-static {v3}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->access$0(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)Lcom/koushikdutta/async/http/AsyncHttpRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 126
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;->this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->create(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    move-result-object v0

    .line 131
    .local v0, "emitter":Lcom/koushikdutta/async/DataEmitter;
    :goto_1
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;->this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    goto :goto_0

    .line 129
    .end local v0    # "emitter":Lcom/koushikdutta/async/DataEmitter;
    :cond_3
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;->this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    # getter for: Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;
    invoke-static {v2}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->access$1(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)Lcom/koushikdutta/async/AsyncSocket;

    move-result-object v2

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;->mRawHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/koushikdutta/async/http/HttpUtil;->getBodyDecoder(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/http/libcore/RawHeaders;Z)Lcom/koushikdutta/async/DataEmitter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .restart local v0    # "emitter":Lcom/koushikdutta/async/DataEmitter;
    goto :goto_1
.end method
