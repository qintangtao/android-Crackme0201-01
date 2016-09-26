.class Lcom/lzx/iteam/net/AsynHttpClient$ChatMsgSender;
.super Landroid/os/Handler;
.source "AsynHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/net/AsynHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChatMsgSender"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 774
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 775
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    const/16 v12, 0xc8

    .line 779
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lzx/iteam/net/CcMsgStructure;

    .line 780
    .local v0, "ccMsg":Lcom/lzx/iteam/net/CcMsgStructure;
    const/4 v5, 0x0

    .line 782
    .local v5, "resp":Lorg/apache/http/HttpResponse;
    :try_start_0
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3}, Lorg/apache/http/client/methods/HttpPost;-><init>()V

    .line 784
    .local v3, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v9, Ljava/net/URI;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "http://123.57.214.92:8070"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/lzx/iteam/net/CcMsgStructure;->mApi:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    .line 785
    new-instance v9, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v10, v0, Lcom/lzx/iteam/net/CcMsgStructure;->mParams:Ljava/util/List;

    const-string v11, "UTF-8"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 787
    iget v9, v0, Lcom/lzx/iteam/net/CcMsgStructure;->type:I

    if-ne v9, v12, :cond_0

    .line 788
    const/16 v9, 0x66

    sput v9, Lcom/lzx/iteam/CloudDialerActivity;->sCloudSearch:I

    .line 791
    :cond_0
    # getter for: Lcom/lzx/iteam/net/AsynHttpClient;->sHttpclient:Lorg/apache/http/client/HttpClient;
    invoke-static {}, Lcom/lzx/iteam/net/AsynHttpClient;->access$0()Lorg/apache/http/client/HttpClient;

    move-result-object v9

    invoke-interface {v9, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v5

    .line 802
    .end local v3    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :goto_0
    if-nez v5, :cond_1

    .line 803
    const-string v9, "AsyncHttpClient"

    const-string v10, "CcMsgSender HttpResponse is null, maybe no connection."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/16 v9, 0x1f43

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Lcom/lzx/iteam/net/CcMsgStructure;->onError(ILjava/lang/Object;)V

    .line 842
    :goto_1
    return-void

    .line 792
    :catch_0
    move-exception v1

    .line 793
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    const-string v9, "AsyncHttpClient"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "CcMsgSender 1 ClientProtocolException: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 794
    .end local v1    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v1

    .line 795
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v9, "AsyncHttpClient"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "CcMsgSender 1 UnsupportedEncodingException: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 796
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v1

    .line 797
    .local v1, "e":Ljava/io/IOException;
    const-string v9, "AsyncHttpClient"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "CcMsgSender 1 IOException: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 798
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 799
    .local v1, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    .line 818
    .end local v1    # "e":Ljava/net/URISyntaxException;
    :cond_1
    const/4 v4, 0x0

    .line 819
    .local v4, "isRespOk":Z
    const/4 v6, 0x0

    .line 820
    .local v6, "respJson":Lorg/json/JSONObject;
    const/16 v2, 0x1f42

    .line 822
    .local v2, "errorNum":I
    :try_start_1
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 823
    .local v8, "s":Ljava/lang/String;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 824
    .end local v6    # "respJson":Lorg/json/JSONObject;
    .local v7, "respJson":Lorg/json/JSONObject;
    :try_start_2
    const-string v9, "code"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 825
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_2
    .catch Lorg/apache/http/ParseException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    move-result v9

    if-ne v9, v12, :cond_3

    .line 826
    if-nez v2, :cond_3

    .line 827
    const/4 v4, 0x1

    move-object v6, v7

    .line 837
    .end local v7    # "respJson":Lorg/json/JSONObject;
    .end local v8    # "s":Ljava/lang/String;
    .restart local v6    # "respJson":Lorg/json/JSONObject;
    :goto_2
    if-eqz v4, :cond_2

    .line 838
    invoke-virtual {v0, v6}, Lcom/lzx/iteam/net/CcMsgStructure;->onReceive(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 829
    :catch_4
    move-exception v1

    .line 830
    .local v1, "e":Lorg/apache/http/ParseException;
    :goto_3
    const-string v9, "AsyncHttpClient"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "CcMsgSender 2 ParseException: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/http/ParseException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 831
    .end local v1    # "e":Lorg/apache/http/ParseException;
    :catch_5
    move-exception v1

    .line 832
    .local v1, "e":Lorg/json/JSONException;
    :goto_4
    const-string v9, "AsyncHttpClient"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "CcMsgSender 2 JSONException: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 833
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_6
    move-exception v1

    .line 834
    .local v1, "e":Ljava/io/IOException;
    :goto_5
    const-string v9, "AsyncHttpClient"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "CcMsgSender 2 IOException: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 840
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    invoke-virtual {v0, v2, v6}, Lcom/lzx/iteam/net/CcMsgStructure;->onError(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 833
    .end local v6    # "respJson":Lorg/json/JSONObject;
    .restart local v7    # "respJson":Lorg/json/JSONObject;
    .restart local v8    # "s":Ljava/lang/String;
    :catch_7
    move-exception v1

    move-object v6, v7

    .end local v7    # "respJson":Lorg/json/JSONObject;
    .restart local v6    # "respJson":Lorg/json/JSONObject;
    goto :goto_5

    .line 831
    .end local v6    # "respJson":Lorg/json/JSONObject;
    .restart local v7    # "respJson":Lorg/json/JSONObject;
    :catch_8
    move-exception v1

    move-object v6, v7

    .end local v7    # "respJson":Lorg/json/JSONObject;
    .restart local v6    # "respJson":Lorg/json/JSONObject;
    goto :goto_4

    .line 829
    .end local v6    # "respJson":Lorg/json/JSONObject;
    .restart local v7    # "respJson":Lorg/json/JSONObject;
    :catch_9
    move-exception v1

    move-object v6, v7

    .end local v7    # "respJson":Lorg/json/JSONObject;
    .restart local v6    # "respJson":Lorg/json/JSONObject;
    goto :goto_3

    .end local v6    # "respJson":Lorg/json/JSONObject;
    .restart local v7    # "respJson":Lorg/json/JSONObject;
    :cond_3
    move-object v6, v7

    .end local v7    # "respJson":Lorg/json/JSONObject;
    .restart local v6    # "respJson":Lorg/json/JSONObject;
    goto :goto_2
.end method
