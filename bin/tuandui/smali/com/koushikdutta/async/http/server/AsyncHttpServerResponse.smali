.class public interface abstract Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;
.super Ljava/lang/Object;
.source "AsyncHttpServerResponse.java"

# interfaces
.implements Lcom/koushikdutta/async/DataSink;
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# virtual methods
.method public abstract end()V
.end method

.method public abstract getHeaders()Lcom/koushikdutta/async/http/libcore/ResponseHeaders;
.end method

.method public abstract getSocket()Lcom/koushikdutta/async/AsyncSocket;
.end method

.method public abstract onCompleted(Ljava/lang/Exception;)V
.end method

.method public abstract redirect(Ljava/lang/String;)V
.end method

.method public abstract responseCode(I)V
.end method

.method public abstract send(Ljava/lang/String;)V
.end method

.method public abstract send(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract send(Lorg/json/JSONObject;)V
.end method

.method public abstract sendFile(Ljava/io/File;)V
.end method

.method public abstract sendStream(Ljava/io/InputStream;J)V
.end method

.method public abstract setContentType(Ljava/lang/String;)V
.end method

.method public abstract writeHead()V
.end method
