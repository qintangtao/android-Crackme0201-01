.class public Lorg/jivesoftware/smack/util/DNSUtil;
.super Ljava/lang/Object;
.source "DNSUtil.java"


# static fields
.field private static cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/util/dns/HostAddress;",
            ">;>;"
        }
    .end annotation
.end field

.field private static dnsResolver:Lorg/jivesoftware/smack/util/dns/DNSResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 45
    new-instance v0, Lorg/jivesoftware/smack/util/Cache;

    const/16 v1, 0x64

    const-wide/32 v2, 0x927c0

    invoke-direct {v0, v1, v2, v3}, Lorg/jivesoftware/smack/util/Cache;-><init>(IJ)V

    sput-object v0, Lorg/jivesoftware/smack/util/DNSUtil;->cache:Ljava/util/Map;

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lorg/jivesoftware/smack/util/DNSUtil;->dnsResolver:Lorg/jivesoftware/smack/util/dns/DNSResolver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bisect([ID)I
    .locals 7
    .param p0, "array"    # [I
    .param p1, "value"    # D

    .prologue
    .line 221
    const/4 v1, 0x0

    .line 222
    .local v1, "pos":I
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 227
    :cond_0
    return v1

    .line 222
    :cond_1
    aget v0, p0, v2

    .line 223
    .local v0, "element":I
    int-to-double v4, v0

    cmpg-double v4, p1, v4

    if-ltz v4, :cond_0

    .line 225
    add-int/lit8 v1, v1, 0x1

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getDNSResolver()Lorg/jivesoftware/smack/util/dns/DNSResolver;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lorg/jivesoftware/smack/util/DNSUtil;->dnsResolver:Lorg/jivesoftware/smack/util/dns/DNSResolver;

    return-object v0
.end method

.method private static resolveDomain(Ljava/lang/String;C)Ljava/util/List;
    .locals 8
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "keyPrefix"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "C)",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/util/dns/HostAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "key":Ljava/lang/String;
    sget-object v6, Lorg/jivesoftware/smack/util/DNSUtil;->cache:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 114
    sget-object v6, Lorg/jivesoftware/smack/util/DNSUtil;->cache:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 115
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/HostAddress;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 145
    .end local v0    # "addresses":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/HostAddress;>;"
    .local v1, "addresses":Ljava/lang/Object;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/HostAddress;>;"
    :goto_0
    return-object v1

    .line 120
    .end local v1    # "addresses":Ljava/lang/Object;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/HostAddress;>;"
    :cond_0
    sget-object v6, Lorg/jivesoftware/smack/util/DNSUtil;->dnsResolver:Lorg/jivesoftware/smack/util/dns/DNSResolver;

    if-nez v6, :cond_1

    .line 121
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "No DNS resolver active."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 123
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .restart local v0    # "addresses":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/HostAddress;>;"
    const/16 v6, 0x73

    if-ne p1, v6, :cond_3

    .line 128
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "_xmpp-server._tcp."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "srvDomain":Ljava/lang/String;
    :goto_1
    sget-object v6, Lorg/jivesoftware/smack/util/DNSUtil;->dnsResolver:Lorg/jivesoftware/smack/util/dns/DNSResolver;

    invoke-interface {v6, v4}, Lorg/jivesoftware/smack/util/dns/DNSResolver;->lookupSRVRecords(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 135
    .local v5, "srvRecords":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/SRVRecord;>;"
    invoke-static {v5}, Lorg/jivesoftware/smack/util/DNSUtil;->sortSRVRecords(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 136
    .local v3, "sortedRecords":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/HostAddress;>;"
    if-eqz v3, :cond_2

    .line 137
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    :cond_2
    new-instance v6, Lorg/jivesoftware/smack/util/dns/HostAddress;

    invoke-direct {v6, p0}, Lorg/jivesoftware/smack/util/dns/HostAddress;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v6, Lorg/jivesoftware/smack/util/DNSUtil;->cache:Ljava/util/Map;

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 145
    .restart local v1    # "addresses":Ljava/lang/Object;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/HostAddress;>;"
    goto :goto_0

    .line 129
    .end local v1    # "addresses":Ljava/lang/Object;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/HostAddress;>;"
    .end local v3    # "sortedRecords":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/HostAddress;>;"
    .end local v4    # "srvDomain":Ljava/lang/String;
    .end local v5    # "srvRecords":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/SRVRecord;>;"
    :cond_3
    const/16 v6, 0x63

    if-ne p1, v6, :cond_4

    .line 130
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "_xmpp-client._tcp."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 131
    .restart local v4    # "srvDomain":Ljava/lang/String;
    goto :goto_1

    .line 132
    .end local v4    # "srvDomain":Ljava/lang/String;
    :cond_4
    move-object v4, p0

    .restart local v4    # "srvDomain":Ljava/lang/String;
    goto :goto_1
.end method

.method public static resolveXMPPDomain(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/util/dns/HostAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    const/16 v0, 0x63

    invoke-static {p0, v0}, Lorg/jivesoftware/smack/util/DNSUtil;->resolveDomain(Ljava/lang/String;C)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static resolveXMPPServerDomain(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/util/dns/HostAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    const/16 v0, 0x73

    invoke-static {p0, v0}, Lorg/jivesoftware/smack/util/DNSUtil;->resolveDomain(Ljava/lang/String;C)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static setDNSResolver(Lorg/jivesoftware/smack/util/dns/DNSResolver;)V
    .locals 0
    .param p0, "resolver"    # Lorg/jivesoftware/smack/util/dns/DNSResolver;

    .prologue
    .line 55
    sput-object p0, Lorg/jivesoftware/smack/util/DNSUtil;->dnsResolver:Lorg/jivesoftware/smack/util/dns/DNSResolver;

    .line 56
    return-void
.end method

.method protected static sortSRVRecords(Ljava/util/List;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/util/dns/SRVRecord;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/util/dns/HostAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/SRVRecord;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/jivesoftware/smack/util/dns/SRVRecord;

    invoke-virtual/range {v16 .. v16}, Lorg/jivesoftware/smack/util/dns/SRVRecord;->getFQDN()Ljava/lang/String;

    move-result-object v16

    const-string v17, "."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 160
    const/4 v9, 0x0

    .line 216
    :cond_0
    return-object v9

    .line 163
    :cond_1
    invoke-static/range {p0 .. p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 166
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 167
    .local v4, "buckets":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/util/List<Lorg/jivesoftware/smack/util/dns/SRVRecord;>;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_4

    .line 178
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    .local v9, "res":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/HostAddress;>;"
    invoke-interface {v4}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 181
    .local v7, "priority":Ljava/lang/Integer;
    invoke-interface {v4, v7}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 183
    .local v2, "bucket":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/SRVRecord;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "bucketSize":I
    if-lez v3, :cond_2

    .line 184
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v14, v0, [I

    .line 185
    .local v14, "totals":[I
    const/4 v12, 0x0

    .line 186
    .local v12, "running_total":I
    const/4 v6, 0x0

    .line 187
    .local v6, "count":I
    const/4 v15, 0x1

    .line 189
    .local v15, "zeroWeight":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_3
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_6

    .line 194
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_7

    .line 200
    if-nez v12, :cond_8

    .line 204
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v18

    int-to-double v0, v3

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v13, v0

    .line 211
    .local v13, "selectedPos":I
    :goto_4
    invoke-interface {v2, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smack/util/dns/SRVRecord;

    .line 212
    .local v5, "chosenSRVRecord":Lorg/jivesoftware/smack/util/dns/SRVRecord;
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 167
    .end local v2    # "bucket":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/SRVRecord;>;"
    .end local v3    # "bucketSize":I
    .end local v5    # "chosenSRVRecord":Lorg/jivesoftware/smack/util/dns/SRVRecord;
    .end local v6    # "count":I
    .end local v7    # "priority":Ljava/lang/Integer;
    .end local v9    # "res":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/HostAddress;>;"
    .end local v12    # "running_total":I
    .end local v13    # "selectedPos":I
    .end local v14    # "totals":[I
    .end local v15    # "zeroWeight":I
    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jivesoftware/smack/util/dns/SRVRecord;

    .line 168
    .local v8, "r":Lorg/jivesoftware/smack/util/dns/SRVRecord;
    invoke-virtual {v8}, Lorg/jivesoftware/smack/util/dns/SRVRecord;->getPriority()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 169
    .restart local v7    # "priority":Ljava/lang/Integer;
    invoke-interface {v4, v7}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 171
    .restart local v2    # "bucket":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/SRVRecord;>;"
    if-nez v2, :cond_5

    .line 172
    new-instance v2, Ljava/util/LinkedList;

    .end local v2    # "bucket":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/SRVRecord;>;"
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 173
    .restart local v2    # "bucket":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/SRVRecord;>;"
    invoke-interface {v4, v7, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_5
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 189
    .end local v8    # "r":Lorg/jivesoftware/smack/util/dns/SRVRecord;
    .restart local v3    # "bucketSize":I
    .restart local v6    # "count":I
    .restart local v9    # "res":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/HostAddress;>;"
    .restart local v12    # "running_total":I
    .restart local v14    # "totals":[I
    .restart local v15    # "zeroWeight":I
    :cond_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jivesoftware/smack/util/dns/SRVRecord;

    .line 190
    .restart local v8    # "r":Lorg/jivesoftware/smack/util/dns/SRVRecord;
    invoke-virtual {v8}, Lorg/jivesoftware/smack/util/dns/SRVRecord;->getWeight()I

    move-result v18

    if-lez v18, :cond_3

    .line 191
    const/4 v15, 0x0

    goto :goto_2

    .line 194
    .end local v8    # "r":Lorg/jivesoftware/smack/util/dns/SRVRecord;
    :cond_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jivesoftware/smack/util/dns/SRVRecord;

    .line 195
    .restart local v8    # "r":Lorg/jivesoftware/smack/util/dns/SRVRecord;
    invoke-virtual {v8}, Lorg/jivesoftware/smack/util/dns/SRVRecord;->getWeight()I

    move-result v18

    add-int v18, v18, v15

    add-int v12, v12, v18

    .line 196
    aput v12, v14, v6

    .line 197
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 206
    .end local v8    # "r":Lorg/jivesoftware/smack/util/dns/SRVRecord;
    :cond_8
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v18

    int-to-double v0, v12

    move-wide/from16 v20, v0

    mul-double v10, v18, v20

    .line 207
    .local v10, "rnd":D
    invoke-static {v14, v10, v11}, Lorg/jivesoftware/smack/util/DNSUtil;->bisect([ID)I

    move-result v13

    .restart local v13    # "selectedPos":I
    goto :goto_4
.end method
