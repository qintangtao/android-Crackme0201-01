.class public Lcom/koushikdutta/async/http/filter/GZIPInputFilter;
.super Lcom/koushikdutta/async/http/filter/InflaterInputFilter;
.source "GZIPInputFilter.java"


# static fields
.field private static final FCOMMENT:I = 0x10

.field private static final FEXTRA:I = 0x4

.field private static final FHCRC:I = 0x2

.field private static final FNAME:I = 0x8


# instance fields
.field protected crc:Ljava/util/zip/CRC32;

.field mNeedsHeader:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 27
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;-><init>(Ljava/util/zip/Inflater;)V

    .line 30
    iput-boolean v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->mNeedsHeader:Z

    .line 31
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->crc:Ljava/util/zip/CRC32;

    .line 28
    return-void
.end method

.method public static unsignedToBytes(B)I
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 34
    and-int/lit16 v0, p0, 0xff

    return v0
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 3
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    .line 40
    iget-boolean v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->mNeedsHeader:Z

    if-eqz v1, :cond_0

    .line 41
    new-instance v0, Lcom/koushikdutta/async/PushParser;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/PushParser;-><init>(Lcom/koushikdutta/async/DataEmitter;)V

    .line 42
    .local v0, "parser":Lcom/koushikdutta/async/PushParser;
    const/16 v1, 0xa

    new-instance v2, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;-><init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter;Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/PushParser;)V

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/PushParser;->readByteArray(ILcom/koushikdutta/async/PushParser$ParseCallback;)Lcom/koushikdutta/async/PushParser;

    .line 124
    .end local v0    # "parser":Lcom/koushikdutta/async/PushParser;
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    goto :goto_0
.end method
