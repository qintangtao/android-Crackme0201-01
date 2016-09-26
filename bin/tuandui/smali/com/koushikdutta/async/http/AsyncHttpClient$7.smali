.class Lcom/koushikdutta/async/http/AsyncHttpClient$7;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lcom/koushikdutta/async/http/callback/HttpConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/parser/AsyncParser;Lcom/koushikdutta/async/http/callback/RequestCallback;)Lcom/koushikdutta/async/future/SimpleFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

.field private final synthetic val$callback:Lcom/koushikdutta/async/http/callback/RequestCallback;

.field private final synthetic val$parser:Lcom/koushikdutta/async/parser/AsyncParser;

.field private final synthetic val$ret:Lcom/koushikdutta/async/future/SimpleFuture;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/parser/AsyncParser;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$7;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$7;->val$callback:Lcom/koushikdutta/async/http/callback/RequestCallback;

    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$7;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    iput-object p4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$7;->val$parser:Lcom/koushikdutta/async/parser/AsyncParser;

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/koushikdutta/async/http/AsyncHttpClient$7;)Lcom/koushikdutta/async/http/AsyncHttpClient;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$7;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    return-object v0
.end method


# virtual methods
.method public onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .locals 7
    .param p1, "ex"    # Ljava/lang/Exception;
    .param p2, "response"    # Lcom/koushikdutta/async/http/AsyncHttpResponse;

    .prologue
    .line 547
    if-eqz p1, :cond_0

    .line 548
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$7;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$7;->val$callback:Lcom/koushikdutta/async/http/callback/RequestCallback;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$7;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    const/4 v5, 0x0

    move-object v3, p2

    move-object v4, p1

    # invokes: Lcom/koushikdutta/async/http/AsyncHttpClient;->invoke(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V
    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$6(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 565
    :goto_0
    return-void

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$7;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$7;->val$callback:Lcom/koushikdutta/async/http/callback/RequestCallback;

    # invokes: Lcom/koushikdutta/async/http/AsyncHttpClient;->invokeConnect(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    invoke-static {v0, v1, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$7(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V

    .line 553
    invoke-interface {p2}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->getHeaders()Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->getContentLength()J

    .line 555
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$7;->val$parser:Lcom/koushikdutta/async/parser/AsyncParser;

    invoke-interface {v0, p2}, Lcom/koushikdutta/async/parser/AsyncParser;->parse(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;

    move-result-object v0

    .line 556
    new-instance v1, Lcom/koushikdutta/async/http/AsyncHttpClient$7$1;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$7;->val$callback:Lcom/koushikdutta/async/http/callback/RequestCallback;

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$7;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v1, p0, v2, v3, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient$7$1;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient$7;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/future/Future;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object v6

    .line 564
    .local v6, "parsed":Lcom/koushikdutta/async/future/Future;, "Lcom/koushikdutta/async/future/Future<TT;>;"
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$7;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v0, v6}, Lcom/koushikdutta/async/future/SimpleFuture;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleFuture;

    goto :goto_0
.end method
