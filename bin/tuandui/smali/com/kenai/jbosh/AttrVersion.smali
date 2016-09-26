.class final Lcom/kenai/jbosh/AttrVersion;
.super Lcom/kenai/jbosh/AbstractAttr;
.source "AttrVersion.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kenai/jbosh/AbstractAttr",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Comparable;"
    }
.end annotation


# static fields
.field private static final DEFAULT:Lcom/kenai/jbosh/AttrVersion;


# instance fields
.field private final major:I

.field private final minor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    :try_start_0
    const-string v1, "1.8"

    invoke-static {v1}, Lcom/kenai/jbosh/AttrVersion;->createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrVersion;

    move-result-object v1

    sput-object v1, Lcom/kenai/jbosh/AttrVersion;->DEFAULT:Lcom/kenai/jbosh/AttrVersion;
    :try_end_0
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "boshx":Lcom/kenai/jbosh/BOSHException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/kenai/jbosh/AbstractAttr;-><init>(Ljava/lang/Comparable;)V

    .line 56
    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 57
    .local v0, "idx":I
    if-gtz v0, :cond_0

    .line 58
    new-instance v4, Lcom/kenai/jbosh/BOSHException;

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Illegal ver attribute value (not in major.minor form): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 59
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-direct {v4, v5}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 63
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "majorStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/kenai/jbosh/AttrVersion;->major:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    iget v4, p0, Lcom/kenai/jbosh/AttrVersion;->major:I

    if-gez v4, :cond_1

    .line 73
    new-instance v4, Lcom/kenai/jbosh/BOSHException;

    .line 74
    const-string v5, "Major version may not be < 0"

    .line 73
    invoke-direct {v4, v5}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 66
    :catch_0
    move-exception v3

    .line 67
    .local v3, "nfx":Ljava/lang/NumberFormatException;
    new-instance v4, Lcom/kenai/jbosh/BOSHException;

    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not parse ver attribute value (major ver): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 68
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-direct {v4, v5, v3}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 77
    .end local v3    # "nfx":Ljava/lang/NumberFormatException;
    :cond_1
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "minorStr":Ljava/lang/String;
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/kenai/jbosh/AttrVersion;->minor:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    iget v4, p0, Lcom/kenai/jbosh/AttrVersion;->minor:I

    if-gez v4, :cond_2

    .line 87
    new-instance v4, Lcom/kenai/jbosh/BOSHException;

    .line 88
    const-string v5, "Minor version may not be < 0"

    .line 87
    invoke-direct {v4, v5}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 80
    :catch_1
    move-exception v3

    .line 81
    .restart local v3    # "nfx":Ljava/lang/NumberFormatException;
    new-instance v4, Lcom/kenai/jbosh/BOSHException;

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not parse ver attribute value (minor ver): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 82
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 81
    invoke-direct {v4, v5, v3}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 90
    .end local v3    # "nfx":Ljava/lang/NumberFormatException;
    :cond_2
    return-void
.end method

.method static createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrVersion;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 111
    if-nez p0, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/kenai/jbosh/AttrVersion;

    invoke-direct {v0, p0}, Lcom/kenai/jbosh/AttrVersion;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static getSupportedVersion()Lcom/kenai/jbosh/AttrVersion;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/kenai/jbosh/AttrVersion;->DEFAULT:Lcom/kenai/jbosh/AttrVersion;

    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 6
    .param p1, "otherObj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 147
    instance-of v4, p1, Lcom/kenai/jbosh/AttrVersion;

    if-eqz v4, :cond_4

    move-object v0, p1

    .line 148
    check-cast v0, Lcom/kenai/jbosh/AttrVersion;

    .line 149
    .local v0, "other":Lcom/kenai/jbosh/AttrVersion;
    iget v4, p0, Lcom/kenai/jbosh/AttrVersion;->major:I

    iget v5, v0, Lcom/kenai/jbosh/AttrVersion;->major:I

    if-ge v4, v5, :cond_1

    .line 161
    .end local v0    # "other":Lcom/kenai/jbosh/AttrVersion;
    :cond_0
    :goto_0
    return v1

    .line 151
    .restart local v0    # "other":Lcom/kenai/jbosh/AttrVersion;
    :cond_1
    iget v4, p0, Lcom/kenai/jbosh/AttrVersion;->major:I

    iget v5, v0, Lcom/kenai/jbosh/AttrVersion;->major:I

    if-le v4, v5, :cond_2

    move v1, v2

    .line 152
    goto :goto_0

    .line 153
    :cond_2
    iget v4, p0, Lcom/kenai/jbosh/AttrVersion;->minor:I

    iget v5, v0, Lcom/kenai/jbosh/AttrVersion;->minor:I

    if-lt v4, v5, :cond_0

    .line 155
    iget v1, p0, Lcom/kenai/jbosh/AttrVersion;->minor:I

    iget v4, v0, Lcom/kenai/jbosh/AttrVersion;->minor:I

    if-le v1, v4, :cond_3

    move v1, v2

    .line 156
    goto :goto_0

    :cond_3
    move v1, v3

    .line 158
    goto :goto_0

    .end local v0    # "other":Lcom/kenai/jbosh/AttrVersion;
    :cond_4
    move v1, v3

    .line 161
    goto :goto_0
.end method

.method getMajor()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/kenai/jbosh/AttrVersion;->major:I

    return v0
.end method

.method getMinor()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/kenai/jbosh/AttrVersion;->minor:I

    return v0
.end method
