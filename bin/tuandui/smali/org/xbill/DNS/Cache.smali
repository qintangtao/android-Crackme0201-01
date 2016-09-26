.class public Lorg/xbill/DNS/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/Cache$CacheMap;,
        Lorg/xbill/DNS/Cache$CacheRRset;,
        Lorg/xbill/DNS/Cache$Element;,
        Lorg/xbill/DNS/Cache$NegativeElement;
    }
.end annotation


# static fields
.field private static final defaultMaxEntries:I = 0xc350


# instance fields
.field private data:Lorg/xbill/DNS/Cache$CacheMap;

.field private dclass:I

.field private maxcache:I

.field private maxncache:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Cache;-><init>(I)V

    .line 182
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "dclass"    # I

    .prologue
    const/4 v0, -0x1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput v0, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    .line 158
    iput v0, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    .line 171
    iput p1, p0, Lorg/xbill/DNS/Cache;->dclass:I

    .line 172
    new-instance v0, Lorg/xbill/DNS/Cache$CacheMap;

    const v1, 0xc350

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Cache$CacheMap;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput v2, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    .line 158
    iput v2, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    .line 189
    new-instance v2, Lorg/xbill/DNS/Cache$CacheMap;

    const v3, 0xc350

    invoke-direct {v2, v3}, Lorg/xbill/DNS/Cache$CacheMap;-><init>(I)V

    iput-object v2, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    .line 190
    new-instance v0, Lorg/xbill/DNS/Master;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Master;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, "m":Lorg/xbill/DNS/Master;
    :goto_0
    invoke-virtual {v0}, Lorg/xbill/DNS/Master;->nextRecord()Lorg/xbill/DNS/Record;

    move-result-object v1

    .local v1, "record":Lorg/xbill/DNS/Record;
    if-nez v1, :cond_0

    .line 193
    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/xbill/DNS/Cache;->addRecord(Lorg/xbill/DNS/Record;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$0(JJ)I
    .locals 2

    .prologue
    .line 29
    invoke-static {p0, p1, p2, p3}, Lorg/xbill/DNS/Cache;->limitExpire(JJ)I

    move-result v0

    return v0
.end method

.method private declared-synchronized addElement(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Cache$Element;)V
    .locals 7
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "element"    # Lorg/xbill/DNS/Cache$Element;

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v6, p1}, Lorg/xbill/DNS/Cache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 260
    .local v5, "types":Ljava/lang/Object;
    if-nez v5, :cond_0

    .line 261
    iget-object v6, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v6, p1, p2}, Lorg/xbill/DNS/Cache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :goto_0
    monitor-exit p0

    return-void

    .line 264
    :cond_0
    :try_start_1
    invoke-interface {p2}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v4

    .line 265
    .local v4, "type":I
    instance-of v6, v5, Ljava/util/List;

    if-eqz v6, :cond_3

    .line 266
    move-object v0, v5

    check-cast v0, Ljava/util/List;

    move-object v3, v0

    .line 267
    .local v3, "list":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lt v2, v6, :cond_1

    .line 274
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 259
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/List;
    .end local v4    # "type":I
    .end local v5    # "types":Ljava/lang/Object;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 268
    .restart local v2    # "i":I
    .restart local v3    # "list":Ljava/util/List;
    .restart local v4    # "type":I
    .restart local v5    # "types":Ljava/lang/Object;
    :cond_1
    :try_start_2
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Cache$Element;

    .line 269
    .local v1, "elt":Lorg/xbill/DNS/Cache$Element;
    invoke-interface {v1}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v6

    if-ne v6, v4, :cond_2

    .line 270
    invoke-interface {v3, v2, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 267
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 276
    .end local v1    # "elt":Lorg/xbill/DNS/Cache$Element;
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/List;
    :cond_3
    move-object v0, v5

    check-cast v0, Lorg/xbill/DNS/Cache$Element;

    move-object v1, v0

    .line 277
    .restart local v1    # "elt":Lorg/xbill/DNS/Cache$Element;
    invoke-interface {v1}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v6

    if-ne v6, v4, :cond_4

    .line 278
    iget-object v6, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v6, p1, p2}, Lorg/xbill/DNS/Cache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 280
    :cond_4
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 281
    .local v3, "list":Ljava/util/LinkedList;
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-virtual {v3, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v6, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v6, p1, v3}, Lorg/xbill/DNS/Cache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized allElements(Ljava/lang/Object;)[Lorg/xbill/DNS/Cache$Element;
    .locals 6
    .param p1, "types"    # Ljava/lang/Object;

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    instance-of v4, p1, Ljava/util/List;

    if-eqz v4, :cond_0

    .line 209
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v3, v0

    .line 210
    .local v3, "typelist":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 211
    .local v2, "size":I
    new-array v4, v2, [Lorg/xbill/DNS/Cache$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/xbill/DNS/Cache$Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    .end local v2    # "size":I
    .end local v3    # "typelist":Ljava/util/List;
    :goto_0
    monitor-exit p0

    return-object v4

    .line 213
    :cond_0
    :try_start_1
    move-object v0, p1

    check-cast v0, Lorg/xbill/DNS/Cache$Element;

    move-object v1, v0

    .line 214
    .local v1, "set":Lorg/xbill/DNS/Cache$Element;
    const/4 v4, 0x1

    new-array v4, v4, [Lorg/xbill/DNS/Cache$Element;

    const/4 v5, 0x0

    aput-object v1, v4, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 208
    .end local v1    # "set":Lorg/xbill/DNS/Cache$Element;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Lorg/xbill/DNS/Name;

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized findElement(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Cache$Element;
    .locals 2
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "minCred"    # I

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Cache;->exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 252
    .local v0, "types":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 253
    const/4 v1, 0x0

    .line 254
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 251
    .end local v0    # "types":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private findRecords(Lorg/xbill/DNS/Name;II)[Lorg/xbill/DNS/RRset;
    .locals 2
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "minCred"    # I

    .prologue
    .line 518
    invoke-virtual {p0, p1, p2, p3}, Lorg/xbill/DNS/Cache;->lookupRecords(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;

    move-result-object v0

    .line 519
    .local v0, "cr":Lorg/xbill/DNS/SetResponse;
    invoke-virtual {v0}, Lorg/xbill/DNS/SetResponse;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 520
    invoke-virtual {v0}, Lorg/xbill/DNS/SetResponse;->answers()[Lorg/xbill/DNS/RRset;

    move-result-object v1

    .line 522
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final getCred(IZ)I
    .locals 4
    .param p1, "section"    # I
    .param p2, "isAuth"    # Z

    .prologue
    const/4 v0, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x3

    .line 553
    if-ne p1, v2, :cond_2

    .line 554
    if-eqz p2, :cond_1

    .line 564
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 557
    goto :goto_0

    .line 558
    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 559
    if-nez p2, :cond_0

    move v0, v1

    .line 562
    goto :goto_0

    .line 563
    :cond_3
    if-ne p1, v1, :cond_4

    move v0, v2

    .line 564
    goto :goto_0

    .line 566
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getCred: invalid section"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static limitExpire(JJ)I
    .locals 8
    .param p0, "ttl"    # J
    .param p2, "maxttl"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 30
    cmp-long v2, p2, v6

    if-ltz v2, :cond_0

    cmp-long v2, p2, p0

    if-gez v2, :cond_0

    .line 31
    move-wide p0, p2

    .line 32
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    add-long v0, v2, p0

    .line 33
    .local v0, "expire":J
    cmp-long v2, v0, v6

    if-ltz v2, :cond_1

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 34
    :cond_1
    const v2, 0x7fffffff

    .line 35
    :goto_0
    return v2

    :cond_2
    long-to-int v2, v0

    goto :goto_0
.end method

.method private static markAdditional(Lorg/xbill/DNS/RRset;Ljava/util/Set;)V
    .locals 5
    .param p0, "rrset"    # Lorg/xbill/DNS/RRset;
    .param p1, "names"    # Ljava/util/Set;

    .prologue
    .line 571
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 572
    .local v0, "first":Lorg/xbill/DNS/Record;
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getAdditionalName()Lorg/xbill/DNS/Name;

    move-result-object v4

    if-nez v4, :cond_1

    .line 582
    :cond_0
    return-void

    .line 575
    :cond_1
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v1

    .line 576
    .local v1, "it":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 577
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xbill/DNS/Record;

    .line 578
    .local v3, "r":Lorg/xbill/DNS/Record;
    invoke-virtual {v3}, Lorg/xbill/DNS/Record;->getAdditionalName()Lorg/xbill/DNS/Name;

    move-result-object v2

    .line 579
    .local v2, "name":Lorg/xbill/DNS/Name;
    if-eqz v2, :cond_2

    .line 580
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private declared-synchronized oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;
    .locals 7
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "types"    # Ljava/lang/Object;
    .param p3, "type"    # I
    .param p4, "minCred"    # I

    .prologue
    const/4 v5, 0x0

    .line 220
    monitor-enter p0

    const/4 v1, 0x0

    .line 222
    .local v1, "found":Lorg/xbill/DNS/Cache$Element;
    const/16 v6, 0xff

    if-ne p3, v6, :cond_0

    .line 223
    :try_start_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "oneElement(ANY)"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 224
    :cond_0
    :try_start_1
    instance-of v6, p2, Ljava/util/List;

    if-eqz v6, :cond_5

    .line 225
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    move-object v3, v0

    .line 226
    .local v3, "list":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-lt v2, v6, :cond_3

    .line 238
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/List;
    :cond_1
    :goto_1
    if-nez v1, :cond_6

    move-object v1, v5

    .line 246
    .end local v1    # "found":Lorg/xbill/DNS/Cache$Element;
    :cond_2
    :goto_2
    monitor-exit p0

    return-object v1

    .line 227
    .restart local v1    # "found":Lorg/xbill/DNS/Cache$Element;
    .restart local v2    # "i":I
    .restart local v3    # "list":Ljava/util/List;
    :cond_3
    :try_start_2
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xbill/DNS/Cache$Element;

    .line 228
    .local v4, "set":Lorg/xbill/DNS/Cache$Element;
    invoke-interface {v4}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v6

    if-ne v6, p3, :cond_4

    .line 229
    move-object v1, v4

    .line 230
    goto :goto_1

    .line 226
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/List;
    .end local v4    # "set":Lorg/xbill/DNS/Cache$Element;
    :cond_5
    move-object v0, p2

    check-cast v0, Lorg/xbill/DNS/Cache$Element;

    move-object v4, v0

    .line 235
    .restart local v4    # "set":Lorg/xbill/DNS/Cache$Element;
    invoke-interface {v4}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v6

    if-ne v6, p3, :cond_1

    .line 236
    move-object v1, v4

    goto :goto_1

    .line 240
    .end local v4    # "set":Lorg/xbill/DNS/Cache$Element;
    :cond_6
    invoke-interface {v1}, Lorg/xbill/DNS/Cache$Element;->expired()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 241
    invoke-direct {p0, p1, p3}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V

    move-object v1, v5

    .line 242
    goto :goto_2

    .line 244
    :cond_7
    invoke-interface {v1, p4}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    if-gez v6, :cond_2

    move-object v1, v5

    .line 245
    goto :goto_2
.end method

.method private declared-synchronized removeElement(Lorg/xbill/DNS/Name;I)V
    .locals 6
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v5, p1}, Lorg/xbill/DNS/Cache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 291
    .local v4, "types":Ljava/lang/Object;
    if-nez v4, :cond_1

    .line 311
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 294
    :cond_1
    :try_start_1
    instance-of v5, v4, Ljava/util/List;

    if-eqz v5, :cond_3

    .line 295
    move-object v0, v4

    check-cast v0, Ljava/util/List;

    move-object v3, v0

    .line 296
    .local v3, "list":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 297
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Cache$Element;

    .line 298
    .local v1, "elt":Lorg/xbill/DNS/Cache$Element;
    invoke-interface {v1}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v5

    if-ne v5, p2, :cond_2

    .line 299
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 300
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 301
    iget-object v5, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v5, p1}, Lorg/xbill/DNS/Cache$CacheMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 290
    .end local v1    # "elt":Lorg/xbill/DNS/Cache$Element;
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/List;
    .end local v4    # "types":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 296
    .restart local v1    # "elt":Lorg/xbill/DNS/Cache$Element;
    .restart local v2    # "i":I
    .restart local v3    # "list":Ljava/util/List;
    .restart local v4    # "types":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 306
    .end local v1    # "elt":Lorg/xbill/DNS/Cache$Element;
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/List;
    :cond_3
    :try_start_2
    move-object v0, v4

    check-cast v0, Lorg/xbill/DNS/Cache$Element;

    move-object v1, v0

    .line 307
    .restart local v1    # "elt":Lorg/xbill/DNS/Cache$Element;
    invoke-interface {v1}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v5

    if-ne v5, p2, :cond_0

    .line 309
    iget-object v5, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v5, p1}, Lorg/xbill/DNS/Cache$CacheMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized removeName(Lorg/xbill/DNS/Name;)V
    .locals 1
    .param p1, "name"    # Lorg/xbill/DNS/Name;

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addMessage(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/SetResponse;
    .locals 31
    .param p1, "in"    # Lorg/xbill/DNS/Message;

    .prologue
    .line 594
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v28

    const/16 v29, 0x5

    invoke-virtual/range {v28 .. v29}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v14

    .line 595
    .local v14, "isAuth":Z
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v20

    .line 601
    .local v20, "question":Lorg/xbill/DNS/Record;
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v21

    .line 602
    .local v21, "rcode":I
    const/4 v9, 0x0

    .line 604
    .local v9, "completed":Z
    const/16 v22, 0x0

    .line 605
    .local v22, "response":Lorg/xbill/DNS/SetResponse;
    const-string v28, "verbosecache"

    invoke-static/range {v28 .. v28}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v27

    .line 608
    .local v27, "verbose":Z
    if-eqz v21, :cond_0

    const/16 v28, 0x3

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_1

    .line 609
    :cond_0
    if-nez v20, :cond_2

    .line 610
    :cond_1
    const/16 v28, 0x0

    .line 722
    :goto_0
    return-object v28

    .line 612
    :cond_2
    invoke-virtual/range {v20 .. v20}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v18

    .line 613
    .local v18, "qname":Lorg/xbill/DNS/Name;
    invoke-virtual/range {v20 .. v20}, Lorg/xbill/DNS/Record;->getType()I

    move-result v19

    .line 614
    .local v19, "qtype":I
    invoke-virtual/range {v20 .. v20}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v17

    .line 616
    .local v17, "qclass":I
    move-object/from16 v11, v18

    .line 618
    .local v11, "curname":Lorg/xbill/DNS/Name;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 620
    .local v3, "additionalNames":Ljava/util/HashSet;
    const/16 v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Message;->getSectionRRsets(I)[Lorg/xbill/DNS/RRset;

    move-result-object v5

    .line 621
    .local v5, "answers":[Lorg/xbill/DNS/RRset;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    array-length v0, v5

    move/from16 v28, v0

    move/from16 v0, v28

    if-lt v13, v0, :cond_7

    .line 663
    :goto_2
    const/16 v28, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Message;->getSectionRRsets(I)[Lorg/xbill/DNS/RRset;

    move-result-object v6

    .line 664
    .local v6, "auth":[Lorg/xbill/DNS/RRset;
    const/16 v24, 0x0

    .local v24, "soa":Lorg/xbill/DNS/RRset;
    const/16 v16, 0x0

    .line 665
    .local v16, "ns":Lorg/xbill/DNS/RRset;
    const/4 v13, 0x0

    :goto_3
    array-length v0, v6

    move/from16 v28, v0

    move/from16 v0, v28

    if-lt v13, v0, :cond_11

    .line 673
    if-nez v9, :cond_17

    .line 675
    const/16 v28, 0x3

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_14

    const/4 v7, 0x0

    .line 676
    .local v7, "cachetype":I
    :goto_4
    const/16 v28, 0x3

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_3

    if-nez v24, :cond_3

    if-nez v16, :cond_16

    .line 678
    :cond_3
    const/16 v28, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1, v14}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v10

    .line 679
    .local v10, "cred":I
    const/16 v25, 0x0

    .line 680
    .local v25, "soarec":Lorg/xbill/DNS/SOARecord;
    if-eqz v24, :cond_4

    .line 681
    invoke-virtual/range {v24 .. v24}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v25

    .end local v25    # "soarec":Lorg/xbill/DNS/SOARecord;
    check-cast v25, Lorg/xbill/DNS/SOARecord;

    .line 682
    .restart local v25    # "soarec":Lorg/xbill/DNS/SOARecord;
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v11, v7, v1, v10}, Lorg/xbill/DNS/Cache;->addNegative(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/SOARecord;I)V

    .line 683
    if-nez v22, :cond_5

    .line 685
    const/16 v28, 0x3

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_15

    .line 686
    const/16 v23, 0x1

    .line 689
    .local v23, "responseType":I
    :goto_5
    invoke-static/range {v23 .. v23}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;

    move-result-object v22

    .line 709
    .end local v7    # "cachetype":I
    .end local v10    # "cred":I
    .end local v23    # "responseType":I
    .end local v25    # "soarec":Lorg/xbill/DNS/SOARecord;
    :cond_5
    :goto_6
    const/16 v28, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Message;->getSectionRRsets(I)[Lorg/xbill/DNS/RRset;

    move-result-object v4

    .line 710
    .local v4, "addl":[Lorg/xbill/DNS/RRset;
    const/4 v13, 0x0

    :goto_7
    array-length v0, v4

    move/from16 v28, v0

    move/from16 v0, v28

    if-lt v13, v0, :cond_18

    .line 720
    if-eqz v27, :cond_6

    .line 721
    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "addMessage: "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    move-object/from16 v28, v22

    .line 722
    goto/16 :goto_0

    .line 622
    .end local v4    # "addl":[Lorg/xbill/DNS/RRset;
    .end local v6    # "auth":[Lorg/xbill/DNS/RRset;
    .end local v16    # "ns":Lorg/xbill/DNS/RRset;
    .end local v24    # "soa":Lorg/xbill/DNS/RRset;
    :cond_7
    aget-object v28, v5, v13

    invoke-virtual/range {v28 .. v28}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v28

    move/from16 v0, v28

    move/from16 v1, v17

    if-eq v0, v1, :cond_9

    .line 621
    :cond_8
    :goto_8
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 624
    :cond_9
    aget-object v28, v5, v13

    invoke-virtual/range {v28 .. v28}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v26

    .line 625
    .local v26, "type":I
    aget-object v28, v5, v13

    invoke-virtual/range {v28 .. v28}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v15

    .line 626
    .local v15, "name":Lorg/xbill/DNS/Name;
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1, v14}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v10

    .line 627
    .restart local v10    # "cred":I
    move/from16 v0, v26

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    const/16 v28, 0xff

    move/from16 v0, v19

    move/from16 v1, v28

    if-ne v0, v1, :cond_d

    .line 628
    :cond_a
    invoke-virtual {v15, v11}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_d

    .line 630
    aget-object v28, v5, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v10}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    .line 631
    const/4 v9, 0x1

    .line 632
    move-object/from16 v0, v18

    if-ne v11, v0, :cond_c

    .line 633
    if-nez v22, :cond_b

    .line 634
    new-instance v22, Lorg/xbill/DNS/SetResponse;

    .line 635
    .end local v22    # "response":Lorg/xbill/DNS/SetResponse;
    const/16 v28, 0x6

    .line 634
    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    .line 636
    .restart local v22    # "response":Lorg/xbill/DNS/SetResponse;
    :cond_b
    aget-object v28, v5, v13

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V

    .line 638
    :cond_c
    aget-object v28, v5, v13

    move-object/from16 v0, v28

    invoke-static {v0, v3}, Lorg/xbill/DNS/Cache;->markAdditional(Lorg/xbill/DNS/RRset;Ljava/util/Set;)V

    goto :goto_8

    .line 639
    :cond_d
    const/16 v28, 0x5

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_f

    invoke-virtual {v15, v11}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 641
    aget-object v28, v5, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v10}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    .line 642
    move-object/from16 v0, v18

    if-ne v11, v0, :cond_e

    .line 643
    new-instance v22, Lorg/xbill/DNS/SetResponse;

    .end local v22    # "response":Lorg/xbill/DNS/SetResponse;
    const/16 v28, 0x4

    .line 644
    aget-object v29, v5, v13

    .line 643
    move-object/from16 v0, v22

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    .line 645
    .restart local v22    # "response":Lorg/xbill/DNS/SetResponse;
    :cond_e
    aget-object v28, v5, v13

    invoke-virtual/range {v28 .. v28}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v8

    check-cast v8, Lorg/xbill/DNS/CNAMERecord;

    .line 646
    .local v8, "cname":Lorg/xbill/DNS/CNAMERecord;
    invoke-virtual {v8}, Lorg/xbill/DNS/CNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v11

    .line 647
    goto/16 :goto_8

    .end local v8    # "cname":Lorg/xbill/DNS/CNAMERecord;
    :cond_f
    const/16 v28, 0x27

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    invoke-virtual {v11, v15}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 649
    aget-object v28, v5, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v10}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    .line 650
    move-object/from16 v0, v18

    if-ne v11, v0, :cond_10

    .line 651
    new-instance v22, Lorg/xbill/DNS/SetResponse;

    .end local v22    # "response":Lorg/xbill/DNS/SetResponse;
    const/16 v28, 0x5

    .line 652
    aget-object v29, v5, v13

    .line 651
    move-object/from16 v0, v22

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    .line 653
    .restart local v22    # "response":Lorg/xbill/DNS/SetResponse;
    :cond_10
    aget-object v28, v5, v13

    invoke-virtual/range {v28 .. v28}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v12

    check-cast v12, Lorg/xbill/DNS/DNAMERecord;

    .line 655
    .local v12, "dname":Lorg/xbill/DNS/DNAMERecord;
    :try_start_0
    invoke-virtual {v11, v12}, Lorg/xbill/DNS/Name;->fromDNAME(Lorg/xbill/DNS/DNAMERecord;)Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    goto/16 :goto_8

    .line 666
    .end local v10    # "cred":I
    .end local v12    # "dname":Lorg/xbill/DNS/DNAMERecord;
    .end local v15    # "name":Lorg/xbill/DNS/Name;
    .end local v26    # "type":I
    .restart local v6    # "auth":[Lorg/xbill/DNS/RRset;
    .restart local v16    # "ns":Lorg/xbill/DNS/RRset;
    .restart local v24    # "soa":Lorg/xbill/DNS/RRset;
    :cond_11
    aget-object v28, v6, v13

    invoke-virtual/range {v28 .. v28}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v28

    const/16 v29, 0x6

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_13

    .line 667
    aget-object v28, v6, v13

    invoke-virtual/range {v28 .. v28}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v28

    if-eqz v28, :cond_13

    .line 668
    aget-object v24, v6, v13

    .line 665
    :cond_12
    :goto_9
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 669
    :cond_13
    aget-object v28, v6, v13

    invoke-virtual/range {v28 .. v28}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_12

    .line 670
    aget-object v28, v6, v13

    invoke-virtual/range {v28 .. v28}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v28

    if-eqz v28, :cond_12

    .line 671
    aget-object v16, v6, v13

    goto :goto_9

    :cond_14
    move/from16 v7, v19

    .line 675
    goto/16 :goto_4

    .line 688
    .restart local v7    # "cachetype":I
    .restart local v10    # "cred":I
    .restart local v25    # "soarec":Lorg/xbill/DNS/SOARecord;
    :cond_15
    const/16 v23, 0x2

    .restart local v23    # "responseType":I
    goto/16 :goto_5

    .line 694
    .end local v10    # "cred":I
    .end local v23    # "responseType":I
    .end local v25    # "soarec":Lorg/xbill/DNS/SOARecord;
    :cond_16
    const/16 v28, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1, v14}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v10

    .line 695
    .restart local v10    # "cred":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v10}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    .line 696
    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lorg/xbill/DNS/Cache;->markAdditional(Lorg/xbill/DNS/RRset;Ljava/util/Set;)V

    .line 697
    if-nez v22, :cond_5

    .line 698
    new-instance v22, Lorg/xbill/DNS/SetResponse;

    .line 699
    .end local v22    # "response":Lorg/xbill/DNS/SetResponse;
    const/16 v28, 0x3

    .line 698
    move-object/from16 v0, v22

    move/from16 v1, v28

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    .line 702
    .restart local v22    # "response":Lorg/xbill/DNS/SetResponse;
    goto/16 :goto_6

    .end local v7    # "cachetype":I
    .end local v10    # "cred":I
    :cond_17
    if-nez v21, :cond_5

    if-eqz v16, :cond_5

    .line 704
    const/16 v28, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1, v14}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v10

    .line 705
    .restart local v10    # "cred":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v10}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    .line 706
    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lorg/xbill/DNS/Cache;->markAdditional(Lorg/xbill/DNS/RRset;Ljava/util/Set;)V

    goto/16 :goto_6

    .line 711
    .end local v10    # "cred":I
    .restart local v4    # "addl":[Lorg/xbill/DNS/RRset;
    :cond_18
    aget-object v28, v4, v13

    invoke-virtual/range {v28 .. v28}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v26

    .line 712
    .restart local v26    # "type":I
    const/16 v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-eq v0, v1, :cond_1a

    const/16 v28, 0x1c

    move/from16 v0, v26

    move/from16 v1, v28

    if-eq v0, v1, :cond_1a

    const/16 v28, 0x26

    move/from16 v0, v26

    move/from16 v1, v28

    if-eq v0, v1, :cond_1a

    .line 710
    :cond_19
    :goto_a
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_7

    .line 714
    :cond_1a
    aget-object v28, v4, v13

    invoke-virtual/range {v28 .. v28}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v15

    .line 715
    .restart local v15    # "name":Lorg/xbill/DNS/Name;
    invoke-virtual {v3, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_19

    .line 717
    const/16 v28, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1, v14}, Lorg/xbill/DNS/Cache;->getCred(IZ)I

    move-result v10

    .line 718
    .restart local v10    # "cred":I
    aget-object v28, v4, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v10}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V

    goto :goto_a

    .line 658
    .end local v4    # "addl":[Lorg/xbill/DNS/RRset;
    .end local v6    # "auth":[Lorg/xbill/DNS/RRset;
    .end local v16    # "ns":Lorg/xbill/DNS/RRset;
    .end local v24    # "soa":Lorg/xbill/DNS/RRset;
    .restart local v12    # "dname":Lorg/xbill/DNS/DNAMERecord;
    :catch_0
    move-exception v28

    goto/16 :goto_2
.end method

.method public declared-synchronized addNegative(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/SOARecord;I)V
    .locals 10
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "soa"    # Lorg/xbill/DNS/SOARecord;
    .param p4, "cred"    # I

    .prologue
    .line 383
    monitor-enter p0

    const-wide/16 v8, 0x0

    .line 384
    .local v8, "ttl":J
    if-eqz p3, :cond_0

    .line 385
    :try_start_0
    invoke-virtual {p3}, Lorg/xbill/DNS/SOARecord;->getTTL()J

    move-result-wide v8

    .line 386
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lorg/xbill/DNS/Cache;->findElement(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v0

    .line 387
    .local v0, "element":Lorg/xbill/DNS/Cache$Element;
    const-wide/16 v2, 0x0

    cmp-long v1, v8, v2

    if-nez v1, :cond_2

    .line 388
    if-eqz v0, :cond_1

    invoke-interface {v0, p4}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v1

    if-gtz v1, :cond_1

    .line 389
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 391
    :cond_2
    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0, p4}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v1

    if-gtz v1, :cond_3

    .line 392
    const/4 v0, 0x0

    .line 393
    :cond_3
    if-nez v0, :cond_1

    .line 394
    new-instance v1, Lorg/xbill/DNS/Cache$NegativeElement;

    .line 396
    iget v2, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    int-to-long v6, v2

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lorg/xbill/DNS/Cache$NegativeElement;-><init>(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/SOARecord;IJ)V

    .line 394
    invoke-direct {p0, p1, v1}, Lorg/xbill/DNS/Cache;->addElement(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Cache$Element;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 383
    .end local v0    # "element":Lorg/xbill/DNS/Cache$Element;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addRRset(Lorg/xbill/DNS/RRset;I)V
    .locals 10
    .param p1, "rrset"    # Lorg/xbill/DNS/RRset;
    .param p2, "cred"    # I

    .prologue
    .line 352
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getTTL()J

    move-result-wide v6

    .line 353
    .local v6, "ttl":J
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    .line 354
    .local v4, "name":Lorg/xbill/DNS/Name;
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v5

    .line 355
    .local v5, "type":I
    const/4 v8, 0x0

    invoke-direct {p0, v4, v5, v8}, Lorg/xbill/DNS/Cache;->findElement(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v3

    .line 356
    .local v3, "element":Lorg/xbill/DNS/Cache$Element;
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_1

    .line 357
    if-eqz v3, :cond_0

    invoke-interface {v3, p2}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v8

    if-gtz v8, :cond_0

    .line 358
    invoke-direct {p0, v4, v5}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 360
    :cond_1
    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {v3, p2}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v8

    if-gtz v8, :cond_2

    .line 361
    const/4 v3, 0x0

    .line 362
    :cond_2
    if-nez v3, :cond_0

    .line 364
    instance-of v8, p1, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v8, :cond_3

    .line 365
    move-object v0, p1

    check-cast v0, Lorg/xbill/DNS/Cache$CacheRRset;

    move-object v2, v0

    .line 368
    .local v2, "crrset":Lorg/xbill/DNS/Cache$CacheRRset;
    :goto_1
    invoke-direct {p0, v4, v2}, Lorg/xbill/DNS/Cache;->addElement(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Cache$Element;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 352
    .end local v2    # "crrset":Lorg/xbill/DNS/Cache$CacheRRset;
    .end local v3    # "element":Lorg/xbill/DNS/Cache$Element;
    .end local v4    # "name":Lorg/xbill/DNS/Name;
    .end local v5    # "type":I
    .end local v6    # "ttl":J
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 367
    .restart local v3    # "element":Lorg/xbill/DNS/Cache$Element;
    .restart local v4    # "name":Lorg/xbill/DNS/Name;
    .restart local v5    # "type":I
    .restart local v6    # "ttl":J
    :cond_3
    :try_start_2
    new-instance v2, Lorg/xbill/DNS/Cache$CacheRRset;

    iget v8, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    int-to-long v8, v8

    invoke-direct {v2, p1, p2, v8, v9}, Lorg/xbill/DNS/Cache$CacheRRset;-><init>(Lorg/xbill/DNS/RRset;IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v2    # "crrset":Lorg/xbill/DNS/Cache$CacheRRset;
    goto :goto_1
.end method

.method public declared-synchronized addRecord(Lorg/xbill/DNS/Record;ILjava/lang/Object;)V
    .locals 8
    .param p1, "r"    # Lorg/xbill/DNS/Record;
    .param p2, "cred"    # I
    .param p3, "o"    # Ljava/lang/Object;

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    .line 329
    .local v4, "name":Lorg/xbill/DNS/Name;
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v5

    .line 330
    .local v5, "type":I
    invoke-static {v5}, Lorg/xbill/DNS/Type;->isRR(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    .line 342
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 332
    :cond_1
    :try_start_1
    invoke-direct {p0, v4, v5, p2}, Lorg/xbill/DNS/Cache;->findElement(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v3

    .line 333
    .local v3, "element":Lorg/xbill/DNS/Cache$Element;
    if-nez v3, :cond_2

    .line 334
    new-instance v2, Lorg/xbill/DNS/Cache$CacheRRset;

    iget v6, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    int-to-long v6, v6

    invoke-direct {v2, p1, p2, v6, v7}, Lorg/xbill/DNS/Cache$CacheRRset;-><init>(Lorg/xbill/DNS/Record;IJ)V

    .line 335
    .local v2, "crrset":Lorg/xbill/DNS/Cache$CacheRRset;
    invoke-virtual {p0, v2, p2}, Lorg/xbill/DNS/Cache;->addRRset(Lorg/xbill/DNS/RRset;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 328
    .end local v2    # "crrset":Lorg/xbill/DNS/Cache$CacheRRset;
    .end local v3    # "element":Lorg/xbill/DNS/Cache$Element;
    .end local v4    # "name":Lorg/xbill/DNS/Name;
    .end local v5    # "type":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 336
    .restart local v3    # "element":Lorg/xbill/DNS/Cache$Element;
    .restart local v4    # "name":Lorg/xbill/DNS/Name;
    .restart local v5    # "type":I
    :cond_2
    :try_start_2
    invoke-interface {v3, p2}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v6

    if-nez v6, :cond_0

    .line 337
    instance-of v6, v3, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v6, :cond_0

    .line 338
    move-object v0, v3

    check-cast v0, Lorg/xbill/DNS/Cache$CacheRRset;

    move-object v2, v0

    .line 339
    .restart local v2    # "crrset":Lorg/xbill/DNS/Cache$CacheRRset;
    invoke-virtual {v2, p1}, Lorg/xbill/DNS/Cache$CacheRRset;->addRR(Lorg/xbill/DNS/Record;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized clearCache()V
    .locals 1

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0}, Lorg/xbill/DNS/Cache$CacheMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    monitor-exit p0

    return-void

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public findAnyRecords(Lorg/xbill/DNS/Name;I)[Lorg/xbill/DNS/RRset;
    .locals 1
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I

    .prologue
    .line 548
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lorg/xbill/DNS/Cache;->findRecords(Lorg/xbill/DNS/Name;II)[Lorg/xbill/DNS/RRset;

    move-result-object v0

    return-object v0
.end method

.method public findRecords(Lorg/xbill/DNS/Name;I)[Lorg/xbill/DNS/RRset;
    .locals 1
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I

    .prologue
    .line 535
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lorg/xbill/DNS/Cache;->findRecords(Lorg/xbill/DNS/Name;II)[Lorg/xbill/DNS/RRset;

    move-result-object v0

    return-object v0
.end method

.method public flushName(Lorg/xbill/DNS/Name;)V
    .locals 0
    .param p1, "name"    # Lorg/xbill/DNS/Name;

    .prologue
    .line 743
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Cache;->removeName(Lorg/xbill/DNS/Name;)V

    .line 744
    return-void
.end method

.method public flushSet(Lorg/xbill/DNS/Name;I)V
    .locals 0
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I

    .prologue
    .line 733
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V

    .line 734
    return-void
.end method

.method public getDClass()I
    .locals 1

    .prologue
    .line 824
    iget v0, p0, Lorg/xbill/DNS/Cache;->dclass:I

    return v0
.end method

.method public getMaxCache()I
    .locals 1

    .prologue
    .line 780
    iget v0, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    return v0
.end method

.method public getMaxEntries()I
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0}, Lorg/xbill/DNS/Cache$CacheMap;->getMaxSize()I

    move-result v0

    return v0
.end method

.method public getMaxNCache()I
    .locals 1

    .prologue
    .line 762
    iget v0, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0}, Lorg/xbill/DNS/Cache$CacheMap;->size()I

    move-result v0

    return v0
.end method

.method protected declared-synchronized lookup(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;
    .locals 12
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "minCred"    # I

    .prologue
    .line 412
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v6

    .line 414
    .local v6, "labels":I
    move v8, v6

    .local v8, "tlabels":I
    :goto_0
    const/4 v11, 0x1

    if-ge v8, v11, :cond_1

    .line 498
    const/4 v11, 0x0

    invoke-static {v11}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    :cond_0
    :goto_1
    monitor-exit p0

    return-object v7

    .line 415
    :cond_1
    const/4 v11, 0x1

    if-ne v8, v11, :cond_3

    const/4 v5, 0x1

    .line 416
    .local v5, "isRoot":Z
    :goto_2
    if-ne v8, v6, :cond_4

    const/4 v4, 0x1

    .line 418
    .local v4, "isExact":Z
    :goto_3
    if-eqz v5, :cond_5

    .line 419
    :try_start_1
    sget-object v9, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    .line 425
    .local v9, "tname":Lorg/xbill/DNS/Name;
    :goto_4
    iget-object v11, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v11, v9}, Lorg/xbill/DNS/Cache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 426
    .local v10, "types":Ljava/lang/Object;
    if-nez v10, :cond_7

    .line 414
    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 415
    .end local v4    # "isExact":Z
    .end local v5    # "isRoot":Z
    .end local v9    # "tname":Lorg/xbill/DNS/Name;
    .end local v10    # "types":Ljava/lang/Object;
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 416
    .restart local v5    # "isRoot":Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 420
    .restart local v4    # "isExact":Z
    :cond_5
    if-eqz v4, :cond_6

    .line 421
    move-object v9, p1

    .restart local v9    # "tname":Lorg/xbill/DNS/Name;
    goto :goto_4

    .line 423
    .end local v9    # "tname":Lorg/xbill/DNS/Name;
    :cond_6
    new-instance v9, Lorg/xbill/DNS/Name;

    sub-int v11, v6, v8

    invoke-direct {v9, p1, v11}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    .restart local v9    # "tname":Lorg/xbill/DNS/Name;
    goto :goto_4

    .line 434
    .restart local v10    # "types":Ljava/lang/Object;
    :cond_7
    if-eqz v4, :cond_c

    const/16 v11, 0xff

    if-ne p2, v11, :cond_c

    .line 435
    new-instance v7, Lorg/xbill/DNS/SetResponse;

    const/4 v11, 0x6

    invoke-direct {v7, v11}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    .line 436
    .local v7, "sr":Lorg/xbill/DNS/SetResponse;
    invoke-direct {p0, v10}, Lorg/xbill/DNS/Cache;->allElements(Ljava/lang/Object;)[Lorg/xbill/DNS/Cache$Element;

    move-result-object v2

    .line 437
    .local v2, "elements":[Lorg/xbill/DNS/Cache$Element;
    const/4 v0, 0x0

    .line 438
    .local v0, "added":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    array-length v11, v2

    if-lt v3, v11, :cond_9

    .line 452
    if-gtz v0, :cond_0

    .line 485
    .end local v0    # "added":I
    .end local v2    # "elements":[Lorg/xbill/DNS/Cache$Element;
    .end local v3    # "i":I
    .end local v7    # "sr":Lorg/xbill/DNS/SetResponse;
    :cond_8
    const/4 v11, 0x2

    invoke-direct {p0, v9, v10, v11, p3}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v1

    .line 486
    .local v1, "element":Lorg/xbill/DNS/Cache$Element;
    if-eqz v1, :cond_10

    instance-of v11, v1, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v11, :cond_10

    .line 487
    new-instance v7, Lorg/xbill/DNS/SetResponse;

    const/4 v11, 0x3

    .line 488
    check-cast v1, Lorg/xbill/DNS/Cache$CacheRRset;

    .line 487
    .end local v1    # "element":Lorg/xbill/DNS/Cache$Element;
    invoke-direct {v7, v11, v1}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 412
    .end local v4    # "isExact":Z
    .end local v5    # "isRoot":Z
    .end local v6    # "labels":I
    .end local v8    # "tlabels":I
    .end local v9    # "tname":Lorg/xbill/DNS/Name;
    .end local v10    # "types":Ljava/lang/Object;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 439
    .restart local v0    # "added":I
    .restart local v2    # "elements":[Lorg/xbill/DNS/Cache$Element;
    .restart local v3    # "i":I
    .restart local v4    # "isExact":Z
    .restart local v5    # "isRoot":Z
    .restart local v6    # "labels":I
    .restart local v7    # "sr":Lorg/xbill/DNS/SetResponse;
    .restart local v8    # "tlabels":I
    .restart local v9    # "tname":Lorg/xbill/DNS/Name;
    .restart local v10    # "types":Ljava/lang/Object;
    :cond_9
    :try_start_2
    aget-object v1, v2, v3

    .line 440
    .restart local v1    # "element":Lorg/xbill/DNS/Cache$Element;
    invoke-interface {v1}, Lorg/xbill/DNS/Cache$Element;->expired()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 441
    invoke-interface {v1}, Lorg/xbill/DNS/Cache$Element;->getType()I

    move-result v11

    invoke-direct {p0, v9, v11}, Lorg/xbill/DNS/Cache;->removeElement(Lorg/xbill/DNS/Name;I)V

    .line 438
    .end local v1    # "element":Lorg/xbill/DNS/Cache$Element;
    :cond_a
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 444
    .restart local v1    # "element":Lorg/xbill/DNS/Cache$Element;
    :cond_b
    instance-of v11, v1, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v11, :cond_a

    .line 446
    invoke-interface {v1, p3}, Lorg/xbill/DNS/Cache$Element;->compareCredibility(I)I

    move-result v11

    if-ltz v11, :cond_a

    .line 448
    check-cast v1, Lorg/xbill/DNS/Cache$CacheRRset;

    .end local v1    # "element":Lorg/xbill/DNS/Cache$Element;
    invoke-virtual {v7, v1}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V

    .line 449
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 454
    .end local v0    # "added":I
    .end local v2    # "elements":[Lorg/xbill/DNS/Cache$Element;
    .end local v3    # "i":I
    .end local v7    # "sr":Lorg/xbill/DNS/SetResponse;
    :cond_c
    if-eqz v4, :cond_f

    .line 455
    invoke-direct {p0, v9, v10, p2, p3}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v1

    .line 456
    .restart local v1    # "element":Lorg/xbill/DNS/Cache$Element;
    if-eqz v1, :cond_d

    .line 457
    instance-of v11, v1, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v11, :cond_d

    .line 459
    new-instance v7, Lorg/xbill/DNS/SetResponse;

    const/4 v11, 0x6

    invoke-direct {v7, v11}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    .line 460
    .restart local v7    # "sr":Lorg/xbill/DNS/SetResponse;
    check-cast v1, Lorg/xbill/DNS/Cache$CacheRRset;

    .end local v1    # "element":Lorg/xbill/DNS/Cache$Element;
    invoke-virtual {v7, v1}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V

    goto/16 :goto_1

    .line 462
    .end local v7    # "sr":Lorg/xbill/DNS/SetResponse;
    .restart local v1    # "element":Lorg/xbill/DNS/Cache$Element;
    :cond_d
    if-eqz v1, :cond_e

    .line 463
    new-instance v7, Lorg/xbill/DNS/SetResponse;

    const/4 v11, 0x2

    invoke-direct {v7, v11}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    .line 464
    .restart local v7    # "sr":Lorg/xbill/DNS/SetResponse;
    goto/16 :goto_1

    .line 467
    .end local v7    # "sr":Lorg/xbill/DNS/SetResponse;
    :cond_e
    const/4 v11, 0x5

    invoke-direct {p0, v9, v10, v11, p3}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v1

    .line 468
    if-eqz v1, :cond_8

    .line 469
    instance-of v11, v1, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v11, :cond_8

    .line 471
    new-instance v7, Lorg/xbill/DNS/SetResponse;

    const/4 v11, 0x4

    .line 472
    check-cast v1, Lorg/xbill/DNS/Cache$CacheRRset;

    .line 471
    .end local v1    # "element":Lorg/xbill/DNS/Cache$Element;
    invoke-direct {v7, v11, v1}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    goto/16 :goto_1

    .line 475
    :cond_f
    const/16 v11, 0x27

    invoke-direct {p0, v9, v10, v11, p3}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v1

    .line 476
    .restart local v1    # "element":Lorg/xbill/DNS/Cache$Element;
    if-eqz v1, :cond_8

    .line 477
    instance-of v11, v1, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v11, :cond_8

    .line 479
    new-instance v7, Lorg/xbill/DNS/SetResponse;

    const/4 v11, 0x5

    .line 480
    check-cast v1, Lorg/xbill/DNS/Cache$CacheRRset;

    .line 479
    .end local v1    # "element":Lorg/xbill/DNS/Cache$Element;
    invoke-direct {v7, v11, v1}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    goto/16 :goto_1

    .line 491
    .restart local v1    # "element":Lorg/xbill/DNS/Cache$Element;
    :cond_10
    if-eqz v4, :cond_2

    .line 492
    const/4 v11, 0x0

    invoke-direct {p0, v9, v10, v11, p3}, Lorg/xbill/DNS/Cache;->oneElement(Lorg/xbill/DNS/Name;Ljava/lang/Object;II)Lorg/xbill/DNS/Cache$Element;

    move-result-object v1

    .line 493
    if-eqz v1, :cond_2

    .line 494
    const/4 v11, 0x1

    invoke-static {v11}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    goto/16 :goto_1
.end method

.method public lookupRecords(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;
    .locals 1
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "minCred"    # I

    .prologue
    .line 513
    invoke-virtual {p0, p1, p2, p3}, Lorg/xbill/DNS/Cache;->lookup(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;

    move-result-object v0

    return-object v0
.end method

.method public setMaxCache(I)V
    .locals 0
    .param p1, "seconds"    # I

    .prologue
    .line 771
    iput p1, p0, Lorg/xbill/DNS/Cache;->maxcache:I

    .line 772
    return-void
.end method

.method public setMaxEntries(I)V
    .locals 1
    .param p1, "entries"    # I

    .prologue
    .line 816
    iget-object v0, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Cache$CacheMap;->setMaxSize(I)V

    .line 817
    return-void
.end method

.method public setMaxNCache(I)V
    .locals 0
    .param p1, "seconds"    # I

    .prologue
    .line 753
    iput p1, p0, Lorg/xbill/DNS/Cache;->maxncache:I

    .line 754
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 832
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 833
    .local v3, "sb":Ljava/lang/StringBuffer;
    monitor-enter p0

    .line 834
    :try_start_0
    iget-object v4, p0, Lorg/xbill/DNS/Cache;->data:Lorg/xbill/DNS/Cache$CacheMap;

    invoke-virtual {v4}, Lorg/xbill/DNS/Cache$CacheMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 835
    .local v2, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 833
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 836
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/xbill/DNS/Cache;->allElements(Ljava/lang/Object;)[Lorg/xbill/DNS/Cache$Element;

    move-result-object v0

    .line 837
    .local v0, "elements":[Lorg/xbill/DNS/Cache$Element;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 838
    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 839
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 837
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 833
    .end local v0    # "elements":[Lorg/xbill/DNS/Cache$Element;
    .end local v1    # "i":I
    .end local v2    # "it":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
