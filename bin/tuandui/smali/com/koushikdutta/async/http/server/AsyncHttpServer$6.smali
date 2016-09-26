.class Lcom/koushikdutta/async/http/server/AsyncHttpServer$6;
.super Ljava/lang/Object;
.source "AsyncHttpServer.java"

# interfaces
.implements Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServer;->directory(Ljava/lang/String;Ljava/io/File;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

.field private final synthetic val$directory:Ljava/io/File;

.field private final synthetic val$list:Z


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer;Ljava/io/File;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$6;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iput-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$6;->val$directory:Ljava/io/File;

    iput-boolean p3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$6;->val$list:Z

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequest(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V
    .locals 12
    .param p1, "request"    # Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;
    .param p2, "response"    # Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .prologue
    const/16 v10, 0x194

    const/4 v8, 0x0

    .line 421
    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getMatcher()Ljava/util/regex/Matcher;

    move-result-object v7

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 422
    .local v6, "path":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$6;->val$directory:Ljava/io/File;

    invoke-direct {v3, v7, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 424
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$6;->val$list:Z

    if-eqz v7, :cond_2

    .line 425
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v1, "dirs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .local v4, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    array-length v10, v9

    move v7, v8

    :goto_0
    if-lt v7, v10, :cond_0

    .line 434
    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$6$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$6$1;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$6;)V

    .line 441
    .local v0, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/io/File;>;"
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 442
    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 444
    invoke-virtual {v4, v8, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 468
    .end local v0    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/io/File;>;"
    .end local v1    # "dirs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v4    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    :goto_1
    return-void

    .line 427
    .restart local v1    # "dirs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .restart local v4    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_0
    aget-object v2, v9, v7

    .line 428
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 429
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 431
    :cond_1
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 448
    .end local v1    # "dirs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v2    # "f":Ljava/io/File;
    .end local v4    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_3

    .line 449
    invoke-interface {p2, v10}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->responseCode(I)V

    .line 450
    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->end()V

    goto :goto_1

    .line 454
    :cond_3
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 455
    .local v5, "is":Ljava/io/FileInputStream;
    const/16 v7, 0xc8

    invoke-interface {p2, v7}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->responseCode(I)V

    .line 456
    new-instance v7, Lcom/koushikdutta/async/http/server/AsyncHttpServer$6$2;

    invoke-direct {v7, p0, p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$6$2;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$6;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V

    invoke-static {v5, p2, v7}, Lcom/koushikdutta/async/Util;->pump(Ljava/io/InputStream;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 464
    .end local v5    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    invoke-interface {p2, v10}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->responseCode(I)V

    .line 465
    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->end()V

    goto :goto_1
.end method
