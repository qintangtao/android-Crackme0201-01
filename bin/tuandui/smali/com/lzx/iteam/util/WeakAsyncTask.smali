.class public abstract Lcom/lzx/iteam/util/WeakAsyncTask;
.super Landroid/os/AsyncTask;
.source "WeakAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        "WeakTarget:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field protected mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TWeakTarget;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWeakTarget;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Lcom/lzx/iteam/util/WeakAsyncTask;, "Lcom/lzx/iteam/util/WeakAsyncTask<TParams;TProgress;TResult;TWeakTarget;>;"
    .local p1, "target":Ljava/lang/Object;, "TWeakTarget;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lzx/iteam/util/WeakAsyncTask;->mTarget:Ljava/lang/ref/WeakReference;

    .line 14
    return-void
.end method


# virtual methods
.method protected varargs abstract doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWeakTarget;[TParams;)TResult;"
        }
    .end annotation
.end method

.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/lzx/iteam/util/WeakAsyncTask;, "Lcom/lzx/iteam/util/WeakAsyncTask<TParams;TProgress;TResult;TWeakTarget;>;"
    iget-object v1, p0, Lcom/lzx/iteam/util/WeakAsyncTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 27
    .local v0, "target":Ljava/lang/Object;, "TWeakTarget;"
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0, v0, p1}, Lcom/lzx/iteam/util/WeakAsyncTask;->doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 30
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/lzx/iteam/util/WeakAsyncTask;, "Lcom/lzx/iteam/util/WeakAsyncTask<TParams;TProgress;TResult;TWeakTarget;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v1, p0, Lcom/lzx/iteam/util/WeakAsyncTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 37
    .local v0, "target":Ljava/lang/Object;, "TWeakTarget;"
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0, v0, p1}, Lcom/lzx/iteam/util/WeakAsyncTask;->onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWeakTarget;TResult;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/lzx/iteam/util/WeakAsyncTask;, "Lcom/lzx/iteam/util/WeakAsyncTask<TParams;TProgress;TResult;TWeakTarget;>;"
    .local p1, "target":Ljava/lang/Object;, "TWeakTarget;"
    .local p2, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 18
    .local p0, "this":Lcom/lzx/iteam/util/WeakAsyncTask;, "Lcom/lzx/iteam/util/WeakAsyncTask<TParams;TProgress;TResult;TWeakTarget;>;"
    iget-object v1, p0, Lcom/lzx/iteam/util/WeakAsyncTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 19
    .local v0, "target":Ljava/lang/Object;, "TWeakTarget;"
    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/util/WeakAsyncTask;->onPreExecute(Ljava/lang/Object;)V

    .line 22
    :cond_0
    return-void
.end method

.method protected onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWeakTarget;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/lzx/iteam/util/WeakAsyncTask;, "Lcom/lzx/iteam/util/WeakAsyncTask<TParams;TProgress;TResult;TWeakTarget;>;"
    .local p1, "target":Ljava/lang/Object;, "TWeakTarget;"
    return-void
.end method
