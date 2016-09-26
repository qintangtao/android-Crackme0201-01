.class final Lcom/kenai/jbosh/ApacheHTTPResponse;
.super Ljava/lang/Object;
.source "ApacheHTTPResponse.java"

# interfaces
.implements Lcom/kenai/jbosh/HTTPResponse;


# static fields
.field private static final ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final ACCEPT_ENCODING_VAL:Ljava/lang/String;

.field private static final CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "text/xml; charset=utf-8"


# instance fields
.field private body:Lcom/kenai/jbosh/AbstractBody;

.field private final client:Lorg/apache/http/client/HttpClient;

.field private final context:Lorg/apache/http/protocol/HttpContext;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private final post:Lorg/apache/http/client/methods/HttpPost;

.field private sent:Z

.field private statusCode:I

.field private toThrow:Lcom/kenai/jbosh/BOSHException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kenai/jbosh/ZLIBCodec;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/kenai/jbosh/GZIPCodec;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    sput-object v0, Lcom/kenai/jbosh/ApacheHTTPResponse;->ACCEPT_ENCODING_VAL:Ljava/lang/String;

    .line 57
    return-void
.end method

.method constructor <init>(Lorg/apache/http/client/HttpClient;Lcom/kenai/jbosh/BOSHClientConfig;Lcom/kenai/jbosh/CMSessionParams;Lcom/kenai/jbosh/AbstractBody;)V
    .locals 9
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "cfg"    # Lcom/kenai/jbosh/BOSHClientConfig;
    .param p3, "params"    # Lcom/kenai/jbosh/CMSessionParams;
    .param p4, "request"    # Lcom/kenai/jbosh/AbstractBody;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v6, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v6}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v6, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->lock:Ljava/util/concurrent/locks/Lock;

    .line 123
    iput-object p1, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->client:Lorg/apache/http/client/HttpClient;

    .line 124
    new-instance v6, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v6}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v6, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->context:Lorg/apache/http/protocol/HttpContext;

    .line 125
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p2}, Lcom/kenai/jbosh/BOSHClientConfig;->getURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->post:Lorg/apache/http/client/methods/HttpPost;

    .line 126
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->sent:Z

    .line 129
    :try_start_0
    invoke-virtual {p4}, Lcom/kenai/jbosh/AbstractBody;->toXML()Ljava/lang/String;

    move-result-object v5

    .line 130
    .local v5, "xml":Ljava/lang/String;
    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 132
    .local v1, "data":[B
    const/4 v3, 0x0

    .line 133
    .local v3, "encoding":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/kenai/jbosh/BOSHClientConfig;->isCompressionEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p3, :cond_0

    .line 134
    invoke-virtual {p3}, Lcom/kenai/jbosh/CMSessionParams;->getAccept()Lcom/kenai/jbosh/AttrAccept;

    move-result-object v0

    .line 135
    .local v0, "accept":Lcom/kenai/jbosh/AttrAccept;
    if-eqz v0, :cond_0

    .line 136
    invoke-static {}, Lcom/kenai/jbosh/ZLIBCodec;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/kenai/jbosh/AttrAccept;->isAccepted(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 137
    invoke-static {}, Lcom/kenai/jbosh/ZLIBCodec;->getID()Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-static {v1}, Lcom/kenai/jbosh/ZLIBCodec;->encode([B)[B

    move-result-object v1

    .line 146
    .end local v0    # "accept":Lcom/kenai/jbosh/AttrAccept;
    :cond_0
    :goto_0
    new-instance v4, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v4, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 147
    .local v4, "entity":Lorg/apache/http/entity/ByteArrayEntity;
    const-string v6, "text/xml; charset=utf-8"

    invoke-virtual {v4, v6}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 148
    if-eqz v3, :cond_1

    .line 149
    invoke-virtual {v4, v3}, Lorg/apache/http/entity/ByteArrayEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 151
    :cond_1
    iget-object v6, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v6, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 152
    invoke-virtual {p2}, Lcom/kenai/jbosh/BOSHClientConfig;->isCompressionEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 153
    iget-object v6, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->post:Lorg/apache/http/client/methods/HttpPost;

    const-string v7, "Accept-Encoding"

    sget-object v8, Lcom/kenai/jbosh/ApacheHTTPResponse;->ACCEPT_ENCODING_VAL:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .end local v1    # "data":[B
    .end local v3    # "encoding":Ljava/lang/String;
    .end local v4    # "entity":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v5    # "xml":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 139
    .restart local v0    # "accept":Lcom/kenai/jbosh/AttrAccept;
    .restart local v1    # "data":[B
    .restart local v3    # "encoding":Ljava/lang/String;
    .restart local v5    # "xml":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/kenai/jbosh/GZIPCodec;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/kenai/jbosh/AttrAccept;->isAccepted(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 140
    invoke-static {}, Lcom/kenai/jbosh/GZIPCodec;->getID()Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-static {v1}, Lcom/kenai/jbosh/GZIPCodec;->encode([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 155
    .end local v0    # "accept":Lcom/kenai/jbosh/AttrAccept;
    .end local v1    # "data":[B
    .end local v3    # "encoding":Ljava/lang/String;
    .end local v5    # "xml":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 156
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/kenai/jbosh/BOSHException;

    const-string v7, "Could not generate request"

    invoke-direct {v6, v7, v2}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v6, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->toThrow:Lcom/kenai/jbosh/BOSHException;

    goto :goto_1
.end method

.method private declared-synchronized awaitResponse()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 228
    monitor-enter p0

    const/4 v2, 0x0

    .line 230
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    :try_start_0
    iget-object v6, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->client:Lorg/apache/http/client/HttpClient;

    iget-object v7, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->post:Lorg/apache/http/client/methods/HttpPost;

    iget-object v8, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v6, v7, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 231
    .local v4, "httpResp":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 232
    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    .line 233
    .local v0, "data":[B
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 234
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "encoding":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/kenai/jbosh/ZLIBCodec;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 237
    invoke-static {v0}, Lcom/kenai/jbosh/ZLIBCodec;->decode([B)[B

    move-result-object v0

    .line 241
    :cond_0
    :goto_1
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v6}, Lcom/kenai/jbosh/StaticBody;->fromString(Ljava/lang/String;)Lcom/kenai/jbosh/StaticBody;

    move-result-object v6

    iput-object v6, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->body:Lcom/kenai/jbosh/AbstractBody;

    .line 242
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    iput v6, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->statusCode:I

    .line 243
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->sent:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    monitor-exit p0

    return-void

    .line 235
    .end local v1    # "encoding":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 238
    .restart local v1    # "encoding":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/kenai/jbosh/GZIPCodec;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 239
    invoke-static {v0}, Lcom/kenai/jbosh/GZIPCodec;->decode([B)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 244
    .end local v0    # "data":[B
    .end local v1    # "encoding":Ljava/lang/String;
    .end local v4    # "httpResp":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v5

    .line 245
    .local v5, "iox":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {p0}, Lcom/kenai/jbosh/ApacheHTTPResponse;->abort()V

    .line 246
    new-instance v6, Lcom/kenai/jbosh/BOSHException;

    const-string v7, "Could not obtain response"

    invoke-direct {v6, v7, v5}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v6, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->toThrow:Lcom/kenai/jbosh/BOSHException;

    .line 247
    iget-object v6, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->toThrow:Lcom/kenai/jbosh/BOSHException;

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    .end local v5    # "iox":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 248
    :catch_1
    move-exception v3

    .line 249
    .local v3, "ex":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-virtual {p0}, Lcom/kenai/jbosh/ApacheHTTPResponse;->abort()V

    .line 250
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->post:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 169
    new-instance v0, Lcom/kenai/jbosh/BOSHException;

    const-string v1, "HTTP request aborted"

    invoke-direct {v0, v1}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->toThrow:Lcom/kenai/jbosh/BOSHException;

    .line 171
    :cond_0
    return-void
.end method

.method public getBody()Lcom/kenai/jbosh/AbstractBody;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->toThrow:Lcom/kenai/jbosh/BOSHException;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->toThrow:Lcom/kenai/jbosh/BOSHException;

    throw v0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 186
    :try_start_0
    iget-boolean v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->sent:Z

    if-nez v0, :cond_1

    .line 187
    invoke-direct {p0}, Lcom/kenai/jbosh/ApacheHTTPResponse;->awaitResponse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 192
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->body:Lcom/kenai/jbosh/AbstractBody;

    return-object v0

    .line 189
    :catchall_0
    move-exception v0

    .line 190
    iget-object v1, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 191
    throw v0
.end method

.method public getHTTPStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->toThrow:Lcom/kenai/jbosh/BOSHException;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->toThrow:Lcom/kenai/jbosh/BOSHException;

    throw v0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 208
    :try_start_0
    iget-boolean v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->sent:Z

    if-nez v0, :cond_1

    .line 209
    invoke-direct {p0}, Lcom/kenai/jbosh/ApacheHTTPResponse;->awaitResponse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 214
    iget v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->statusCode:I

    return v0

    .line 211
    :catchall_0
    move-exception v0

    .line 212
    iget-object v1, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 213
    throw v0
.end method
