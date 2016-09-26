.class public Lcom/koushikdutta/async/http/body/StreamBody;
.super Ljava/lang/Object;
.source "StreamBody.java"

# interfaces
.implements Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "application/binary"


# instance fields
.field length:I

.field stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "length"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/StreamBody;->stream:Ljava/io/InputStream;

    .line 22
    iput p2, p0, Lcom/koushikdutta/async/http/body/StreamBody;->length:I

    .line 23
    return-void
.end method


# virtual methods
.method public get()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/StreamBody;->stream:Ljava/io/InputStream;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/StreamBody;->get()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "application/binary"

    return-object v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/koushikdutta/async/http/body/StreamBody;->length:I

    return v0
.end method

.method public parse(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 2
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "completed"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 32
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public readFullyOnRequest()Z
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public write(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 4
    .param p1, "request"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p2, "sink"    # Lcom/koushikdutta/async/DataSink;
    .param p3, "completed"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 27
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/StreamBody;->stream:Ljava/io/InputStream;

    iget v0, p0, Lcom/koushikdutta/async/http/body/StreamBody;->length:I

    if-gez v0, :cond_0

    const v0, 0x7fffffff

    :goto_0
    int-to-long v2, v0

    invoke-static {v1, v2, v3, p2, p3}, Lcom/koushikdutta/async/Util;->pump(Ljava/io/InputStream;JLcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 28
    return-void

    .line 27
    :cond_0
    iget v0, p0, Lcom/koushikdutta/async/http/body/StreamBody;->length:I

    goto :goto_0
.end method
