.class Lcom/koushikdutta/async/Util$4;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/WritableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/Util;->pump(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$dataCallback:Lcom/koushikdutta/async/callback/DataCallback;

.field private final synthetic val$emitter:Lcom/koushikdutta/async/DataEmitter;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/callback/DataCallback;Lcom/koushikdutta/async/DataEmitter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/Util$4;->val$dataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    iput-object p2, p0, Lcom/koushikdutta/async/Util$4;->val$emitter:Lcom/koushikdutta/async/DataEmitter;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteable()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/koushikdutta/async/Util$4;->val$dataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    iget-object v1, p0, Lcom/koushikdutta/async/Util$4;->val$emitter:Lcom/koushikdutta/async/DataEmitter;

    new-instance v2, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v2}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/koushikdutta/async/callback/DataCallback;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 135
    iget-object v0, p0, Lcom/koushikdutta/async/Util$4;->val$emitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->resume()V

    .line 136
    return-void
.end method
