.class public Lcom/koushikdutta/async/http/body/Part;
.super Ljava/lang/Object;
.source "Part.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"


# instance fields
.field private length:J

.field mContentDisposition:Lcom/koushikdutta/async/http/Multimap;

.field mHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/koushikdutta/async/http/body/Part;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/http/body/Part;->$assertionsDisabled:Z

    .line 14
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/libcore/RawHeaders;)V
    .locals 2
    .param p1, "headers"    # Lcom/koushikdutta/async/http/libcore/RawHeaders;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/koushikdutta/async/http/body/Part;->length:J

    .line 19
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/Part;->mHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    .line 20
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/Part;->mHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    const-string v1, "Content-Disposition"

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/Multimap;->parseHeader(Lcom/koushikdutta/async/http/libcore/RawHeaders;Ljava/lang/String;)Lcom/koushikdutta/async/http/Multimap;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/body/Part;->mContentDisposition:Lcom/koushikdutta/async/http/Multimap;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/util/List;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "contentDisposition":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/koushikdutta/async/http/body/Part;->length:J

    .line 29
    iput-wide p2, p0, Lcom/koushikdutta/async/http/body/Part;->length:J

    .line 30
    new-instance v2, Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-direct {v2}, Lcom/koushikdutta/async/http/libcore/RawHeaders;-><init>()V

    iput-object v2, p0, Lcom/koushikdutta/async/http/body/Part;->mHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "form-data; name=\"%s\""

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p4, :cond_0

    .line 33
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 37
    :cond_0
    iget-object v2, p0, Lcom/koushikdutta/async/http/body/Part;->mHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    const-string v3, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v2, p0, Lcom/koushikdutta/async/http/body/Part;->mHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    const-string v3, "Content-Disposition"

    invoke-static {v2, v3}, Lcom/koushikdutta/async/http/Multimap;->parseHeader(Lcom/koushikdutta/async/http/libcore/RawHeaders;Ljava/lang/String;)Lcom/koushikdutta/async/http/Multimap;

    move-result-object v2

    iput-object v2, p0, Lcom/koushikdutta/async/http/body/Part;->mContentDisposition:Lcom/koushikdutta/async/http/Multimap;

    .line 39
    return-void

    .line 33
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 34
    .local v1, "pair":Lorg/apache/http/NameValuePair;
    const-string v3, "; %s=\"%s\""

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/Part;->mHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/Part;->mContentDisposition:Lcom/koushikdutta/async/http/Multimap;

    const-string v2, "filename"

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "file":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 56
    const/4 v1, 0x0

    .line 57
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/Part;->mContentDisposition:Lcom/koushikdutta/async/http/Multimap;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/Part;->mHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    return-object v0
.end method

.method public isFile()Z
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/Part;->mContentDisposition:Lcom/koushikdutta/async/http/Multimap;

    const-string v1, "filename"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/koushikdutta/async/http/body/Part;->length:J

    return-wide v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/Part;->mHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public write(Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1
    .param p1, "sink"    # Lcom/koushikdutta/async/DataSink;
    .param p2, "callback"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 69
    sget-boolean v0, Lcom/koushikdutta/async/http/body/Part;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 70
    :cond_0
    return-void
.end method
