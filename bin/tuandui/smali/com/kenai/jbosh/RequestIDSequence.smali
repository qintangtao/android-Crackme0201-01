.class final Lcom/kenai/jbosh/RequestIDSequence;
.super Ljava/lang/Object;
.source "RequestIDSequence.java"


# static fields
.field private static final INCREMENT_BITS:I = 0x20

.field private static final LOCK:Ljava/util/concurrent/locks/Lock;

.field private static final MASK:J = 0x1fffffffffffffL

.field private static final MAX_BITS:I = 0x35

.field private static final MAX_INITIAL:J = 0x1fffff00000000L

.field private static final MIN_INCREMENTS:J = 0x100000000L

.field private static final RAND:Ljava/security/SecureRandom;


# instance fields
.field private nextRequestID:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/kenai/jbosh/RequestIDSequence;->RAND:Ljava/security/SecureRandom;

    .line 65
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/kenai/jbosh/RequestIDSequence;->LOCK:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/RequestIDSequence;->nextRequestID:Ljava/util/concurrent/atomic/AtomicLong;

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p0}, Lcom/kenai/jbosh/RequestIDSequence;->generateInitialValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/kenai/jbosh/RequestIDSequence;->nextRequestID:Ljava/util/concurrent/atomic/AtomicLong;

    .line 81
    return-void
.end method

.method private generateInitialValue()J
    .locals 6

    .prologue
    .line 109
    sget-object v2, Lcom/kenai/jbosh/RequestIDSequence;->LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 112
    :cond_0
    :try_start_0
    sget-object v2, Lcom/kenai/jbosh/RequestIDSequence;->RAND:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    const-wide v4, 0x1fffffffffffffL

    and-long v0, v2, v4

    .line 113
    .local v0, "result":J
    const-wide v2, 0x1fffff00000000L

    .line 111
    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 115
    sget-object v2, Lcom/kenai/jbosh/RequestIDSequence;->LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 117
    return-wide v0

    .line 114
    .end local v0    # "result":J
    :catchall_0
    move-exception v2

    .line 115
    sget-object v3, Lcom/kenai/jbosh/RequestIDSequence;->LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 116
    throw v2
.end method


# virtual methods
.method public getNextRID()J
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kenai/jbosh/RequestIDSequence;->nextRequestID:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    return-wide v0
.end method
