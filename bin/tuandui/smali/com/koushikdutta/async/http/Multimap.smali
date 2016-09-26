.class public Lcom/koushikdutta/async/http/Multimap;
.super Ljava/util/Hashtable;
.source "Multimap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Hashtable",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/apache/http/NameValuePair;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/libcore/RawHeaders;)V
    .locals 1
    .param p1, "headers"    # Lcom/koushikdutta/async/http/libcore/RawHeaders;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 44
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 48
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    return-void

    .line 48
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 49
    .local v0, "pair":Lorg/apache/http/NameValuePair;
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/koushikdutta/async/http/Multimap;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static parseHeader(Lcom/koushikdutta/async/http/libcore/RawHeaders;Ljava/lang/String;)Lcom/koushikdutta/async/http/Multimap;
    .locals 1
    .param p0, "headers"    # Lcom/koushikdutta/async/http/libcore/RawHeaders;
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/http/Multimap;->parseHeader(Ljava/lang/String;)Lcom/koushikdutta/async/http/Multimap;

    move-result-object v0

    return-object v0
.end method

.method public static parseHeader(Ljava/lang/String;)Lcom/koushikdutta/async/http/Multimap;
    .locals 12
    .param p0, "header"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x1

    .line 53
    new-instance v1, Lcom/koushikdutta/async/http/Multimap;

    invoke-direct {v1}, Lcom/koushikdutta/async/http/Multimap;-><init>()V

    .line 54
    .local v1, "map":Lcom/koushikdutta/async/http/Multimap;
    const-string v6, ";"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, "parts":[Ljava/lang/String;
    array-length v8, v4

    move v6, v7

    :goto_0
    if-lt v6, v8, :cond_0

    .line 65
    return-object v1

    .line 55
    :cond_0
    aget-object v3, v4, v6

    .line 56
    .local v3, "part":Ljava/lang/String;
    const-string v9, "="

    const/4 v10, 0x2

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "pair":[Ljava/lang/String;
    aget-object v9, v2, v7

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "key":Ljava/lang/String;
    const/4 v5, 0x0

    .line 59
    .local v5, "v":Ljava/lang/String;
    array-length v9, v2

    if-le v9, v11, :cond_1

    .line 60
    aget-object v5, v2, v11

    .line 61
    :cond_1
    if-eqz v5, :cond_2

    const-string v9, "\""

    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "\""

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 62
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v5, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 63
    :cond_2
    invoke-virtual {v1, v0, v5}, Lcom/koushikdutta/async/http/Multimap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public static parseQuery(Ljava/lang/String;)Lcom/koushikdutta/async/http/Multimap;
    .locals 11
    .param p0, "query"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x0

    .line 73
    new-instance v0, Lcom/koushikdutta/async/http/Multimap;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Multimap;-><init>()V

    .line 74
    .local v0, "map":Lcom/koushikdutta/async/http/Multimap;
    const-string v6, "&"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "pairs":[Ljava/lang/String;
    array-length v8, v4

    move v6, v7

    :goto_0
    if-lt v6, v8, :cond_0

    .line 85
    return-object v0

    .line 75
    :cond_0
    aget-object v2, v4, v6

    .line 76
    .local v2, "p":Ljava/lang/String;
    const-string v9, "="

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "pair":[Ljava/lang/String;
    array-length v9, v3

    if-nez v9, :cond_1

    .line 75
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 79
    :cond_1
    aget-object v9, v3, v7

    invoke-static {v9}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 81
    .local v5, "value":Ljava/lang/String;
    array-length v9, v3

    if-ne v9, v10, :cond_2

    .line 82
    const/4 v9, 0x1

    aget-object v9, v3, v9

    invoke-static {v9}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 83
    :cond_2
    invoke-virtual {v0, v1, v5}, Lcom/koushikdutta/async/http/Multimap;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static parseUrlEncoded(Ljava/lang/String;)Lcom/koushikdutta/async/http/Multimap;
    .locals 11
    .param p0, "query"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x0

    .line 89
    new-instance v0, Lcom/koushikdutta/async/http/Multimap;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Multimap;-><init>()V

    .line 90
    .local v0, "map":Lcom/koushikdutta/async/http/Multimap;
    const-string v6, "&"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "pairs":[Ljava/lang/String;
    array-length v8, v4

    move v6, v7

    :goto_0
    if-lt v6, v8, :cond_0

    .line 101
    return-object v0

    .line 91
    :cond_0
    aget-object v2, v4, v6

    .line 92
    .local v2, "p":Ljava/lang/String;
    const-string v9, "="

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "pair":[Ljava/lang/String;
    array-length v9, v3

    if-nez v9, :cond_1

    .line 91
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 95
    :cond_1
    aget-object v9, v3, v7

    invoke-static {v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 97
    .local v5, "value":Ljava/lang/String;
    array-length v9, v3

    if-ne v9, v10, :cond_2

    .line 98
    const/4 v9, 0x1

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 99
    :cond_2
    invoke-virtual {v0, v1, v5}, Lcom/koushikdutta/async/http/Multimap;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/Multimap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 30
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .restart local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/Multimap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 23
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/Multimap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 113
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    return-object v4

    .line 107
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/Multimap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 109
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 110
    .local v2, "value":Ljava/lang/String;
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v6, v0, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method
