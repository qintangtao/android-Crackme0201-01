.class Lcom/koushikdutta/async/future/Continuation$2;
.super Ljava/lang/Object;
.source "Continuation.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/future/Continuation;->wrap()Lcom/koushikdutta/async/callback/CompletedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mThisCompleted:Z

.field final synthetic this$0:Lcom/koushikdutta/async/future/Continuation;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/future/Continuation;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/future/Continuation$2;->this$0:Lcom/koushikdutta/async/future/Continuation;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/Continuation$2;->mThisCompleted:Z

    if-eqz v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/future/Continuation$2;->mThisCompleted:Z

    .line 59
    sget-boolean v0, Lcom/koushikdutta/async/future/Continuation;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation$2;->this$0:Lcom/koushikdutta/async/future/Continuation;

    # getter for: Lcom/koushikdutta/async/future/Continuation;->waiting:Z
    invoke-static {v0}, Lcom/koushikdutta/async/future/Continuation;->access$0(Lcom/koushikdutta/async/future/Continuation;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation$2;->this$0:Lcom/koushikdutta/async/future/Continuation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/koushikdutta/async/future/Continuation;->access$1(Lcom/koushikdutta/async/future/Continuation;Z)V

    .line 61
    if-nez p1, :cond_2

    .line 62
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation$2;->this$0:Lcom/koushikdutta/async/future/Continuation;

    # invokes: Lcom/koushikdutta/async/future/Continuation;->next()V
    invoke-static {v0}, Lcom/koushikdutta/async/future/Continuation;->access$2(Lcom/koushikdutta/async/future/Continuation;)V

    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation$2;->this$0:Lcom/koushikdutta/async/future/Continuation;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/future/Continuation;->reportCompleted(Ljava/lang/Exception;)V

    goto :goto_0
.end method
