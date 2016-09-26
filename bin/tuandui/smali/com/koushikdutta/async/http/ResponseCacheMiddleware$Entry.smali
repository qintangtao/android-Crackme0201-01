.class final Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;
.super Ljava/lang/Object;
.source "ResponseCacheMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/ResponseCacheMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field private final cipherSuite:Ljava/lang/String;

.field private final localCertificates:[Ljava/security/cert/Certificate;

.field private final peerCertificates:[Ljava/security/cert/Certificate;

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

.field private final uri:Ljava/lang/String;

.field private final varyHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/libcore/RawHeaders;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/libcore/ResponseHeaders;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "varyHeaders"    # Lcom/koushikdutta/async/http/libcore/RawHeaders;
    .param p3, "request"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p4, "responseHeaders"    # Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    .prologue
    const/4 v1, 0x0

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->uri:Ljava/lang/String;

    .line 559
    iput-object p2, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->varyHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    .line 560
    invoke-virtual {p3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->requestMethod:Ljava/lang/String;

    .line 561
    invoke-virtual {p4}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->responseHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    .line 574
    iput-object v1, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->cipherSuite:Ljava/lang/String;

    .line 575
    iput-object v1, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    .line 576
    iput-object v1, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    .line 578
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 10
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    const/4 v1, 0x0

    .line 523
    .local v1, "reader":Lcom/koushikdutta/async/http/libcore/StrictLineReader;
    :try_start_0
    new-instance v2, Lcom/koushikdutta/async/http/libcore/StrictLineReader;

    sget-object v5, Lcom/koushikdutta/async/http/libcore/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v5}, Lcom/koushikdutta/async/http/libcore/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    .end local v1    # "reader":Lcom/koushikdutta/async/http/libcore/StrictLineReader;
    .local v2, "reader":Lcom/koushikdutta/async/http/libcore/StrictLineReader;
    :try_start_1
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->uri:Ljava/lang/String;

    .line 525
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->requestMethod:Ljava/lang/String;

    .line 526
    new-instance v5, Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-direct {v5}, Lcom/koushikdutta/async/http/libcore/RawHeaders;-><init>()V

    iput-object v5, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->varyHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    .line 527
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->readInt()I

    move-result v4

    .line 528
    .local v4, "varyRequestHeaderLineCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 532
    new-instance v5, Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-direct {v5}, Lcom/koushikdutta/async/http/libcore/RawHeaders;-><init>()V

    iput-object v5, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->responseHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    .line 533
    iget-object v5, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->responseHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->readInt()I

    move-result v3

    .line 535
    .local v3, "responseHeaderLineCount":I
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v3, :cond_1

    .line 548
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->cipherSuite:Ljava/lang/String;

    .line 549
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    .line 550
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 552
    new-array v5, v9, [Ljava/io/Closeable;

    .line 553
    aput-object v2, v5, v7

    aput-object p1, v5, v8

    invoke-static {v5}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 555
    return-void

    .line 529
    .end local v3    # "responseHeaderLineCount":I
    :cond_0
    :try_start_2
    iget-object v5, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->varyHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->addLine(Ljava/lang/String;)V

    .line 528
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 536
    .restart local v3    # "responseHeaderLineCount":I
    :cond_1
    iget-object v5, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->responseHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->addLine(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 535
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 552
    .end local v0    # "i":I
    .end local v2    # "reader":Lcom/koushikdutta/async/http/libcore/StrictLineReader;
    .end local v3    # "responseHeaderLineCount":I
    .end local v4    # "varyRequestHeaderLineCount":I
    .restart local v1    # "reader":Lcom/koushikdutta/async/http/libcore/StrictLineReader;
    :catchall_0
    move-exception v5

    :goto_2
    new-array v6, v9, [Ljava/io/Closeable;

    .line 553
    aput-object v1, v6, v7

    aput-object p1, v6, v8

    invoke-static {v6}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 554
    throw v5

    .line 552
    .end local v1    # "reader":Lcom/koushikdutta/async/http/libcore/StrictLineReader;
    .restart local v2    # "reader":Lcom/koushikdutta/async/http/libcore/StrictLineReader;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "reader":Lcom/koushikdutta/async/http/libcore/StrictLineReader;
    .restart local v1    # "reader":Lcom/koushikdutta/async/http/libcore/StrictLineReader;
    goto :goto_2
.end method

.method static synthetic access$0(Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;)Lcom/koushikdutta/async/http/libcore/RawHeaders;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->responseHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    return-object v0
.end method

.method static synthetic access$1(Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;)Z
    .locals 1

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->isHttps()Z

    move-result v0

    return v0
.end method

.method private isHttps()Z
    .locals 2

    .prologue
    .line 609
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->uri:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readCertArray(Lcom/koushikdutta/async/http/libcore/StrictLineReader;)[Ljava/security/cert/Certificate;
    .locals 9
    .param p1, "reader"    # Lcom/koushikdutta/async/http/libcore/StrictLineReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 613
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->readInt()I

    move-result v4

    .line 614
    .local v4, "length":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_1

    .line 615
    const/4 v6, 0x0

    .line 626
    :cond_0
    return-object v6

    .line 618
    :cond_1
    :try_start_0
    const-string v7, "X.509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 619
    .local v1, "certificateFactory":Ljava/security/cert/CertificateFactory;
    new-array v6, v4, [Ljava/security/cert/Certificate;

    .line 620
    .local v6, "result":[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v6

    if-ge v3, v7, :cond_0

    .line 621
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 622
    .local v5, "line":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 624
    .local v0, "bytes":[B
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 623
    invoke-virtual {v1, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    aput-object v7, v6, v3
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 627
    .end local v0    # "bytes":[B
    .end local v1    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v3    # "i":I
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "result":[Ljava/security/cert/Certificate;
    :catch_0
    move-exception v2

    .line 628
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v7, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private writeCertArray(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V
    .locals 8
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "certificates"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 633
    if-nez p2, :cond_1

    .line 634
    const-string v4, "-1\n"

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 647
    :cond_0
    return-void

    .line 638
    :cond_1
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    array-length v6, p2

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 639
    array-length v5, p2

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, p2, v4

    .line 640
    .local v1, "certificate":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    .line 641
    .local v0, "bytes":[B
    const/4 v6, 0x0

    invoke-static {v0, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 642
    .local v3, "line":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 644
    .end local v0    # "bytes":[B
    .end local v1    # "certificate":Ljava/security/cert/Certificate;
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 645
    .local v2, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public matches(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "requestMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 651
    .local p3, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->uri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->requestMethod:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    new-instance v0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    iget-object v1, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->responseHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-direct {v0, p1, v1}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/libcore/RawHeaders;)V

    .line 654
    iget-object v1, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->varyHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->varyMatches(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeTo(Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;)V
    .locals 6
    .param p1, "editor"    # Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    .line 581
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;->newOutputStream(I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 582
    .local v1, "out":Ljava/io/OutputStream;
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Lcom/koushikdutta/async/http/libcore/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 584
    .local v2, "writer":Ljava/io/Writer;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->uri:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 585
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->requestMethod:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 586
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->varyHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 587
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->varyHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->length()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 592
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->responseHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 593
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->responseHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 594
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->responseHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->length()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 599
    invoke-direct {p0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->isHttps()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 600
    invoke-virtual {v2, v5}, Ljava/io/Writer;->write(I)V

    .line 601
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->cipherSuite:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 602
    iget-object v3, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    invoke-direct {p0, v2, v3}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->writeCertArray(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    .line 603
    iget-object v3, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    invoke-direct {p0, v2, v3}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->writeCertArray(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    .line 605
    :cond_0
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 606
    return-void

    .line 588
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->varyHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-virtual {v4, v0}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 589
    iget-object v4, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->varyHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-virtual {v4, v0}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 588
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 587
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 595
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->responseHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-virtual {v4, v0}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 596
    iget-object v4, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$Entry;->responseHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-virtual {v4, v0}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 595
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 594
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method
