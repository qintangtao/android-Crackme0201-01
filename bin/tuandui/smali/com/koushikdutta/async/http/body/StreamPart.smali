.class public abstract Lcom/koushikdutta/async/http/body/StreamPart;
.super Lcom/koushikdutta/async/http/body/Part;
.source "StreamPart.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/util/List;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p4, "contentDisposition":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/body/Part;-><init>(Ljava/lang/String;JLjava/util/List;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public write(Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 2
    .param p1, "sink"    # Lcom/koushikdutta/async/DataSink;
    .param p2, "callback"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 20
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/StreamPart;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 21
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1, p1, p2}, Lcom/koushikdutta/async/Util;->pump(Ljava/io/InputStream;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p2, v0}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    goto :goto_0
.end method
