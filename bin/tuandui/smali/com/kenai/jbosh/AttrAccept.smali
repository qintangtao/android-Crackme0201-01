.class final Lcom/kenai/jbosh/AttrAccept;
.super Lcom/kenai/jbosh/AbstractAttr;
.source "AttrAccept.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kenai/jbosh/AbstractAttr",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final encodings:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/kenai/jbosh/AbstractAttr;-><init>(Ljava/lang/Comparable;)V

    .line 38
    const-string v0, "[\\s,]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/AttrAccept;->encodings:[Ljava/lang/String;

    .line 39
    return-void
.end method

.method static createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrAccept;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 51
    if-nez p0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/kenai/jbosh/AttrAccept;

    invoke-direct {v0, p0}, Lcom/kenai/jbosh/AttrAccept;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method isAccepted(Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v3, p0, Lcom/kenai/jbosh/AttrAccept;->encodings:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    .line 71
    :goto_1
    return v1

    .line 66
    :cond_0
    aget-object v0, v3, v2

    .line 67
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 68
    const/4 v1, 0x1

    goto :goto_1

    .line 66
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method