.class public final Lcom/kenai/jbosh/BOSHClient;
.super Ljava/lang/Object;
.source "BOSHClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kenai/jbosh/BOSHClient$ExchangeInterceptor;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ASSERTIONS:Z

.field private static final DEFAULT_EMPTY_REQUEST_DELAY:I = 0x64

.field private static final DEFAULT_PAUSE_MARGIN:I = 0x1f4

.field private static final EMPTY_REQUEST_DELAY:I

.field private static final ERROR:Ljava/lang/String; = "error"

.field private static final INTERRUPTED:Ljava/lang/String; = "Interrupted"

.field private static final LOG:Ljava/util/logging/Logger;

.field private static final NULL_LISTENER:Ljava/lang/String; = "Listener may not b enull"

.field private static final PAUSE_MARGIN:I

.field private static final TERMINATE:Ljava/lang/String; = "terminate"

.field private static final UNHANDLED:Ljava/lang/String; = "Unhandled Exception"


# instance fields
.field private final cfg:Lcom/kenai/jbosh/BOSHClientConfig;

.field private cmParams:Lcom/kenai/jbosh/CMSessionParams;

.field private final connListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/kenai/jbosh/BOSHClientConnListener;",
            ">;"
        }
    .end annotation
.end field

.field private final drained:Ljava/util/concurrent/locks/Condition;

.field private emptyRequestFuture:Ljava/util/concurrent/ScheduledFuture;

.field private final emptyRequestRunnable:Ljava/lang/Runnable;

.field private final exchInterceptor:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/kenai/jbosh/BOSHClient$ExchangeInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private exchanges:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/kenai/jbosh/HTTPExchange;",
            ">;"
        }
    .end annotation
.end field

.field private final httpSender:Lcom/kenai/jbosh/HTTPSender;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final notFull:Ljava/util/concurrent/locks/Condition;

.field private pendingRequestAcks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kenai/jbosh/ComposableBody;",
            ">;"
        }
    .end annotation
.end field

.field private pendingResponseAcks:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final procRunnable:Ljava/lang/Runnable;

.field private procThread:Ljava/lang/Thread;

.field private final requestIDSeq:Lcom/kenai/jbosh/RequestIDSequence;

.field private final requestListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/kenai/jbosh/BOSHClientRequestListener;",
            ">;"
        }
    .end annotation
.end field

.field private responseAck:Ljava/lang/Long;

.field private final responseListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/kenai/jbosh/BOSHClientResponseListener;",
            ">;"
        }
    .end annotation
.end field

.field private final schedExec:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 97
    const-class v2, Lcom/kenai/jbosh/BOSHClient;

    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lcom/kenai/jbosh/BOSHClient;->$assertionsDisabled:Z

    .line 103
    const-class v2, Lcom/kenai/jbosh/BOSHClient;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sput-object v2, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    const-class v3, Lcom/kenai/jbosh/BOSHClient;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".emptyRequestDelay"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    const/16 v3, 0x64

    .line 139
    invoke-static {v2, v3}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/kenai/jbosh/BOSHClient;->EMPTY_REQUEST_DELAY:I

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    const-class v3, Lcom/kenai/jbosh/BOSHClient;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".pauseMargin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    const/16 v3, 0x1f4

    .line 154
    invoke-static {v2, v3}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/kenai/jbosh/BOSHClient;->PAUSE_MARGIN:I

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    const-class v3, Lcom/kenai/jbosh/BOSHClient;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".assertionsEnabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, "prop":Ljava/lang/String;
    const/4 v0, 0x0

    .line 336
    .local v0, "enabled":Z
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 337
    sget-boolean v2, Lcom/kenai/jbosh/BOSHClient;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    const/4 v0, 0x1

    if-nez v0, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 97
    .end local v0    # "enabled":Z
    .end local v1    # "prop":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 339
    .restart local v0    # "enabled":Z
    .restart local v1    # "prop":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 341
    :cond_2
    sput-boolean v0, Lcom/kenai/jbosh/BOSHClient;->ASSERTIONS:Z

    .line 342
    return-void
.end method

.method private constructor <init>(Lcom/kenai/jbosh/BOSHClientConfig;)V
    .locals 2
    .param p1, "sessCfg"    # Lcom/kenai/jbosh/BOSHClientConfig;

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->connListeners:Ljava/util/Set;

    .line 173
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->requestListeners:Ljava/util/Set;

    .line 179
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->responseListeners:Ljava/util/Set;

    .line 184
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 189
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 195
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->notFull:Ljava/util/concurrent/locks/Condition;

    .line 200
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->drained:Ljava/util/concurrent/locks/Condition;

    .line 210
    new-instance v0, Lcom/kenai/jbosh/BOSHClient$1;

    invoke-direct {v0, p0}, Lcom/kenai/jbosh/BOSHClient$1;-><init>(Lcom/kenai/jbosh/BOSHClient;)V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->procRunnable:Ljava/lang/Runnable;

    .line 222
    new-instance v0, Lcom/kenai/jbosh/BOSHClient$2;

    invoke-direct {v0, p0}, Lcom/kenai/jbosh/BOSHClient$2;-><init>(Lcom/kenai/jbosh/BOSHClient;)V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->emptyRequestRunnable:Ljava/lang/Runnable;

    .line 235
    new-instance v0, Lcom/kenai/jbosh/ApacheHTTPSender;

    invoke-direct {v0}, Lcom/kenai/jbosh/ApacheHTTPSender;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->httpSender:Lcom/kenai/jbosh/HTTPSender;

    .line 241
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->exchInterceptor:Ljava/util/concurrent/atomic/AtomicReference;

    .line 246
    new-instance v0, Lcom/kenai/jbosh/RequestIDSequence;

    invoke-direct {v0}, Lcom/kenai/jbosh/RequestIDSequence;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->requestIDSeq:Lcom/kenai/jbosh/RequestIDSequence;

    .line 252
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->schedExec:Ljava/util/concurrent/ScheduledExecutorService;

    .line 278
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    .line 284
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->pendingResponseAcks:Ljava/util/SortedSet;

    .line 290
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->responseAck:Ljava/lang/Long;

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->pendingRequestAcks:Ljava/util/List;

    .line 348
    iput-object p1, p0, Lcom/kenai/jbosh/BOSHClient;->cfg:Lcom/kenai/jbosh/BOSHClientConfig;

    .line 349
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->init()V

    .line 350
    return-void
.end method

.method static synthetic access$0(Lcom/kenai/jbosh/BOSHClient;)V
    .locals 0

    .prologue
    .line 946
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->processMessages()V

    return-void
.end method

.method static synthetic access$1(Lcom/kenai/jbosh/BOSHClient;)V
    .locals 0

    .prologue
    .line 1187
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->sendEmptyRequest()V

    return-void
.end method

.method private applyFrom(Lcom/kenai/jbosh/ComposableBody$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/kenai/jbosh/ComposableBody$Builder;

    .prologue
    .line 880
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertLocked()V

    .line 882
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->cfg:Lcom/kenai/jbosh/BOSHClientConfig;

    invoke-virtual {v1}, Lcom/kenai/jbosh/BOSHClientConfig;->getFrom()Ljava/lang/String;

    move-result-object v0

    .line 883
    .local v0, "from":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 884
    sget-object v1, Lcom/kenai/jbosh/Attributes;->FROM:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v1, v0}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    .line 886
    :cond_0
    return-void
.end method

.method private applyResponseAcknowledgement(Lcom/kenai/jbosh/ComposableBody$Builder;J)V
    .locals 4
    .param p1, "builder"    # Lcom/kenai/jbosh/ComposableBody$Builder;
    .param p2, "rid"    # J

    .prologue
    .line 925
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertLocked()V

    .line 927
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->responseAck:Ljava/lang/Long;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 939
    :cond_0
    :goto_0
    return-void

    .line 932
    :cond_1
    const-wide/16 v2, 0x1

    sub-long v2, p2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 933
    .local v0, "prevRID":Ljava/lang/Long;
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->responseAck:Ljava/lang/Long;

    invoke-virtual {v1, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 938
    sget-object v1, Lcom/kenai/jbosh/Attributes;->ACK:Lcom/kenai/jbosh/BodyQName;

    iget-object v2, p0, Lcom/kenai/jbosh/BOSHClient;->responseAck:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    goto :goto_0
.end method

.method private applyRoute(Lcom/kenai/jbosh/ComposableBody$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/kenai/jbosh/ComposableBody$Builder;

    .prologue
    .line 865
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertLocked()V

    .line 867
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->cfg:Lcom/kenai/jbosh/BOSHClientConfig;

    invoke-virtual {v1}, Lcom/kenai/jbosh/BOSHClientConfig;->getRoute()Ljava/lang/String;

    move-result-object v0

    .line 868
    .local v0, "route":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 869
    sget-object v1, Lcom/kenai/jbosh/Attributes;->ROUTE:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v1, v0}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    .line 871
    :cond_0
    return-void
.end method

.method private applySessionCreationRequest(JLcom/kenai/jbosh/ComposableBody;)Lcom/kenai/jbosh/ComposableBody;
    .locals 3
    .param p1, "rid"    # J
    .param p3, "orig"    # Lcom/kenai/jbosh/ComposableBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 839
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertLocked()V

    .line 841
    invoke-virtual {p3}, Lcom/kenai/jbosh/ComposableBody;->rebuild()Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v0

    .line 842
    .local v0, "builder":Lcom/kenai/jbosh/ComposableBody$Builder;
    sget-object v1, Lcom/kenai/jbosh/Attributes;->TO:Lcom/kenai/jbosh/BodyQName;

    iget-object v2, p0, Lcom/kenai/jbosh/BOSHClient;->cfg:Lcom/kenai/jbosh/BOSHClientConfig;

    invoke-virtual {v2}, Lcom/kenai/jbosh/BOSHClientConfig;->getTo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    .line 843
    sget-object v1, Lcom/kenai/jbosh/Attributes;->XML_LANG:Lcom/kenai/jbosh/BodyQName;

    iget-object v2, p0, Lcom/kenai/jbosh/BOSHClient;->cfg:Lcom/kenai/jbosh/BOSHClientConfig;

    invoke-virtual {v2}, Lcom/kenai/jbosh/BOSHClientConfig;->getLang()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    .line 844
    sget-object v1, Lcom/kenai/jbosh/Attributes;->VER:Lcom/kenai/jbosh/BodyQName;

    .line 845
    invoke-static {}, Lcom/kenai/jbosh/AttrVersion;->getSupportedVersion()Lcom/kenai/jbosh/AttrVersion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kenai/jbosh/AttrVersion;->toString()Ljava/lang/String;

    move-result-object v2

    .line 844
    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    .line 846
    sget-object v1, Lcom/kenai/jbosh/Attributes;->WAIT:Lcom/kenai/jbosh/BodyQName;

    const-string v2, "60"

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    .line 847
    sget-object v1, Lcom/kenai/jbosh/Attributes;->HOLD:Lcom/kenai/jbosh/BodyQName;

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    .line 848
    sget-object v1, Lcom/kenai/jbosh/Attributes;->RID:Lcom/kenai/jbosh/BodyQName;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    .line 849
    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->applyRoute(Lcom/kenai/jbosh/ComposableBody$Builder;)V

    .line 850
    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->applyFrom(Lcom/kenai/jbosh/ComposableBody$Builder;)V

    .line 851
    sget-object v1, Lcom/kenai/jbosh/Attributes;->ACK:Lcom/kenai/jbosh/BodyQName;

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    .line 854
    sget-object v1, Lcom/kenai/jbosh/Attributes;->SID:Lcom/kenai/jbosh/BodyQName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    .line 855
    invoke-virtual {v0}, Lcom/kenai/jbosh/ComposableBody$Builder;->build()Lcom/kenai/jbosh/ComposableBody;

    move-result-object v1

    return-object v1
.end method

.method private applySessionData(JLcom/kenai/jbosh/ComposableBody;)Lcom/kenai/jbosh/ComposableBody;
    .locals 3
    .param p1, "rid"    # J
    .param p3, "orig"    # Lcom/kenai/jbosh/ComposableBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 901
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertLocked()V

    .line 903
    invoke-virtual {p3}, Lcom/kenai/jbosh/ComposableBody;->rebuild()Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v0

    .line 904
    .local v0, "builder":Lcom/kenai/jbosh/ComposableBody$Builder;
    sget-object v1, Lcom/kenai/jbosh/Attributes;->SID:Lcom/kenai/jbosh/BodyQName;

    .line 905
    iget-object v2, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;

    invoke-virtual {v2}, Lcom/kenai/jbosh/CMSessionParams;->getSessionID()Lcom/kenai/jbosh/AttrSessionID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kenai/jbosh/AttrSessionID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 904
    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    .line 906
    sget-object v1, Lcom/kenai/jbosh/Attributes;->RID:Lcom/kenai/jbosh/BodyQName;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    .line 907
    invoke-direct {p0, v0, p1, p2}, Lcom/kenai/jbosh/BOSHClient;->applyResponseAcknowledgement(Lcom/kenai/jbosh/ComposableBody$Builder;J)V

    .line 908
    invoke-virtual {v0}, Lcom/kenai/jbosh/ComposableBody$Builder;->build()Lcom/kenai/jbosh/ComposableBody;

    move-result-object v1

    return-object v1
.end method

.method private assertLocked()V
    .locals 2

    .prologue
    .line 1202
    sget-boolean v0, Lcom/kenai/jbosh/BOSHClient;->ASSERTIONS:Z

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1204
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Lock is not held by current thread"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1208
    :cond_0
    return-void
.end method

.method private assertUnlocked()V
    .locals 2

    .prologue
    .line 1214
    sget-boolean v0, Lcom/kenai/jbosh/BOSHClient;->ASSERTIONS:Z

    if-eqz v0, :cond_0

    .line 1215
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1216
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Lock is held by current thread"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1220
    :cond_0
    return-void
.end method

.method private blockUntilSendable(Lcom/kenai/jbosh/AbstractBody;)V
    .locals 4
    .param p1, "msg"    # Lcom/kenai/jbosh/AbstractBody;

    .prologue
    .line 818
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertLocked()V

    .line 820
    :goto_0
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->isWorking()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/kenai/jbosh/BOSHClient;->isImmediatelySendable(Lcom/kenai/jbosh/AbstractBody;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 827
    :cond_0
    return-void

    .line 822
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 823
    :catch_0
    move-exception v0

    .line 824
    .local v0, "intx":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v3, "Interrupted"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private checkForTerminalBindingConditions(Lcom/kenai/jbosh/AbstractBody;I)V
    .locals 4
    .param p1, "body"    # Lcom/kenai/jbosh/AbstractBody;
    .param p2, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 1235
    invoke-direct {p0, p2, p1}, Lcom/kenai/jbosh/BOSHClient;->getTerminalBindingCondition(ILcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/TerminalBindingCondition;

    move-result-object v0

    .line 1236
    .local v0, "cond":Lcom/kenai/jbosh/TerminalBindingCondition;
    if-eqz v0, :cond_0

    .line 1237
    new-instance v1, Lcom/kenai/jbosh/BOSHException;

    .line 1238
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Terminal binding condition encountered: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1239
    invoke-virtual {v0}, Lcom/kenai/jbosh/TerminalBindingCondition;->getCondition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1240
    invoke-virtual {v0}, Lcom/kenai/jbosh/TerminalBindingCondition;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1238
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1237
    invoke-direct {v1, v2}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1242
    :cond_0
    return-void
.end method

.method private clearEmptyRequest()V
    .locals 2

    .prologue
    .line 1125
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertLocked()V

    .line 1127
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->emptyRequestFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->emptyRequestFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->emptyRequestFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 1131
    :cond_0
    return-void
.end method

.method public static create(Lcom/kenai/jbosh/BOSHClientConfig;)Lcom/kenai/jbosh/BOSHClient;
    .locals 2
    .param p0, "clientCfg"    # Lcom/kenai/jbosh/BOSHClientConfig;

    .prologue
    .line 363
    if-nez p0, :cond_0

    .line 364
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 365
    const-string v1, "Client configuration may not be null"

    .line 364
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_0
    new-instance v0, Lcom/kenai/jbosh/BOSHClient;

    invoke-direct {v0, p0}, Lcom/kenai/jbosh/BOSHClient;-><init>(Lcom/kenai/jbosh/BOSHClientConfig;)V

    return-object v0
.end method

.method private dispose(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 682
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertUnlocked()V

    .line 684
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 686
    :try_start_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->procThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 717
    :goto_0
    return-void

    .line 690
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->procThread:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 692
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 695
    if-nez p1, :cond_1

    .line 696
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->fireConnectionClosed()V

    .line 701
    :goto_1
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 703
    :try_start_2
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->clearEmptyRequest()V

    .line 704
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    .line 705
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;

    .line 706
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->pendingResponseAcks:Ljava/util/SortedSet;

    .line 707
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->pendingRequestAcks:Ljava/util/List;

    .line 708
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 709
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 710
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->drained:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 712
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 715
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->httpSender:Lcom/kenai/jbosh/HTTPSender;

    invoke-interface {v0}, Lcom/kenai/jbosh/HTTPSender;->destroy()V

    .line 716
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->schedExec:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_0

    .line 691
    :catchall_0
    move-exception v0

    .line 692
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 693
    throw v0

    .line 698
    :cond_1
    invoke-direct {p0, p1}, Lcom/kenai/jbosh/BOSHClient;->fireConnectionClosedOnError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 711
    :catchall_1
    move-exception v0

    .line 712
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 713
    throw v0
.end method

.method private fireConnectionClosed()V
    .locals 7

    .prologue
    .line 1496
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertUnlocked()V

    .line 1498
    const/4 v0, 0x0

    .line 1499
    .local v0, "event":Lcom/kenai/jbosh/BOSHClientConnEvent;
    iget-object v3, p0, Lcom/kenai/jbosh/BOSHClient;->connListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1509
    return-void

    .line 1499
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kenai/jbosh/BOSHClientConnListener;

    .line 1500
    .local v2, "listener":Lcom/kenai/jbosh/BOSHClientConnListener;
    if-nez v0, :cond_1

    .line 1501
    invoke-static {p0}, Lcom/kenai/jbosh/BOSHClientConnEvent;->createConnectionClosedEvent(Lcom/kenai/jbosh/BOSHClient;)Lcom/kenai/jbosh/BOSHClientConnEvent;

    move-result-object v0

    .line 1504
    :cond_1
    :try_start_0
    invoke-interface {v2, v0}, Lcom/kenai/jbosh/BOSHClientConnListener;->connectionEvent(Lcom/kenai/jbosh/BOSHClientConnEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1505
    :catch_0
    move-exception v1

    .line 1506
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v4, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "Unhandled Exception"

    invoke-virtual {v4, v5, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private fireConnectionClosedOnError(Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 1519
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertUnlocked()V

    .line 1521
    const/4 v0, 0x0

    .line 1522
    .local v0, "event":Lcom/kenai/jbosh/BOSHClientConnEvent;
    iget-object v3, p0, Lcom/kenai/jbosh/BOSHClient;->connListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1534
    return-void

    .line 1522
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kenai/jbosh/BOSHClientConnListener;

    .line 1523
    .local v2, "listener":Lcom/kenai/jbosh/BOSHClientConnListener;
    if-nez v0, :cond_1

    .line 1526
    iget-object v4, p0, Lcom/kenai/jbosh/BOSHClient;->pendingRequestAcks:Ljava/util/List;

    .line 1525
    invoke-static {p0, v4, p1}, Lcom/kenai/jbosh/BOSHClientConnEvent;->createConnectionClosedOnErrorEvent(Lcom/kenai/jbosh/BOSHClient;Ljava/util/List;Ljava/lang/Throwable;)Lcom/kenai/jbosh/BOSHClientConnEvent;

    move-result-object v0

    .line 1529
    :cond_1
    :try_start_0
    invoke-interface {v2, v0}, Lcom/kenai/jbosh/BOSHClientConnListener;->connectionEvent(Lcom/kenai/jbosh/BOSHClientConnEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1530
    :catch_0
    move-exception v1

    .line 1531
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v4, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "Unhandled Exception"

    invoke-virtual {v4, v5, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private fireConnectionEstablished()V
    .locals 8

    .prologue
    .line 1467
    iget-object v4, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    .line 1468
    .local v2, "hadLock":Z
    if-eqz v2, :cond_0

    .line 1469
    iget-object v4, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1472
    :cond_0
    const/4 v0, 0x0

    .line 1473
    .local v0, "event":Lcom/kenai/jbosh/BOSHClientConnEvent;
    :try_start_0
    iget-object v4, p0, Lcom/kenai/jbosh/BOSHClient;->connListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_2

    .line 1485
    if-eqz v2, :cond_1

    .line 1486
    iget-object v4, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1489
    :cond_1
    return-void

    .line 1473
    :cond_2
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kenai/jbosh/BOSHClientConnListener;

    .line 1474
    .local v3, "listener":Lcom/kenai/jbosh/BOSHClientConnListener;
    if-nez v0, :cond_3

    .line 1476
    invoke-static {p0}, Lcom/kenai/jbosh/BOSHClientConnEvent;->createConnectionEstablishedEvent(Lcom/kenai/jbosh/BOSHClient;)Lcom/kenai/jbosh/BOSHClientConnEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1479
    :cond_3
    :try_start_2
    invoke-interface {v3, v0}, Lcom/kenai/jbosh/BOSHClientConnListener;->connectionEvent(Lcom/kenai/jbosh/BOSHClientConnEvent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1480
    :catch_0
    move-exception v1

    .line 1481
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_3
    sget-object v5, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "Unhandled Exception"

    invoke-virtual {v5, v6, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1484
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v3    # "listener":Lcom/kenai/jbosh/BOSHClientConnListener;
    :catchall_0
    move-exception v4

    .line 1485
    if-eqz v2, :cond_4

    .line 1486
    iget-object v5, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1488
    :cond_4
    throw v4
.end method

.method private fireRequestSent(Lcom/kenai/jbosh/AbstractBody;)V
    .locals 7
    .param p1, "request"    # Lcom/kenai/jbosh/AbstractBody;

    .prologue
    .line 1424
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertUnlocked()V

    .line 1426
    const/4 v0, 0x0

    .line 1427
    .local v0, "event":Lcom/kenai/jbosh/BOSHMessageEvent;
    iget-object v3, p0, Lcom/kenai/jbosh/BOSHClient;->requestListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1437
    return-void

    .line 1427
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kenai/jbosh/BOSHClientRequestListener;

    .line 1428
    .local v2, "listener":Lcom/kenai/jbosh/BOSHClientRequestListener;
    if-nez v0, :cond_1

    .line 1429
    invoke-static {p0, p1}, Lcom/kenai/jbosh/BOSHMessageEvent;->createRequestSentEvent(Lcom/kenai/jbosh/BOSHClient;Lcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/BOSHMessageEvent;

    move-result-object v0

    .line 1432
    :cond_1
    :try_start_0
    invoke-interface {v2, v0}, Lcom/kenai/jbosh/BOSHClientRequestListener;->requestSent(Lcom/kenai/jbosh/BOSHMessageEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1433
    :catch_0
    move-exception v1

    .line 1434
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v4, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "Unhandled Exception"

    invoke-virtual {v4, v5, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private fireResponseReceived(Lcom/kenai/jbosh/AbstractBody;)V
    .locals 7
    .param p1, "response"    # Lcom/kenai/jbosh/AbstractBody;

    .prologue
    .line 1446
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertUnlocked()V

    .line 1448
    const/4 v0, 0x0

    .line 1449
    .local v0, "event":Lcom/kenai/jbosh/BOSHMessageEvent;
    iget-object v3, p0, Lcom/kenai/jbosh/BOSHClient;->responseListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1460
    return-void

    .line 1449
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kenai/jbosh/BOSHClientResponseListener;

    .line 1450
    .local v2, "listener":Lcom/kenai/jbosh/BOSHClientResponseListener;
    if-nez v0, :cond_1

    .line 1451
    invoke-static {p0, p1}, Lcom/kenai/jbosh/BOSHMessageEvent;->createResponseReceivedEvent(Lcom/kenai/jbosh/BOSHClient;Lcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/BOSHMessageEvent;

    move-result-object v0

    .line 1455
    :cond_1
    :try_start_0
    invoke-interface {v2, v0}, Lcom/kenai/jbosh/BOSHClientResponseListener;->responseReceived(Lcom/kenai/jbosh/BOSHMessageEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1456
    :catch_0
    move-exception v1

    .line 1457
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v4, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "Unhandled Exception"

    invoke-virtual {v4, v5, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getDefaultEmptyRequestDelay()J
    .locals 4

    .prologue
    .line 1140
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertLocked()V

    .line 1143
    iget-object v3, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;

    invoke-virtual {v3}, Lcom/kenai/jbosh/CMSessionParams;->getPollingInterval()Lcom/kenai/jbosh/AttrPolling;

    move-result-object v2

    .line 1145
    .local v2, "polling":Lcom/kenai/jbosh/AttrPolling;
    if-nez v2, :cond_0

    .line 1146
    sget v3, Lcom/kenai/jbosh/BOSHClient;->EMPTY_REQUEST_DELAY:I

    int-to-long v0, v3

    .line 1150
    .local v0, "delay":J
    :goto_0
    return-wide v0

    .line 1148
    .end local v0    # "delay":J
    :cond_0
    invoke-virtual {v2}, Lcom/kenai/jbosh/AttrPolling;->getInMilliseconds()I

    move-result v3

    int-to-long v0, v3

    .restart local v0    # "delay":J
    goto :goto_0
.end method

.method private getTerminalBindingCondition(ILcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/TerminalBindingCondition;
    .locals 2
    .param p1, "respCode"    # I
    .param p2, "respBody"    # Lcom/kenai/jbosh/AbstractBody;

    .prologue
    .line 755
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertLocked()V

    .line 757
    invoke-static {p2}, Lcom/kenai/jbosh/BOSHClient;->isTermination(Lcom/kenai/jbosh/AbstractBody;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 758
    sget-object v1, Lcom/kenai/jbosh/Attributes;->CONDITION:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p2, v1}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v0

    .line 759
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/kenai/jbosh/TerminalBindingCondition;->forString(Ljava/lang/String;)Lcom/kenai/jbosh/TerminalBindingCondition;

    move-result-object v1

    .line 765
    .end local v0    # "str":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 762
    :cond_0
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;

    invoke-virtual {v1}, Lcom/kenai/jbosh/CMSessionParams;->getVersion()Lcom/kenai/jbosh/AttrVersion;

    move-result-object v1

    if-nez v1, :cond_1

    .line 763
    invoke-static {p1}, Lcom/kenai/jbosh/TerminalBindingCondition;->forHTTPResponseCode(I)Lcom/kenai/jbosh/TerminalBindingCondition;

    move-result-object v1

    goto :goto_0

    .line 765
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 659
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertUnlocked()V

    .line 661
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 663
    :try_start_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->httpSender:Lcom/kenai/jbosh/HTTPSender;

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->cfg:Lcom/kenai/jbosh/BOSHClientConfig;

    invoke-interface {v0, v1}, Lcom/kenai/jbosh/HTTPSender;->init(Lcom/kenai/jbosh/BOSHClientConfig;)V

    .line 664
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->procRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->procThread:Ljava/lang/Thread;

    .line 665
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->procThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 666
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->procThread:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-class v2, Lcom/kenai/jbosh/BOSHClient;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 667
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 668
    const-string v2, "]: Receive thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 666
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->procThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 673
    return-void

    .line 670
    :catchall_0
    move-exception v0

    .line 671
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 672
    throw v0
.end method

.method private isImmediatelySendable(Lcom/kenai/jbosh/AbstractBody;)Z
    .locals 4
    .param p1, "msg"    # Lcom/kenai/jbosh/AbstractBody;

    .prologue
    const/4 v2, 0x1

    .line 777
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertLocked()V

    .line 779
    iget-object v3, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;

    if-nez v3, :cond_1

    .line 781
    iget-object v2, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    .line 797
    :cond_0
    :goto_0
    return v2

    .line 784
    :cond_1
    iget-object v3, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;

    invoke-virtual {v3}, Lcom/kenai/jbosh/CMSessionParams;->getRequests()Lcom/kenai/jbosh/AttrRequests;

    move-result-object v1

    .line 785
    .local v1, "requests":Lcom/kenai/jbosh/AttrRequests;
    if-eqz v1, :cond_0

    .line 788
    invoke-virtual {v1}, Lcom/kenai/jbosh/AttrRequests;->intValue()I

    move-result v0

    .line 789
    .local v0, "maxRequests":I
    iget-object v3, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    if-lt v3, v0, :cond_0

    .line 792
    iget-object v3, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    if-ne v3, v0, :cond_2

    .line 793
    invoke-static {p1}, Lcom/kenai/jbosh/BOSHClient;->isTermination(Lcom/kenai/jbosh/AbstractBody;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lcom/kenai/jbosh/BOSHClient;->isPause(Lcom/kenai/jbosh/AbstractBody;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 797
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isPause(Lcom/kenai/jbosh/AbstractBody;)Z
    .locals 1
    .param p0, "msg"    # Lcom/kenai/jbosh/AbstractBody;

    .prologue
    .line 728
    sget-object v0, Lcom/kenai/jbosh/Attributes;->PAUSE:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p0, v0}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isRecoverableBindingCondition(Lcom/kenai/jbosh/AbstractBody;)Z
    .locals 2
    .param p0, "resp"    # Lcom/kenai/jbosh/AbstractBody;

    .prologue
    .line 1253
    const-string v0, "error"

    sget-object v1, Lcom/kenai/jbosh/Attributes;->TYPE:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p0, v1}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isTermination(Lcom/kenai/jbosh/AbstractBody;)Z
    .locals 2
    .param p0, "msg"    # Lcom/kenai/jbosh/AbstractBody;

    .prologue
    .line 740
    const-string v0, "terminate"

    sget-object v1, Lcom/kenai/jbosh/Attributes;->TYPE:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p0, v1}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isWorking()Z
    .locals 1

    .prologue
    .line 806
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertLocked()V

    .line 808
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->procThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextExchange()Lcom/kenai/jbosh/HTTPExchange;
    .locals 7

    .prologue
    .line 992
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertUnlocked()V

    .line 994
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 995
    .local v3, "thread":Ljava/lang/Thread;
    const/4 v1, 0x0

    .line 996
    .local v1, "exch":Lcom/kenai/jbosh/HTTPExchange;
    iget-object v4, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 999
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/kenai/jbosh/BOSHClient;->procThread:Ljava/lang/Thread;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 1012
    :goto_0
    iget-object v4, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1014
    return-object v1

    .line 1002
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/kenai/jbosh/HTTPExchange;

    move-object v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1003
    if-nez v1, :cond_2

    .line 1005
    :try_start_2
    iget-object v4, p0, Lcom/kenai/jbosh/BOSHClient;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1010
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    goto :goto_0

    .line 1006
    :catch_0
    move-exception v2

    .line 1007
    .local v2, "intx":Ljava/lang/InterruptedException;
    :try_start_3
    sget-object v4, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v6, "Interrupted"

    invoke-virtual {v4, v5, v6, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1011
    .end local v2    # "intx":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    .line 1012
    iget-object v5, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1013
    throw v4
.end method

.method private processExchange(Lcom/kenai/jbosh/HTTPExchange;)V
    .locals 20
    .param p1, "exch"    # Lcom/kenai/jbosh/HTTPExchange;

    .prologue
    .line 1024
    invoke-direct/range {p0 .. p0}, Lcom/kenai/jbosh/BOSHClient;->assertUnlocked()V

    .line 1030
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/kenai/jbosh/HTTPExchange;->getHTTPResponse()Lcom/kenai/jbosh/HTTPResponse;

    move-result-object v12

    .line 1031
    .local v12, "resp":Lcom/kenai/jbosh/HTTPResponse;
    invoke-interface {v12}, Lcom/kenai/jbosh/HTTPResponse;->getBody()Lcom/kenai/jbosh/AbstractBody;

    move-result-object v4

    .line 1032
    .local v4, "body":Lcom/kenai/jbosh/AbstractBody;
    invoke-interface {v12}, Lcom/kenai/jbosh/HTTPResponse;->getHTTPStatus()I
    :try_end_0
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v13

    .line 1042
    .local v13, "respCode":I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/kenai/jbosh/BOSHClient;->fireResponseReceived(Lcom/kenai/jbosh/AbstractBody;)V

    .line 1045
    invoke-virtual/range {p1 .. p1}, Lcom/kenai/jbosh/HTTPExchange;->getRequest()Lcom/kenai/jbosh/AbstractBody;

    move-result-object v9

    .line 1047
    .local v9, "req":Lcom/kenai/jbosh/AbstractBody;
    const/4 v15, 0x0

    .line 1048
    .local v15, "toResend":Ljava/util/List;, "Ljava/util/List<Lcom/kenai/jbosh/HTTPExchange;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1051
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 1052
    invoke-static {v9, v4}, Lcom/kenai/jbosh/CMSessionParams;->fromSessionInit(Lcom/kenai/jbosh/AbstractBody;Lcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/CMSessionParams;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;

    .line 1055
    invoke-direct/range {p0 .. p0}, Lcom/kenai/jbosh/BOSHClient;->fireConnectionEstablished()V

    .line 1057
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;

    .line 1059
    .local v8, "params":Lcom/kenai/jbosh/CMSessionParams;
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/kenai/jbosh/BOSHClient;->checkForTerminalBindingConditions(Lcom/kenai/jbosh/AbstractBody;I)V

    .line 1060
    invoke-static {v4}, Lcom/kenai/jbosh/BOSHClient;->isTermination(Lcom/kenai/jbosh/AbstractBody;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1063
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/kenai/jbosh/BOSHClient;->dispose(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1100
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1102
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/kenai/jbosh/BOSHClient;->processPauseRequest(Lcom/kenai/jbosh/AbstractBody;)J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/kenai/jbosh/BOSHClient;->scheduleEmptyRequest(J)V

    .line 1104
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->notFull:Ljava/util/concurrent/locks/Condition;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1119
    .end local v4    # "body":Lcom/kenai/jbosh/AbstractBody;
    .end local v8    # "params":Lcom/kenai/jbosh/CMSessionParams;
    .end local v9    # "req":Lcom/kenai/jbosh/AbstractBody;
    .end local v12    # "resp":Lcom/kenai/jbosh/HTTPResponse;
    .end local v13    # "respCode":I
    .end local v15    # "toResend":Ljava/util/List;, "Ljava/util/List<Lcom/kenai/jbosh/HTTPExchange;>;"
    :cond_2
    :goto_0
    return-void

    .line 1033
    :catch_0
    move-exception v5

    .line 1034
    .local v5, "boshx":Lcom/kenai/jbosh/BOSHException;
    sget-object v17, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v18, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v19, "Could not obtain response"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1035
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/kenai/jbosh/BOSHClient;->dispose(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1037
    .end local v5    # "boshx":Lcom/kenai/jbosh/BOSHException;
    :catch_1
    move-exception v7

    .line 1038
    .local v7, "intx":Ljava/lang/InterruptedException;
    sget-object v17, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v18, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v19, "Interrupted"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1039
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/kenai/jbosh/BOSHClient;->dispose(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1105
    .end local v7    # "intx":Ljava/lang/InterruptedException;
    .restart local v4    # "body":Lcom/kenai/jbosh/AbstractBody;
    .restart local v8    # "params":Lcom/kenai/jbosh/CMSessionParams;
    .restart local v9    # "req":Lcom/kenai/jbosh/AbstractBody;
    .restart local v12    # "resp":Lcom/kenai/jbosh/HTTPResponse;
    .restart local v13    # "respCode":I
    .restart local v15    # "toResend":Ljava/util/List;, "Ljava/util/List<Lcom/kenai/jbosh/HTTPExchange;>;"
    :catchall_0
    move-exception v17

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1107
    throw v17

    .line 1067
    :cond_3
    :try_start_3
    invoke-static {v4}, Lcom/kenai/jbosh/BOSHClient;->isRecoverableBindingCondition(Lcom/kenai/jbosh/AbstractBody;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 1069
    if-nez v15, :cond_4

    .line 1070
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->size()I

    move-result v17

    invoke-direct/range {v16 .. v17}, Ljava/util/ArrayList;-><init>(I)V

    .end local v15    # "toResend":Ljava/util/List;, "Ljava/util/List<Lcom/kenai/jbosh/HTTPExchange;>;"
    .local v16, "toResend":Ljava/util/List;, "Ljava/util/List<Lcom/kenai/jbosh/HTTPExchange;>;"
    move-object/from16 v15, v16

    .line 1072
    .end local v16    # "toResend":Ljava/util/List;, "Ljava/util/List<Lcom/kenai/jbosh/HTTPExchange;>;"
    .restart local v15    # "toResend":Ljava/util/List;, "Ljava/util/List<Lcom/kenai/jbosh/HTTPExchange;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_8

    .line 1077
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z
    :try_end_3
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v18

    if-nez v18, :cond_a

    .line 1098
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1100
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1102
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/kenai/jbosh/BOSHClient;->processPauseRequest(Lcom/kenai/jbosh/AbstractBody;)J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/kenai/jbosh/BOSHClient;->scheduleEmptyRequest(J)V

    .line 1104
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->notFull:Ljava/util/concurrent/locks/Condition;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1111
    :cond_7
    if-eqz v15, :cond_2

    .line 1112
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kenai/jbosh/HTTPExchange;

    .line 1114
    .local v10, "resend":Lcom/kenai/jbosh/HTTPExchange;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->httpSender:Lcom/kenai/jbosh/HTTPSender;

    move-object/from16 v18, v0

    invoke-virtual {v10}, Lcom/kenai/jbosh/HTTPExchange;->getRequest()Lcom/kenai/jbosh/AbstractBody;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v8, v1}, Lcom/kenai/jbosh/HTTPSender;->send(Lcom/kenai/jbosh/CMSessionParams;Lcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/HTTPResponse;

    move-result-object v14

    .line 1115
    .local v14, "response":Lcom/kenai/jbosh/HTTPResponse;
    invoke-virtual {v10, v14}, Lcom/kenai/jbosh/HTTPExchange;->setHTTPResponse(Lcom/kenai/jbosh/HTTPResponse;)V

    .line 1116
    invoke-virtual {v10}, Lcom/kenai/jbosh/HTTPExchange;->getRequest()Lcom/kenai/jbosh/AbstractBody;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/kenai/jbosh/BOSHClient;->fireRequestSent(Lcom/kenai/jbosh/AbstractBody;)V

    goto :goto_4

    .line 1072
    .end local v10    # "resend":Lcom/kenai/jbosh/HTTPExchange;
    .end local v14    # "response":Lcom/kenai/jbosh/HTTPResponse;
    :cond_8
    :try_start_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kenai/jbosh/HTTPExchange;

    .line 1074
    .local v6, "exchange":Lcom/kenai/jbosh/HTTPExchange;
    new-instance v11, Lcom/kenai/jbosh/HTTPExchange;

    invoke-virtual {v6}, Lcom/kenai/jbosh/HTTPExchange;->getRequest()Lcom/kenai/jbosh/AbstractBody;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Lcom/kenai/jbosh/HTTPExchange;-><init>(Lcom/kenai/jbosh/AbstractBody;)V

    .line 1075
    .local v11, "resendExch":Lcom/kenai/jbosh/HTTPExchange;
    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1

    .line 1092
    .end local v6    # "exchange":Lcom/kenai/jbosh/HTTPExchange;
    .end local v8    # "params":Lcom/kenai/jbosh/CMSessionParams;
    .end local v11    # "resendExch":Lcom/kenai/jbosh/HTTPExchange;
    :catch_2
    move-exception v5

    .line 1093
    .restart local v5    # "boshx":Lcom/kenai/jbosh/BOSHException;
    :goto_5
    :try_start_6
    sget-object v17, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v18, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v19, "Could not process response"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1095
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/kenai/jbosh/BOSHClient;->dispose(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1100
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 1102
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/kenai/jbosh/BOSHClient;->processPauseRequest(Lcom/kenai/jbosh/AbstractBody;)J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/kenai/jbosh/BOSHClient;->scheduleEmptyRequest(J)V

    .line 1104
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->notFull:Ljava/util/concurrent/locks/Condition;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1077
    .end local v5    # "boshx":Lcom/kenai/jbosh/BOSHException;
    .restart local v8    # "params":Lcom/kenai/jbosh/CMSessionParams;
    :cond_a
    :try_start_8
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kenai/jbosh/HTTPExchange;

    .line 1078
    .restart local v6    # "exchange":Lcom/kenai/jbosh/HTTPExchange;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_2

    .line 1097
    .end local v6    # "exchange":Lcom/kenai/jbosh/HTTPExchange;
    .end local v8    # "params":Lcom/kenai/jbosh/CMSessionParams;
    :catchall_1
    move-exception v17

    .line 1098
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 1100
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Queue;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 1102
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/kenai/jbosh/BOSHClient;->processPauseRequest(Lcom/kenai/jbosh/AbstractBody;)J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/kenai/jbosh/BOSHClient;->scheduleEmptyRequest(J)V

    .line 1104
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->notFull:Ljava/util/concurrent/locks/Condition;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1109
    :cond_c
    throw v17

    .line 1082
    .restart local v8    # "params":Lcom/kenai/jbosh/CMSessionParams;
    :cond_d
    :try_start_a
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v4}, Lcom/kenai/jbosh/BOSHClient;->processRequestAcknowledgements(Lcom/kenai/jbosh/AbstractBody;Lcom/kenai/jbosh/AbstractBody;)V

    .line 1083
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/kenai/jbosh/BOSHClient;->processResponseAcknowledgementData(Lcom/kenai/jbosh/AbstractBody;)V

    .line 1085
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/kenai/jbosh/BOSHClient;->processResponseAcknowledgementReport(Lcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/HTTPExchange;

    move-result-object v11

    .line 1086
    .restart local v11    # "resendExch":Lcom/kenai/jbosh/HTTPExchange;
    if-eqz v11, :cond_5

    if-nez v15, :cond_5

    .line 1087
    new-instance v16, Ljava/util/ArrayList;

    const/16 v17, 0x1

    invoke-direct/range {v16 .. v17}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_a
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1088
    .end local v15    # "toResend":Ljava/util/List;, "Ljava/util/List<Lcom/kenai/jbosh/HTTPExchange;>;"
    .restart local v16    # "toResend":Ljava/util/List;, "Ljava/util/List<Lcom/kenai/jbosh/HTTPExchange;>;"
    :try_start_b
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-object/from16 v15, v16

    .line 1092
    .end local v16    # "toResend":Ljava/util/List;, "Ljava/util/List<Lcom/kenai/jbosh/HTTPExchange;>;"
    .restart local v15    # "toResend":Ljava/util/List;, "Ljava/util/List<Lcom/kenai/jbosh/HTTPExchange;>;"
    goto/16 :goto_3

    .line 1105
    .end local v8    # "params":Lcom/kenai/jbosh/CMSessionParams;
    .end local v11    # "resendExch":Lcom/kenai/jbosh/HTTPExchange;
    .restart local v5    # "boshx":Lcom/kenai/jbosh/BOSHException;
    :catchall_2
    move-exception v17

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1107
    throw v17

    .line 1105
    .end local v5    # "boshx":Lcom/kenai/jbosh/BOSHException;
    :catchall_3
    move-exception v17

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1107
    throw v17

    .line 1105
    .restart local v8    # "params":Lcom/kenai/jbosh/CMSessionParams;
    :catchall_4
    move-exception v17

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1107
    throw v17

    .line 1097
    .end local v15    # "toResend":Ljava/util/List;, "Ljava/util/List<Lcom/kenai/jbosh/HTTPExchange;>;"
    .restart local v11    # "resendExch":Lcom/kenai/jbosh/HTTPExchange;
    .restart local v16    # "toResend":Ljava/util/List;, "Ljava/util/List<Lcom/kenai/jbosh/HTTPExchange;>;"
    :catchall_5
    move-exception v17

    move-object/from16 v15, v16

    .end local v16    # "toResend":Ljava/util/List;, "Ljava/util/List<Lcom/kenai/jbosh/HTTPExchange;>;"
    .restart local v15    # "toResend":Ljava/util/List;, "Ljava/util/List<Lcom/kenai/jbosh/HTTPExchange;>;"
    goto/16 :goto_6

    .line 1092
    .end local v15    # "toResend":Ljava/util/List;, "Ljava/util/List<Lcom/kenai/jbosh/HTTPExchange;>;"
    .restart local v16    # "toResend":Ljava/util/List;, "Ljava/util/List<Lcom/kenai/jbosh/HTTPExchange;>;"
    :catch_3
    move-exception v5

    move-object/from16 v15, v16

    .end local v16    # "toResend":Ljava/util/List;, "Ljava/util/List<Lcom/kenai/jbosh/HTTPExchange;>;"
    .restart local v15    # "toResend":Ljava/util/List;, "Ljava/util/List<Lcom/kenai/jbosh/HTTPExchange;>;"
    goto/16 :goto_5
.end method

.method private processMessages()V
    .locals 8

    .prologue
    .line 947
    sget-object v3, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v5, "Processing thread starting"

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 951
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->nextExchange()Lcom/kenai/jbosh/HTTPExchange;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 952
    .local v0, "exch":Lcom/kenai/jbosh/HTTPExchange;
    if-nez v0, :cond_0

    .line 979
    sget-object v3, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v5, "Processing thread exiting"

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 982
    return-void

    .line 957
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/kenai/jbosh/BOSHClient;->exchInterceptor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kenai/jbosh/BOSHClient$ExchangeInterceptor;

    .line 958
    .local v1, "interceptor":Lcom/kenai/jbosh/BOSHClient$ExchangeInterceptor;
    if-eqz v1, :cond_2

    .line 959
    invoke-virtual {v1, v0}, Lcom/kenai/jbosh/BOSHClient$ExchangeInterceptor;->interceptExchange(Lcom/kenai/jbosh/HTTPExchange;)Lcom/kenai/jbosh/HTTPExchange;

    move-result-object v2

    .line 960
    .local v2, "newExch":Lcom/kenai/jbosh/HTTPExchange;
    if-nez v2, :cond_1

    .line 961
    sget-object v3, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Discarding exchange on request of test hook: RID="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 963
    invoke-virtual {v0}, Lcom/kenai/jbosh/HTTPExchange;->getRequest()Lcom/kenai/jbosh/AbstractBody;

    move-result-object v6

    .line 964
    sget-object v7, Lcom/kenai/jbosh/Attributes;->RID:Lcom/kenai/jbosh/BodyQName;

    .line 963
    invoke-virtual {v6, v7}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 961
    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 965
    iget-object v3, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 967
    :try_start_2
    iget-object v3, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    invoke-interface {v3, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 969
    :try_start_3
    iget-object v3, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 978
    .end local v0    # "exch":Lcom/kenai/jbosh/HTTPExchange;
    .end local v1    # "interceptor":Lcom/kenai/jbosh/BOSHClient$ExchangeInterceptor;
    .end local v2    # "newExch":Lcom/kenai/jbosh/HTTPExchange;
    :catchall_0
    move-exception v3

    .line 979
    sget-object v4, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v6, "Processing thread exiting"

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 980
    throw v3

    .line 968
    .restart local v0    # "exch":Lcom/kenai/jbosh/HTTPExchange;
    .restart local v1    # "interceptor":Lcom/kenai/jbosh/BOSHClient$ExchangeInterceptor;
    .restart local v2    # "newExch":Lcom/kenai/jbosh/HTTPExchange;
    :catchall_1
    move-exception v3

    .line 969
    :try_start_4
    iget-object v4, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 970
    throw v3

    .line 973
    :cond_1
    move-object v0, v2

    .line 976
    .end local v2    # "newExch":Lcom/kenai/jbosh/HTTPExchange;
    :cond_2
    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->processExchange(Lcom/kenai/jbosh/HTTPExchange;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private processPauseRequest(Lcom/kenai/jbosh/AbstractBody;)J
    .locals 7
    .param p1, "req"    # Lcom/kenai/jbosh/AbstractBody;

    .prologue
    .line 1267
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertLocked()V

    .line 1269
    iget-object v4, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;

    invoke-virtual {v4}, Lcom/kenai/jbosh/CMSessionParams;->getMaxPause()Lcom/kenai/jbosh/AttrMaxPause;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1272
    :try_start_0
    sget-object v4, Lcom/kenai/jbosh/Attributes;->PAUSE:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v4}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v4

    .line 1271
    invoke-static {v4}, Lcom/kenai/jbosh/AttrPause;->createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrPause;

    move-result-object v1

    .line 1273
    .local v1, "pause":Lcom/kenai/jbosh/AttrPause;
    if-eqz v1, :cond_1

    .line 1274
    invoke-virtual {v1}, Lcom/kenai/jbosh/AttrPause;->getInMilliseconds()I

    move-result v4

    sget v5, Lcom/kenai/jbosh/BOSHClient;->PAUSE_MARGIN:I

    sub-int/2addr v4, v5

    int-to-long v2, v4

    .line 1275
    .local v2, "delay":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 1276
    sget v4, Lcom/kenai/jbosh/BOSHClient;->EMPTY_REQUEST_DELAY:I
    :try_end_0
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v2, v4

    .line 1285
    .end local v1    # "pause":Lcom/kenai/jbosh/AttrPause;
    .end local v2    # "delay":J
    :cond_0
    :goto_0
    return-wide v2

    .line 1280
    :catch_0
    move-exception v0

    .line 1281
    .local v0, "boshx":Lcom/kenai/jbosh/BOSHException;
    sget-object v4, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v6, "Could not extract"

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1285
    .end local v0    # "boshx":Lcom/kenai/jbosh/BOSHException;
    :cond_1
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->getDefaultEmptyRequestDelay()J

    move-result-wide v2

    goto :goto_0
.end method

.method private processRequestAcknowledgements(Lcom/kenai/jbosh/AbstractBody;Lcom/kenai/jbosh/AbstractBody;)V
    .locals 8
    .param p1, "req"    # Lcom/kenai/jbosh/AbstractBody;
    .param p2, "resp"    # Lcom/kenai/jbosh/AbstractBody;

    .prologue
    .line 1299
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertLocked()V

    .line 1301
    iget-object v5, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;

    invoke-virtual {v5}, Lcom/kenai/jbosh/CMSessionParams;->isAckingRequests()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1333
    :cond_0
    return-void

    .line 1306
    :cond_1
    sget-object v5, Lcom/kenai/jbosh/Attributes;->REPORT:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p2, v5}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1311
    sget-object v5, Lcom/kenai/jbosh/Attributes;->ACK:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p2, v5}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v1

    .line 1313
    .local v1, "acked":Ljava/lang/String;
    if-nez v1, :cond_4

    .line 1315
    sget-object v5, Lcom/kenai/jbosh/Attributes;->RID:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v5}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1321
    .local v0, "ackUpTo":Ljava/lang/Long;
    :goto_0
    sget-object v5, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1322
    sget-object v5, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Removing pending acks up to: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 1324
    :cond_2
    iget-object v5, p0, Lcom/kenai/jbosh/BOSHClient;->pendingRequestAcks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1325
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/kenai/jbosh/ComposableBody;>;"
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1326
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kenai/jbosh/AbstractBody;

    .line 1328
    .local v3, "pending":Lcom/kenai/jbosh/AbstractBody;
    sget-object v5, Lcom/kenai/jbosh/Attributes;->RID:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {v3, v5}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v5

    .line 1327
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1329
    .local v4, "pendingRID":Ljava/lang/Long;
    invoke-virtual {v4, v0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v5

    if-gtz v5, :cond_3

    .line 1330
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1317
    .end local v0    # "ackUpTo":Ljava/lang/Long;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/kenai/jbosh/ComposableBody;>;"
    .end local v3    # "pending":Lcom/kenai/jbosh/AbstractBody;
    .end local v4    # "pendingRID":Ljava/lang/Long;
    :cond_4
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .restart local v0    # "ackUpTo":Ljava/lang/Long;
    goto :goto_0
.end method

.method private processResponseAcknowledgementData(Lcom/kenai/jbosh/AbstractBody;)V
    .locals 6
    .param p1, "req"    # Lcom/kenai/jbosh/AbstractBody;

    .prologue
    .line 1345
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertLocked()V

    .line 1347
    sget-object v2, Lcom/kenai/jbosh/Attributes;->RID:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v2}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1348
    .local v0, "rid":Ljava/lang/Long;
    iget-object v2, p0, Lcom/kenai/jbosh/BOSHClient;->responseAck:Ljava/lang/Long;

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1350
    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->responseAck:Ljava/lang/Long;

    .line 1361
    :cond_0
    return-void

    .line 1352
    :cond_1
    iget-object v2, p0, Lcom/kenai/jbosh/BOSHClient;->pendingResponseAcks:Ljava/util/SortedSet;

    invoke-interface {v2, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1354
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->responseAck:Ljava/lang/Long;

    .line 1355
    .local v1, "whileVal":Ljava/lang/Long;
    :goto_0
    iget-object v2, p0, Lcom/kenai/jbosh/BOSHClient;->pendingResponseAcks:Ljava/util/SortedSet;

    invoke-interface {v2}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1356
    iput-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->responseAck:Ljava/lang/Long;

    .line 1357
    iget-object v2, p0, Lcom/kenai/jbosh/BOSHClient;->pendingResponseAcks:Ljava/util/SortedSet;

    invoke-interface {v2, v1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 1358
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method private processResponseAcknowledgementReport(Lcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/HTTPExchange;
    .locals 11
    .param p1, "resp"    # Lcom/kenai/jbosh/AbstractBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 1377
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertLocked()V

    .line 1379
    sget-object v8, Lcom/kenai/jbosh/Attributes;->REPORT:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v8}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v5

    .line 1380
    .local v5, "reportStr":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 1382
    const/4 v0, 0x0

    .line 1414
    :goto_0
    return-object v0

    .line 1385
    :cond_0
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1386
    .local v4, "report":Ljava/lang/Long;
    sget-object v8, Lcom/kenai/jbosh/Attributes;->TIME:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v8}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1387
    .local v7, "time":Ljava/lang/Long;
    sget-object v8, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1388
    sget-object v8, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Received report of missing request (RID="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1389
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", time="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ms)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1388
    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 1393
    :cond_1
    iget-object v8, p0, Lcom/kenai/jbosh/BOSHClient;->pendingRequestAcks:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1394
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/kenai/jbosh/ComposableBody;>;"
    const/4 v6, 0x0

    .line 1395
    .local v6, "req":Lcom/kenai/jbosh/AbstractBody;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v6, :cond_4

    .line 1404
    :cond_3
    if-nez v6, :cond_5

    .line 1405
    new-instance v8, Lcom/kenai/jbosh/BOSHException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Report of missing message with RID \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1406
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1407
    const-string v10, "\' but local copy of that request was not found"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1405
    invoke-direct {v8, v9}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1396
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kenai/jbosh/AbstractBody;

    .line 1398
    .local v2, "pending":Lcom/kenai/jbosh/AbstractBody;
    sget-object v8, Lcom/kenai/jbosh/Attributes;->RID:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {v2, v8}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v8

    .line 1397
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1399
    .local v3, "pendingRID":Ljava/lang/Long;
    invoke-virtual {v4, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1400
    move-object v6, v2

    goto :goto_1

    .line 1411
    .end local v2    # "pending":Lcom/kenai/jbosh/AbstractBody;
    .end local v3    # "pendingRID":Ljava/lang/Long;
    :cond_5
    new-instance v0, Lcom/kenai/jbosh/HTTPExchange;

    invoke-direct {v0, v6}, Lcom/kenai/jbosh/HTTPExchange;-><init>(Lcom/kenai/jbosh/AbstractBody;)V

    .line 1412
    .local v0, "exch":Lcom/kenai/jbosh/HTTPExchange;
    iget-object v8, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    invoke-interface {v8, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1413
    iget-object v8, p0, Lcom/kenai/jbosh/BOSHClient;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    goto/16 :goto_0
.end method

.method private scheduleEmptyRequest(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    .line 1158
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertLocked()V

    .line 1159
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 1160
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1161
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Empty request delay must be >= 0 (was: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1160
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1164
    :cond_0
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->clearEmptyRequest()V

    .line 1165
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->isWorking()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1180
    :goto_0
    return-void

    .line 1170
    :cond_1
    sget-object v1, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1171
    sget-object v1, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Scheduling empty request in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1174
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->schedExec:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/kenai/jbosh/BOSHClient;->emptyRequestRunnable:Ljava/lang/Runnable;

    .line 1175
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1174
    invoke-interface {v1, v2, p1, p2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->emptyRequestFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1179
    :goto_1
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->drained:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    goto :goto_0

    .line 1176
    :catch_0
    move-exception v0

    .line 1177
    .local v0, "rex":Ljava/util/concurrent/RejectedExecutionException;
    sget-object v1, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v3, "Could not schedule empty request"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private sendEmptyRequest()V
    .locals 3

    .prologue
    .line 1188
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertUnlocked()V

    .line 1190
    sget-object v1, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Sending empty request"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 1192
    :try_start_0
    invoke-static {}, Lcom/kenai/jbosh/ComposableBody;->builder()Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kenai/jbosh/ComposableBody$Builder;->build()Lcom/kenai/jbosh/ComposableBody;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kenai/jbosh/BOSHClient;->send(Lcom/kenai/jbosh/ComposableBody;)V
    :try_end_0
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1196
    :goto_0
    return-void

    .line 1193
    :catch_0
    move-exception v0

    .line 1194
    .local v0, "boshx":Lcom/kenai/jbosh/BOSHException;
    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->dispose(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public addBOSHClientConnListener(Lcom/kenai/jbosh/BOSHClientConnListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/kenai/jbosh/BOSHClientConnListener;

    .prologue
    .line 387
    if-nez p1, :cond_0

    .line 388
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener may not b enull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->connListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 391
    return-void
.end method

.method public addBOSHClientRequestListener(Lcom/kenai/jbosh/BOSHClientRequestListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/kenai/jbosh/BOSHClientRequestListener;

    .prologue
    .line 413
    if-nez p1, :cond_0

    .line 414
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener may not b enull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->requestListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 417
    return-void
.end method

.method public addBOSHClientResponseListener(Lcom/kenai/jbosh/BOSHClientResponseListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/kenai/jbosh/BOSHClientResponseListener;

    .prologue
    .line 440
    if-nez p1, :cond_0

    .line 441
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener may not b enull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->responseListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 444
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 599
    new-instance v0, Lcom/kenai/jbosh/BOSHException;

    const-string v1, "Session explicitly closed by caller"

    invoke-direct {v0, v1}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->dispose(Ljava/lang/Throwable;)V

    .line 600
    return-void
.end method

.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 569
    invoke-static {}, Lcom/kenai/jbosh/ComposableBody;->builder()Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kenai/jbosh/ComposableBody$Builder;->build()Lcom/kenai/jbosh/ComposableBody;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->disconnect(Lcom/kenai/jbosh/ComposableBody;)V

    .line 570
    return-void
.end method

.method public disconnect(Lcom/kenai/jbosh/ComposableBody;)V
    .locals 3
    .param p1, "msg"    # Lcom/kenai/jbosh/ComposableBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 581
    if-nez p1, :cond_0

    .line 582
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 583
    const-string v2, "Message body may not be null"

    .line 582
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 586
    :cond_0
    invoke-virtual {p1}, Lcom/kenai/jbosh/ComposableBody;->rebuild()Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v0

    .line 587
    .local v0, "builder":Lcom/kenai/jbosh/ComposableBody$Builder;
    sget-object v1, Lcom/kenai/jbosh/Attributes;->TYPE:Lcom/kenai/jbosh/BodyQName;

    const-string v2, "terminate"

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    .line 588
    invoke-virtual {v0}, Lcom/kenai/jbosh/ComposableBody$Builder;->build()Lcom/kenai/jbosh/ComposableBody;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kenai/jbosh/BOSHClient;->send(Lcom/kenai/jbosh/ComposableBody;)V

    .line 589
    return-void
.end method

.method drain()V
    .locals 4

    .prologue
    .line 623
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 625
    :try_start_0
    sget-object v1, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Waiting while draining..."

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 626
    :goto_0
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->isWorking()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 627
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->emptyRequestFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    .line 628
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->emptyRequestFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 635
    :cond_0
    sget-object v1, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Drained"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 639
    return-void

    .line 630
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->drained:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, "intx":Ljava/lang/InterruptedException;
    :try_start_2
    sget-object v1, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v3, "Interrupted"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 636
    .end local v0    # "intx":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    .line 637
    iget-object v2, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 638
    throw v1
.end method

.method public getBOSHClientConfig()Lcom/kenai/jbosh/BOSHClientConfig;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->cfg:Lcom/kenai/jbosh/BOSHClientConfig;

    return-object v0
.end method

.method getCMSessionParams()Lcom/kenai/jbosh/CMSessionParams;
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 613
    :try_start_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 613
    return-object v0

    .line 614
    :catchall_0
    move-exception v0

    .line 615
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 616
    throw v0
.end method

.method public pause()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 537
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertUnlocked()V

    .line 538
    iget-object v3, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 539
    const/4 v1, 0x0

    .line 541
    .local v1, "maxPause":Lcom/kenai/jbosh/AttrMaxPause;
    :try_start_0
    iget-object v3, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 550
    iget-object v3, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 559
    :goto_0
    return v2

    .line 545
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;

    invoke-virtual {v3}, Lcom/kenai/jbosh/CMSessionParams;->getMaxPause()Lcom/kenai/jbosh/AttrMaxPause;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 546
    if-nez v1, :cond_1

    .line 550
    iget-object v3, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 549
    :catchall_0
    move-exception v2

    .line 550
    iget-object v3, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 551
    throw v2

    .line 550
    :cond_1
    iget-object v2, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 553
    :try_start_2
    invoke-static {}, Lcom/kenai/jbosh/ComposableBody;->builder()Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v2

    .line 554
    sget-object v3, Lcom/kenai/jbosh/Attributes;->PAUSE:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {v1}, Lcom/kenai/jbosh/AttrMaxPause;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v2

    .line 555
    invoke-virtual {v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->build()Lcom/kenai/jbosh/ComposableBody;

    move-result-object v2

    .line 553
    invoke-virtual {p0, v2}, Lcom/kenai/jbosh/BOSHClient;->send(Lcom/kenai/jbosh/ComposableBody;)V
    :try_end_2
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_2 .. :try_end_2} :catch_0

    .line 559
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, "boshx":Lcom/kenai/jbosh/BOSHException;
    sget-object v2, Lcom/kenai/jbosh/BOSHClient;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v4, "Could not send pause"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public removeBOSHClientConnListener(Lcom/kenai/jbosh/BOSHClientConnListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/kenai/jbosh/BOSHClientConnListener;

    .prologue
    .line 400
    if-nez p1, :cond_0

    .line 401
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener may not b enull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->connListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 404
    return-void
.end method

.method public removeBOSHClientRequestListener(Lcom/kenai/jbosh/BOSHClientRequestListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/kenai/jbosh/BOSHClientRequestListener;

    .prologue
    .line 427
    if-nez p1, :cond_0

    .line 428
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener may not b enull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->requestListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 431
    return-void
.end method

.method public removeBOSHClientResponseListener(Lcom/kenai/jbosh/BOSHClientResponseListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/kenai/jbosh/BOSHClientResponseListener;

    .prologue
    .line 454
    if-nez p1, :cond_0

    .line 455
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener may not b enull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->responseListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 458
    return-void
.end method

.method public send(Lcom/kenai/jbosh/ComposableBody;)V
    .locals 9
    .param p1, "body"    # Lcom/kenai/jbosh/ComposableBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->assertUnlocked()V

    .line 478
    if-nez p1, :cond_0

    .line 479
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 480
    const-string v8, "Message body may not be null"

    .line 479
    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 485
    :cond_0
    iget-object v5, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 487
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kenai/jbosh/BOSHClient;->blockUntilSendable(Lcom/kenai/jbosh/AbstractBody;)V

    .line 488
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->isWorking()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {p1}, Lcom/kenai/jbosh/BOSHClient;->isTermination(Lcom/kenai/jbosh/AbstractBody;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 489
    new-instance v5, Lcom/kenai/jbosh/BOSHException;

    .line 490
    const-string v8, "Cannot send message when session is closed"

    .line 489
    invoke-direct {v5, v8}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    :catchall_0
    move-exception v5

    .line 510
    iget-object v8, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 511
    throw v5

    .line 493
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/kenai/jbosh/BOSHClient;->requestIDSeq:Lcom/kenai/jbosh/RequestIDSequence;

    invoke-virtual {v5}, Lcom/kenai/jbosh/RequestIDSequence;->getNextRID()J

    move-result-wide v6

    .line 494
    .local v6, "rid":J
    move-object v3, p1

    .line 495
    .local v3, "request":Lcom/kenai/jbosh/ComposableBody;
    iget-object v2, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;

    .line 496
    .local v2, "params":Lcom/kenai/jbosh/CMSessionParams;
    if-nez v2, :cond_3

    iget-object v5, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 498
    invoke-direct {p0, v6, v7, p1}, Lcom/kenai/jbosh/BOSHClient;->applySessionCreationRequest(JLcom/kenai/jbosh/ComposableBody;)Lcom/kenai/jbosh/ComposableBody;

    move-result-object v3

    .line 505
    :cond_2
    :goto_0
    new-instance v0, Lcom/kenai/jbosh/HTTPExchange;

    invoke-direct {v0, v3}, Lcom/kenai/jbosh/HTTPExchange;-><init>(Lcom/kenai/jbosh/AbstractBody;)V

    .line 506
    .local v0, "exch":Lcom/kenai/jbosh/HTTPExchange;
    iget-object v5, p0, Lcom/kenai/jbosh/BOSHClient;->exchanges:Ljava/util/Queue;

    invoke-interface {v5, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 507
    iget-object v5, p0, Lcom/kenai/jbosh/BOSHClient;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 508
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->clearEmptyRequest()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    iget-object v5, p0, Lcom/kenai/jbosh/BOSHClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 512
    invoke-virtual {v0}, Lcom/kenai/jbosh/HTTPExchange;->getRequest()Lcom/kenai/jbosh/AbstractBody;

    move-result-object v1

    .line 513
    .local v1, "finalReq":Lcom/kenai/jbosh/AbstractBody;
    iget-object v5, p0, Lcom/kenai/jbosh/BOSHClient;->httpSender:Lcom/kenai/jbosh/HTTPSender;

    invoke-interface {v5, v2, v1}, Lcom/kenai/jbosh/HTTPSender;->send(Lcom/kenai/jbosh/CMSessionParams;Lcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/HTTPResponse;

    move-result-object v4

    .line 514
    .local v4, "resp":Lcom/kenai/jbosh/HTTPResponse;
    invoke-virtual {v0, v4}, Lcom/kenai/jbosh/HTTPExchange;->setHTTPResponse(Lcom/kenai/jbosh/HTTPResponse;)V

    .line 515
    invoke-direct {p0, v1}, Lcom/kenai/jbosh/BOSHClient;->fireRequestSent(Lcom/kenai/jbosh/AbstractBody;)V

    .line 516
    return-void

    .line 500
    .end local v0    # "exch":Lcom/kenai/jbosh/HTTPExchange;
    .end local v1    # "finalReq":Lcom/kenai/jbosh/AbstractBody;
    .end local v4    # "resp":Lcom/kenai/jbosh/HTTPResponse;
    :cond_3
    :try_start_2
    invoke-direct {p0, v6, v7, p1}, Lcom/kenai/jbosh/BOSHClient;->applySessionData(JLcom/kenai/jbosh/ComposableBody;)Lcom/kenai/jbosh/ComposableBody;

    move-result-object v3

    .line 501
    iget-object v5, p0, Lcom/kenai/jbosh/BOSHClient;->cmParams:Lcom/kenai/jbosh/CMSessionParams;

    invoke-virtual {v5}, Lcom/kenai/jbosh/CMSessionParams;->isAckingRequests()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 502
    iget-object v5, p0, Lcom/kenai/jbosh/BOSHClient;->pendingRequestAcks:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method setExchangeInterceptor(Lcom/kenai/jbosh/BOSHClient$ExchangeInterceptor;)V
    .locals 1
    .param p1, "interceptor"    # Lcom/kenai/jbosh/BOSHClient$ExchangeInterceptor;

    .prologue
    .line 647
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->exchInterceptor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 648
    return-void
.end method
