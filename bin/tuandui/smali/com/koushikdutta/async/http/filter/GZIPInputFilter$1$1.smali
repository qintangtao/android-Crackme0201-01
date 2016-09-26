.class Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;
.super Ljava/lang/Object;
.source "GZIPInputFilter.java"

# interfaces
.implements Lcom/koushikdutta/async/PushParser$ParseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->parsed([B)V
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

.field private final synthetic val$parser:Lcom/koushikdutta/async/PushParser;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;Lcom/koushikdutta/async/PushParser;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iput-object p2, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->val$parser:Lcom/koushikdutta/async/PushParser;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;)Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic parsed(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->parsed([B)V

    return-void
.end method

.method public parsed([B)V
    .locals 4
    .param p1, "header"    # [B

    .prologue
    const/4 v3, 0x0

    .line 61
    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-boolean v1, v1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->hcrc:Z

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    # getter for: Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->this$0:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;
    invoke-static {v1}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->access$2(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    move-result-object v1

    iget-object v1, v1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->crc:Ljava/util/zip/CRC32;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v3, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 64
    :cond_0
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v3, v1}, Lcom/koushikdutta/async/http/libcore/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v1

    const v2, 0xffff

    and-int v0, v1, v2

    .line 65
    .local v0, "length":I
    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->val$parser:Lcom/koushikdutta/async/PushParser;

    new-instance v2, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1$1;

    invoke-direct {v2, p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1$1;-><init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;)V

    invoke-virtual {v1, v0, v2}, Lcom/koushikdutta/async/PushParser;->readByteArray(ILcom/koushikdutta/async/PushParser$ParseCallback;)Lcom/koushikdutta/async/PushParser;

    .line 73
    return-void
.end method
