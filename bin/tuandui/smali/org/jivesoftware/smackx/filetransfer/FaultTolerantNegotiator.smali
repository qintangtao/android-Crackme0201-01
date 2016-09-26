.class public Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;
.super Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
.source "FaultTolerantNegotiator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator$NegotiatorService;
    }
.end annotation


# instance fields
.field private connection:Lorg/jivesoftware/smack/Connection;

.field private primaryFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private primaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

.field private secondaryFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private secondaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;)V
    .locals 0
    .param p1, "connection"    # Lorg/jivesoftware/smack/Connection;
    .param p2, "primary"    # Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    .param p3, "secondary"    # Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;-><init>()V

    .line 53
    iput-object p2, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->primaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    .line 54
    iput-object p3, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->secondaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    .line 55
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    .line 56
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->determineNegotiator(Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    move-result-object v0

    return-object v0
.end method

.method private determineNegotiator(Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    .locals 1
    .param p1, "streamInitiation"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    .line 138
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->primaryFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/filter/PacketFilter;->accept(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->primaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->secondaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    goto :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public createIncomingStream(Lorg/jivesoftware/smackx/packet/StreamInitiation;)Ljava/io/InputStream;
    .locals 16
    .param p1, "initiation"    # Lorg/jivesoftware/smackx/packet/StreamInitiation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    const/4 v15, 0x1

    .line 77
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    .line 78
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getFrom()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getSessionID()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->getInitiationPacketFilter(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/filter/PacketFilter;

    move-result-object v13

    .line 77
    invoke-virtual {v12, v13}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v2

    .line 80
    .local v2, "collector":Lorg/jivesoftware/smack/PacketCollector;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->getNamespaces()[Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super {v0, v1, v13}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->createInitiationAccept(Lorg/jivesoftware/smackx/packet/StreamInitiation;[Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/StreamInitiation;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 82
    const/4 v12, 0x2

    invoke-static {v12}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v11

    .line 84
    .local v11, "threadPoolExecutor":Ljava/util/concurrent/ExecutorService;
    new-instance v9, Ljava/util/concurrent/ExecutorCompletionService;

    invoke-direct {v9, v11}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 85
    .local v9, "service":Ljava/util/concurrent/CompletionService;, "Ljava/util/concurrent/CompletionService<Ljava/io/InputStream;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v7, "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Ljava/io/InputStream;>;>;"
    const/4 v10, 0x0

    .line 87
    .local v10, "stream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 89
    .local v4, "exception":Lorg/jivesoftware/smack/XMPPException;
    :try_start_0
    new-instance v12, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator$NegotiatorService;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator$NegotiatorService;-><init>(Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;Lorg/jivesoftware/smack/PacketCollector;)V

    invoke-interface {v9, v12}, Ljava/util/concurrent/CompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v12, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator$NegotiatorService;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator$NegotiatorService;-><init>(Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;Lorg/jivesoftware/smack/PacketCollector;)V

    invoke-interface {v9, v12}, Ljava/util/concurrent/CompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    const/4 v8, 0x0

    .local v8, "i":I
    move-object v5, v4

    .line 93
    .end local v4    # "exception":Lorg/jivesoftware/smack/XMPPException;
    .local v5, "exception":Lorg/jivesoftware/smack/XMPPException;
    :cond_0
    :goto_0
    if-nez v10, :cond_1

    :try_start_1
    invoke-interface {v7}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v12

    if-lt v8, v12, :cond_2

    .line 119
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_4

    .line 122
    invoke-virtual {v2}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 123
    invoke-interface {v11}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 125
    if-nez v10, :cond_6

    .line 126
    if-eqz v5, :cond_5

    .line 127
    throw v5

    .line 96
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 97
    const-wide/16 v12, 0xa

    :try_start_2
    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v9, v12, v13, v14}, Ljava/util/concurrent/CompletionService;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v6

    .line 103
    .local v6, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/io/InputStream;>;"
    if-eqz v6, :cond_0

    .line 108
    :try_start_3
    invoke-interface {v6}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/io/InputStream;

    move-object v10, v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 113
    :catch_0
    move-exception v3

    .line 114
    .local v3, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_4
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v12

    invoke-direct {v4, v12}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v5    # "exception":Lorg/jivesoftware/smack/XMPPException;
    .restart local v4    # "exception":Lorg/jivesoftware/smack/XMPPException;
    move-object v5, v4

    .end local v4    # "exception":Lorg/jivesoftware/smack/XMPPException;
    .restart local v5    # "exception":Lorg/jivesoftware/smack/XMPPException;
    goto :goto_0

    .line 118
    .end local v3    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v5    # "exception":Lorg/jivesoftware/smack/XMPPException;
    .end local v6    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/io/InputStream;>;"
    .end local v8    # "i":I
    .restart local v4    # "exception":Lorg/jivesoftware/smack/XMPPException;
    :catchall_0
    move-exception v12

    .line 119
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_3

    .line 122
    invoke-virtual {v2}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 123
    invoke-interface {v11}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 124
    throw v12

    .line 119
    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Future;

    .line 120
    .restart local v6    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/io/InputStream;>;"
    invoke-interface {v6, v15}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_3

    .line 119
    .end local v4    # "exception":Lorg/jivesoftware/smack/XMPPException;
    .end local v6    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/io/InputStream;>;"
    .restart local v5    # "exception":Lorg/jivesoftware/smack/XMPPException;
    .restart local v8    # "i":I
    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Future;

    .line 120
    .restart local v6    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/io/InputStream;>;"
    invoke-interface {v6, v15}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    .line 130
    .end local v6    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/io/InputStream;>;"
    :cond_5
    new-instance v12, Lorg/jivesoftware/smack/XMPPException;

    const-string v13, "File transfer negotiation failed."

    invoke-direct {v12, v13}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 134
    :cond_6
    return-object v10

    .line 118
    :catchall_1
    move-exception v12

    move-object v4, v5

    .end local v5    # "exception":Lorg/jivesoftware/smack/XMPPException;
    .restart local v4    # "exception":Lorg/jivesoftware/smack/XMPPException;
    goto :goto_2

    .line 110
    .end local v4    # "exception":Lorg/jivesoftware/smack/XMPPException;
    .restart local v5    # "exception":Lorg/jivesoftware/smack/XMPPException;
    .restart local v6    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/io/InputStream;>;"
    :catch_1
    move-exception v12

    goto :goto_0

    .line 100
    .end local v6    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/io/InputStream;>;"
    :catch_2
    move-exception v12

    goto :goto_0
.end method

.method public createOutgoingStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 2
    .param p1, "streamID"    # Ljava/lang/String;
    .param p2, "initiator"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 145
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->primaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    invoke-virtual {v1, p1, p2, p3}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->createOutgoingStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 151
    .local v0, "stream":Ljava/io/OutputStream;
    :goto_0
    return-object v0

    .line 148
    .end local v0    # "stream":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->secondaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    invoke-virtual {v1, p1, p2, p3}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->createOutgoingStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    .restart local v0    # "stream":Ljava/io/OutputStream;
    goto :goto_0
.end method

.method public getInitiationPacketFilter(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/filter/PacketFilter;
    .locals 3
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "streamID"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->primaryFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->secondaryFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    if-nez v0, :cond_1

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->primaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    invoke-virtual {v0, p1, p2}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->getInitiationPacketFilter(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/filter/PacketFilter;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->primaryFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 61
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->secondaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    invoke-virtual {v0, p1, p2}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->getInitiationPacketFilter(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/filter/PacketFilter;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->secondaryFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 63
    :cond_1
    new-instance v0, Lorg/jivesoftware/smack/filter/OrFilter;

    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->primaryFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->secondaryFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/filter/OrFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    return-object v0
.end method

.method public getNamespaces()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 155
    iget-object v3, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->primaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->getNamespaces()[Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "primary":[Ljava/lang/String;
    iget-object v3, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->secondaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->getNamespaces()[Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "secondary":[Ljava/lang/String;
    array-length v3, v1

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v0, v3, [Ljava/lang/String;

    .line 159
    .local v0, "namespaces":[Ljava/lang/String;
    array-length v3, v1

    invoke-static {v1, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    array-length v3, v1

    array-length v4, v2

    invoke-static {v2, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    return-object v0
.end method

.method final initiateIncomingStream(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/packet/StreamInitiation;)Lorg/jivesoftware/smack/packet/Packet;
    .locals 2
    .param p1, "connection"    # Lorg/jivesoftware/smack/Connection;
    .param p2, "initiation"    # Lorg/jivesoftware/smackx/packet/StreamInitiation;

    .prologue
    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Initiation handled by createIncomingStream method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method negotiateIncomingStream(Lorg/jivesoftware/smack/packet/Packet;)Ljava/io/InputStream;
    .locals 2
    .param p1, "streamInitiation"    # Lorg/jivesoftware/smack/packet/Packet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Negotiation only handled by create incoming stream method."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
