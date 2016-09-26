.class Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;
.super Ljava/lang/Object;
.source "AsyncSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->transform([Ljava/net/InetAddress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->lastException:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    new-instance v1, Lcom/koushikdutta/async/http/ConnectionFailedException;

    const-string v2, "Unable to connect to remote address"

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/http/ConnectionFailedException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->lastException:Ljava/lang/Exception;

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->lastException:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->setComplete(Ljava/lang/Exception;)Z

    .line 212
    return-void
.end method
