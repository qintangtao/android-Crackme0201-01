.class Lcom/qiniu/android/http/HttpManager$2;
.super Ljava/lang/Object;
.source "HttpManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/HttpManager;->postEntity(Ljava/lang/String;Lorg/apache/http/HttpEntity;[Lorg/apache/http/Header;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/http/HttpManager;

.field final synthetic val$completionHandler:Lcom/qiniu/android/http/CompletionHandler;

.field final synthetic val$entity:Lorg/apache/http/HttpEntity;

.field final synthetic val$forceIp:Z

.field final synthetic val$h:[Lorg/apache/http/Header;

.field final synthetic val$progressHandler:Lcom/qiniu/android/http/ProgressHandler;

.field final synthetic val$url2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/HttpManager;Ljava/lang/String;Z[Lorg/apache/http/Header;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/ProgressHandler;Lorg/apache/http/HttpEntity;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/qiniu/android/http/HttpManager$2;->this$0:Lcom/qiniu/android/http/HttpManager;

    iput-object p2, p0, Lcom/qiniu/android/http/HttpManager$2;->val$url2:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/qiniu/android/http/HttpManager$2;->val$forceIp:Z

    iput-object p4, p0, Lcom/qiniu/android/http/HttpManager$2;->val$h:[Lorg/apache/http/Header;

    iput-object p5, p0, Lcom/qiniu/android/http/HttpManager$2;->val$completionHandler:Lcom/qiniu/android/http/CompletionHandler;

    iput-object p6, p0, Lcom/qiniu/android/http/HttpManager$2;->val$progressHandler:Lcom/qiniu/android/http/ProgressHandler;

    iput-object p7, p0, Lcom/qiniu/android/http/HttpManager$2;->val$entity:Lorg/apache/http/HttpEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 124
    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager$2;->val$url2:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v14

    .line 125
    .local v14, "uri":Ljava/net/URI;
    const/4 v3, 0x0

    .line 126
    .local v3, "ip":Ljava/lang/String;
    iget-boolean v0, p0, Lcom/qiniu/android/http/HttpManager$2;->val$forceIp:Z

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager$2;->this$0:Lcom/qiniu/android/http/HttpManager;

    # getter for: Lcom/qiniu/android/http/HttpManager;->backUpIp:Ljava/lang/String;
    invoke-static {v0}, Lcom/qiniu/android/http/HttpManager;->access$000(Lcom/qiniu/android/http/HttpManager;)Ljava/lang/String;

    move-result-object v3

    .line 135
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager$2;->val$h:[Lorg/apache/http/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v12, v0, [Lorg/apache/http/Header;

    .line 136
    .local v12, "h2":[Lorg/apache/http/Header;
    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager$2;->val$h:[Lorg/apache/http/Header;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/qiniu/android/http/HttpManager$2;->val$h:[Lorg/apache/http/Header;

    array-length v4, v4

    invoke-static {v0, v1, v12, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    const/4 v6, 0x0

    .line 140
    .local v6, "newUrl":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v14}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v14}, Ljava/net/URI;->getPort()I

    move-result v4

    invoke-virtual {v14}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v6

    .end local v6    # "newUrl":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 144
    .restart local v6    # "newUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager$2;->val$h:[Lorg/apache/http/Header;

    array-length v0, v0

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Host"

    invoke-virtual {v14}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v12, v0

    .line 145
    move-object v13, v3

    .line 146
    .local v13, "ip2":Ljava/lang/String;
    new-instance v10, Lcom/qiniu/android/http/ResponseHandler;

    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager$2;->val$url2:Ljava/lang/String;

    iget-object v1, p0, Lcom/qiniu/android/http/HttpManager$2;->this$0:Lcom/qiniu/android/http/HttpManager;

    new-instance v2, Lcom/qiniu/android/http/HttpManager$2$1;

    invoke-direct {v2, p0, v14, v13, v12}, Lcom/qiniu/android/http/HttpManager$2$1;-><init>(Lcom/qiniu/android/http/HttpManager$2;Ljava/net/URI;Ljava/lang/String;[Lorg/apache/http/Header;)V

    # invokes: Lcom/qiniu/android/http/HttpManager;->wrap(Lcom/qiniu/android/http/CompletionHandler;)Lcom/qiniu/android/http/CompletionHandler;
    invoke-static {v1, v2}, Lcom/qiniu/android/http/HttpManager;->access$200(Lcom/qiniu/android/http/HttpManager;Lcom/qiniu/android/http/CompletionHandler;)Lcom/qiniu/android/http/CompletionHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/qiniu/android/http/HttpManager$2;->val$progressHandler:Lcom/qiniu/android/http/ProgressHandler;

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/qiniu/android/http/ResponseHandler;-><init>(Ljava/lang/String;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/ProgressHandler;Ljava/lang/String;)V

    .line 163
    .local v10, "handler2":Lcom/qiniu/android/http/ResponseHandler;
    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager$2;->this$0:Lcom/qiniu/android/http/HttpManager;

    # getter for: Lcom/qiniu/android/http/HttpManager;->client:Lcom/loopj/android/http/AsyncHttpClient;
    invoke-static {v0}, Lcom/qiniu/android/http/HttpManager;->access$100(Lcom/qiniu/android/http/HttpManager;)Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/qiniu/android/http/HttpManager$2;->val$entity:Lorg/apache/http/HttpEntity;

    const/4 v9, 0x0

    move-object v7, v12

    invoke-virtual/range {v4 .. v10}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 164
    return-void

    .line 129
    .end local v6    # "newUrl":Ljava/lang/String;
    .end local v10    # "handler2":Lcom/qiniu/android/http/ResponseHandler;
    .end local v12    # "h2":[Lorg/apache/http/Header;
    .end local v13    # "ip2":Ljava/lang/String;
    :cond_1
    invoke-virtual {v14}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qiniu/android/utils/Dns;->getAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    if-eqz v3, :cond_2

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager$2;->this$0:Lcom/qiniu/android/http/HttpManager;

    # getter for: Lcom/qiniu/android/http/HttpManager;->backUpIp:Ljava/lang/String;
    invoke-static {v0}, Lcom/qiniu/android/http/HttpManager;->access$000(Lcom/qiniu/android/http/HttpManager;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 141
    .restart local v12    # "h2":[Lorg/apache/http/Header;
    :catch_0
    move-exception v11

    .line 142
    .local v11, "e":Ljava/net/URISyntaxException;
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
