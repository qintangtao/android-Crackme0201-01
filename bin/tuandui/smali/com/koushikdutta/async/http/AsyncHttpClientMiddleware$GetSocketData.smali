.class public Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;
.super Ljava/lang/Object;
.source "AsyncHttpClientMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetSocketData"
.end annotation


# instance fields
.field public connectCallback:Lcom/koushikdutta/async/callback/ConnectCallback;

.field public request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

.field public socketCancellable:Lcom/koushikdutta/async/future/Cancellable;

.field public state:Lcom/koushikdutta/async/util/UntypedHashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/koushikdutta/async/util/UntypedHashtable;

    invoke-direct {v0}, Lcom/koushikdutta/async/util/UntypedHashtable;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->state:Lcom/koushikdutta/async/util/UntypedHashtable;

    .line 13
    return-void
.end method
