.class Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;
.super Ljava/lang/Object;
.source "AsyncSocketMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/AsyncSocketMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectionInfo"
.end annotation


# instance fields
.field openCount:I

.field queue:Lcom/koushikdutta/async/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/ArrayDeque",
            "<",
            "Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;",
            ">;"
        }
    .end annotation
.end field

.field sockets:Lcom/koushikdutta/async/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/ArrayDeque",
            "<",
            "Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lcom/koushikdutta/async/ArrayDeque;

    invoke-direct {v0}, Lcom/koushikdutta/async/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->queue:Lcom/koushikdutta/async/ArrayDeque;

    .line 108
    new-instance v0, Lcom/koushikdutta/async/ArrayDeque;

    invoke-direct {v0}, Lcom/koushikdutta/async/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->sockets:Lcom/koushikdutta/async/ArrayDeque;

    .line 105
    return-void
.end method
