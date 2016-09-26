.class public Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnSocketData;
.super Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;
.source "AsyncHttpClientMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnSocketData"
.end annotation


# instance fields
.field public socket:Lcom/koushikdutta/async/AsyncSocket;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;-><init>()V

    return-void
.end method
