.class Lcom/koushikdutta/async/http/AsyncHttpClient$6$1;
.super Lcom/koushikdutta/async/stream/OutputStreamDataCallback;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpClient$6;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$6;

.field private final synthetic val$callback:Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;

.field private final synthetic val$contentLength:J

.field private final synthetic val$response:Lcom/koushikdutta/async/http/AsyncHttpResponse;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient$6;Ljava/io/OutputStream;Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;J)V
    .locals 1
    .param p2, "$anonymous0"    # Ljava/io/OutputStream;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6$1;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$6;

    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6$1;->val$callback:Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;

    iput-object p4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6$1;->val$response:Lcom/koushikdutta/async/http/AsyncHttpResponse;

    iput-wide p5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6$1;->val$contentLength:J

    .line 510
    invoke-direct {p0, p2}, Lcom/koushikdutta/async/stream/OutputStreamDataCallback;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 8
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    .line 513
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6$1;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$6;

    iget-wide v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$6;->mDownloaded:J

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$6;->mDownloaded:J

    .line 514
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/stream/OutputStreamDataCallback;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 515
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6$1;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$6;

    # getter for: Lcom/koushikdutta/async/http/AsyncHttpClient$6;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;
    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$6;->access$0(Lcom/koushikdutta/async/http/AsyncHttpClient$6;)Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6$1;->val$callback:Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6$1;->val$response:Lcom/koushikdutta/async/http/AsyncHttpResponse;

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6$1;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$6;

    iget-wide v4, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$6;->mDownloaded:J

    iget-wide v6, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6$1;->val$contentLength:J

    # invokes: Lcom/koushikdutta/async/http/AsyncHttpClient;->invokeProgress(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;JJ)V
    invoke-static/range {v1 .. v7}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$8(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;JJ)V

    .line 516
    return-void
.end method
