.class Lcom/koushikdutta/async/http/HybiParser$3;
.super Ljava/lang/Object;
.source "HybiParser.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/HybiParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/HybiParser;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/HybiParser;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/HybiParser$3;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 3
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    .line 167
    iget-object v2, p0, Lcom/koushikdutta/async/http/HybiParser$3;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    # getter for: Lcom/koushikdutta/async/http/HybiParser;->mLengthSize:I
    invoke-static {v2}, Lcom/koushikdutta/async/http/HybiParser;->access$2(Lcom/koushikdutta/async/http/HybiParser;)I

    move-result v2

    new-array v0, v2, [B

    .line 168
    .local v0, "bytes":[B
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V

    .line 170
    :try_start_0
    iget-object v2, p0, Lcom/koushikdutta/async/http/HybiParser$3;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    # invokes: Lcom/koushikdutta/async/http/HybiParser;->parseExtendedLength([B)V
    invoke-static {v2, v0}, Lcom/koushikdutta/async/http/HybiParser;->access$3(Lcom/koushikdutta/async/http/HybiParser;[B)V
    :try_end_0
    .catch Lcom/koushikdutta/async/http/HybiParser$ProtocolError; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    iget-object v2, p0, Lcom/koushikdutta/async/http/HybiParser$3;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/HybiParser;->parse()V

    .line 177
    return-void

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Lcom/koushikdutta/async/http/HybiParser$ProtocolError;
    iget-object v2, p0, Lcom/koushikdutta/async/http/HybiParser$3;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {v2, v1}, Lcom/koushikdutta/async/http/HybiParser;->report(Ljava/lang/Exception;)V

    .line 174
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/HybiParser$ProtocolError;->printStackTrace()V

    goto :goto_0
.end method
