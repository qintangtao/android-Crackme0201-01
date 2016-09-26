.class Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1$1;
.super Ljava/lang/Object;
.source "InputStreamDataEmitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1$1;->this$1:Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1$1;->this$1:Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;

    # getter for: Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;->this$0:Lcom/koushikdutta/async/stream/InputStreamDataEmitter;
    invoke-static {v0}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;->access$0(Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;)Lcom/koushikdutta/async/stream/InputStreamDataEmitter;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1$1;->this$1:Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;

    # getter for: Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;->this$0:Lcom/koushikdutta/async/stream/InputStreamDataEmitter;
    invoke-static {v1}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;->access$0(Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;)Lcom/koushikdutta/async/stream/InputStreamDataEmitter;

    move-result-object v1

    iget-object v1, v1, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/Util;->emitAllData(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 84
    return-void
.end method
