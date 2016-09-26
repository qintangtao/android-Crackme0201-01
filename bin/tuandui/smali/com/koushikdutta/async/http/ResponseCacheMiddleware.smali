.class public Lcom/koushikdutta/async/http/ResponseCacheMiddleware;
.super Lcom/koushikdutta/async/http/SimpleMiddleware;
.source "ResponseCacheMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;,
        Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;,
        Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;,
        Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSSLSocket;,
        Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;,
        Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;,
        Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;,
        Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;
    }
.end annotation


# static fields
.field public static final CACHE:Ljava/lang/String; = "cache"

.field public static final CONDITIONAL_CACHE:Ljava/lang/String; = "conditional-cache"

.field public static final ENTRY_BODY:I = 0x1

.field public static final ENTRY_COUNT:I = 0x2

.field public static final ENTRY_METADATA:I = 0x0

.field private static final LOGTAG:Ljava/lang/String; = "AsyncHttpCache"

.field public static final SERVED_FROM:Ljava/lang/String; = "X-Served-From"


# instance fields
.field private cache:Lcom/koushikdutta/async/util/FileCache;

.field private cacheHitCount:I

.field private cacheStoreCount:I

.field private caching:Z

.field private conditionalCacheHitCount:I

.field private networkCount:I

.field private server:Lcom/koushikdutta/async/AsyncServer;

.field private writeAbortCount:I

.field private writeSuccessCount:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/koushikdutta/async/http/SimpleMiddleware;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->caching:Z

    .line 67
    return-void
.end method

.method static synthetic access$0(Lcom/koushikdutta/async/http/ResponseCacheMiddleware;)Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->server:Lcom/koushikdutta/async/AsyncServer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/koushikdutta/async/http/ResponseCacheMiddleware;)Lcom/koushikdutta/async/util/FileCache;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->cache:Lcom/koushikdutta/async/util/FileCache;

    return-object v0
.end method

.method static synthetic access$2(Lcom/koushikdutta/async/http/ResponseCacheMiddleware;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->writeSuccessCount:I

    return v0
.end method

.method static synthetic access$3(Lcom/koushikdutta/async/http/ResponseCacheMiddleware;I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->writeSuccessCount:I

    return-void
.end method

.method static synthetic access$4(Lcom/koushikdutta/async/http/ResponseCacheMiddleware;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->writeAbortCount:I

    return v0
.end method

.method static synthetic access$5(Lcom/koushikdutta/async/http/ResponseCacheMiddleware;I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->writeAbortCount:I

    return-void
.end method

.method public static addCache(Lcom/koushikdutta/async/http/AsyncHttpClient;Ljava/io/File;J)Lcom/koushikdutta/async/http/ResponseCacheMiddleware;
    .locals 4
    .param p0, "client"    # Lcom/koushikdutta/async/http/AsyncHttpClient;
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getMiddleware()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 74
    new-instance v1, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;

    invoke-direct {v1}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;-><init>()V

    .line 75
    .local v1, "ret":Lcom/koushikdutta/async/http/ResponseCacheMiddleware;
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v2

    iput-object v2, v1, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->server:Lcom/koushikdutta/async/AsyncServer;

    .line 76
    new-instance v2, Lcom/koushikdutta/async/util/FileCache;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, p3, v3}, Lcom/koushikdutta/async/util/FileCache;-><init>(Ljava/io/File;JZ)V

    iput-object v2, v1, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->cache:Lcom/koushikdutta/async/util/FileCache;

    .line 77
    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->insertMiddleware(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;)V

    .line 78
    return-object v1

    .line 70
    .end local v1    # "ret":Lcom/koushikdutta/async/http/ResponseCacheMiddleware;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 71
    .local v0, "middleware":Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
    instance-of v3, v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;

    if-eqz v3, :cond_0

    .line 72
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Response cache already added to http client"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->cache:Lcom/koushikdutta/async/util/FileCache;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->cache:Lcom/koushikdutta/async/util/FileCache;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/FileCache;->clear()V

    .line 305
    :cond_0
    return-void
.end method

.method public getCacheHitCount()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->cacheHitCount:I

    return v0
.end method

.method public getCacheStoreCount()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->cacheStoreCount:I

    return v0
.end method

.method public getCaching()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->caching:Z

    return v0
.end method

.method public getConditionalCacheHitCount()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->conditionalCacheHitCount:I

    return v0
.end method

.method public getFileCache()Lcom/koushikdutta/async/util/FileCache;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->cache:Lcom/koushikdutta/async/util/FileCache;

    return-object v0
.end method

.method public getNetworkCount()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->networkCount:I

    return v0
.end method

.method public getSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 24
    .param p1, "data"    # Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    .prologue
    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->cache:Lcom/koushikdutta/async/util/FileCache;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->caching:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->isNoCache()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 98
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->networkCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->networkCount:I

    .line 99
    const/16 v19, 0x0

    .line 188
    :goto_0
    return-object v19

    .line 102
    :cond_1
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v19 .. v19}, Lcom/koushikdutta/async/util/FileCache;->toKeyString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 103
    .local v11, "key":Ljava/lang/String;
    const/16 v17, 0x0

    .line 107
    .local v17, "snapshot":[Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->cache:Lcom/koushikdutta/async/util/FileCache;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Lcom/koushikdutta/async/util/FileCache;->get(Ljava/lang/String;I)[Ljava/io/FileInputStream;

    move-result-object v17

    .line 108
    if-nez v17, :cond_2

    .line 109
    move-object/from16 v0, p0

    iget v0, v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->networkCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->networkCount:I

    .line 110
    const/16 v19, 0x0

    goto :goto_0

    .line 112
    :cond_2
    const/16 v19, 0x1

    aget-object v19, v17, v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->available()I

    move-result v19

    move/from16 v0, v19

    int-to-long v8, v0

    .line 113
    .local v8, "contentLength":J
    new-instance v10, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;

    const/16 v19, 0x0

    aget-object v19, v17, v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .local v10, "entry":Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->matches(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 124
    move-object/from16 v0, p0

    iget v0, v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->networkCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->networkCount:I

    .line 125
    invoke-static/range {v17 .. v17}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 126
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 117
    .end local v8    # "contentLength":J
    .end local v10    # "entry":Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;
    :catch_0
    move-exception v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->networkCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->networkCount:I

    .line 118
    invoke-static/range {v17 .. v17}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 119
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 129
    .restart local v8    # "contentLength":J
    .restart local v10    # "entry":Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;
    :cond_3
    new-instance v7, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;

    const/16 v19, 0x1

    aget-object v19, v17, v19

    move-object/from16 v0, v19

    invoke-direct {v7, v10, v0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;-><init>(Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;Ljava/io/FileInputStream;)V

    .line 134
    .local v7, "candidate":Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;
    :try_start_1
    invoke-virtual {v7}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v15

    .line 135
    .local v15, "responseHeadersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {v7}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;->getBody()Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 142
    .local v5, "cachedResponseBody":Ljava/io/FileInputStream;
    if-eqz v15, :cond_4

    if-nez v5, :cond_5

    .line 143
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->networkCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->networkCount:I

    .line 144
    invoke-static/range {v17 .. v17}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 145
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 138
    .end local v5    # "cachedResponseBody":Ljava/io/FileInputStream;
    .end local v15    # "responseHeadersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :catch_1
    move-exception v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->networkCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->networkCount:I

    .line 139
    invoke-static/range {v17 .. v17}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 140
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 148
    .restart local v5    # "cachedResponseBody":Ljava/io/FileInputStream;
    .restart local v15    # "responseHeadersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_5
    invoke-static {v15}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->fromMultimap(Ljava/util/Map;)Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v14

    .line 149
    .local v14, "rawResponseHeaders":Lcom/koushikdutta/async/http/libcore/RawHeaders;
    new-instance v6, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v6, v0, v14}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/libcore/RawHeaders;)V

    .line 150
    .local v6, "cachedResponseHeaders":Lcom/koushikdutta/async/http/libcore/ResponseHeaders;
    const-string v19, "Content-Length"

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v19, "Content-Encoding"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 152
    const-string v19, "Transfer-Encoding"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v20

    move-wide/from16 v2, v22

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->setLocalTimestamps(JJ)V

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 156
    .local v12, "now":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v12, v13, v0}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->chooseResponseSource(JLcom/koushikdutta/async/http/libcore/RequestHeaders;)Lcom/koushikdutta/async/http/libcore/ResponseSource;

    move-result-object v16

    .line 158
    .local v16, "responseSource":Lcom/koushikdutta/async/http/libcore/ResponseSource;
    sget-object v19, Lcom/koushikdutta/async/http/libcore/ResponseSource;->CACHE:Lcom/koushikdutta/async/http/libcore/ResponseSource;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 159
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    move-object/from16 v19, v0

    const-string v20, "Response retrieved from cache"

    invoke-virtual/range {v19 .. v20}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logi(Ljava/lang/String;)V

    .line 160
    # invokes: Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->isHttps()Z
    invoke-static {v10}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->access$1(Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;)Z

    move-result v19

    if-eqz v19, :cond_6

    new-instance v18, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSSLSocket;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7, v8, v9}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSSLSocket;-><init>(Lcom/koushikdutta/async/http/ResponseCacheMiddleware;Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;J)V

    .line 161
    .local v18, "socket":Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;
    :goto_1
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;->pending:Lcom/koushikdutta/async/ByteBufferList;

    move-object/from16 v19, v0

    invoke-virtual {v14}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->toHeaderString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->server:Lcom/koushikdutta/async/AsyncServer;

    move-object/from16 v19, v0

    new-instance v20, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$1;-><init>(Lcom/koushikdutta/async/http/ResponseCacheMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;)V

    invoke-virtual/range {v19 .. v20}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 170
    move-object/from16 v0, p0

    iget v0, v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->cacheHitCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->cacheHitCount:I

    .line 171
    new-instance v19, Lcom/koushikdutta/async/future/SimpleCancellable;

    invoke-direct/range {v19 .. v19}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    goto/16 :goto_0

    .line 160
    .end local v18    # "socket":Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;
    :cond_6
    new-instance v18, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7, v8, v9}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;-><init>(Lcom/koushikdutta/async/http/ResponseCacheMiddleware;Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;J)V

    goto :goto_1

    .line 173
    :cond_7
    sget-object v19, Lcom/koushikdutta/async/http/libcore/ResponseSource;->CONDITIONAL_CACHE:Lcom/koushikdutta/async/http/libcore/ResponseSource;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 174
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    move-object/from16 v19, v0

    const-string v20, "Response may be served from conditional cache"

    invoke-virtual/range {v19 .. v20}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logi(Ljava/lang/String;)V

    .line 175
    new-instance v4, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;

    invoke-direct {v4}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;-><init>()V

    .line 176
    .local v4, "cacheData":Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;
    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;->snapshot:[Ljava/io/FileInputStream;

    .line 177
    iput-wide v8, v4, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;->contentLength:J

    .line 178
    iput-object v6, v4, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;->cachedResponseHeaders:Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    .line 179
    iput-object v7, v4, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;->candidate:Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;

    .line 180
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->state:Lcom/koushikdutta/async/util/UntypedHashtable;

    move-object/from16 v19, v0

    const-string v20, "cache-data"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lcom/koushikdutta/async/util/UntypedHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 184
    .end local v4    # "cacheData":Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    move-object/from16 v19, v0

    const-string v20, "Response can not be served from cache"

    invoke-virtual/range {v19 .. v20}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logd(Ljava/lang/String;)V

    .line 186
    move-object/from16 v0, p0

    iget v0, v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->networkCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->networkCount:I

    .line 187
    invoke-static/range {v17 .. v17}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 188
    const/16 v19, 0x0

    goto/16 :goto_0
.end method

.method public onBodyDecoder(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;)V
    .locals 12
    .param p1, "data"    # Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;

    .prologue
    const/4 v10, 0x1

    .line 212
    iget-object v8, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;->socket:Lcom/koushikdutta/async/AsyncSocket;

    const-class v9, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;

    invoke-static {v8, v9}, Lcom/koushikdutta/async/Util;->getWrappedSocket(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/Class;)Lcom/koushikdutta/async/AsyncSocket;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;

    .line 213
    .local v2, "cached":Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;
    if-eqz v2, :cond_1

    .line 214
    iget-object v8, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;->headers:Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    invoke-virtual {v8}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v8

    const-string v9, "X-Served-From"

    const-string v10, "cache"

    invoke-virtual {v8, v9, v10}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v8, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;->state:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string v9, "cache-data"

    invoke-virtual {v8, v9}, Lcom/koushikdutta/async/util/UntypedHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;

    .line 219
    .local v1, "cacheData":Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;
    if-eqz v1, :cond_3

    .line 220
    iget-object v8, v1, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;->cachedResponseHeaders:Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    iget-object v9, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;->headers:Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    invoke-virtual {v8, v9}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->validate(Lcom/koushikdutta/async/http/libcore/ResponseHeaders;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 221
    iget-object v8, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v9, "Serving response from conditional cache"

    invoke-virtual {v8, v9}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logi(Ljava/lang/String;)V

    .line 222
    iget-object v8, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;->headers:Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    invoke-virtual {v8}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v8

    const-string v9, "Content-Length"

    invoke-virtual {v8, v9}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 223
    iget-object v8, v1, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;->cachedResponseHeaders:Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    iget-object v9, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;->headers:Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    invoke-virtual {v8, v9}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->combine(Lcom/koushikdutta/async/http/libcore/ResponseHeaders;)Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    move-result-object v8

    iput-object v8, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;->headers:Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    .line 224
    iget-object v8, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;->headers:Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    invoke-virtual {v8}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v8

    iget-object v9, v1, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;->cachedResponseHeaders:Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    invoke-virtual {v9}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v9

    invoke-virtual {v9}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 226
    iget-object v8, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;->headers:Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    invoke-virtual {v8}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v8

    const-string v9, "X-Served-From"

    const-string v10, "conditional-cache"

    invoke-virtual {v8, v9, v10}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget v8, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->conditionalCacheHitCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->conditionalCacheHitCount:I

    .line 229
    new-instance v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;

    iget-object v8, v1, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;->candidate:Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;

    iget-wide v10, v1, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;->contentLength:J

    invoke-direct {v0, v8, v10, v11}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;-><init>(Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;J)V

    .line 230
    .local v0, "bodySpewer":Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;
    iget-object v8, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;->bodyEmitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-virtual {v0, v8}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    .line 231
    iput-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;->bodyEmitter:Lcom/koushikdutta/async/DataEmitter;

    .line 232
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;->spew()V

    goto :goto_0

    .line 237
    .end local v0    # "bodySpewer":Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;
    :cond_2
    iget-object v8, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;->state:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string v9, "cache-data"

    invoke-virtual {v8, v9}, Lcom/koushikdutta/async/util/UntypedHashtable;->remove(Ljava/lang/String;)V

    .line 238
    iget-object v8, v1, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;->snapshot:[Ljava/io/FileInputStream;

    invoke-static {v8}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 241
    :cond_3
    iget-boolean v8, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->caching:Z

    if-eqz v8, :cond_0

    .line 244
    iget-object v8, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;->headers:Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    iget-object v9, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v9}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->isCacheable(Lcom/koushikdutta/async/http/libcore/RequestHeaders;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v8}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v8

    const-string v9, "GET"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 250
    :cond_4
    iget v8, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->networkCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->networkCount:I

    .line 251
    iget-object v8, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v9, "Response is not cacheable"

    invoke-virtual {v8, v9}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 255
    :cond_5
    new-array v8, v10, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v10}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcom/koushikdutta/async/util/FileCache;->toKeyString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 256
    .local v6, "key":Ljava/lang/String;
    iget-object v8, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v8}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v8

    invoke-virtual {v8}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v8

    iget-object v9, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;->headers:Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    invoke-virtual {v9}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->getVaryFields()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->getAll(Ljava/util/Set;)Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v7

    .line 257
    .local v7, "varyHeaders":Lcom/koushikdutta/async/http/libcore/RawHeaders;
    new-instance v5, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;

    iget-object v8, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v8}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v10, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;->headers:Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    invoke-direct {v5, v8, v7, v9, v10}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/libcore/RawHeaders;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/libcore/ResponseHeaders;)V

    .line 258
    .local v5, "entry":Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;
    new-instance v3, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;

    const/4 v8, 0x0

    invoke-direct {v3, v8}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;-><init>(Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;)V

    .line 259
    .local v3, "cacher":Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;
    new-instance v4, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;

    invoke-direct {v4, p0, v6}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;-><init>(Lcom/koushikdutta/async/http/ResponseCacheMiddleware;Ljava/lang/String;)V

    .line 261
    .local v4, "editor":Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;
    :try_start_0
    invoke-virtual {v5, v4}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->writeTo(Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;)V

    .line 263
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;->newOutputStream(I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    iput-object v4, v3, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->editor:Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;

    .line 273
    iget-object v8, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;->bodyEmitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-virtual {v3, v8}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    .line 274
    iput-object v3, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;->bodyEmitter:Lcom/koushikdutta/async/DataEmitter;

    .line 276
    iget-object v8, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;->state:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string v9, "body-cacher"

    invoke-virtual {v8, v9, v3}, Lcom/koushikdutta/async/util/UntypedHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    iget-object v8, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v9, "Caching response"

    invoke-virtual {v8, v9}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logd(Ljava/lang/String;)V

    .line 278
    iget v8, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->cacheStoreCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->cacheStoreCount:I

    goto/16 :goto_0

    .line 267
    :catch_0
    move-exception v8

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;->abort()V

    .line 268
    iget v8, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->networkCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->networkCount:I

    goto/16 :goto_0
.end method

.method public onRequestComplete(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;)V
    .locals 6
    .param p1, "data"    # Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;

    .prologue
    .line 284
    iget-object v3, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;->state:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string v4, "cache-data"

    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/util/UntypedHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;

    .line 285
    .local v0, "cacheData":Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;->snapshot:[Ljava/io/FileInputStream;

    if-eqz v3, :cond_0

    .line 286
    iget-object v3, v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CacheData;->snapshot:[Ljava/io/FileInputStream;

    invoke-static {v3}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 288
    :cond_0
    iget-object v3, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;->socket:Lcom/koushikdutta/async/AsyncSocket;

    const-class v4, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;

    invoke-static {v3, v4}, Lcom/koushikdutta/async/Util;->getWrappedSocket(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/Class;)Lcom/koushikdutta/async/AsyncSocket;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;

    .line 289
    .local v1, "cachedSocket":Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;
    if-eqz v1, :cond_1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/io/Closeable;

    const/4 v4, 0x0

    .line 290
    iget-object v5, v1, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedSocket;->cacheResponse:Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;

    invoke-virtual {v5}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;->getBody()Ljava/io/FileInputStream;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 292
    :cond_1
    iget-object v3, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;->state:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string v4, "body-cacher"

    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/util/UntypedHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;

    .line 293
    .local v2, "cacher":Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;
    if-eqz v2, :cond_2

    .line 294
    iget-object v3, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;->exception:Ljava/lang/Exception;

    if-eqz v3, :cond_3

    .line 295
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->abort()V

    .line 299
    :cond_2
    :goto_0
    return-void

    .line 297
    :cond_3
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->commit()V

    goto :goto_0
.end method

.method public setCaching(Z)V
    .locals 0
    .param p1, "caching"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->caching:Z

    .line 91
    return-void
.end method
