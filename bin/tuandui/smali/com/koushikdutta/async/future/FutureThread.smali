.class public Lcom/koushikdutta/async/future/FutureThread;
.super Lcom/koushikdutta/async/future/SimpleFuture;
.source "FutureThread.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/koushikdutta/async/future/SimpleFuture",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/future/FutureRunnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/FutureRunnable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 7
    .local p0, "this":Lcom/koushikdutta/async/future/FutureThread;, "Lcom/koushikdutta/async/future/FutureThread<TT;>;"
    .local p1, "runnable":Lcom/koushikdutta/async/future/FutureRunnable;, "Lcom/koushikdutta/async/future/FutureRunnable<TT;>;"
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/koushikdutta/async/future/FutureThread$1;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/future/FutureThread$1;-><init>(Lcom/koushikdutta/async/future/FutureThread;Lcom/koushikdutta/async/future/FutureRunnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 18
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 19
    return-void
.end method
