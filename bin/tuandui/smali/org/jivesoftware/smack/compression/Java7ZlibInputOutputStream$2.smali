.class Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream$2;
.super Ljava/util/zip/DeflaterOutputStream;
.source "Java7ZlibInputOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream;->getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream;Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/io/OutputStream;
    .param p3, "$anonymous1"    # Ljava/util/zip/Deflater;

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream$2;->this$0:Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream;

    .line 95
    invoke-direct {p0, p2, p3}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 97
    # getter for: Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream;->supported:Z
    invoke-static {}, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream;->access$0()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    invoke-super {p0}, Ljava/util/zip/DeflaterOutputStream;->flush()V

    .line 122
    :goto_0
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    .line 102
    .local v0, "count":I
    iget-object v1, p0, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream$2;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v1

    if-nez v1, :cond_2

    .line 104
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream$2;->def:Ljava/util/zip/Deflater;

    iget-object v2, p0, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream$2;->buf:[B

    iget-object v3, p0, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream$2;->buf:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    .line 105
    iget-object v1, p0, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream$2;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream$2;->buf:[B

    invoke-virtual {v1, v2, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 103
    if-gtz v0, :cond_1

    .line 107
    iget-object v1, p0, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream$2;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 111
    :cond_2
    :try_start_0
    # getter for: Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream;->method:Ljava/lang/reflect/Method;
    invoke-static {}, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream;->access$1()Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream$2;->def:Ljava/util/zip/Deflater;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream$2;->buf:[B

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream$2;->buf:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 112
    iget-object v1, p0, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream$2;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream$2;->buf:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 110
    if-gtz v0, :cond_2

    .line 121
    invoke-super {p0}, Ljava/util/zip/DeflaterOutputStream;->flush()V

    goto :goto_0

    .line 115
    :catch_0
    move-exception v1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Can\'t flush"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :catch_1
    move-exception v1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Can\'t flush"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :catch_2
    move-exception v1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Can\'t flush"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
