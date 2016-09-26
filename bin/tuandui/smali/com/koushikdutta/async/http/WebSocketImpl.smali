.class public Lcom/koushikdutta/async/http/WebSocketImpl;
.super Ljava/lang/Object;
.source "WebSocketImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/http/WebSocket;


# static fields
.field static final MAGIC:Ljava/lang/String; = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"


# instance fields
.field private mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

.field mExceptionCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field mParser:Lcom/koushikdutta/async/http/HybiParser;

.field mSink:Lcom/koushikdutta/async/BufferedDataSink;

.field private mSocket:Lcom/koushikdutta/async/AsyncSocket;

.field private mStringCallback:Lcom/koushikdutta/async/http/WebSocket$StringCallback;

.field private pending:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/koushikdutta/async/ByteBufferList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 2
    .param p1, "socket"    # Lcom/koushikdutta/async/AsyncSocket;

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    .line 151
    new-instance v0, Lcom/koushikdutta/async/BufferedDataSink;

    iget-object v1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/BufferedDataSink;-><init>(Lcom/koushikdutta/async/DataSink;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    .line 152
    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V
    .locals 8
    .param p1, "request"    # Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;
    .param p2, "response"    # Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .prologue
    const/4 v7, 0x0

    .line 111
    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getSocket()Lcom/koushikdutta/async/AsyncSocket;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/koushikdutta/async/http/WebSocketImpl;-><init>(Lcom/koushikdutta/async/AsyncSocket;)V

    .line 113
    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v4

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v4

    const-string v5, "Sec-WebSocket-Key"

    invoke-virtual {v4, v5}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "key":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "concat":Ljava/lang/String;
    invoke-static {v0}, Lcom/koushikdutta/async/http/WebSocketImpl;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "sha1":Ljava/lang/String;
    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v4

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v4

    const-string v5, "Origin"

    invoke-virtual {v4, v5}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    const/16 v4, 0x65

    invoke-interface {p2, v4}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->responseCode(I)V

    .line 119
    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->getHeaders()Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    move-result-object v4

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v4

    const-string v5, "Upgrade"

    const-string v6, "WebSocket"

    invoke-virtual {v4, v5, v6}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->getHeaders()Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    move-result-object v4

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v4

    const-string v5, "Connection"

    const-string v6, "Upgrade"

    invoke-virtual {v4, v5, v6}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->getHeaders()Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    move-result-object v4

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v4

    const-string v5, "Sec-WebSocket-Accept"

    invoke-virtual {v4, v5, v3}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v4

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v4

    const-string v5, "Sec-WebSocket-Protocol"

    invoke-virtual {v4, v5}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "protocol":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 125
    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->getHeaders()Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    move-result-object v4

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v4

    const-string v5, "Sec-WebSocket-Protocol"

    invoke-virtual {v4, v5, v2}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->writeHead()V

    .line 130
    invoke-direct {p0, v7, v7}, Lcom/koushikdutta/async/http/WebSocketImpl;->setupParser(ZZ)V

    .line 131
    return-void
.end method

.method private static SHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 40
    :try_start_0
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 41
    .local v0, "md":Ljava/security/MessageDigest;
    const-string v2, "iso-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 42
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 43
    .local v1, "sha1hash":[B
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 46
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "sha1hash":[B
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/koushikdutta/async/http/WebSocketImpl;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/WebSocketImpl;->addAndEmit(Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method

.method static synthetic access$1(Lcom/koushikdutta/async/http/WebSocketImpl;)Lcom/koushikdutta/async/http/WebSocket$StringCallback;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mStringCallback:Lcom/koushikdutta/async/http/WebSocket$StringCallback;

    return-object v0
.end method

.method static synthetic access$2(Lcom/koushikdutta/async/http/WebSocketImpl;)Lcom/koushikdutta/async/AsyncSocket;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    return-object v0
.end method

.method private addAndEmit(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 2
    .param p1, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->pending:Ljava/util/LinkedList;

    if-nez v0, :cond_2

    .line 56
    invoke-static {p0, p1}, Lcom/koushikdutta/async/Util;->emitAllData(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 57
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->pending:Ljava/util/LinkedList;

    .line 59
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "bb":Lcom/koushikdutta/async/ByteBufferList;
    check-cast p1, Lcom/koushikdutta/async/ByteBufferList;

    .line 66
    .restart local p1    # "bb":Lcom/koushikdutta/async/ByteBufferList;
    invoke-static {p0, p1}, Lcom/koushikdutta/async/Util;->emitAllData(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 67
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-lez v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->pending:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/WebSocketImpl;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->pending:Ljava/util/LinkedList;

    goto :goto_0
.end method

.method public static addWebSocketUpgradeHeaders(Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;)V
    .locals 4
    .param p0, "req"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v2

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v0

    .line 135
    .local v0, "headers":Lcom/koushikdutta/async/http/libcore/RawHeaders;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v2}, Lcom/koushikdutta/async/http/WebSocketImpl;->toByteArray(Ljava/util/UUID;)[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "key":Ljava/lang/String;
    const-string v2, "Sec-WebSocket-Version"

    const-string v3, "13"

    invoke-virtual {v0, v2, v3}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v2, "Sec-WebSocket-Key"

    invoke-virtual {v0, v2, v1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v2, "Sec-WebSocket-Extensions"

    const-string v3, "x-webkit-deflate-frame"

    invoke-virtual {v0, v2, v3}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v2, "Connection"

    const-string v3, "Upgrade"

    invoke-virtual {v0, v2, v3}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v2, "Upgrade"

    const-string v3, "websocket"

    invoke-virtual {v0, v2, v3}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    if-eqz p1, :cond_0

    .line 142
    const-string v2, "Sec-WebSocket-Protocol"

    invoke-virtual {v0, v2, p1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    const-string v2, "Pragma"

    const-string v3, "no-cache"

    invoke-virtual {v0, v2, v3}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v2, "Cache-Control"

    const-string v3, "no-cache"

    invoke-virtual {v0, v2, v3}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v2

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v2

    const-string v3, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.15 Safari/537.36"

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->setUserAgent(Ljava/lang/String;)V

    .line 147
    :cond_1
    return-void
.end method

.method public static finishHandshake(Lcom/koushikdutta/async/http/libcore/RawHeaders;Lcom/koushikdutta/async/http/AsyncHttpResponse;)Lcom/koushikdutta/async/http/WebSocket;
    .locals 10
    .param p0, "requestHeaders"    # Lcom/koushikdutta/async/http/libcore/RawHeaders;
    .param p1, "response"    # Lcom/koushikdutta/async/http/AsyncHttpResponse;

    .prologue
    const/4 v5, 0x0

    .line 155
    if-nez p1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-object v5

    .line 157
    :cond_1
    invoke-interface {p1}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->getHeaders()Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    move-result-object v7

    invoke-virtual {v7}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v7

    invoke-virtual {v7}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->getResponseCode()I

    move-result v7

    const/16 v8, 0x65

    if-ne v7, v8, :cond_0

    .line 159
    const-string v7, "websocket"

    invoke-interface {p1}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->getHeaders()Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    move-result-object v8

    invoke-virtual {v8}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v8

    const-string v9, "Upgrade"

    invoke-virtual {v8, v9}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 162
    invoke-interface {p1}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->getHeaders()Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    move-result-object v7

    invoke-virtual {v7}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v7

    const-string v8, "Sec-WebSocket-Accept"

    invoke-virtual {v7, v8}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 163
    .local v6, "sha1":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 165
    const-string v7, "Sec-WebSocket-Key"

    invoke-virtual {p0, v7}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "key":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 168
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "concat":Ljava/lang/String;
    invoke-static {v0}, Lcom/koushikdutta/async/http/WebSocketImpl;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "expected":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 172
    const-string v7, "Sec-WebSocket-Extensions"

    invoke-virtual {p0, v7}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "extensions":Ljava/lang/String;
    const/4 v1, 0x0

    .line 174
    .local v1, "deflate":Z
    if-eqz v3, :cond_2

    .line 175
    const-string v7, "x-webkit-deflate-frame"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 176
    const/4 v1, 0x1

    .line 183
    :cond_2
    new-instance v5, Lcom/koushikdutta/async/http/WebSocketImpl;

    invoke-interface {p1}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->detachSocket()Lcom/koushikdutta/async/AsyncSocket;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/koushikdutta/async/http/WebSocketImpl;-><init>(Lcom/koushikdutta/async/AsyncSocket;)V

    .line 184
    .local v5, "ret":Lcom/koushikdutta/async/http/WebSocketImpl;
    const/4 v7, 0x1

    invoke-direct {v5, v7, v1}, Lcom/koushikdutta/async/http/WebSocketImpl;->setupParser(ZZ)V

    goto :goto_0
.end method

.method private setupParser(ZZ)V
    .locals 2
    .param p1, "masking"    # Z
    .param p2, "deflate"    # Z

    .prologue
    .line 75
    new-instance v0, Lcom/koushikdutta/async/http/WebSocketImpl$1;

    iget-object v1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/http/WebSocketImpl$1;-><init>(Lcom/koushikdutta/async/http/WebSocketImpl;Lcom/koushikdutta/async/DataEmitter;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mParser:Lcom/koushikdutta/async/http/HybiParser;

    .line 102
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mParser:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/HybiParser;->setMasking(Z)V

    .line 103
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mParser:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/http/HybiParser;->setDeflate(Z)V

    .line 104
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->resume()V

    .line 106
    :cond_0
    return-void
.end method

.method private static toByteArray(Ljava/util/UUID;)[B
    .locals 8
    .param p0, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 31
    const/16 v3, 0x10

    new-array v1, v3, [B

    .line 32
    .local v1, "byteArray":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 33
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v2

    .line 34
    .local v2, "longBuffer":Ljava/nio/LongBuffer;
    const/4 v3, 0x2

    new-array v3, v3, [J

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    aput-wide v6, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    aput-wide v6, v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    .line 35
    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    .line 193
    return-void
.end method

.method public end()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->end()V

    .line 28
    return-void
.end method

.method public getClosedCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->getClosedCallback()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v0

    return-object v0
.end method

.method public getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method public getEndCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mExceptionCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public getSocket()Lcom/koushikdutta/async/AsyncSocket;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    return-object v0
.end method

.method public getStringCallback()Lcom/koushikdutta/async/http/WebSocket$StringCallback;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mStringCallback:Lcom/koushikdutta/async/http/WebSocket$StringCallback;

    return-object v0
.end method

.method public getWriteableCallback()Lcom/koushikdutta/async/callback/WritableCallback;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-virtual {v0}, Lcom/koushikdutta/async/BufferedDataSink;->getWriteableCallback()Lcom/koushikdutta/async/callback/WritableCallback;

    move-result-object v0

    return-object v0
.end method

.method public isBuffering()Z
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-virtual {v0}, Lcom/koushikdutta/async/BufferedDataSink;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->isPaused()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->pause()V

    .line 306
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->resume()V

    .line 311
    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    iget-object v1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mParser:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {v1, p1}, Lcom/koushikdutta/async/http/HybiParser;->frame(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/BufferedDataSink;->write(Ljava/nio/ByteBuffer;)V

    .line 229
    return-void
.end method

.method public send([B)V
    .locals 2
    .param p1, "bytes"    # [B

    .prologue
    .line 218
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    iget-object v1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mParser:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {v1, p1}, Lcom/koushikdutta/async/http/HybiParser;->frame([B)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/BufferedDataSink;->write(Ljava/nio/ByteBuffer;)V

    .line 219
    return-void
.end method

.method public send([BII)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 223
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    iget-object v1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mParser:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {v1, p1, p2, p3}, Lcom/koushikdutta/async/http/HybiParser;->frame([BII)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/BufferedDataSink;->write(Ljava/nio/ByteBuffer;)V

    .line 224
    return-void
.end method

.method public setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1
    .param p1, "handler"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/AsyncSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 198
    return-void
.end method

.method public setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/koushikdutta/async/callback/DataCallback;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    .line 241
    return-void
.end method

.method public setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mExceptionCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 209
    return-void
.end method

.method public setStringCallback(Lcom/koushikdutta/async/http/WebSocket$StringCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/koushikdutta/async/http/WebSocket$StringCallback;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mStringCallback:Lcom/koushikdutta/async/http/WebSocket$StringCallback;

    .line 235
    return-void
.end method

.method public setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .locals 1
    .param p1, "handler"    # Lcom/koushikdutta/async/callback/WritableCallback;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/BufferedDataSink;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 281
    return-void
.end method

.method public write(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 1
    .param p1, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    .line 274
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getAllByteArray()[B

    move-result-object v0

    .line 275
    .local v0, "buf":[B
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/WebSocketImpl;->send([B)V

    .line 276
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v2, 0x0

    .line 265
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [B

    .line 266
    .local v0, "buf":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 267
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 268
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 269
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/WebSocketImpl;->send([B)V

    .line 270
    return-void
.end method
