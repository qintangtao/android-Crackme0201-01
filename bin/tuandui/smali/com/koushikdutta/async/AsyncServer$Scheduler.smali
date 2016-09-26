.class Lcom/koushikdutta/async/AsyncServer$Scheduler;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/AsyncServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Scheduler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/koushikdutta/async/AsyncServer$Scheduled;",
        ">;"
    }
.end annotation


# static fields
.field public static INSTANCE:Lcom/koushikdutta/async/AsyncServer$Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 208
    new-instance v0, Lcom/koushikdutta/async/AsyncServer$Scheduler;

    invoke-direct {v0}, Lcom/koushikdutta/async/AsyncServer$Scheduler;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/AsyncServer$Scheduler;->INSTANCE:Lcom/koushikdutta/async/AsyncServer$Scheduler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    return-void
.end method


# virtual methods
.method public compare(Lcom/koushikdutta/async/AsyncServer$Scheduled;Lcom/koushikdutta/async/AsyncServer$Scheduled;)I
    .locals 4
    .param p1, "s1"    # Lcom/koushikdutta/async/AsyncServer$Scheduled;
    .param p2, "s2"    # Lcom/koushikdutta/async/AsyncServer$Scheduled;

    .prologue
    .line 214
    iget-wide v0, p1, Lcom/koushikdutta/async/AsyncServer$Scheduled;->time:J

    iget-wide v2, p2, Lcom/koushikdutta/async/AsyncServer$Scheduled;->time:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 215
    const/4 v0, 0x0

    .line 218
    :goto_0
    return v0

    .line 216
    :cond_0
    iget-wide v0, p1, Lcom/koushikdutta/async/AsyncServer$Scheduled;->time:J

    iget-wide v2, p2, Lcom/koushikdutta/async/AsyncServer$Scheduled;->time:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 217
    const/4 v0, 0x1

    goto :goto_0

    .line 218
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/koushikdutta/async/AsyncServer$Scheduled;

    check-cast p2, Lcom/koushikdutta/async/AsyncServer$Scheduled;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/AsyncServer$Scheduler;->compare(Lcom/koushikdutta/async/AsyncServer$Scheduled;Lcom/koushikdutta/async/AsyncServer$Scheduled;)I

    move-result v0

    return v0
.end method
