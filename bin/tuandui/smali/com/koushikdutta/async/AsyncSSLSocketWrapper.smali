.class public Lcom/koushikdutta/async/AsyncSSLSocketWrapper;
.super Ljava/lang/Object;
.source "AsyncSSLSocketWrapper.java"

# interfaces
.implements Lcom/koushikdutta/async/wrapper/AsyncSocketWrapper;
.implements Lcom/koushikdutta/async/AsyncSSLSocket;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static defaultSSLContext:Ljavax/net/ssl/SSLContext;


# instance fields
.field clientMode:Z

.field engine:Ljavax/net/ssl/SSLEngine;

.field finishedHandshake:Z

.field hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

.field mEmitter:Lcom/koushikdutta/async/BufferedDataEmitter;

.field private mHost:Ljava/lang/String;

.field private mPort:I

.field mSink:Lcom/koushikdutta/async/BufferedDataSink;

.field mSocket:Lcom/koushikdutta/async/AsyncSocket;

.field mUnwrapping:Z

.field private mWrapping:Z

.field mWriteableCallback:Lcom/koushikdutta/async/callback/WritableCallback;

.field peerCertificates:[Ljava/security/cert/X509Certificate;

.field trustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 30
    const-class v5, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    invoke-virtual {v5}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    sput-boolean v3, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->$assertionsDisabled:Z

    .line 163
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-gt v3, v4, :cond_1

    .line 164
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :catch_0
    move-exception v0

    .line 169
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    sput-object v3, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->defaultSSLContext:Ljavax/net/ssl/SSLContext;

    .line 170
    const/4 v3, 0x1

    new-array v2, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$1;

    invoke-direct {v4}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$1;-><init>()V

    aput-object v4, v2, v3

    .line 185
    .local v2, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    sget-object v3, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->defaultSSLContext:Ljavax/net/ssl/SSLContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    .end local v2    # "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    :goto_1
    return-void

    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    move v3, v4

    .line 30
    goto :goto_0

    .line 165
    :cond_1
    :try_start_2
    const-string v3, "Default"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    sput-object v3, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->defaultSSLContext:Ljavax/net/ssl/SSLContext;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 187
    .restart local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 188
    .local v1, "ex2":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public constructor <init>(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/String;I)V
    .locals 8
    .param p1, "socket"    # Lcom/koushikdutta/async/AsyncSocket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    const/4 v5, 0x0

    .line 204
    invoke-static {}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->createDefaultSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v4

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;-><init>(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;Z)V

    .line 205
    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;Z)V
    .locals 4
    .param p1, "socket"    # Lcom/koushikdutta/async/AsyncSocket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "sslEngine"    # Ljavax/net/ssl/SSLEngine;
    .param p5, "trustManagers"    # [Ljavax/net/ssl/TrustManager;
    .param p6, "verifier"    # Ljavax/net/ssl/HostnameVerifier;
    .param p7, "clientMode"    # Z

    .prologue
    const/4 v2, 0x0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mUnwrapping:Z

    .line 312
    iput-boolean v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->finishedHandshake:Z

    .line 406
    iput-boolean v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mWrapping:Z

    .line 211
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    .line 212
    iput-object p6, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 213
    iput-boolean p7, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->clientMode:Z

    .line 214
    iput-object p5, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->trustManagers:[Ljavax/net/ssl/TrustManager;

    .line 215
    iput-object p4, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->engine:Ljavax/net/ssl/SSLEngine;

    .line 217
    iput-object p2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mHost:Ljava/lang/String;

    .line 218
    iput p3, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mPort:I

    .line 219
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2, p7}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 220
    new-instance v2, Lcom/koushikdutta/async/BufferedDataSink;

    invoke-direct {v2, p1}, Lcom/koushikdutta/async/BufferedDataSink;-><init>(Lcom/koushikdutta/async/DataSink;)V

    iput-object v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    .line 221
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    new-instance v3, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$2;

    invoke-direct {v3, p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$2;-><init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;)V

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/BufferedDataSink;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 231
    new-instance v2, Lcom/koushikdutta/async/BufferedDataEmitter;

    invoke-direct {v2, p1}, Lcom/koushikdutta/async/BufferedDataEmitter;-><init>(Lcom/koushikdutta/async/DataEmitter;)V

    iput-object v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mEmitter:Lcom/koushikdutta/async/BufferedDataEmitter;

    .line 233
    new-instance v0, Lcom/koushikdutta/async/util/Allocator;

    invoke-direct {v0}, Lcom/koushikdutta/async/util/Allocator;-><init>()V

    .line 234
    .local v0, "allocator":Lcom/koushikdutta/async/util/Allocator;
    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/util/Allocator;->setMinAlloc(I)V

    .line 235
    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v1}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 236
    .local v1, "transformed":Lcom/koushikdutta/async/ByteBufferList;
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mEmitter:Lcom/koushikdutta/async/BufferedDataEmitter;

    new-instance v3, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$3;-><init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;Lcom/koushikdutta/async/ByteBufferList;Lcom/koushikdutta/async/util/Allocator;)V

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/BufferedDataEmitter;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 298
    return-void
.end method

.method static synthetic access$0(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;Ljavax/net/ssl/SSLEngineResult;)V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->handleResult(Ljavax/net/ssl/SSLEngineResult;)V

    return-void
.end method

.method static synthetic access$1(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->report(Ljava/lang/Exception;)V

    return-void
.end method

.method public static createDefaultSSLEngine()Ljavax/net/ssl/SSLEngine;
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->defaultSSLContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    return-object v0
.end method

.method private handleResult(Ljavax/net/ssl/SSLEngineResult;)V
    .locals 17
    .param p1, "res"    # Ljavax/net/ssl/SSLEngineResult;

    .prologue
    .line 327
    invoke-virtual/range {p1 .. p1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v11

    sget-object v12, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v11, v12, :cond_0

    .line 328
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v11}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v4

    .line 329
    .local v4, "task":Ljava/lang/Runnable;
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 332
    .end local v4    # "task":Ljava/lang/Runnable;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v11

    sget-object v12, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v11, v12, :cond_1

    .line 333
    sget-object v11, Lcom/koushikdutta/async/ByteBufferList;->EMPTY_BYTEBUFFER:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->write(Ljava/nio/ByteBuffer;)V

    .line 336
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v11

    sget-object v12, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v11, v12, :cond_2

    .line 337
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mEmitter:Lcom/koushikdutta/async/BufferedDataEmitter;

    invoke-virtual {v11}, Lcom/koushikdutta/async/BufferedDataEmitter;->onDataAvailable()V

    .line 341
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->finishedHandshake:Z

    if-nez v11, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v11}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v11

    sget-object v12, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v11, v12, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v11}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v11

    sget-object v12, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v11, v12, :cond_a

    .line 342
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->clientMode:Z

    if-eqz v11, :cond_8

    .line 343
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->trustManagers:[Ljavax/net/ssl/TrustManager;

    .line 344
    .local v7, "trustManagers":[Ljavax/net/ssl/TrustManager;
    if-nez v7, :cond_4

    .line 345
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v6

    .line 346
    .local v6, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 347
    invoke-virtual {v6}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v7

    .line 349
    .end local v6    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :cond_4
    const/4 v8, 0x0

    .line 350
    .local v8, "trusted":Z
    const/4 v3, 0x0

    .line 351
    .local v3, "peerUnverifiedCause":Ljava/lang/Exception;
    array-length v13, v7

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    if-lt v12, v13, :cond_5

    .line 375
    :goto_1
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->finishedHandshake:Z

    .line 376
    if-nez v8, :cond_8

    .line 377
    new-instance v1, Lcom/koushikdutta/async/AsyncSSLException;

    invoke-direct {v1, v3}, Lcom/koushikdutta/async/AsyncSSLException;-><init>(Ljava/lang/Throwable;)V

    .line 378
    .local v1, "e":Lcom/koushikdutta/async/AsyncSSLException;
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->report(Ljava/lang/Exception;)V

    .line 379
    invoke-virtual {v1}, Lcom/koushikdutta/async/AsyncSSLException;->getIgnore()Z

    move-result v11

    if-nez v11, :cond_8

    .line 380
    throw v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/koushikdutta/async/AsyncSSLException; {:try_start_0 .. :try_end_0} :catch_4

    .line 388
    .end local v1    # "e":Lcom/koushikdutta/async/AsyncSSLException;
    .end local v3    # "peerUnverifiedCause":Ljava/lang/Exception;
    .end local v7    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    .end local v8    # "trusted":Z
    :catch_0
    move-exception v2

    .line 389
    .local v2, "ex":Ljava/security/NoSuchAlgorithmException;
    new-instance v11, Ljava/lang/RuntimeException;

    invoke-direct {v11, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 351
    .end local v2    # "ex":Ljava/security/NoSuchAlgorithmException;
    .restart local v3    # "peerUnverifiedCause":Ljava/lang/Exception;
    .restart local v7    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    .restart local v8    # "trusted":Z
    :cond_5
    :try_start_1
    aget-object v5, v7, v12
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/koushikdutta/async/AsyncSSLException; {:try_start_1 .. :try_end_1} :catch_4

    .line 353
    .local v5, "tm":Ljavax/net/ssl/TrustManager;
    :try_start_2
    move-object v0, v5

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    move-object v10, v0

    .line 354
    .local v10, "xtm":Ljavax/net/ssl/X509TrustManager;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v11}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v11

    invoke-interface {v11}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v11

    check-cast v11, [Ljava/security/cert/X509Certificate;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->peerCertificates:[Ljava/security/cert/X509Certificate;

    .line 355
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->peerCertificates:[Ljava/security/cert/X509Certificate;

    const-string v14, "SSL"

    invoke-interface {v10, v11, v14}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mHost:Ljava/lang/String;

    if-eqz v11, :cond_6

    .line 357
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-nez v11, :cond_7

    .line 358
    new-instance v9, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v9}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    .line 359
    .local v9, "verifier":Lorg/apache/http/conn/ssl/StrictHostnameVerifier;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mHost:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->peerCertificates:[Ljava/security/cert/X509Certificate;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-static {v14}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->getCNs(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->peerCertificates:[Ljava/security/cert/X509Certificate;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-static {v15}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->getDNSSubjectAlts(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v11, v14, v15}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 365
    .end local v9    # "verifier":Lorg/apache/http/conn/ssl/StrictHostnameVerifier;
    :cond_6
    :goto_2
    const/4 v8, 0x1

    goto :goto_1

    .line 362
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mHost:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v15}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v15

    invoke-interface {v11, v14, v15}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/koushikdutta/async/AsyncSSLException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    .line 368
    .end local v10    # "xtm":Ljavax/net/ssl/X509TrustManager;
    :catch_1
    move-exception v2

    .line 369
    .local v2, "ex":Ljava/security/GeneralSecurityException;
    move-object v3, v2

    .line 351
    .end local v2    # "ex":Ljava/security/GeneralSecurityException;
    :goto_3
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    goto/16 :goto_0

    .line 371
    :catch_2
    move-exception v2

    .line 372
    .local v2, "ex":Ljavax/net/ssl/SSLException;
    move-object v3, v2

    goto :goto_3

    .line 383
    .end local v2    # "ex":Ljavax/net/ssl/SSLException;
    .end local v3    # "peerUnverifiedCause":Ljava/lang/Exception;
    .end local v5    # "tm":Ljavax/net/ssl/TrustManager;
    .end local v7    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    .end local v8    # "trusted":Z
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mWriteableCallback:Lcom/koushikdutta/async/callback/WritableCallback;

    if-eqz v11, :cond_9

    .line 384
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mWriteableCallback:Lcom/koushikdutta/async/callback/WritableCallback;

    invoke-interface {v11}, Lcom/koushikdutta/async/callback/WritableCallback;->onWriteable()V

    .line 385
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mEmitter:Lcom/koushikdutta/async/BufferedDataEmitter;

    invoke-virtual {v11}, Lcom/koushikdutta/async/BufferedDataEmitter;->onDataAvailable()V
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/koushikdutta/async/AsyncSSLException; {:try_start_3 .. :try_end_3} :catch_4

    .line 397
    :cond_a
    :goto_4
    return-void

    .line 391
    :catch_3
    move-exception v2

    .line 392
    .local v2, "ex":Ljava/security/GeneralSecurityException;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->report(Ljava/lang/Exception;)V

    goto :goto_4

    .line 394
    .end local v2    # "ex":Ljava/security/GeneralSecurityException;
    :catch_4
    move-exception v2

    .line 395
    .local v2, "ex":Lcom/koushikdutta/async/AsyncSSLException;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->report(Ljava/lang/Exception;)V

    goto :goto_4
.end method

.method private report(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->getEndCallback()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v0

    .line 518
    .local v0, "cb":Lcom/koushikdutta/async/callback/CompletedCallback;
    if-eqz v0, :cond_0

    .line 519
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    .line 520
    :cond_0
    return-void
.end method

.method private writeTmp(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "mWriteTmp"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 400
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 401
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/BufferedDataSink;->write(Ljava/nio/ByteBuffer;)V

    .line 403
    :cond_0
    sget-boolean v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 404
    :cond_1
    return-void
.end method


# virtual methods
.method addToPending(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "out"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "mReadTmp"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 301
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 302
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)V

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-static {p2}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method calculateAlloc(I)I
    .locals 2
    .param p1, "remaining"    # I

    .prologue
    .line 410
    mul-int/lit8 v1, p1, 0x3

    div-int/lit8 v0, v1, 0x2

    .line 411
    .local v0, "alloc":I
    if-nez v0, :cond_0

    .line 412
    const/16 v0, 0x1ff6

    .line 413
    :cond_0
    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    .line 547
    return-void
.end method

.method public end()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->end()V

    .line 201
    return-void
.end method

.method public getClosedCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->getClosedCallback()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v0

    return-object v0
.end method

.method public getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method public getDataEmitter()Lcom/koushikdutta/async/DataEmitter;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    return-object v0
.end method

.method public getEndCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->getEndCallback()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->peerCertificates:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mPort:I

    return v0
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public getSocket()Lcom/koushikdutta/async/AsyncSocket;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    return-object v0
.end method

.method public getWriteableCallback()Lcom/koushikdutta/async/callback/WritableCallback;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mWriteableCallback:Lcom/koushikdutta/async/callback/WritableCallback;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->isPaused()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->pause()V

    .line 572
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->resume()V

    .line 577
    return-void
.end method

.method public setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1
    .param p1, "handler"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 551
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/AsyncSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 552
    return-void
.end method

.method public setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/koushikdutta/async/callback/DataCallback;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    .line 527
    return-void
.end method

.method public setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 561
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/AsyncSocket;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 562
    return-void
.end method

.method public setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .locals 0
    .param p1, "handler"    # Lcom/koushikdutta/async/callback/WritableCallback;

    .prologue
    .line 508
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mWriteableCallback:Lcom/koushikdutta/async/callback/WritableCallback;

    .line 509
    return-void
.end method

.method public write(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 9
    .param p1, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    const/4 v8, 0x0

    .line 461
    iget-boolean v6, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mWrapping:Z

    if-eqz v6, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    iget-object v6, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-virtual {v6}, Lcom/koushikdutta/async/BufferedDataSink;->remaining()I

    move-result v6

    if-gtz v6, :cond_0

    .line 465
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mWrapping:Z

    .line 467
    const/4 v5, 0x0

    .line 468
    .local v5, "res":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->calculateAlloc(I)I

    move-result v6

    invoke-static {v6}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 473
    .local v2, "mWriteTmp":Ljava/nio/ByteBuffer;
    :cond_2
    iget-boolean v6, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->finishedHandshake:Z

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v6

    if-nez v6, :cond_3

    .line 474
    iput-boolean v8, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mWrapping:Z

    goto :goto_0

    .line 477
    :cond_3
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v4

    .line 479
    .local v4, "remaining":I
    :try_start_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getAllArray()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 480
    .local v0, "arr":[Ljava/nio/ByteBuffer;
    iget-object v6, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v6, v0, v2}, Ljavax/net/ssl/SSLEngine;->wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v5

    .line 481
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/ByteBufferList;->addAll([Ljava/nio/ByteBuffer;)V

    .line 482
    invoke-direct {p0, v2}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->writeTmp(Ljava/nio/ByteBuffer;)V

    .line 483
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    .line 484
    .local v3, "previousCapacity":I
    invoke-static {v2}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    .line 485
    const/4 v2, 0x0

    .line 486
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v6

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v6, v7, :cond_6

    .line 487
    mul-int/lit8 v6, v3, 0x2

    invoke-static {v6}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 488
    const/4 v4, -0x1

    .line 499
    .end local v0    # "arr":[Ljava/nio/ByteBuffer;
    .end local v3    # "previousCapacity":I
    :goto_1
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v6

    if-ne v4, v6, :cond_4

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v6, v7, :cond_5

    :cond_4
    iget-object v6, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-virtual {v6}, Lcom/koushikdutta/async/BufferedDataSink;->remaining()I

    move-result v6

    if-eqz v6, :cond_2

    .line 500
    :cond_5
    invoke-static {v2}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    .line 501
    iput-boolean v8, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mWrapping:Z

    goto :goto_0

    .line 491
    .restart local v0    # "arr":[Ljava/nio/ByteBuffer;
    .restart local v3    # "previousCapacity":I
    :cond_6
    :try_start_1
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->calculateAlloc(I)I

    move-result v6

    invoke-static {v6}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 492
    invoke-direct {p0, v5}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->handleResult(Ljavax/net/ssl/SSLEngineResult;)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 495
    .end local v0    # "arr":[Ljava/nio/ByteBuffer;
    .end local v3    # "previousCapacity":I
    :catch_0
    move-exception v1

    .line 496
    .local v1, "e":Ljavax/net/ssl/SSLException;
    invoke-direct {p0, v1}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->report(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v7, 0x0

    .line 418
    iget-boolean v5, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mWrapping:Z

    if-eqz v5, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v5, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-virtual {v5}, Lcom/koushikdutta/async/BufferedDataSink;->remaining()I

    move-result v5

    if-gtz v5, :cond_0

    .line 422
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mWrapping:Z

    .line 424
    const/4 v4, 0x0

    .line 425
    .local v4, "res":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->calculateAlloc(I)I

    move-result v5

    invoke-static {v5}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 430
    .local v1, "mWriteTmp":Ljava/nio/ByteBuffer;
    :cond_2
    iget-boolean v5, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->finishedHandshake:Z

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-nez v5, :cond_3

    .line 431
    iput-boolean v7, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mWrapping:Z

    goto :goto_0

    .line 434
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 436
    .local v3, "remaining":I
    :try_start_0
    iget-object v5, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v5, p1, v1}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v4

    .line 437
    invoke-direct {p0, v1}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->writeTmp(Ljava/nio/ByteBuffer;)V

    .line 438
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    .line 439
    .local v2, "previousCapacity":I
    invoke-static {v1}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    .line 440
    const/4 v1, 0x0

    .line 441
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v5

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v5, v6, :cond_6

    .line 442
    mul-int/lit8 v5, v2, 0x2

    invoke-static {v5}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 443
    const/4 v3, -0x1

    .line 448
    :goto_1
    invoke-direct {p0, v4}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->handleResult(Ljavax/net/ssl/SSLEngineResult;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    .end local v2    # "previousCapacity":I
    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-ne v3, v5, :cond_4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v5

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v5, v6, :cond_5

    :cond_4
    iget-object v5, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-virtual {v5}, Lcom/koushikdutta/async/BufferedDataSink;->remaining()I

    move-result v5

    if-eqz v5, :cond_2

    .line 455
    :cond_5
    invoke-static {v1}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    .line 456
    iput-boolean v7, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mWrapping:Z

    goto :goto_0

    .line 446
    .restart local v2    # "previousCapacity":I
    :cond_6
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->calculateAlloc(I)I

    move-result v5

    invoke-static {v5}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    .line 450
    .end local v2    # "previousCapacity":I
    :catch_0
    move-exception v0

    .line 451
    .local v0, "e":Ljavax/net/ssl/SSLException;
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->report(Ljava/lang/Exception;)V

    goto :goto_2
.end method
