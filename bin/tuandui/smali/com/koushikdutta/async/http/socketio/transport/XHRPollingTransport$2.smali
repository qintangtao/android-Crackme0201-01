.class Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport$2;
.super Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;
.source "XHRPollingTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->doLongPolling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport$2;->this$0:Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;

    .line 91
    invoke-direct {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/String;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "source"    # Lcom/koushikdutta/async/http/AsyncHttpResponse;
    .param p3, "result"    # Ljava/lang/String;

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport$2;->this$0:Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;

    # invokes: Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->close(Ljava/lang/Exception;)V
    invoke-static {v0, p1}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->access$0(Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;Ljava/lang/Exception;)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport$2;->this$0:Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;

    # invokes: Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->sendResult(Ljava/lang/String;)V
    invoke-static {v0, p3}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->access$1(Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport$2;->this$0:Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;

    # invokes: Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->doLongPolling()V
    invoke-static {v0}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->access$2(Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;)V

    goto :goto_0
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Lcom/koushikdutta/async/http/AsyncHttpResponse;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport$2;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/String;)V

    return-void
.end method
