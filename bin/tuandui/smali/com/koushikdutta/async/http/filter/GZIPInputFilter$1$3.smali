.class Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;
.super Ljava/lang/Object;
.source "GZIPInputFilter.java"

# interfaces
.implements Lcom/koushikdutta/async/PushParser$ParseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->next()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/PushParser$ParseCallback",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

.field private final synthetic val$emitter:Lcom/koushikdutta/async/DataEmitter;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;Lcom/koushikdutta/async/DataEmitter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iput-object p2, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;->val$emitter:Lcom/koushikdutta/async/DataEmitter;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parsed(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;->parsed([B)V

    return-void
.end method

.method public parsed([B)V
    .locals 5
    .param p1, "header"    # [B

    .prologue
    const/4 v4, 0x0

    .line 103
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v4, v1}, Lcom/koushikdutta/async/http/libcore/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    .line 104
    .local v0, "crc16":S
    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    # getter for: Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->this$0:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;
    invoke-static {v1}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->access$2(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    move-result-object v1

    iget-object v1, v1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v1, v2

    int-to-short v1, v1

    if-eq v1, v0, :cond_0

    .line 105
    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    # getter for: Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->this$0:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;
    invoke-static {v1}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->access$2(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    move-result-object v1

    new-instance v2, Ljava/io/IOException;

    const-string v3, "CRC mismatch"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->report(Ljava/lang/Exception;)V

    .line 112
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    # getter for: Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->this$0:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;
    invoke-static {v1}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->access$2(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    move-result-object v1

    iget-object v1, v1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    .line 109
    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    # getter for: Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->this$0:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;
    invoke-static {v1}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->access$2(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    move-result-object v1

    iput-boolean v4, v1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->mNeedsHeader:Z

    .line 110
    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    # getter for: Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->this$0:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;
    invoke-static {v1}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->access$2(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;->val$emitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    goto :goto_0
.end method
