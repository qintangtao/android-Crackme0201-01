.class Lcom/koushikdutta/async/http/WebSocketImpl$1;
.super Lcom/koushikdutta/async/http/HybiParser;
.source "WebSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/WebSocketImpl;->setupParser(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/WebSocketImpl;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/WebSocketImpl;Lcom/koushikdutta/async/DataEmitter;)V
    .locals 0
    .param p2, "$anonymous0"    # Lcom/koushikdutta/async/DataEmitter;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl$1;->this$0:Lcom/koushikdutta/async/http/WebSocketImpl;

    .line 75
    invoke-direct {p0, p2}, Lcom/koushikdutta/async/http/HybiParser;-><init>(Lcom/koushikdutta/async/DataEmitter;)V

    return-void
.end method


# virtual methods
.method protected onDisconnect(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl$1;->this$0:Lcom/koushikdutta/async/http/WebSocketImpl;

    # getter for: Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;
    invoke-static {v0}, Lcom/koushikdutta/async/http/WebSocketImpl;->access$2(Lcom/koushikdutta/async/http/WebSocketImpl;)Lcom/koushikdutta/async/AsyncSocket;

    move-result-object v0

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    .line 96
    return-void
.end method

.method protected onMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "payload"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl$1;->this$0:Lcom/koushikdutta/async/http/WebSocketImpl;

    # getter for: Lcom/koushikdutta/async/http/WebSocketImpl;->mStringCallback:Lcom/koushikdutta/async/http/WebSocket$StringCallback;
    invoke-static {v0}, Lcom/koushikdutta/async/http/WebSocketImpl;->access$1(Lcom/koushikdutta/async/http/WebSocketImpl;)Lcom/koushikdutta/async/http/WebSocket$StringCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl$1;->this$0:Lcom/koushikdutta/async/http/WebSocketImpl;

    # getter for: Lcom/koushikdutta/async/http/WebSocketImpl;->mStringCallback:Lcom/koushikdutta/async/http/WebSocket$StringCallback;
    invoke-static {v0}, Lcom/koushikdutta/async/http/WebSocketImpl;->access$1(Lcom/koushikdutta/async/http/WebSocketImpl;)Lcom/koushikdutta/async/http/WebSocket$StringCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/http/WebSocket$StringCallback;->onStringAvailable(Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method

.method protected onMessage([B)V
    .locals 2
    .param p1, "payload"    # [B

    .prologue
    .line 83
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl$1;->this$0:Lcom/koushikdutta/async/http/WebSocketImpl;

    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/ByteBufferList;-><init>([B)V

    # invokes: Lcom/koushikdutta/async/http/WebSocketImpl;->addAndEmit(Lcom/koushikdutta/async/ByteBufferList;)V
    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/WebSocketImpl;->access$0(Lcom/koushikdutta/async/http/WebSocketImpl;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 84
    return-void
.end method

.method protected report(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl$1;->this$0:Lcom/koushikdutta/async/http/WebSocketImpl;

    iget-object v0, v0, Lcom/koushikdutta/async/http/WebSocketImpl;->mExceptionCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl$1;->this$0:Lcom/koushikdutta/async/http/WebSocketImpl;

    iget-object v0, v0, Lcom/koushikdutta/async/http/WebSocketImpl;->mExceptionCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    .line 80
    :cond_0
    return-void
.end method

.method protected sendFrame([B)V
    .locals 2
    .param p1, "frame"    # [B

    .prologue
    .line 99
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl$1;->this$0:Lcom/koushikdutta/async/http/WebSocketImpl;

    iget-object v0, v0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/BufferedDataSink;->write(Ljava/nio/ByteBuffer;)V

    .line 100
    return-void
.end method
