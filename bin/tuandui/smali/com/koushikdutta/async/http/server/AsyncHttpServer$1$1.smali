.class Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;
.super Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;
.source "AsyncHttpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->onAccepted(Lcom/koushikdutta/async/AsyncSocket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field fullPath:Ljava/lang/String;

.field hasContinued:Z

.field match:Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;

.field path:Ljava/lang/String;

.field requestComplete:Z

.field res:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

.field responseComplete:Z

.field final synthetic this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

.field private final synthetic val$socket:Lcom/koushikdutta/async/AsyncSocket;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iput-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    .line 62
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->report(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;)V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->handleOnCompleted()V

    return-void
.end method

.method private handleOnCompleted()V
    .locals 2

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->requestComplete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->responseComplete:Z

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/http/HttpUtil;->isKeepAlive(Lcom/koushikdutta/async/http/libcore/RawHeaders;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->onAccepted(Lcom/koushikdutta/async/AsyncSocket;)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    goto :goto_0
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Lcom/koushikdutta/async/http/Multimap;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 188
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->fullPath:Ljava/lang/String;

    const-string v2, "\\?"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    if-ge v1, v3, :cond_0

    .line 190
    new-instance v1, Lcom/koushikdutta/async/http/Multimap;

    invoke-direct {v1}, Lcom/koushikdutta/async/http/Multimap;-><init>()V

    .line 191
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/koushikdutta/async/http/Multimap;->parseQuery(Ljava/lang/String;)Lcom/koushikdutta/async/http/Multimap;

    move-result-object v1

    goto :goto_0
.end method

.method public onCompleted(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->res:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->getHeaders()Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->getResponseCode()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->requestComplete:Z

    .line 152
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->onCompleted(Ljava/lang/Exception;)V

    .line 155
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    new-instance v1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$3;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$3;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 162
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->handleOnCompleted()V

    .line 164
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->getBody()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v0

    invoke-interface {v0}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->readFullyOnRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->match:Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->match:Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;->callback:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->res:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-interface {v0, p0, v1}, Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;->onRequest(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V

    goto :goto_0
.end method

.method protected onHeadersReceived()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->getRawHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v0

    .line 82
    .local v0, "headers":Lcom/koushikdutta/async/http/libcore/RawHeaders;
    iget-boolean v6, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->hasContinued:Z

    if-nez v6, :cond_1

    const-string v6, "100-continue"

    const-string v7, "Expect"

    invoke-virtual {v0, v7}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->pause()V

    .line 85
    iget-object v6, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    const-string v7, "HTTP/1.1 100 Continue\r\n\r\n"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    new-instance v8, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$1;

    invoke-direct {v8, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$1;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;)V

    invoke-static {v6, v7, v8}, Lcom/koushikdutta/async/Util;->writeAll(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, "statusLine":Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, "parts":[Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v6, v4, v6

    iput-object v6, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->fullPath:Ljava/lang/String;

    .line 104
    iget-object v6, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->fullPath:Ljava/lang/String;

    const-string v7, "\\?"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v8

    iput-object v6, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->path:Ljava/lang/String;

    .line 105
    aget-object v6, v4, v8

    iput-object v6, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->method:Ljava/lang/String;

    .line 106
    iget-object v6, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    # getter for: Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;
    invoke-static {v6}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->access$0(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;)Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    move-result-object v6

    iget-object v7, v6, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mActions:Ljava/util/Hashtable;

    monitor-enter v7

    .line 107
    :try_start_0
    iget-object v6, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    # getter for: Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;
    invoke-static {v6}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->access$0(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;)Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    move-result-object v6

    iget-object v6, v6, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mActions:Ljava/util/Hashtable;

    iget-object v8, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->method:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 108
    .local v3, "pairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;>;"
    if-eqz v3, :cond_3

    .line 109
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 106
    :cond_3
    :goto_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    new-instance v6, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;

    iget-object v7, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-direct {v6, p0, v7, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)V

    iput-object v6, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->res:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    .line 130
    iget-object v6, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    # getter for: Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;
    invoke-static {v6}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->access$0(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;)Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    move-result-object v6

    iget-object v7, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->res:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v6, p0, v7}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->onRequest(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V

    .line 132
    iget-object v6, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->match:Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;

    if-nez v6, :cond_5

    .line 133
    iget-object v6, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->res:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    const/16 v7, 0x194

    invoke-virtual {v6, v7}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->responseCode(I)V

    .line 134
    iget-object v6, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->res:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v6}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->end()V

    goto :goto_0

    .line 109
    :cond_4
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;

    .line 110
    .local v2, "p":Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;
    iget-object v8, v2, Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;->regex:Ljava/util/regex/Pattern;

    iget-object v9, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 111
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 112
    iput-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->mMatcher:Ljava/util/regex/Matcher;

    .line 113
    iput-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->match:Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;

    goto :goto_1

    .line 106
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "p":Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;
    .end local v3    # "pairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 138
    .restart local v3    # "pairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->getBody()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v6

    invoke-interface {v6}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->readFullyOnRequest()Z

    move-result v6

    if-nez v6, :cond_6

    .line 139
    iget-object v6, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->match:Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;

    iget-object v6, v6, Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;->callback:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    iget-object v7, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->res:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-interface {v6, p0, v7}, Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;->onRequest(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V

    goto/16 :goto_0

    .line 141
    :cond_6
    iget-boolean v6, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->requestComplete:Z

    if-eqz v6, :cond_0

    .line 142
    iget-object v6, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->match:Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;

    iget-object v6, v6, Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;->callback:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    iget-object v7, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->res:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-interface {v6, p0, v7}, Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;->onRequest(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V

    goto/16 :goto_0
.end method

.method protected onUnknownBody(Lcom/koushikdutta/async/http/libcore/RawHeaders;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .locals 1
    .param p1, "headers"    # Lcom/koushikdutta/async/http/libcore/RawHeaders;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    # getter for: Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;
    invoke-static {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->access$0(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;)Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->onUnknownBody(Lcom/koushikdutta/async/http/libcore/RawHeaders;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v0

    return-object v0
.end method
