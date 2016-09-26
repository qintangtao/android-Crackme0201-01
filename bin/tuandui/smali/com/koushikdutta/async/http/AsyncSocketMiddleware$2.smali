.class Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;
.super Ljava/lang/Object;
.source "AsyncSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->recycleSocket(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

.field private final synthetic val$idleSocketHolder:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;

.field private final synthetic val$lookup:Ljava/lang/String;

.field private final synthetic val$socket:Lcom/koushikdutta/async/AsyncSocket;

.field private final synthetic val$sockets:Lcom/koushikdutta/async/ArrayDeque;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/ArrayDeque;Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->this$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->val$sockets:Lcom/koushikdutta/async/ArrayDeque;

    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->val$idleSocketHolder:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;

    iput-object p4, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    iput-object p5, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->val$lookup:Ljava/lang/String;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 298
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->this$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    monitor-enter v1

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->val$sockets:Lcom/koushikdutta/async/ArrayDeque;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->val$idleSocketHolder:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 300
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/koushikdutta/async/AsyncSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 301
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->this$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->val$lookup:Ljava/lang/String;

    # invokes: Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->maybeCleanupConnectionInfo(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->access$2(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Ljava/lang/String;)V

    .line 298
    monitor-exit v1

    .line 303
    return-void

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
