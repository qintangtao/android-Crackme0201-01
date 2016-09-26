.class public Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;
.super Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;
.source "AsyncHttpClientMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnRequestCompleteData"
.end annotation


# instance fields
.field public exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;-><init>()V

    return-void
.end method
