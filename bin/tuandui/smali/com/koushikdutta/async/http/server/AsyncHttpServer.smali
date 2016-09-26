.class public Lcom/koushikdutta/async/http/server/AsyncHttpServer;
.super Ljava/lang/Object;
.source "AsyncHttpServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;,
        Lcom/koushikdutta/async/http/server/AsyncHttpServer$WebSocketRequestCallback;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static mCodes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mContentTypes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mActions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;",
            ">;>;"
        }
    .end annotation
.end field

.field mCompletedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field mListenCallback:Lcom/koushikdutta/async/callback/ListenCallback;

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/koushikdutta/async/AsyncServerSocket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const-class v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->$assertionsDisabled:Z

    .line 335
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mContentTypes:Ljava/util/Hashtable;

    .line 472
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCodes:Ljava/util/Hashtable;

    .line 474
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCodes:Ljava/util/Hashtable;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCodes:Ljava/util/Hashtable;

    const/16 v1, 0xce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Partial Content"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCodes:Ljava/util/Hashtable;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Switching Protocols"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCodes:Ljava/util/Hashtable;

    const/16 v1, 0x12d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Moved Permanently"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCodes:Ljava/util/Hashtable;

    const/16 v1, 0x12e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Found"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCodes:Ljava/util/Hashtable;

    const/16 v1, 0x194

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not Found"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mListeners:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mListenCallback:Lcom/koushikdutta/async/callback/ListenCallback;

    .line 260
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mActions:Ljava/util/Hashtable;

    .line 337
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mContentTypes:Ljava/util/Hashtable;

    const-string v1, "js"

    const-string v2, "application/javascript"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mContentTypes:Ljava/util/Hashtable;

    const-string v1, "json"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mContentTypes:Ljava/util/Hashtable;

    const-string v1, "png"

    const-string v2, "image/png"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mContentTypes:Ljava/util/Hashtable;

    const-string v1, "jpg"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mContentTypes:Ljava/util/Hashtable;

    const-string v1, "html"

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mContentTypes:Ljava/util/Hashtable;

    const-string v1, "css"

    const-string v2, "text/css"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mContentTypes:Ljava/util/Hashtable;

    const-string v1, "mp4"

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mContentTypes:Ljava/util/Hashtable;

    const-string v1, "mov"

    const-string v2, "video/quicktime"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mContentTypes:Ljava/util/Hashtable;

    const-string v1, "wmv"

    const-string v2, "video/x-ms-wmv"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/koushikdutta/async/http/server/AsyncHttpServer;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->report(Ljava/lang/Exception;)V

    return-void
.end method

.method public static getAssetStream(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "asset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 327
    .local v0, "am":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 328
    .local v1, "is":Ljava/io/InputStream;
    new-instance v2, Landroid/util/Pair;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 349
    invoke-static {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->tryGetContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "type":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 352
    .end local v0    # "type":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "type":Ljava/lang/String;
    :cond_0
    const-string v0, "text/plain"

    goto :goto_0
.end method

.method public static getResponseCodeDescription(I)Ljava/lang/String;
    .locals 3
    .param p0, "code"    # I

    .prologue
    .line 483
    sget-object v1, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCodes:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 484
    .local v0, "d":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 485
    const-string v0, "Unknown"

    .line 486
    .end local v0    # "d":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private report(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCompletedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCompletedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    .line 216
    :cond_0
    return-void
.end method

.method public static tryGetContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 356
    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 357
    .local v2, "index":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 358
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "e":Ljava/lang/String;
    sget-object v3, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mContentTypes:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 360
    .local v0, "ct":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 363
    .end local v0    # "ct":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addAction(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "regex"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    .prologue
    .line 263
    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;)V

    .line 264
    .local v0, "p":Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "^"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;->regex:Ljava/util/regex/Pattern;

    .line 265
    iput-object p3, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;->callback:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    .line 267
    iget-object v3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mActions:Ljava/util/Hashtable;

    monitor-enter v3

    .line 268
    :try_start_0
    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mActions:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 269
    .local v1, "pairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;>;"
    if-nez v1, :cond_0

    .line 270
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "pairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .restart local v1    # "pairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;>;"
    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mActions:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    monitor-exit v3

    .line 275
    return-void

    .line 267
    .end local v1    # "pairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public directory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "regex"    # Ljava/lang/String;
    .param p3, "assetPath"    # Ljava/lang/String;

    .prologue
    .line 367
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 368
    .local v0, "_context":Landroid/content/Context;
    const-string v1, "GET"

    new-instance v2, Lcom/koushikdutta/async/http/server/AsyncHttpServer$4;

    invoke-direct {v2, p0, v0, p3}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$4;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p2, v2}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->addAction(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;)V

    .line 391
    const-string v1, "HEAD"

    new-instance v2, Lcom/koushikdutta/async/http/server/AsyncHttpServer$5;

    invoke-direct {v2, p0, v0, p3}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$5;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p2, v2}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->addAction(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;)V

    .line 410
    return-void
.end method

.method public directory(Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "directory"    # Ljava/io/File;

    .prologue
    .line 413
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->directory(Ljava/lang/String;Ljava/io/File;Z)V

    .line 414
    return-void
.end method

.method public directory(Ljava/lang/String;Ljava/io/File;Z)V
    .locals 2
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "directory"    # Ljava/io/File;
    .param p3, "list"    # Z

    .prologue
    .line 417
    sget-boolean v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 418
    :cond_0
    const-string v0, "GET"

    new-instance v1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$6;

    invoke-direct {v1, p0, p2, p3}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$6;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer;Ljava/io/File;Z)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->addAction(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;)V

    .line 470
    return-void
.end method

.method public get(Ljava/lang/String;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;)V
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    .prologue
    .line 317
    const-string v0, "GET"

    invoke-virtual {p0, v0, p1, p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->addAction(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;)V

    .line 318
    return-void
.end method

.method public getErrorCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCompletedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public getListenCallback()Lcom/koushikdutta/async/callback/ListenCallback;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mListenCallback:Lcom/koushikdutta/async/callback/ListenCallback;

    return-object v0
.end method

.method public listen(I)Lcom/koushikdutta/async/AsyncServerSocket;
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 219
    invoke-static {}, Lcom/koushikdutta/async/AsyncServer;->getDefault()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->listen(Lcom/koushikdutta/async/AsyncServer;I)Lcom/koushikdutta/async/AsyncServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public listen(Lcom/koushikdutta/async/AsyncServer;I)Lcom/koushikdutta/async/AsyncServerSocket;
    .locals 2
    .param p1, "server"    # Lcom/koushikdutta/async/AsyncServer;
    .param p2, "port"    # I

    .prologue
    .line 210
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mListenCallback:Lcom/koushikdutta/async/callback/ListenCallback;

    invoke-virtual {p1, v0, p2, v1}, Lcom/koushikdutta/async/AsyncServer;->listen(Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public listenSecure(ILjavax/net/ssl/SSLContext;)V
    .locals 3
    .param p1, "port"    # I
    .param p2, "sslContext"    # Ljavax/net/ssl/SSLContext;

    .prologue
    .line 223
    invoke-static {}, Lcom/koushikdutta/async/AsyncServer;->getDefault()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/koushikdutta/async/http/server/AsyncHttpServer$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$2;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer;ILjavax/net/ssl/SSLContext;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/koushikdutta/async/AsyncServer;->listen(Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncServerSocket;

    .line 240
    return-void
.end method

.method protected onRequest(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V
    .locals 0
    .param p1, "request"    # Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;
    .param p2, "response"    # Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .prologue
    .line 53
    return-void
.end method

.method protected onUnknownBody(Lcom/koushikdutta/async/http/libcore/RawHeaders;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .locals 2
    .param p1, "headers"    # Lcom/koushikdutta/async/http/libcore/RawHeaders;

    .prologue
    .line 56
    new-instance v0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;

    const-string v1, "Content-Type"

    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/server/UnknownRequestBody;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public post(Ljava/lang/String;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;)V
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    .prologue
    .line 321
    const-string v0, "POST"

    invoke-virtual {p0, v0, p1, p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->addAction(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;)V

    .line 322
    return-void
.end method

.method public setErrorCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCompletedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 249
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 45
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 50
    :cond_0
    return-void

    .line 46
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/AsyncServerSocket;

    .line 47
    .local v0, "listener":Lcom/koushikdutta/async/AsyncServerSocket;
    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncServerSocket;->stop()V

    goto :goto_0
.end method

.method public websocket(Ljava/lang/String;Lcom/koushikdutta/async/http/server/AsyncHttpServer$WebSocketRequestCallback;)V
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/koushikdutta/async/http/server/AsyncHttpServer$WebSocketRequestCallback;

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->websocket(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/server/AsyncHttpServer$WebSocketRequestCallback;)V

    .line 283
    return-void
.end method

.method public websocket(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/server/AsyncHttpServer$WebSocketRequestCallback;)V
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/koushikdutta/async/http/server/AsyncHttpServer$WebSocketRequestCallback;

    .prologue
    .line 286
    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$3;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer;Ljava/lang/String;Lcom/koushikdutta/async/http/server/AsyncHttpServer$WebSocketRequestCallback;)V

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->get(Ljava/lang/String;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;)V

    .line 314
    return-void
.end method
