.class public final Lcom/qiniu/android/http/ResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "ResponseHandler.java"


# instance fields
.field private completionHandler:Lcom/qiniu/android/http/CompletionHandler;

.field private host:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private port:I

.field private progressHandler:Lcom/qiniu/android/http/ProgressHandler;

.field private reqStartTime:J

.field private volatile sent:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/ProgressHandler;Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "completionHandler"    # Lcom/qiniu/android/http/CompletionHandler;
    .param p3, "progressHandler"    # Lcom/qiniu/android/http/ProgressHandler;
    .param p4, "ip"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 61
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>(Landroid/os/Looper;)V

    .line 49
    iput-object v4, p0, Lcom/qiniu/android/http/ResponseHandler;->ip:Ljava/lang/String;

    .line 54
    const/4 v3, -0x1

    iput v3, p0, Lcom/qiniu/android/http/ResponseHandler;->port:I

    .line 56
    iput-object v4, p0, Lcom/qiniu/android/http/ResponseHandler;->path:Ljava/lang/String;

    .line 58
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/qiniu/android/http/ResponseHandler;->sent:J

    .line 62
    const/4 v1, 0x0

    .line 64
    .local v1, "uri":Ljava/net/URI;
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v1    # "uri":Ljava/net/URI;
    .local v2, "uri":Ljava/net/URI;
    :try_start_1
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/qiniu/android/http/ResponseHandler;->host:Ljava/lang/String;

    .line 66
    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v3

    iput v3, p0, Lcom/qiniu/android/http/ResponseHandler;->port:I

    .line 67
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/qiniu/android/http/ResponseHandler;->path:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 72
    .end local v2    # "uri":Ljava/net/URI;
    .restart local v1    # "uri":Ljava/net/URI;
    :goto_0
    iput-object p2, p0, Lcom/qiniu/android/http/ResponseHandler;->completionHandler:Lcom/qiniu/android/http/CompletionHandler;

    .line 73
    iput-object p3, p0, Lcom/qiniu/android/http/ResponseHandler;->progressHandler:Lcom/qiniu/android/http/ProgressHandler;

    .line 74
    iput-object p4, p0, Lcom/qiniu/android/http/ResponseHandler;->ip:Ljava/lang/String;

    .line 75
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/net/URISyntaxException;
    :goto_1
    const-string v3, "N/A"

    iput-object v3, p0, Lcom/qiniu/android/http/ResponseHandler;->host:Ljava/lang/String;

    .line 70
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    .line 68
    .end local v0    # "e":Ljava/net/URISyntaxException;
    .end local v1    # "uri":Ljava/net/URI;
    .restart local v2    # "uri":Ljava/net/URI;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "uri":Ljava/net/URI;
    .restart local v1    # "uri":Ljava/net/URI;
    goto :goto_1
.end method

.method private static buildJsonResp([B)Lorg/json/JSONObject;
    .locals 2
    .param p0, "body"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 152
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private static buildResponseInfo(I[Lorg/apache/http/Header;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IDJLjava/lang/Throwable;)Lcom/qiniu/android/http/ResponseInfo;
    .locals 25
    .param p0, "statusCode"    # I
    .param p1, "headers"    # [Lorg/apache/http/Header;
    .param p2, "responseBody"    # [B
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "ip"    # Ljava/lang/String;
    .param p6, "port"    # I
    .param p7, "duration"    # D
    .param p9, "sent"    # J
    .param p11, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 80
    if-eqz p11, :cond_0

    move-object/from16 v0, p11

    instance-of v3, v0, Lcom/qiniu/android/http/CancellationHandler$CancellationException;

    if-eqz v3, :cond_0

    .line 81
    invoke-static {}, Lcom/qiniu/android/http/ResponseInfo;->cancelled()Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v3

    .line 147
    :goto_0
    return-object v3

    .line 84
    :cond_0
    const/4 v5, 0x0

    .line 85
    .local v5, "reqId":Ljava/lang/String;
    const/4 v6, 0x0

    .line 86
    .local v6, "xlog":Ljava/lang/String;
    const/4 v7, 0x0

    .line 87
    .local v7, "xvia":Ljava/lang/String;
    if-eqz p1, :cond_6

    .line 88
    move-object/from16 v2, p1

    .local v2, "arr$":[Lorg/apache/http/Header;
    array-length v0, v2

    move/from16 v21, v0

    .local v21, "len$":I
    const/16 v20, 0x0

    .local v20, "i$":I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    aget-object v19, v2, v20

    .line 89
    .local v19, "h":Lorg/apache/http/Header;
    const-string v3, "X-Reqid"

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 88
    :cond_1
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 91
    :cond_2
    const-string v3, "X-Log"

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 92
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 93
    :cond_3
    const-string v3, "X-Via"

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 94
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 95
    :cond_4
    const-string v3, "X-Px"

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 96
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 97
    :cond_5
    const-string v3, "Fw-Via"

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 103
    .end local v2    # "arr$":[Lorg/apache/http/Header;
    .end local v19    # "h":Lorg/apache/http/Header;
    .end local v20    # "i$":I
    .end local v21    # "len$":I
    :cond_6
    const/16 v16, 0x0

    .line 104
    .local v16, "err":Ljava/lang/String;
    const/16 v3, 0xc8

    move/from16 v0, p0

    if-eq v0, v3, :cond_a

    .line 105
    if-eqz p2, :cond_9

    .line 107
    :try_start_0
    new-instance v18, Ljava/lang/String;

    const-string v3, "utf-8"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    .end local v16    # "err":Ljava/lang/String;
    .local v18, "err":Ljava/lang/String;
    :try_start_1
    new-instance v23, Lorg/json/JSONObject;

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 109
    .local v23, "obj":Lorg/json/JSONObject;
    const-string v3, "error"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v16

    .line 129
    .end local v18    # "err":Ljava/lang/String;
    .end local v23    # "obj":Lorg/json/JSONObject;
    .restart local v16    # "err":Ljava/lang/String;
    :cond_7
    :goto_3
    if-nez p0, :cond_8

    .line 130
    const/16 p0, -0x1

    .line 131
    invoke-virtual/range {p11 .. p11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v22

    .line 132
    .local v22, "msg":Ljava/lang/String;
    move-object/from16 v0, p11

    instance-of v3, v0, Ljava/io/IOException;

    if-eqz v3, :cond_8

    .line 133
    if-eqz v22, :cond_b

    const-string v3, "UnknownHostException"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_b

    .line 134
    const/16 p0, -0x3eb

    .line 147
    .end local v22    # "msg":Ljava/lang/String;
    :cond_8
    :goto_4
    new-instance v3, Lcom/qiniu/android/http/ResponseInfo;

    move/from16 v4, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move-wide/from16 v12, p7

    move-wide/from16 v14, p9

    invoke-direct/range {v3 .. v16}, Lcom/qiniu/android/http/ResponseInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDJLjava/lang/String;)V

    goto/16 :goto_0

    .line 110
    :catch_0
    move-exception v17

    .line 111
    .local v17, "e":Lorg/json/JSONException;
    :goto_5
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 112
    .end local v17    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v17

    .line 113
    .local v17, "e":Ljava/io/UnsupportedEncodingException;
    :goto_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    .line 116
    .end local v17    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_9
    if-eqz p11, :cond_7

    .line 117
    invoke-virtual/range {p11 .. p11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v16

    .line 118
    if-nez v16, :cond_7

    .line 119
    invoke-virtual/range {p11 .. p11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_3

    .line 124
    :cond_a
    if-nez v5, :cond_7

    .line 125
    const-string v16, "remote is not qiniu server!"

    goto :goto_3

    .line 135
    .restart local v22    # "msg":Ljava/lang/String;
    :cond_b
    if-eqz v22, :cond_c

    const-string v3, "Broken pipe"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_c

    .line 136
    const/16 p0, -0x3ed

    goto :goto_4

    .line 137
    :cond_c
    move-object/from16 v0, p11

    instance-of v3, v0, Lorg/apache/http/NoHttpResponseException;

    if-eqz v3, :cond_d

    .line 138
    const/16 p0, -0x3ed

    goto :goto_4

    .line 139
    :cond_d
    move-object/from16 v0, p11

    instance-of v3, v0, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_e

    .line 140
    const/16 p0, -0x3e9

    goto :goto_4

    .line 141
    :cond_e
    move-object/from16 v0, p11

    instance-of v3, v0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-nez v3, :cond_f

    move-object/from16 v0, p11

    instance-of v3, v0, Ljava/net/SocketException;

    if-eqz v3, :cond_8

    .line 142
    :cond_f
    const/16 p0, -0x3ec

    goto :goto_4

    .line 112
    .end local v16    # "err":Ljava/lang/String;
    .end local v22    # "msg":Ljava/lang/String;
    .restart local v18    # "err":Ljava/lang/String;
    :catch_2
    move-exception v17

    move-object/from16 v16, v18

    .end local v18    # "err":Ljava/lang/String;
    .restart local v16    # "err":Ljava/lang/String;
    goto :goto_6

    .line 110
    .end local v16    # "err":Ljava/lang/String;
    .restart local v18    # "err":Ljava/lang/String;
    :catch_3
    move-exception v17

    move-object/from16 v16, v18

    .end local v18    # "err":Ljava/lang/String;
    .restart local v16    # "err":Ljava/lang/String;
    goto :goto_5
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 13
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseBody"    # [B
    .param p4, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/qiniu/android/http/ResponseHandler;->reqStartTime:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v8, v2, v4

    .line 173
    .local v8, "duration":D
    iget-object v4, p0, Lcom/qiniu/android/http/ResponseHandler;->host:Ljava/lang/String;

    iget-object v5, p0, Lcom/qiniu/android/http/ResponseHandler;->path:Ljava/lang/String;

    iget-object v6, p0, Lcom/qiniu/android/http/ResponseHandler;->ip:Ljava/lang/String;

    iget v7, p0, Lcom/qiniu/android/http/ResponseHandler;->port:I

    iget-wide v10, p0, Lcom/qiniu/android/http/ResponseHandler;->sent:J

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v12, p4

    invoke-static/range {v1 .. v12}, Lcom/qiniu/android/http/ResponseHandler;->buildResponseInfo(I[Lorg/apache/http/Header;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IDJLjava/lang/Throwable;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    .line 175
    .local v0, "info":Lcom/qiniu/android/http/ResponseInfo;
    iget-object v1, p0, Lcom/qiniu/android/http/ResponseHandler;->completionHandler:Lcom/qiniu/android/http/CompletionHandler;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/qiniu/android/http/CompletionHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    .line 176
    return-void
.end method

.method public onProgress(II)V
    .locals 4
    .param p1, "bytesWritten"    # I
    .param p2, "totalSize"    # I

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/qiniu/android/http/ResponseHandler;->sent:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/qiniu/android/http/ResponseHandler;->sent:J

    .line 181
    iget-object v0, p0, Lcom/qiniu/android/http/ResponseHandler;->progressHandler:Lcom/qiniu/android/http/ProgressHandler;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/qiniu/android/http/ResponseHandler;->progressHandler:Lcom/qiniu/android/http/ProgressHandler;

    invoke-interface {v0, p1, p2}, Lcom/qiniu/android/http/ProgressHandler;->onProgress(II)V

    .line 184
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qiniu/android/http/ResponseHandler;->reqStartTime:J

    .line 189
    invoke-super {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onStart()V

    .line 190
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 15
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/qiniu/android/http/ResponseHandler;->reqStartTime:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v8, v2, v4

    .line 158
    .local v8, "duration":D
    const/4 v14, 0x0

    .line 159
    .local v14, "obj":Lorg/json/JSONObject;
    const/4 v12, 0x0

    .line 161
    .local v12, "exception":Ljava/lang/Exception;
    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/qiniu/android/http/ResponseHandler;->buildJsonResp([B)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 165
    :goto_0
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/qiniu/android/http/ResponseHandler;->host:Ljava/lang/String;

    iget-object v5, p0, Lcom/qiniu/android/http/ResponseHandler;->path:Ljava/lang/String;

    iget-object v6, p0, Lcom/qiniu/android/http/ResponseHandler;->ip:Ljava/lang/String;

    iget v7, p0, Lcom/qiniu/android/http/ResponseHandler;->port:I

    iget-wide v10, p0, Lcom/qiniu/android/http/ResponseHandler;->sent:J

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v12}, Lcom/qiniu/android/http/ResponseHandler;->buildResponseInfo(I[Lorg/apache/http/Header;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IDJLjava/lang/Throwable;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v13

    .line 167
    .local v13, "info":Lcom/qiniu/android/http/ResponseInfo;
    iget-object v1, p0, Lcom/qiniu/android/http/ResponseHandler;->completionHandler:Lcom/qiniu/android/http/CompletionHandler;

    invoke-interface {v1, v13, v14}, Lcom/qiniu/android/http/CompletionHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    .line 168
    return-void

    .line 162
    .end local v13    # "info":Lcom/qiniu/android/http/ResponseInfo;
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    move-object v12, v0

    goto :goto_0
.end method

.method protected sendMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 199
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 200
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 201
    .local v1, "response":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 202
    const/4 v2, 0x3

    aget-object v0, v1, v2

    check-cast v0, Ljava/lang/Throwable;

    .line 203
    .local v0, "e":Ljava/lang/Throwable;
    instance-of v2, v0, Ljava/net/UnknownHostException;

    if-nez v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/qiniu/android/http/ResponseHandler;->ip:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/qiniu/android/http/ResponseHandler;->host:Ljava/lang/String;

    invoke-static {v2}, Lcom/qiniu/android/utils/Dns;->getAddressesString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/qiniu/android/http/ResponseHandler;->ip:Ljava/lang/String;

    .line 210
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "response":[Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 211
    return-void
.end method
