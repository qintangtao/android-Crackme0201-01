.class Lcom/koushikdutta/async/http/AsyncHttpClient$6;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lcom/koushikdutta/async/http/callback/HttpConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpClient;->executeFile(Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;)Lcom/koushikdutta/async/future/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mDownloaded:J

.field final synthetic this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

.field private final synthetic val$callback:Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;

.field private final synthetic val$file:Ljava/io/File;

.field private final synthetic val$fout:Ljava/io/OutputStream;

.field private final synthetic val$ret:Lcom/koushikdutta/async/future/SimpleFuture;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Ljava/io/OutputStream;Ljava/io/File;Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;Lcom/koushikdutta/async/future/SimpleFuture;)V
    .locals 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6;->val$fout:Ljava/io/OutputStream;

    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6;->val$file:Ljava/io/File;

    iput-object p4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6;->val$callback:Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;

    iput-object p5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6;->mDownloaded:J

    return-void
.end method

.method static synthetic access$0(Lcom/koushikdutta/async/http/AsyncHttpClient$6;)Lcom/koushikdutta/async/http/AsyncHttpClient;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    return-object v0
.end method


# virtual methods
.method public onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .locals 17
    .param p1, "ex"    # Ljava/lang/Exception;
    .param p2, "response"    # Lcom/koushikdutta/async/http/AsyncHttpResponse;

    .prologue
    .line 496
    if-eqz p1, :cond_0

    .line 498
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$6;->val$fout:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$6;->val$file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$6;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$6;->val$callback:Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$6;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    const/4 v7, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    # invokes: Lcom/koushikdutta/async/http/AsyncHttpClient;->invoke(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V
    invoke-static/range {v2 .. v7}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$6(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 536
    :goto_1
    return-void

    .line 506
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$6;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$6;->val$callback:Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;

    move-object/from16 v0, p2

    # invokes: Lcom/koushikdutta/async/http/AsyncHttpClient;->invokeConnect(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    invoke-static {v2, v3, v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$7(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V

    .line 508
    invoke-interface/range {p2 .. p2}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->getHeaders()Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    move-result-object v2

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->getContentLength()J

    move-result-wide v8

    .line 510
    .local v8, "contentLength":J
    new-instance v3, Lcom/koushikdutta/async/http/AsyncHttpClient$6$1;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$6;->val$fout:Ljava/io/OutputStream;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$6;->val$callback:Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;

    move-object/from16 v4, p0

    move-object/from16 v7, p2

    invoke-direct/range {v3 .. v9}, Lcom/koushikdutta/async/http/AsyncHttpClient$6$1;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient$6;Ljava/io/OutputStream;Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;J)V

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 518
    new-instance v10, Lcom/koushikdutta/async/http/AsyncHttpClient$6$2;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$6;->val$fout:Ljava/io/OutputStream;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$6;->val$file:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$6;->val$callback:Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$6;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    move-object/from16 v11, p0

    move-object/from16 v16, p2

    invoke-direct/range {v10 .. v16}, Lcom/koushikdutta/async/http/AsyncHttpClient$6$2;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient$6;Ljava/io/OutputStream;Ljava/io/File;Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    goto :goto_1

    .end local v8    # "contentLength":J
    :catch_0
    move-exception v2

    goto :goto_0
.end method
