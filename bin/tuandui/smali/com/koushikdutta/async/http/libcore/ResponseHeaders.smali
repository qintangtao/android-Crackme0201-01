.class public final Lcom/koushikdutta/async/http/libcore/ResponseHeaders;
.super Ljava/lang/Object;
.source "ResponseHeaders.java"


# static fields
.field private static final RECEIVED_MILLIS:Ljava/lang/String; = "X-Android-Received-Millis"

.field private static final SENT_MILLIS:Ljava/lang/String; = "X-Android-Sent-Millis"


# instance fields
.field private ageSeconds:I

.field private connection:Ljava/lang/String;

.field private contentEncoding:Ljava/lang/String;

.field private contentLength:J

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private final headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

.field private isPublic:Z

.field private lastModified:Ljava/util/Date;

.field private maxAgeSeconds:I

.field private mustRevalidate:Z

.field private noCache:Z

.field private noStore:Z

.field private proxyAuthenticate:Ljava/lang/String;

.field private receivedResponseMillis:J

.field private sMaxAgeSeconds:I

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private transferEncoding:Ljava/lang/String;

.field private final uri:Landroid/net/Uri;

.field private varyFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wwwAuthenticate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/libcore/RawHeaders;)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "headers"    # Lcom/koushikdutta/async/http/libcore/RawHeaders;

    .prologue
    const/4 v5, -0x1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v5, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->maxAgeSeconds:I

    .line 91
    iput v5, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->sMaxAgeSeconds:I

    .line 103
    iput v5, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->ageSeconds:I

    .line 106
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    iput-object v5, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->varyFields:Ljava/util/Set;

    .line 110
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->contentLength:J

    .line 116
    iput-object p1, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->uri:Landroid/net/Uri;

    .line 117
    iput-object p2, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    .line 119
    new-instance v1, Lcom/koushikdutta/async/http/libcore/ResponseHeaders$1;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders$1;-><init>(Lcom/koushikdutta/async/http/libcore/ResponseHeaders;)V

    .line 137
    .local v1, "handler":Lcom/koushikdutta/async/http/libcore/HeaderParser$CacheControlHandler;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->length()I

    move-result v5

    if-lt v2, v5, :cond_0

    .line 185
    return-void

    .line 138
    :cond_0
    invoke-virtual {p2, v2}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "fieldName":Ljava/lang/String;
    invoke-virtual {p2, v2}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "value":Ljava/lang/String;
    const-string v5, "Cache-Control"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 141
    invoke-static {v3, v1}, Lcom/koushikdutta/async/http/libcore/HeaderParser;->parseCacheControl(Ljava/lang/String;Lcom/koushikdutta/async/http/libcore/HeaderParser$CacheControlHandler;)V

    .line 137
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    :cond_2
    const-string v5, "Date"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 143
    invoke-static {v3}, Lcom/koushikdutta/async/http/libcore/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->servedDate:Ljava/util/Date;

    goto :goto_1

    .line 144
    :cond_3
    const-string v5, "Expires"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 145
    invoke-static {v3}, Lcom/koushikdutta/async/http/libcore/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->expires:Ljava/util/Date;

    goto :goto_1

    .line 146
    :cond_4
    const-string v5, "Last-Modified"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 147
    invoke-static {v3}, Lcom/koushikdutta/async/http/libcore/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->lastModified:Ljava/util/Date;

    goto :goto_1

    .line 148
    :cond_5
    const-string v5, "ETag"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 149
    iput-object v3, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->etag:Ljava/lang/String;

    goto :goto_1

    .line 150
    :cond_6
    const-string v5, "Pragma"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 151
    const-string v5, "no-cache"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 152
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->noCache:Z

    goto :goto_1

    .line 154
    :cond_7
    const-string v5, "Age"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 155
    invoke-static {v3}, Lcom/koushikdutta/async/http/libcore/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->ageSeconds:I

    goto :goto_1

    .line 156
    :cond_8
    const-string v5, "Vary"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 158
    iget-object v5, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->varyFields:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 159
    new-instance v5, Ljava/util/TreeSet;

    sget-object v6, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v5, v6}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v5, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->varyFields:Ljava/util/Set;

    .line 161
    :cond_9
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v7, :cond_1

    aget-object v4, v6, v5

    .line 162
    .local v4, "varyField":Ljava/lang/String;
    iget-object v8, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->varyFields:Ljava/util/Set;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 164
    .end local v4    # "varyField":Ljava/lang/String;
    :cond_a
    const-string v5, "Content-Encoding"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 165
    iput-object v3, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    goto/16 :goto_1

    .line 166
    :cond_b
    const-string v5, "Transfer-Encoding"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 167
    iput-object v3, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->transferEncoding:Ljava/lang/String;

    goto/16 :goto_1

    .line 168
    :cond_c
    const-string v5, "Content-Length"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 170
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->contentLength:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 173
    :catch_0
    move-exception v5

    goto/16 :goto_1

    :cond_d
    const-string v5, "Connection"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 174
    iput-object v3, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->connection:Ljava/lang/String;

    goto/16 :goto_1

    .line 175
    :cond_e
    const-string v5, "Proxy-Authenticate"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 176
    iput-object v3, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->proxyAuthenticate:Ljava/lang/String;

    goto/16 :goto_1

    .line 177
    :cond_f
    const-string v5, "WWW-Authenticate"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 178
    iput-object v3, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->wwwAuthenticate:Ljava/lang/String;

    goto/16 :goto_1

    .line 179
    :cond_10
    const-string v5, "X-Android-Sent-Millis"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 180
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->sentRequestMillis:J

    goto/16 :goto_1

    .line 181
    :cond_11
    const-string v5, "X-Android-Received-Millis"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 182
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->receivedResponseMillis:J

    goto/16 :goto_1
.end method

.method static synthetic access$0(Lcom/koushikdutta/async/http/libcore/ResponseHeaders;Z)V
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->noCache:Z

    return-void
.end method

.method static synthetic access$1(Lcom/koushikdutta/async/http/libcore/ResponseHeaders;Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->noStore:Z

    return-void
.end method

.method static synthetic access$2(Lcom/koushikdutta/async/http/libcore/ResponseHeaders;I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->maxAgeSeconds:I

    return-void
.end method

.method static synthetic access$3(Lcom/koushikdutta/async/http/libcore/ResponseHeaders;I)V
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->sMaxAgeSeconds:I

    return-void
.end method

.method static synthetic access$4(Lcom/koushikdutta/async/http/libcore/ResponseHeaders;Z)V
    .locals 0

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->isPublic:Z

    return-void
.end method

.method static synthetic access$5(Lcom/koushikdutta/async/http/libcore/ResponseHeaders;Z)V
    .locals 0

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->mustRevalidate:Z

    return-void
.end method

.method private computeAge(J)J
    .locals 13
    .param p1, "nowMillis"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 288
    iget-object v8, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v8, :cond_0

    .line 289
    iget-wide v8, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->receivedResponseMillis:J

    iget-object v10, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->servedDate:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 291
    .local v0, "apparentReceivedAge":J
    :cond_0
    iget v8, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->ageSeconds:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 292
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v9, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->ageSeconds:I

    int-to-long v10, v9

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 294
    .local v2, "receivedAge":J
    :goto_0
    iget-wide v8, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->receivedResponseMillis:J

    iget-wide v10, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->sentRequestMillis:J

    sub-long v6, v8, v10

    .line 295
    .local v6, "responseDuration":J
    iget-wide v8, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->receivedResponseMillis:J

    sub-long v4, p1, v8

    .line 296
    .local v4, "residentDuration":J
    add-long v8, v2, v6

    add-long/2addr v8, v4

    return-wide v8

    .end local v2    # "receivedAge":J
    .end local v4    # "residentDuration":J
    .end local v6    # "responseDuration":J
    :cond_1
    move-wide v2, v0

    .line 293
    goto :goto_0
.end method

.method private computeFreshnessLifetime()J
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 304
    iget v6, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->maxAgeSeconds:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 305
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v5, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->maxAgeSeconds:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 321
    :cond_0
    :goto_0
    return-wide v4

    .line 306
    :cond_1
    iget-object v6, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->expires:Ljava/util/Date;

    if-eqz v6, :cond_4

    .line 307
    iget-object v6, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->servedDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 308
    .local v2, "servedMillis":J
    :goto_1
    iget-object v6, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->expires:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v0, v6, v2

    .line 309
    .local v0, "delta":J
    cmp-long v6, v0, v4

    if-lez v6, :cond_3

    .end local v0    # "delta":J
    :goto_2
    move-wide v4, v0

    goto :goto_0

    .line 307
    .end local v2    # "servedMillis":J
    :cond_2
    iget-wide v2, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->receivedResponseMillis:J

    goto :goto_1

    .restart local v0    # "delta":J
    .restart local v2    # "servedMillis":J
    :cond_3
    move-wide v0, v4

    .line 309
    goto :goto_2

    .line 310
    .end local v0    # "delta":J
    .end local v2    # "servedMillis":J
    :cond_4
    iget-object v6, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->uri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 317
    iget-object v6, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->servedDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 318
    .restart local v2    # "servedMillis":J
    :goto_3
    iget-object v6, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->lastModified:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v0, v2, v6

    .line 319
    .restart local v0    # "delta":J
    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    const-wide/16 v4, 0xa

    div-long v4, v0, v4

    goto :goto_0

    .line 317
    .end local v0    # "delta":J
    .end local v2    # "servedMillis":J
    :cond_5
    iget-wide v2, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->sentRequestMillis:J

    goto :goto_3
.end method

.method private static isEndToEnd(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 511
    const-string v0, "Connection"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    const-string v0, "Keep-Alive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    const-string v0, "Proxy-Authenticate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    const-string v0, "Proxy-Authorization"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    const-string v0, "TE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    const-string v0, "Trailers"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    const-string v0, "Upgrade"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFreshnessLifetimeHeuristic()Z
    .locals 2

    .prologue
    .line 330
    iget v0, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->maxAgeSeconds:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->expires:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public chooseResponseSource(JLcom/koushikdutta/async/http/libcore/RequestHeaders;)Lcom/koushikdutta/async/http/libcore/ResponseSource;
    .locals 15
    .param p1, "nowMillis"    # J
    .param p3, "request"    # Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    .prologue
    .line 400
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->isCacheable(Lcom/koushikdutta/async/http/libcore/RequestHeaders;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 401
    sget-object v10, Lcom/koushikdutta/async/http/libcore/ResponseSource;->NETWORK:Lcom/koushikdutta/async/http/libcore/ResponseSource;

    .line 450
    :goto_0
    return-object v10

    .line 404
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->isNoCache()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->hasConditions()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 405
    :cond_1
    sget-object v10, Lcom/koushikdutta/async/http/libcore/ResponseSource;->NETWORK:Lcom/koushikdutta/async/http/libcore/ResponseSource;

    goto :goto_0

    .line 408
    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->computeAge(J)J

    move-result-wide v2

    .line 409
    .local v2, "ageMillis":J
    invoke-direct {p0}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->computeFreshnessLifetime()J

    move-result-wide v4

    .line 411
    .local v4, "freshMillis":J
    invoke-virtual/range {p3 .. p3}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getMaxAgeSeconds()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    .line 413
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p3 .. p3}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getMaxAgeSeconds()I

    move-result v11

    int-to-long v12, v11

    invoke-virtual {v10, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    .line 412
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 416
    :cond_3
    const-wide/16 v8, 0x0

    .line 417
    .local v8, "minFreshMillis":J
    invoke-virtual/range {p3 .. p3}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getMinFreshSeconds()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4

    .line 418
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p3 .. p3}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getMinFreshSeconds()I

    move-result v11

    int-to-long v12, v11

    invoke-virtual {v10, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    .line 421
    :cond_4
    const-wide/16 v6, 0x0

    .line 422
    .local v6, "maxStaleMillis":J
    iget-boolean v10, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->mustRevalidate:Z

    if-nez v10, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getMaxStaleSeconds()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_5

    .line 423
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p3 .. p3}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getMaxStaleSeconds()I

    move-result v11

    int-to-long v12, v11

    invoke-virtual {v10, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 426
    :cond_5
    iget-boolean v10, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->noCache:Z

    if-nez v10, :cond_8

    add-long v10, v2, v8

    add-long v12, v4, v6

    cmp-long v10, v10, v12

    if-gez v10, :cond_8

    .line 427
    add-long v10, v2, v8

    cmp-long v10, v10, v4

    if-ltz v10, :cond_6

    .line 428
    iget-object v10, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    const-string v11, "Warning"

    const-string v12, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v10, v11, v12}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_6
    const-wide/32 v10, 0x5265c00

    cmp-long v10, v2, v10

    if-lez v10, :cond_7

    invoke-direct {p0}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->isFreshnessLifetimeHeuristic()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 435
    iget-object v10, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    const-string v11, "Warning"

    const-string v12, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v10, v11, v12}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_7
    sget-object v10, Lcom/koushikdutta/async/http/libcore/ResponseSource;->CACHE:Lcom/koushikdutta/async/http/libcore/ResponseSource;

    goto/16 :goto_0

    .line 440
    :cond_8
    iget-object v10, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->etag:Ljava/lang/String;

    if-eqz v10, :cond_a

    .line 441
    iget-object v10, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->etag:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->setIfNoneMatch(Ljava/lang/String;)V

    .line 450
    :cond_9
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->hasConditions()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 451
    sget-object v10, Lcom/koushikdutta/async/http/libcore/ResponseSource;->CONDITIONAL_CACHE:Lcom/koushikdutta/async/http/libcore/ResponseSource;

    goto/16 :goto_0

    .line 443
    :cond_a
    iget-object v10, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v10, :cond_b

    .line 444
    iget-object v10, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->lastModified:Ljava/util/Date;

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->setIfModifiedSince(Ljava/util/Date;)V

    goto :goto_1

    .line 445
    :cond_b
    iget-object v10, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v10, :cond_9

    .line 446
    iget-object v10, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->servedDate:Ljava/util/Date;

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->setIfModifiedSince(Ljava/util/Date;)V

    goto :goto_1

    .line 452
    :cond_c
    sget-object v10, Lcom/koushikdutta/async/http/libcore/ResponseSource;->NETWORK:Lcom/koushikdutta/async/http/libcore/ResponseSource;

    goto/16 :goto_0
.end method

.method public combine(Lcom/koushikdutta/async/http/libcore/ResponseHeaders;)Lcom/koushikdutta/async/http/libcore/ResponseHeaders;
    .locals 6
    .param p1, "network"    # Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    .prologue
    .line 483
    new-instance v2, Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-direct {v2}, Lcom/koushikdutta/async/http/libcore/RawHeaders;-><init>()V

    .line 485
    .local v2, "result":Lcom/koushikdutta/async/http/libcore/RawHeaders;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->length()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 496
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p1, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->length()I

    move-result v4

    if-lt v1, v4, :cond_4

    .line 503
    new-instance v4, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    iget-object v5, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->uri:Landroid/net/Uri;

    invoke-direct {v4, v5, v2}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/libcore/RawHeaders;)V

    return-object v4

    .line 486
    :cond_0
    iget-object v4, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-virtual {v4, v1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "fieldName":Ljava/lang/String;
    iget-object v4, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-virtual {v4, v1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 488
    .local v3, "value":Ljava/lang/String;
    const-string v4, "Warning"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 485
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 491
    :cond_2
    invoke-static {v0}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-virtual {v4, v0}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 492
    :cond_3
    invoke-virtual {v2, v0, v3}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 497
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_4
    iget-object v4, p1, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-virtual {v4, v1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v0

    .line 498
    .restart local v0    # "fieldName":Ljava/lang/String;
    invoke-static {v0}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 499
    iget-object v4, p1, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-virtual {v4, v1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getConnection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->connection:Ljava/lang/String;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 261
    iget-wide v0, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->contentLength:J

    return-wide v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->lastModified:Ljava/util/Date;

    return-object v0
.end method

.method public getMaxAgeSeconds()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->maxAgeSeconds:I

    return v0
.end method

.method public getProxyAuthenticate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->proxyAuthenticate:Ljava/lang/String;

    return-object v0
.end method

.method public getSMaxAgeSeconds()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->sMaxAgeSeconds:I

    return v0
.end method

.method public getServedDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->servedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVaryFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->varyFields:Ljava/util/Set;

    return-object v0
.end method

.method public getWwwAuthenticate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->wwwAuthenticate:Ljava/lang/String;

    return-object v0
.end method

.method public hasConnectionClose()Z
    .locals 2

    .prologue
    .line 201
    const-string v0, "close"

    iget-object v1, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->connection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasVaryAll()Z
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->varyFields:Ljava/util/Set;

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCacheable(Lcom/koushikdutta/async/http/libcore/RequestHeaders;)Z
    .locals 4
    .param p1, "request"    # Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    .prologue
    const/4 v1, 0x0

    .line 342
    iget-object v2, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->getResponseCode()I

    move-result v0

    .line 343
    .local v0, "responseCode":I
    const/16 v2, 0xc8

    if-eq v0, v2, :cond_1

    .line 344
    const/16 v2, 0xcb

    if-eq v0, v2, :cond_1

    .line 345
    const/16 v2, 0x12c

    if-eq v0, v2, :cond_1

    .line 346
    const/16 v2, 0x12d

    if-eq v0, v2, :cond_1

    .line 347
    const/16 v2, 0x19a

    if-eq v0, v2, :cond_1

    .line 366
    :cond_0
    :goto_0
    return v1

    .line 355
    :cond_1
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->hasAuthorization()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 356
    iget-boolean v2, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->isPublic:Z

    if-nez v2, :cond_2

    .line 357
    iget-boolean v2, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->mustRevalidate:Z

    if-nez v2, :cond_2

    .line 358
    iget v2, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->sMaxAgeSeconds:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 362
    :cond_2
    iget-boolean v2, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->noStore:Z

    if-nez v2, :cond_0

    .line 366
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isChunked()Z
    .locals 2

    .prologue
    .line 197
    const-string v0, "chunked"

    iget-object v1, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->transferEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isContentEncodingGzip()Z
    .locals 2

    .prologue
    .line 188
    const-string v0, "gzip"

    iget-object v1, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMustRevalidate()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->mustRevalidate:Z

    return v0
.end method

.method public isNoCache()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->noCache:Z

    return v0
.end method

.method public isNoStore()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->noStore:Z

    return v0
.end method

.method public isPublic()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->isPublic:Z

    return v0
.end method

.method public setLocalTimestamps(JJ)V
    .locals 3
    .param p1, "sentRequestMillis"    # J
    .param p3, "receivedResponseMillis"    # J

    .prologue
    .line 277
    iput-wide p1, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->sentRequestMillis:J

    .line 278
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    const-string v1, "X-Android-Sent-Millis"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iput-wide p3, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->receivedResponseMillis:J

    .line 280
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    const-string v1, "X-Android-Received-Millis"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public stripContentEncoding()V
    .locals 2

    .prologue
    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public validate(Lcom/koushikdutta/async/http/libcore/ResponseHeaders;)Z
    .locals 6
    .param p1, "networkResponse"    # Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    .prologue
    const/4 v0, 0x1

    .line 460
    iget-object v1, p1, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->getResponseCode()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_1

    .line 475
    :cond_0
    :goto_0
    return v0

    .line 469
    :cond_1
    iget-object v1, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v1, :cond_2

    .line 470
    iget-object v1, p1, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v1, :cond_2

    .line 471
    iget-object v1, p1, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->lastModified:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->lastModified:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 475
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varyMatches(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
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
    .line 383
    .local p1, "cachedRequest":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p2, "newRequest":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->varyFields:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 388
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 383
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 384
    .local v0, "field":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/koushikdutta/async/http/libcore/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 385
    const/4 v1, 0x0

    goto :goto_0
.end method
