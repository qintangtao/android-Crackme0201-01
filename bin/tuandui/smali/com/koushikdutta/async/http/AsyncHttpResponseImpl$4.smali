.class Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$4;
.super Ljava/lang/Object;
.source "AsyncHttpResponseImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->setSocket(Lcom/koushikdutta/async/AsyncSocket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$4;->this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$4;)Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$4;->this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    return-object v0
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$4;->this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    # getter for: Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mWriter:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->access$2(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$4;->this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    # getter for: Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mWriter:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->access$2(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$4;->this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    # getter for: Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;
    invoke-static {v1}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->access$0(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)Lcom/koushikdutta/async/http/AsyncHttpRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$4;->this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    new-instance v3, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$4$1;

    invoke-direct {v3, p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$4$1;-><init>(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$4;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->write(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$4;->this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->onRequestCompleted(Ljava/lang/Exception;)V

    goto :goto_0
.end method
