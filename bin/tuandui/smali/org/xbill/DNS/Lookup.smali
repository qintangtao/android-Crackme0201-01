.class public final Lorg/xbill/DNS/Lookup;
.super Ljava/lang/Object;
.source "Lookup.java"


# static fields
.field public static final HOST_NOT_FOUND:I = 0x3

.field public static final SUCCESSFUL:I = 0x0

.field public static final TRY_AGAIN:I = 0x2

.field public static final TYPE_NOT_FOUND:I = 0x4

.field public static final UNRECOVERABLE:I = 0x1

.field private static defaultCaches:Ljava/util/Map;

.field private static defaultNdots:I

.field private static defaultResolver:Lorg/xbill/DNS/Resolver;

.field private static defaultSearchPath:[Lorg/xbill/DNS/Name;

.field private static final noAliases:[Lorg/xbill/DNS/Name;


# instance fields
.field private aliases:Ljava/util/List;

.field private answers:[Lorg/xbill/DNS/Record;

.field private badresponse:Z

.field private badresponse_error:Ljava/lang/String;

.field private cache:Lorg/xbill/DNS/Cache;

.field private credibility:I

.field private dclass:I

.field private done:Z

.field private doneCurrent:Z

.field private error:Ljava/lang/String;

.field private foundAlias:Z

.field private iterations:I

.field private name:Lorg/xbill/DNS/Name;

.field private nametoolong:Z

.field private networkerror:Z

.field private nxdomain:Z

.field private referral:Z

.field private resolver:Lorg/xbill/DNS/Resolver;

.field private result:I

.field private searchPath:[Lorg/xbill/DNS/Name;

.field private temporary_cache:Z

.field private timedout:Z

.field private type:I

.field private verbose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/xbill/DNS/Name;

    sput-object v0, Lorg/xbill/DNS/Lookup;->noAliases:[Lorg/xbill/DNS/Name;

    .line 97
    invoke-static {}, Lorg/xbill/DNS/Lookup;->refreshDefault()V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 300
    invoke-static {p1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;II)V

    .line 301
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-static {p1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;II)V

    .line 289
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "dclass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-static {p1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;II)V

    .line 275
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;)V
    .locals 1
    .param p1, "name"    # Lorg/xbill/DNS/Name;

    .prologue
    const/4 v0, 0x1

    .line 259
    invoke-direct {p0, p1, v0, v0}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;II)V

    .line 260
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;I)V
    .locals 1
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I

    .prologue
    .line 248
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;II)V

    .line 249
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;II)V
    .locals 2
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "dclass"    # I

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    invoke-static {p2}, Lorg/xbill/DNS/Type;->check(I)V

    .line 221
    invoke-static {p3}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 222
    invoke-static {p2}, Lorg/xbill/DNS/Type;->isRR(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xff

    if-eq p2, v0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot query for meta-types other than ANY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    iput-object p1, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    .line 226
    iput p2, p0, Lorg/xbill/DNS/Lookup;->type:I

    .line 227
    iput p3, p0, Lorg/xbill/DNS/Lookup;->dclass:I

    .line 228
    const-class v1, Lorg/xbill/DNS/Lookup;

    monitor-enter v1

    .line 229
    :try_start_0
    invoke-static {}, Lorg/xbill/DNS/Lookup;->getDefaultResolver()Lorg/xbill/DNS/Resolver;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->resolver:Lorg/xbill/DNS/Resolver;

    .line 230
    invoke-static {}, Lorg/xbill/DNS/Lookup;->getDefaultSearchPath()[Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->searchPath:[Lorg/xbill/DNS/Name;

    .line 231
    invoke-static {p3}, Lorg/xbill/DNS/Lookup;->getDefaultCache(I)Lorg/xbill/DNS/Cache;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    .line 228
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    const/4 v0, 0x3

    iput v0, p0, Lorg/xbill/DNS/Lookup;->credibility:I

    .line 234
    const-string v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->verbose:Z

    .line 235
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 236
    return-void

    .line 228
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private checkDone()V
    .locals 3

    .prologue
    .line 579
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/xbill/DNS/Lookup;->result:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 580
    return-void

    .line 581
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Lookup of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 582
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/xbill/DNS/Lookup;->dclass:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/xbill/DNS/Lookup;->dclass:I

    invoke-static {v2}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 584
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/xbill/DNS/Lookup;->type:I

    invoke-static {v2}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " isn\'t done"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 585
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private follow(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V
    .locals 3
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "oldname"    # Lorg/xbill/DNS/Name;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 386
    iput-boolean v2, p0, Lorg/xbill/DNS/Lookup;->foundAlias:Z

    .line 387
    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->badresponse:Z

    .line 388
    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->networkerror:Z

    .line 389
    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->timedout:Z

    .line 390
    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->nxdomain:Z

    .line 391
    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->referral:Z

    .line 392
    iget v0, p0, Lorg/xbill/DNS/Lookup;->iterations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xbill/DNS/Lookup;->iterations:I

    .line 393
    iget v0, p0, Lorg/xbill/DNS/Lookup;->iterations:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    :cond_0
    iput v2, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 395
    const-string v0, "CNAME loop"

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 396
    iput-boolean v2, p0, Lorg/xbill/DNS/Lookup;->done:Z

    .line 403
    :goto_0
    return-void

    .line 399
    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    if-nez v0, :cond_2

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    .line 401
    :cond_2
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Lookup;->lookup(Lorg/xbill/DNS/Name;)V

    goto :goto_0
.end method

.method public static declared-synchronized getDefaultCache(I)Lorg/xbill/DNS/Cache;
    .locals 4
    .param p0, "dclass"    # I

    .prologue
    .line 126
    const-class v2, Lorg/xbill/DNS/Lookup;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 127
    sget-object v1, Lorg/xbill/DNS/Lookup;->defaultCaches:Ljava/util/Map;

    invoke-static {p0}, Lorg/xbill/DNS/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Cache;

    .line 128
    .local v0, "c":Lorg/xbill/DNS/Cache;
    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lorg/xbill/DNS/Cache;

    .end local v0    # "c":Lorg/xbill/DNS/Cache;
    invoke-direct {v0, p0}, Lorg/xbill/DNS/Cache;-><init>(I)V

    .line 130
    .restart local v0    # "c":Lorg/xbill/DNS/Cache;
    sget-object v1, Lorg/xbill/DNS/Lookup;->defaultCaches:Ljava/util/Map;

    invoke-static {p0}, Lorg/xbill/DNS/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    monitor-exit v2

    return-object v0

    .line 126
    .end local v0    # "c":Lorg/xbill/DNS/Cache;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getDefaultResolver()Lorg/xbill/DNS/Resolver;
    .locals 2

    .prologue
    .line 106
    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/xbill/DNS/Lookup;->defaultResolver:Lorg/xbill/DNS/Resolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getDefaultSearchPath()[Lorg/xbill/DNS/Name;
    .locals 2

    .prologue
    .line 153
    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/xbill/DNS/Lookup;->defaultSearchPath:[Lorg/xbill/DNS/Name;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private lookup(Lorg/xbill/DNS/Name;)V
    .locals 10
    .param p1, "current"    # Lorg/xbill/DNS/Name;

    .prologue
    const/4 v9, 0x1

    .line 453
    iget-object v6, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    iget v7, p0, Lorg/xbill/DNS/Lookup;->type:I

    iget v8, p0, Lorg/xbill/DNS/Lookup;->credibility:I

    invoke-virtual {v6, p1, v7, v8}, Lorg/xbill/DNS/Cache;->lookupRecords(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;

    move-result-object v5

    .line 454
    .local v5, "sr":Lorg/xbill/DNS/SetResponse;
    iget-boolean v6, p0, Lorg/xbill/DNS/Lookup;->verbose:Z

    if-eqz v6, :cond_0

    .line 455
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "lookup "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 456
    iget v8, p0, Lorg/xbill/DNS/Lookup;->type:I

    invoke-static {v8}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 455
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 457
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 459
    :cond_0
    invoke-direct {p0, p1, v5}, Lorg/xbill/DNS/Lookup;->processResponse(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/SetResponse;)V

    .line 460
    iget-boolean v6, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lorg/xbill/DNS/Lookup;->doneCurrent:Z

    if-eqz v6, :cond_2

    .line 502
    :cond_1
    :goto_0
    return-void

    .line 463
    :cond_2
    iget v6, p0, Lorg/xbill/DNS/Lookup;->type:I

    iget v7, p0, Lorg/xbill/DNS/Lookup;->dclass:I

    invoke-static {p1, v6, v7}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 464
    .local v2, "question":Lorg/xbill/DNS/Record;
    invoke-static {v2}, Lorg/xbill/DNS/Message;->newQuery(Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/Message;

    move-result-object v1

    .line 465
    .local v1, "query":Lorg/xbill/DNS/Message;
    const/4 v4, 0x0

    .line 467
    .local v4, "response":Lorg/xbill/DNS/Message;
    :try_start_0
    iget-object v6, p0, Lorg/xbill/DNS/Lookup;->resolver:Lorg/xbill/DNS/Resolver;

    invoke-interface {v6, v1}, Lorg/xbill/DNS/Resolver;->send(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 477
    invoke-virtual {v4}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v3

    .line 478
    .local v3, "rcode":I
    if-eqz v3, :cond_4

    const/4 v6, 0x3

    if-eq v3, v6, :cond_4

    .line 481
    iput-boolean v9, p0, Lorg/xbill/DNS/Lookup;->badresponse:Z

    .line 482
    invoke-static {v3}, Lorg/xbill/DNS/Rcode;->string(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/xbill/DNS/Lookup;->badresponse_error:Ljava/lang/String;

    goto :goto_0

    .line 469
    .end local v3    # "rcode":I
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Ljava/io/IOException;
    instance-of v6, v0, Ljava/io/InterruptedIOException;

    if-eqz v6, :cond_3

    .line 472
    iput-boolean v9, p0, Lorg/xbill/DNS/Lookup;->timedout:Z

    goto :goto_0

    .line 474
    :cond_3
    iput-boolean v9, p0, Lorg/xbill/DNS/Lookup;->networkerror:Z

    goto :goto_0

    .line 486
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "rcode":I
    :cond_4
    invoke-virtual {v1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v6

    invoke-virtual {v4}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/xbill/DNS/Record;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 488
    iput-boolean v9, p0, Lorg/xbill/DNS/Lookup;->badresponse:Z

    .line 489
    const-string v6, "response does not match query"

    iput-object v6, p0, Lorg/xbill/DNS/Lookup;->badresponse_error:Ljava/lang/String;

    goto :goto_0

    .line 493
    :cond_5
    iget-object v6, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    invoke-virtual {v6, v4}, Lorg/xbill/DNS/Cache;->addMessage(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/SetResponse;

    move-result-object v5

    .line 494
    if-nez v5, :cond_6

    .line 495
    iget-object v6, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    iget v7, p0, Lorg/xbill/DNS/Lookup;->type:I

    iget v8, p0, Lorg/xbill/DNS/Lookup;->credibility:I

    invoke-virtual {v6, p1, v7, v8}, Lorg/xbill/DNS/Cache;->lookupRecords(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;

    move-result-object v5

    .line 496
    :cond_6
    iget-boolean v6, p0, Lorg/xbill/DNS/Lookup;->verbose:Z

    if-eqz v6, :cond_7

    .line 497
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "queried "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 498
    iget v8, p0, Lorg/xbill/DNS/Lookup;->type:I

    invoke-static {v8}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 497
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 499
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 501
    :cond_7
    invoke-direct {p0, p1, v5}, Lorg/xbill/DNS/Lookup;->processResponse(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/SetResponse;)V

    goto/16 :goto_0
.end method

.method private processResponse(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/SetResponse;)V
    .locals 8
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "response"    # Lorg/xbill/DNS/SetResponse;

    .prologue
    const/4 v7, 0x1

    .line 407
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 408
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->answers()[Lorg/xbill/DNS/RRset;

    move-result-object v5

    .line 409
    .local v5, "rrsets":[Lorg/xbill/DNS/RRset;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v4, "l":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-lt v2, v6, :cond_1

    .line 419
    const/4 v6, 0x0

    iput v6, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 420
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lorg/xbill/DNS/Record;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/xbill/DNS/Record;

    iput-object v6, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    .line 421
    iput-boolean v7, p0, Lorg/xbill/DNS/Lookup;->done:Z

    .line 449
    .end local v2    # "i":I
    .end local v4    # "l":Ljava/util/List;
    .end local v5    # "rrsets":[Lorg/xbill/DNS/RRset;
    :cond_0
    :goto_1
    return-void

    .line 414
    .restart local v2    # "i":I
    .restart local v4    # "l":Ljava/util/List;
    .restart local v5    # "rrsets":[Lorg/xbill/DNS/RRset;
    :cond_1
    aget-object v6, v5, v2

    invoke-virtual {v6}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v3

    .line 415
    .local v3, "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 413
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 416
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 422
    .end local v2    # "i":I
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "l":Ljava/util/List;
    .end local v5    # "rrsets":[Lorg/xbill/DNS/RRset;
    :cond_3
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isNXDOMAIN()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 423
    iput-boolean v7, p0, Lorg/xbill/DNS/Lookup;->nxdomain:Z

    .line 424
    iput-boolean v7, p0, Lorg/xbill/DNS/Lookup;->doneCurrent:Z

    .line 425
    iget v6, p0, Lorg/xbill/DNS/Lookup;->iterations:I

    if-lez v6, :cond_0

    .line 426
    const/4 v6, 0x3

    iput v6, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 427
    iput-boolean v7, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_1

    .line 429
    :cond_4
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isNXRRSET()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 430
    const/4 v6, 0x4

    iput v6, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 431
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    .line 432
    iput-boolean v7, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_1

    .line 433
    :cond_5
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isCNAME()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 434
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->getCNAME()Lorg/xbill/DNS/CNAMERecord;

    move-result-object v0

    .line 435
    .local v0, "cname":Lorg/xbill/DNS/CNAMERecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/CNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v6

    invoke-direct {p0, v6, p1}, Lorg/xbill/DNS/Lookup;->follow(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    goto :goto_1

    .line 436
    .end local v0    # "cname":Lorg/xbill/DNS/CNAMERecord;
    :cond_6
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isDNAME()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 437
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->getDNAME()Lorg/xbill/DNS/DNAMERecord;

    move-result-object v1

    .line 439
    .local v1, "dname":Lorg/xbill/DNS/DNAMERecord;
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/Name;->fromDNAME(Lorg/xbill/DNS/DNAMERecord;)Lorg/xbill/DNS/Name;

    move-result-object v6

    invoke-direct {p0, v6, p1}, Lorg/xbill/DNS/Lookup;->follow(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 441
    :catch_0
    move-exception v6

    iput v7, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 442
    const-string v6, "Invalid DNAME target"

    iput-object v6, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 443
    iput-boolean v7, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_1

    .line 445
    .end local v1    # "dname":Lorg/xbill/DNS/DNAMERecord;
    :cond_7
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isDelegation()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 447
    iput-boolean v7, p0, Lorg/xbill/DNS/Lookup;->referral:Z

    goto :goto_1
.end method

.method public static declared-synchronized refreshDefault()V
    .locals 3

    .prologue
    .line 86
    const-class v1, Lorg/xbill/DNS/Lookup;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lorg/xbill/DNS/ExtendedResolver;

    invoke-direct {v0}, Lorg/xbill/DNS/ExtendedResolver;-><init>()V

    sput-object v0, Lorg/xbill/DNS/Lookup;->defaultResolver:Lorg/xbill/DNS/Resolver;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :try_start_1
    invoke-static {}, Lorg/xbill/DNS/ResolverConfig;->getCurrentConfig()Lorg/xbill/DNS/ResolverConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/ResolverConfig;->searchPath()[Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/Lookup;->defaultSearchPath:[Lorg/xbill/DNS/Name;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/xbill/DNS/Lookup;->defaultCaches:Ljava/util/Map;

    .line 93
    invoke-static {}, Lorg/xbill/DNS/ResolverConfig;->getCurrentConfig()Lorg/xbill/DNS/ResolverConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/ResolverConfig;->ndots()I

    move-result v0

    sput v0, Lorg/xbill/DNS/Lookup;->defaultNdots:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    monitor-exit v1

    return-void

    .line 89
    :catch_0
    move-exception v0

    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Failed to initialize resolver"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private final reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 184
    iput v1, p0, Lorg/xbill/DNS/Lookup;->iterations:I

    .line 185
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->foundAlias:Z

    .line 186
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->done:Z

    .line 187
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->doneCurrent:Z

    .line 188
    iput-object v2, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    .line 189
    iput-object v2, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    .line 190
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 191
    iput-object v2, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 192
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->nxdomain:Z

    .line 193
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->badresponse:Z

    .line 194
    iput-object v2, p0, Lorg/xbill/DNS/Lookup;->badresponse_error:Ljava/lang/String;

    .line 195
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->networkerror:Z

    .line 196
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->timedout:Z

    .line 197
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->nametoolong:Z

    .line 198
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->referral:Z

    .line 199
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->temporary_cache:Z

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    invoke-virtual {v0}, Lorg/xbill/DNS/Cache;->clearCache()V

    .line 201
    :cond_0
    return-void
.end method

.method private resolve(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V
    .locals 2
    .param p1, "current"    # Lorg/xbill/DNS/Name;
    .param p2, "suffix"    # Lorg/xbill/DNS/Name;

    .prologue
    .line 506
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->doneCurrent:Z

    .line 507
    const/4 v0, 0x0

    .line 508
    .local v0, "tname":Lorg/xbill/DNS/Name;
    if-nez p2, :cond_0

    .line 509
    move-object v0, p1

    .line 519
    :goto_0
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Lookup;->lookup(Lorg/xbill/DNS/Name;)V

    .line 520
    :goto_1
    return-void

    .line 512
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lorg/xbill/DNS/Name;->concatenate(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 515
    :catch_0
    move-exception v1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->nametoolong:Z

    goto :goto_1
.end method

.method public static declared-synchronized setDefaultCache(Lorg/xbill/DNS/Cache;I)V
    .locals 3
    .param p0, "cache"    # Lorg/xbill/DNS/Cache;
    .param p1, "dclass"    # I

    .prologue
    .line 143
    const-class v1, Lorg/xbill/DNS/Lookup;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 144
    sget-object v0, Lorg/xbill/DNS/Lookup;->defaultCaches:Ljava/util/Map;

    invoke-static {p1}, Lorg/xbill/DNS/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit v1

    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setDefaultResolver(Lorg/xbill/DNS/Resolver;)V
    .locals 2
    .param p0, "resolver"    # Lorg/xbill/DNS/Resolver;

    .prologue
    .line 115
    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lorg/xbill/DNS/Lookup;->defaultResolver:Lorg/xbill/DNS/Resolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit v0

    return-void

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setDefaultSearchPath([Ljava/lang/String;)V
    .locals 5
    .param p0, "domains"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .prologue
    .line 172
    const-class v3, Lorg/xbill/DNS/Lookup;

    monitor-enter v3

    if-nez p0, :cond_0

    .line 173
    const/4 v2, 0x0

    :try_start_0
    sput-object v2, Lorg/xbill/DNS/Lookup;->defaultSearchPath:[Lorg/xbill/DNS/Name;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :goto_0
    monitor-exit v3

    return-void

    .line 176
    :cond_0
    :try_start_1
    array-length v2, p0

    new-array v1, v2, [Lorg/xbill/DNS/Name;

    .line 177
    .local v1, "newdomains":[Lorg/xbill/DNS/Name;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_1

    .line 179
    sput-object v1, Lorg/xbill/DNS/Lookup;->defaultSearchPath:[Lorg/xbill/DNS/Name;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 172
    .end local v0    # "i":I
    .end local v1    # "newdomains":[Lorg/xbill/DNS/Name;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 178
    .restart local v0    # "i":I
    .restart local v1    # "newdomains":[Lorg/xbill/DNS/Name;
    :cond_1
    :try_start_2
    aget-object v2, p0, v0

    sget-object v4, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {v2, v4}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v2

    aput-object v2, v1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static declared-synchronized setDefaultSearchPath([Lorg/xbill/DNS/Name;)V
    .locals 2
    .param p0, "domains"    # [Lorg/xbill/DNS/Name;

    .prologue
    .line 162
    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lorg/xbill/DNS/Lookup;->defaultSearchPath:[Lorg/xbill/DNS/Name;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit v0

    return-void

    .line 162
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getAliases()[Lorg/xbill/DNS/Name;
    .locals 2

    .prologue
    .line 608
    invoke-direct {p0}, Lorg/xbill/DNS/Lookup;->checkDone()V

    .line 609
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    if-nez v0, :cond_0

    .line 610
    sget-object v0, Lorg/xbill/DNS/Lookup;->noAliases:[Lorg/xbill/DNS/Name;

    .line 611
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/xbill/DNS/Name;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xbill/DNS/Name;

    goto :goto_0
.end method

.method public getAnswers()[Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 595
    invoke-direct {p0}, Lorg/xbill/DNS/Lookup;->checkDone()V

    .line 596
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    return-object v0
.end method

.method public getErrorString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 634
    invoke-direct {p0}, Lorg/xbill/DNS/Lookup;->checkDone()V

    .line 635
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 642
    :goto_0
    return-object v0

    .line 637
    :cond_0
    iget v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    packed-switch v0, :pswitch_data_0

    .line 644
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unknown result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 638
    :pswitch_0
    const-string v0, "successful"

    goto :goto_0

    .line 639
    :pswitch_1
    const-string v0, "unrecoverable error"

    goto :goto_0

    .line 640
    :pswitch_2
    const-string v0, "try again"

    goto :goto_0

    .line 641
    :pswitch_3
    const-string v0, "host not found"

    goto :goto_0

    .line 642
    :pswitch_4
    const-string v0, "type not found"

    goto :goto_0

    .line 637
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 622
    invoke-direct {p0}, Lorg/xbill/DNS/Lookup;->checkDone()V

    .line 623
    iget v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    return v0
.end method

.method public run()[Lorg/xbill/DNS/Record;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 528
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-eqz v1, :cond_0

    .line 529
    invoke-direct {p0}, Lorg/xbill/DNS/Lookup;->reset()V

    .line 530
    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 531
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/Lookup;->resolve(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 548
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-nez v1, :cond_2

    .line 549
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->badresponse:Z

    if-eqz v1, :cond_8

    .line 550
    iput v4, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 551
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->badresponse_error:Ljava/lang/String;

    iput-object v1, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 552
    iput-boolean v3, p0, Lorg/xbill/DNS/Lookup;->done:Z

    .line 574
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    :goto_2
    return-object v1

    .line 532
    :cond_3
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->searchPath:[Lorg/xbill/DNS/Name;

    if-nez v1, :cond_4

    .line 533
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    sget-object v2, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/Lookup;->resolve(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    goto :goto_0

    .line 535
    :cond_4
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    sget v2, Lorg/xbill/DNS/Lookup;->defaultNdots:I

    if-le v1, v2, :cond_5

    .line 536
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    sget-object v2, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/Lookup;->resolve(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 537
    :cond_5
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-eqz v1, :cond_6

    .line 538
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    goto :goto_2

    .line 540
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->searchPath:[Lorg/xbill/DNS/Name;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 541
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    iget-object v2, p0, Lorg/xbill/DNS/Lookup;->searchPath:[Lorg/xbill/DNS/Name;

    aget-object v2, v2, v0

    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/Lookup;->resolve(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 542
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-eqz v1, :cond_7

    .line 543
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    goto :goto_2

    .line 544
    :cond_7
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->foundAlias:Z

    if-nez v1, :cond_1

    .line 540
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 553
    .end local v0    # "i":I
    :cond_8
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->timedout:Z

    if-eqz v1, :cond_9

    .line 554
    iput v4, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 555
    const-string v1, "timed out"

    iput-object v1, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 556
    iput-boolean v3, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_1

    .line 557
    :cond_9
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->networkerror:Z

    if-eqz v1, :cond_a

    .line 558
    iput v4, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 559
    const-string v1, "network error"

    iput-object v1, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 560
    iput-boolean v3, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_1

    .line 561
    :cond_a
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->nxdomain:Z

    if-eqz v1, :cond_b

    .line 562
    const/4 v1, 0x3

    iput v1, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 563
    iput-boolean v3, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_1

    .line 564
    :cond_b
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->referral:Z

    if-eqz v1, :cond_c

    .line 565
    iput v3, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 566
    const-string v1, "referral"

    iput-object v1, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 567
    iput-boolean v3, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_1

    .line 568
    :cond_c
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->nametoolong:Z

    if-eqz v1, :cond_2

    .line 569
    iput v3, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 570
    const-string v1, "name too long"

    iput-object v1, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 571
    iput-boolean v3, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto/16 :goto_1
.end method

.method public setCache(Lorg/xbill/DNS/Cache;)V
    .locals 2
    .param p1, "cache"    # Lorg/xbill/DNS/Cache;

    .prologue
    .line 349
    if-nez p1, :cond_0

    .line 350
    new-instance v0, Lorg/xbill/DNS/Cache;

    iget v1, p0, Lorg/xbill/DNS/Lookup;->dclass:I

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Cache;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->temporary_cache:Z

    .line 356
    :goto_0
    return-void

    .line 353
    :cond_0
    iput-object p1, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->temporary_cache:Z

    goto :goto_0
.end method

.method public setCredibility(I)V
    .locals 0
    .param p1, "credibility"    # I

    .prologue
    .line 381
    iput p1, p0, Lorg/xbill/DNS/Lookup;->credibility:I

    .line 382
    return-void
.end method

.method public setNdots(I)V
    .locals 3
    .param p1, "ndots"    # I

    .prologue
    .line 368
    if-gez p1, :cond_0

    .line 369
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal ndots value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 369
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    sput p1, Lorg/xbill/DNS/Lookup;->defaultNdots:I

    .line 372
    return-void
.end method

.method public setResolver(Lorg/xbill/DNS/Resolver;)V
    .locals 0
    .param p1, "resolver"    # Lorg/xbill/DNS/Resolver;

    .prologue
    .line 310
    iput-object p1, p0, Lorg/xbill/DNS/Lookup;->resolver:Lorg/xbill/DNS/Resolver;

    .line 311
    return-void
.end method

.method public setSearchPath([Ljava/lang/String;)V
    .locals 4
    .param p1, "domains"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .prologue
    .line 331
    if-nez p1, :cond_0

    .line 332
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/xbill/DNS/Lookup;->searchPath:[Lorg/xbill/DNS/Name;

    .line 339
    :goto_0
    return-void

    .line 335
    :cond_0
    array-length v2, p1

    new-array v1, v2, [Lorg/xbill/DNS/Name;

    .line 336
    .local v1, "newdomains":[Lorg/xbill/DNS/Name;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-lt v0, v2, :cond_1

    .line 338
    iput-object v1, p0, Lorg/xbill/DNS/Lookup;->searchPath:[Lorg/xbill/DNS/Name;

    goto :goto_0

    .line 337
    :cond_1
    aget-object v2, p1, v0

    sget-object v3, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {v2, v3}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v2

    aput-object v2, v1, v0

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setSearchPath([Lorg/xbill/DNS/Name;)V
    .locals 0
    .param p1, "domains"    # [Lorg/xbill/DNS/Name;

    .prologue
    .line 320
    iput-object p1, p0, Lorg/xbill/DNS/Lookup;->searchPath:[Lorg/xbill/DNS/Name;

    .line 321
    return-void
.end method
