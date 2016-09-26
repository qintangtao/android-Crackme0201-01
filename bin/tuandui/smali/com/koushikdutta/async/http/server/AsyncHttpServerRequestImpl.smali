.class public abstract Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "AsyncHttpServerRequestImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# instance fields
.field mBody:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

.field mHeaderCallback:Lcom/koushikdutta/async/LineEmitter$StringCallback;

.field private mHeaders:Lcom/koushikdutta/async/http/libcore/RequestHeaders;

.field mMatcher:Ljava/util/regex/Matcher;

.field private mRawHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

.field private mReporter:Lcom/koushikdutta/async/callback/CompletedCallback;

.field mSocket:Lcom/koushikdutta/async/AsyncSocket;

.field method:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    .line 18
    new-instance v0, Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/libcore/RawHeaders;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mRawHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    .line 22
    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$1;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mReporter:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 47
    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mHeaderCallback:Lcom/koushikdutta/async/LineEmitter$StringCallback;

    .line 17
    return-void
.end method

.method static synthetic access$0(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)Lcom/koushikdutta/async/http/libcore/RawHeaders;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mRawHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    return-object v0
.end method

.method static synthetic access$1(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mReporter:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method static synthetic access$2(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;Lcom/koushikdutta/async/http/libcore/RequestHeaders;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mHeaders:Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    return-void
.end method


# virtual methods
.method public getBody()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mBody:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    return-object v0
.end method

.method public getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mHeaders:Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    return-object v0
.end method

.method public getMatcher()Ljava/util/regex/Matcher;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mMatcher:Ljava/util/regex/Matcher;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->method:Ljava/lang/String;

    return-object v0
.end method

.method getRawHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mRawHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    return-object v0
.end method

.method public getSocket()Lcom/koushikdutta/async/AsyncSocket;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->isPaused()Z

    move-result v0

    return v0
.end method

.method public onCompleted(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->report(Ljava/lang/Exception;)V

    .line 34
    return-void
.end method

.method protected abstract onHeadersReceived()V
.end method

.method protected onNotHttp()V
    .locals 3

    .prologue
    .line 39
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not http: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mRawHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not http: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mRawHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method protected onUnknownBody(Lcom/koushikdutta/async/http/libcore/RawHeaders;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .locals 1
    .param p1, "headers"    # Lcom/koushikdutta/async/http/libcore/RawHeaders;

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->pause()V

    .line 139
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->resume()V

    .line 144
    return-void
.end method

.method public setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/koushikdutta/async/callback/DataCallback;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/AsyncSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 113
    return-void
.end method

.method setSocket(Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 2
    .param p1, "socket"    # Lcom/koushikdutta/async/AsyncSocket;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    .line 94
    new-instance v0, Lcom/koushikdutta/async/LineEmitter;

    invoke-direct {v0}, Lcom/koushikdutta/async/LineEmitter;-><init>()V

    .line 95
    .local v0, "liner":Lcom/koushikdutta/async/LineEmitter;
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/AsyncSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 96
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mHeaderCallback:Lcom/koushikdutta/async/LineEmitter$StringCallback;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/LineEmitter;->setLineCallback(Lcom/koushikdutta/async/LineEmitter$StringCallback;)V

    .line 97
    return-void
.end method
