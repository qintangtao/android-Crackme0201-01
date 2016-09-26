.class Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$4$1;
.super Ljava/lang/Object;
.source "AsyncHttpResponseImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$4;->onCompleted(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$4;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$4$1;->this$1:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$4;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$4$1;->this$1:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$4;

    # getter for: Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$4;->this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;
    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$4;->access$0(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$4;)Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->onRequestCompleted(Ljava/lang/Exception;)V

    .line 74
    return-void
.end method
