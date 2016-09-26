.class public Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnHeadersReceivedData;
.super Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnSocketData;
.source "AsyncHttpClientMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnHeadersReceivedData"
.end annotation


# instance fields
.field public headers:Lcom/koushikdutta/async/http/libcore/ResponseHeaders;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnSocketData;-><init>()V

    return-void
.end method
