.class Lcom/koushikdutta/async/http/server/AsyncHttpServer$4$1;
.super Ljava/lang/Object;
.source "AsyncHttpServer.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServer$4;->onRequest(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$4;

.field private final synthetic val$is:Ljava/io/InputStream;

.field private final synthetic val$response:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$4;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$4$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$4;

    iput-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$4$1;->val$response:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    iput-object p3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$4$1;->val$is:Ljava/io/InputStream;

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$4$1;->val$response:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->end()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 386
    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$4$1;->val$is:Ljava/io/InputStream;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 387
    return-void
.end method
