.class Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;
.super Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;
.source "ResponseCacheMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/AsyncSocket;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/ResponseCacheMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CachedSocket"
.end annotation


# instance fields
.field closed:Z

.field closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field open:Z

.field final synthetic this$0:Lcom/koushikdutta/async/http/ResponseCacheMiddleware;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/ResponseCacheMiddleware;Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;J)V
    .locals 1
    .param p2, "cacheResponse"    # Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;
    .param p3, "contentLength"    # J

    .prologue
    .line 691
    iput-object p1, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;->this$0:Lcom/koushikdutta/async/http/ResponseCacheMiddleware;

    .line 692
    invoke-direct {p0, p2, p3, p4}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;-><init>(Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;J)V

    .line 693
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;->allowEnd:Z

    .line 694
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 738
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;->open:Z

    .line 739
    return-void
.end method

.method public end()V
    .locals 0

    .prologue
    .line 698
    return-void
.end method

.method public getClosedCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;->closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;->this$0:Lcom/koushikdutta/async/http/ResponseCacheMiddleware;

    # getter for: Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->server:Lcom/koushikdutta/async/AsyncServer;
    invoke-static {v0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->access$0(Lcom/koushikdutta/async/http/ResponseCacheMiddleware;)Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public getWriteableCallback()Lcom/koushikdutta/async/callback/WritableCallback;
    .locals 1

    .prologue
    .line 724
    const/4 v0, 0x0

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 733
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;->open:Z

    return v0
.end method

.method protected report(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 702
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;->report(Ljava/lang/Exception;)V

    .line 703
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;->closed:Z

    if-eqz v0, :cond_1

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;->closed:Z

    .line 706
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;->closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;->closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0
    .param p1, "handler"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 748
    iput-object p1, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;->closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 749
    return-void
.end method

.method public setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .locals 0
    .param p1, "handler"    # Lcom/koushikdutta/async/callback/WritableCallback;

    .prologue
    .line 729
    return-void
.end method

.method public write(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 0
    .param p1, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    .line 719
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    .line 720
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 713
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 714
    return-void
.end method
