.class Lcom/koushikdutta/async/http/HybiParser$5;
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
    iput-object p1, p0, Lcom/koushikdutta/async/http/HybiParser$5;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 3
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    .line 193
    sget-boolean v1, Lcom/koushikdutta/async/http/HybiParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v1

    iget-object v2, p0, Lcom/koushikdutta/async/http/HybiParser$5;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    # getter for: Lcom/koushikdutta/async/http/HybiParser;->mLength:I
    invoke-static {v2}, Lcom/koushikdutta/async/http/HybiParser;->access$7(Lcom/koushikdutta/async/http/HybiParser;)I

    move-result v2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/HybiParser$5;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    iget-object v2, p0, Lcom/koushikdutta/async/http/HybiParser$5;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    # getter for: Lcom/koushikdutta/async/http/HybiParser;->mLength:I
    invoke-static {v2}, Lcom/koushikdutta/async/http/HybiParser;->access$7(Lcom/koushikdutta/async/http/HybiParser;)I

    move-result v2

    new-array v2, v2, [B

    invoke-static {v1, v2}, Lcom/koushikdutta/async/http/HybiParser;->access$8(Lcom/koushikdutta/async/http/HybiParser;[B)V

    .line 195
    iget-object v1, p0, Lcom/koushikdutta/async/http/HybiParser$5;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    # getter for: Lcom/koushikdutta/async/http/HybiParser;->mPayload:[B
    invoke-static {v1}, Lcom/koushikdutta/async/http/HybiParser;->access$9(Lcom/koushikdutta/async/http/HybiParser;)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/HybiParser$5;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    # invokes: Lcom/koushikdutta/async/http/HybiParser;->emitFrame()V
    invoke-static {v1}, Lcom/koushikdutta/async/http/HybiParser;->access$10(Lcom/koushikdutta/async/http/HybiParser;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/HybiParser$5;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/koushikdutta/async/http/HybiParser;->access$6(Lcom/koushikdutta/async/http/HybiParser;I)V

    .line 204
    iget-object v1, p0, Lcom/koushikdutta/async/http/HybiParser$5;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/HybiParser;->parse()V

    .line 205
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/koushikdutta/async/http/HybiParser$5;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/HybiParser;->report(Ljava/lang/Exception;)V

    .line 201
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
