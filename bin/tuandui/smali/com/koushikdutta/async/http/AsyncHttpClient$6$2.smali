.class Lcom/koushikdutta/async/http/AsyncHttpClient$6$2;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


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

.field private final synthetic val$file:Ljava/io/File;

.field private final synthetic val$fout:Ljava/io/OutputStream;

.field private final synthetic val$response:Lcom/koushikdutta/async/http/AsyncHttpResponse;

.field private final synthetic val$ret:Lcom/koushikdutta/async/future/SimpleFuture;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient$6;Ljava/io/OutputStream;Ljava/io/File;Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6$2;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$6;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6$2;->val$fout:Ljava/io/OutputStream;

    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6$2;->val$file:Ljava/io/File;

    iput-object p4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6$2;->val$callback:Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;

    iput-object p5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6$2;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    iput-object p6, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6$2;->val$response:Lcom/koushikdutta/async/http/AsyncHttpResponse;

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 8
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    const/4 v5, 0x0

    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6$2;->val$fout:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :goto_0
    if-eqz p1, :cond_0

    .line 528
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6$2;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 529
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6$2;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$6;

    # getter for: Lcom/koushikdutta/async/http/AsyncHttpClient$6;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;
    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$6;->access$0(Lcom/koushikdutta/async/http/AsyncHttpClient$6;)Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6$2;->val$callback:Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6$2;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6$2;->val$response:Lcom/koushikdutta/async/http/AsyncHttpResponse;

    move-object v4, p1

    # invokes: Lcom/koushikdutta/async/http/AsyncHttpClient;->invoke(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V
    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$6(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 534
    :goto_1
    return-void

    .line 524
    :catch_0
    move-exception v7

    .line 525
    .local v7, "e":Ljava/io/IOException;
    move-object p1, v7

    goto :goto_0

    .line 532
    .end local v7    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6$2;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$6;

    # getter for: Lcom/koushikdutta/async/http/AsyncHttpClient$6;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;
    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$6;->access$0(Lcom/koushikdutta/async/http/AsyncHttpClient$6;)Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6$2;->val$callback:Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6$2;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6$2;->val$response:Lcom/koushikdutta/async/http/AsyncHttpResponse;

    iget-object v6, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6$2;->val$file:Ljava/io/File;

    # invokes: Lcom/koushikdutta/async/http/AsyncHttpClient;->invoke(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V
    invoke-static/range {v1 .. v6}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$6(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_1
.end method
