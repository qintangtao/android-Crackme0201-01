.class public final Lcom/qiniu/android/http/HttpManager;
.super Ljava/lang/Object;
.source "HttpManager.java"


# instance fields
.field private backUpIp:Ljava/lang/String;

.field private client:Lcom/loopj/android/http/AsyncHttpClient;

.field private converter:Lcom/qiniu/android/http/UrlConverter;

.field private reporter:Lcom/qiniu/android/http/IReport;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qiniu/android/http/HttpManager;-><init>(Lcom/qiniu/android/http/Proxy;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/http/Proxy;)V
    .locals 1
    .param p1, "proxy"    # Lcom/qiniu/android/http/Proxy;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qiniu/android/http/HttpManager;-><init>(Lcom/qiniu/android/http/Proxy;Lcom/qiniu/android/http/IReport;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/http/Proxy;Lcom/qiniu/android/http/IReport;)V
    .locals 7
    .param p1, "proxy"    # Lcom/qiniu/android/http/Proxy;
    .param p2, "reporter"    # Lcom/qiniu/android/http/IReport;

    .prologue
    const/4 v3, 0x0

    .line 37
    const/16 v4, 0xa

    const/16 v5, 0x1e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/qiniu/android/http/HttpManager;-><init>(Lcom/qiniu/android/http/Proxy;Lcom/qiniu/android/http/IReport;Ljava/lang/String;IILcom/qiniu/android/http/UrlConverter;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/http/Proxy;Lcom/qiniu/android/http/IReport;Ljava/lang/String;IILcom/qiniu/android/http/UrlConverter;)V
    .locals 5
    .param p1, "proxy"    # Lcom/qiniu/android/http/Proxy;
    .param p2, "reporter"    # Lcom/qiniu/android/http/IReport;
    .param p3, "backUpIp"    # Ljava/lang/String;
    .param p4, "connectTimeout"    # I
    .param p5, "responseTimeout"    # I
    .param p6, "converter"    # Lcom/qiniu/android/http/UrlConverter;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p3, p0, Lcom/qiniu/android/http/HttpManager;->backUpIp:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/http/HttpManager;->client:Lcom/loopj/android/http/AsyncHttpClient;

    .line 44
    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager;->client:Lcom/loopj/android/http/AsyncHttpClient;

    mul-int/lit16 v1, p4, 0x3e8

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setConnectTimeout(I)V

    .line 45
    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager;->client:Lcom/loopj/android/http/AsyncHttpClient;

    mul-int/lit16 v1, p5, 0x3e8

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setResponseTimeout(I)V

    .line 46
    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager;->client:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-static {}, Lcom/qiniu/android/http/UserAgent;->instance()Lcom/qiniu/android/http/UserAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qiniu/android/http/UserAgent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setEnableRedirects(Z)V

    .line 48
    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager;->client:Lcom/loopj/android/http/AsyncHttpClient;

    new-instance v1, Lcom/qiniu/android/http/UpRedirectHandler;

    invoke-direct {v1}, Lcom/qiniu/android/http/UpRedirectHandler;-><init>()V

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 49
    const-class v0, Lcom/qiniu/android/http/CancellationHandler$CancellationException;

    invoke-static {v0}, Lcom/loopj/android/http/AsyncHttpClient;->blockRetryExceptionClass(Ljava/lang/Class;)V

    .line 50
    if-eqz p1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager;->client:Lcom/loopj/android/http/AsyncHttpClient;

    iget-object v1, p1, Lcom/qiniu/android/http/Proxy;->hostAddress:Ljava/lang/String;

    iget v2, p1, Lcom/qiniu/android/http/Proxy;->port:I

    iget-object v3, p1, Lcom/qiniu/android/http/Proxy;->user:Ljava/lang/String;

    iget-object v4, p1, Lcom/qiniu/android/http/Proxy;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/loopj/android/http/AsyncHttpClient;->setProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    iput-object p2, p0, Lcom/qiniu/android/http/HttpManager;->reporter:Lcom/qiniu/android/http/IReport;

    .line 54
    if-nez p2, :cond_1

    .line 55
    new-instance v0, Lcom/qiniu/android/http/HttpManager$1;

    invoke-direct {v0, p0}, Lcom/qiniu/android/http/HttpManager$1;-><init>(Lcom/qiniu/android/http/HttpManager;)V

    iput-object v0, p0, Lcom/qiniu/android/http/HttpManager;->reporter:Lcom/qiniu/android/http/IReport;

    .line 73
    :cond_1
    iput-object p6, p0, Lcom/qiniu/android/http/HttpManager;->converter:Lcom/qiniu/android/http/UrlConverter;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/http/HttpManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/http/HttpManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager;->backUpIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qiniu/android/http/HttpManager;)Lcom/loopj/android/http/AsyncHttpClient;
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/http/HttpManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager;->client:Lcom/loopj/android/http/AsyncHttpClient;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qiniu/android/http/HttpManager;Lcom/qiniu/android/http/CompletionHandler;)Lcom/qiniu/android/http/CompletionHandler;
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/http/HttpManager;
    .param p1, "x1"    # Lcom/qiniu/android/http/CompletionHandler;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/qiniu/android/http/HttpManager;->wrap(Lcom/qiniu/android/http/CompletionHandler;)Lcom/qiniu/android/http/CompletionHandler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/qiniu/android/http/HttpManager;)Lcom/qiniu/android/http/IReport;
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/http/HttpManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager;->reporter:Lcom/qiniu/android/http/IReport;

    return-object v0
.end method

.method private postEntity(Ljava/lang/String;Lorg/apache/http/HttpEntity;[Lorg/apache/http/Header;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Z)V
    .locals 20
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "entity"    # Lorg/apache/http/HttpEntity;
    .param p3, "headers"    # [Lorg/apache/http/Header;
    .param p4, "progressHandler"    # Lcom/qiniu/android/http/ProgressHandler;
    .param p5, "completionHandler"    # Lcom/qiniu/android/http/CompletionHandler;
    .param p6, "forceIp"    # Z

    .prologue
    .line 106
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/qiniu/android/http/HttpManager;->wrap(Lcom/qiniu/android/http/CompletionHandler;)Lcom/qiniu/android/http/CompletionHandler;

    move-result-object v19

    .line 107
    .local v19, "wrapper":Lcom/qiniu/android/http/CompletionHandler;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qiniu/android/http/HttpManager;->reporter:Lcom/qiniu/android/http/IReport;

    move-object/from16 v0, p3

    invoke-interface {v3, v0}, Lcom/qiniu/android/http/IReport;->appendStatHeaders([Lorg/apache/http/Header;)[Lorg/apache/http/Header;

    move-result-object v6

    .line 109
    .local v6, "h":[Lorg/apache/http/Header;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qiniu/android/http/HttpManager;->converter:Lcom/qiniu/android/http/UrlConverter;

    if-eqz v3, :cond_0

    .line 110
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qiniu/android/http/HttpManager;->converter:Lcom/qiniu/android/http/UrlConverter;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Lcom/qiniu/android/http/UrlConverter;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 113
    :cond_0
    new-instance v9, Lcom/qiniu/android/http/ResponseHandler;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, p4

    invoke-direct {v9, v0, v1, v2, v3}, Lcom/qiniu/android/http/ResponseHandler;-><init>(Ljava/lang/String;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/ProgressHandler;Ljava/lang/String;)V

    .line 114
    .local v9, "handler":Lcom/qiniu/android/http/ResponseHandler;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qiniu/android/http/HttpManager;->backUpIp:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qiniu/android/http/HttpManager;->converter:Lcom/qiniu/android/http/UrlConverter;

    if-eqz v3, :cond_2

    .line 115
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qiniu/android/http/HttpManager;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v3 .. v9}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 166
    :goto_0
    return-void

    .line 118
    :cond_2
    move-object/from16 v12, p1

    .line 120
    .local v12, "url2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qiniu/android/http/HttpManager;->client:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v3}, Lcom/loopj/android/http/AsyncHttpClient;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v18

    .line 121
    .local v18, "t":Ljava/util/concurrent/ExecutorService;
    new-instance v10, Lcom/qiniu/android/http/HttpManager$2;

    move-object/from16 v11, p0

    move/from16 v13, p6

    move-object v14, v6

    move-object/from16 v15, p5

    move-object/from16 v16, p4

    move-object/from16 v17, p2

    invoke-direct/range {v10 .. v17}, Lcom/qiniu/android/http/HttpManager$2;-><init>(Lcom/qiniu/android/http/HttpManager;Ljava/lang/String;Z[Lorg/apache/http/Header;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/ProgressHandler;Lorg/apache/http/HttpEntity;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private wrap(Lcom/qiniu/android/http/CompletionHandler;)Lcom/qiniu/android/http/CompletionHandler;
    .locals 1
    .param p1, "completionHandler"    # Lcom/qiniu/android/http/CompletionHandler;

    .prologue
    .line 205
    new-instance v0, Lcom/qiniu/android/http/HttpManager$3;

    invoke-direct {v0, p0, p1}, Lcom/qiniu/android/http/HttpManager$3;-><init>(Lcom/qiniu/android/http/HttpManager;Lcom/qiniu/android/http/CompletionHandler;)V

    return-object v0
.end method


# virtual methods
.method public multipartPost(Ljava/lang/String;Lcom/qiniu/android/http/PostArgs;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;Z)V
    .locals 14
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "args"    # Lcom/qiniu/android/http/PostArgs;
    .param p3, "progressHandler"    # Lcom/qiniu/android/http/ProgressHandler;
    .param p4, "completionHandler"    # Lcom/qiniu/android/http/CompletionHandler;
    .param p5, "c"    # Lcom/qiniu/android/http/CancellationHandler;
    .param p6, "forceIp"    # Z

    .prologue
    .line 178
    new-instance v13, Lcom/qiniu/android/http/MultipartBuilder;

    invoke-direct {v13}, Lcom/qiniu/android/http/MultipartBuilder;-><init>()V

    .line 179
    .local v13, "mbuilder":Lcom/qiniu/android/http/MultipartBuilder;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/qiniu/android/http/PostArgs;->params:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 180
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v13, v2, v3}, Lcom/qiniu/android/http/MultipartBuilder;->addPart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/qiniu/android/http/PostArgs;->data:[B

    if-eqz v2, :cond_1

    .line 183
    new-instance v9, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/qiniu/android/http/PostArgs;->data:[B

    invoke-direct {v9, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 185
    .local v9, "buff":Ljava/io/ByteArrayInputStream;
    :try_start_0
    const-string v2, "file"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/qiniu/android/http/PostArgs;->fileName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/qiniu/android/http/PostArgs;->mimeType:Ljava/lang/String;

    invoke-virtual {v13, v2, v3, v9, v6}, Lcom/qiniu/android/http/MultipartBuilder;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v9    # "buff":Ljava/io/ByteArrayInputStream;
    :goto_1
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {v13, v0, v1}, Lcom/qiniu/android/http/MultipartBuilder;->build(Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CancellationHandler;)Lcom/qiniu/android/http/ByteArrayEntity;

    move-result-object v4

    .line 200
    .local v4, "entity":Lcom/qiniu/android/http/ByteArrayEntity;
    iget-object v2, p0, Lcom/qiniu/android/http/HttpManager;->reporter:Lcom/qiniu/android/http/IReport;

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/http/Header;

    invoke-interface {v2, v3}, Lcom/qiniu/android/http/IReport;->appendStatHeaders([Lorg/apache/http/Header;)[Lorg/apache/http/Header;

    move-result-object v5

    .local v5, "h":[Lorg/apache/http/Header;
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p6

    .line 201
    invoke-direct/range {v2 .. v8}, Lcom/qiniu/android/http/HttpManager;->postEntity(Ljava/lang/String;Lorg/apache/http/HttpEntity;[Lorg/apache/http/Header;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Z)V

    .line 202
    .end local v4    # "entity":Lcom/qiniu/android/http/ByteArrayEntity;
    .end local v5    # "h":[Lorg/apache/http/Header;
    :goto_2
    return-void

    .line 186
    .restart local v9    # "buff":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v10

    .line 187
    .local v10, "e":Ljava/io/IOException;
    invoke-static {v10}, Lcom/qiniu/android/http/ResponseInfo;->fileError(Ljava/lang/Exception;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v2, v3}, Lcom/qiniu/android/http/CompletionHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 192
    .end local v9    # "buff":Ljava/io/ByteArrayInputStream;
    .end local v10    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_1
    const-string v2, "file"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/qiniu/android/http/PostArgs;->file:Ljava/io/File;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/qiniu/android/http/PostArgs;->mimeType:Ljava/lang/String;

    const-string v7, "filename"

    invoke-virtual {v13, v2, v3, v6, v7}, Lcom/qiniu/android/http/MultipartBuilder;->addPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 193
    :catch_1
    move-exception v10

    .line 194
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-static {v10}, Lcom/qiniu/android/http/ResponseInfo;->fileError(Ljava/lang/Exception;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v2, v3}, Lcom/qiniu/android/http/CompletionHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    goto :goto_2
.end method

.method public postData(Ljava/lang/String;[BII[Lorg/apache/http/Header;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;Z)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .param p5, "headers"    # [Lorg/apache/http/Header;
    .param p6, "progressHandler"    # Lcom/qiniu/android/http/ProgressHandler;
    .param p7, "completionHandler"    # Lcom/qiniu/android/http/CompletionHandler;
    .param p8, "c"    # Lcom/qiniu/android/http/CancellationHandler;
    .param p9, "forceIp"    # Z

    .prologue
    .line 95
    new-instance v0, Lcom/qiniu/android/http/ByteArrayEntity;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p6

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/qiniu/android/http/ByteArrayEntity;-><init>([BIILcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CancellationHandler;)V

    .local v0, "entity":Lcom/qiniu/android/http/ByteArrayEntity;
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move/from16 v7, p9

    .line 96
    invoke-direct/range {v1 .. v7}, Lcom/qiniu/android/http/HttpManager;->postEntity(Ljava/lang/String;Lorg/apache/http/HttpEntity;[Lorg/apache/http/Header;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Z)V

    .line 97
    return-void
.end method

.method public postData(Ljava/lang/String;[B[Lorg/apache/http/Header;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;Z)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "headers"    # [Lorg/apache/http/Header;
    .param p4, "progressHandler"    # Lcom/qiniu/android/http/ProgressHandler;
    .param p5, "completionHandler"    # Lcom/qiniu/android/http/CompletionHandler;
    .param p6, "c"    # Lcom/qiniu/android/http/CancellationHandler;
    .param p7, "forceIp"    # Z

    .prologue
    .line 101
    const/4 v3, 0x0

    array-length v4, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/qiniu/android/http/HttpManager;->postData(Ljava/lang/String;[BII[Lorg/apache/http/Header;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;Z)V

    .line 102
    return-void
.end method
