.class final Lcom/kenai/jbosh/AttrMaxPause;
.super Lcom/kenai/jbosh/AbstractIntegerAttr;
.source "AttrMaxPause.java"


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/kenai/jbosh/AbstractIntegerAttr;-><init>(Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kenai/jbosh/AttrMaxPause;->checkMinValue(I)V

    .line 36
    return-void
.end method

.method static createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrMaxPause;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/kenai/jbosh/AttrMaxPause;

    invoke-direct {v0, p0}, Lcom/kenai/jbosh/AttrMaxPause;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getInMilliseconds()I
    .locals 4

    .prologue
    .line 61
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 62
    invoke-virtual {p0}, Lcom/kenai/jbosh/AttrMaxPause;->intValue()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 61
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
