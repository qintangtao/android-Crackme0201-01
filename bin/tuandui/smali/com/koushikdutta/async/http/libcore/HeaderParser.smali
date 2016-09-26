.class final Lcom/koushikdutta/async/http/libcore/HeaderParser;
.super Ljava/lang/Object;
.source "HeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/libcore/HeaderParser$CacheControlHandler;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseCacheControl(Ljava/lang/String;Lcom/koushikdutta/async/http/libcore/HeaderParser$CacheControlHandler;)V
    .locals 7
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "handler"    # Lcom/koushikdutta/async/http/libcore/HeaderParser$CacheControlHandler;

    .prologue
    .line 29
    const/4 v3, 0x0

    .line 30
    .local v3, "pos":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v3, v5, :cond_0

    .line 63
    return-void

    .line 31
    :cond_0
    move v4, v3

    .line 32
    .local v4, "tokenStart":I
    const-string v5, "=,"

    invoke-static {p0, v3, v5}, Lcom/koushikdutta/async/http/libcore/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 33
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "directive":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v3, v5, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_2

    .line 36
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 37
    const/4 v5, 0x0

    invoke-interface {p1, v0, v5}, Lcom/koushikdutta/async/http/libcore/HeaderParser$CacheControlHandler;->handle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 42
    invoke-static {p0, v3}, Lcom/koushikdutta/async/http/libcore/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    move-result v3

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-ne v5, v6, :cond_3

    .line 48
    add-int/lit8 v3, v3, 0x1

    .line 49
    move v2, v3

    .line 50
    .local v2, "parameterStart":I
    const-string v5, "\""

    invoke-static {p0, v3, v5}, Lcom/koushikdutta/async/http/libcore/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 51
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "parameter":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 61
    :goto_1
    invoke-interface {p1, v0, v1}, Lcom/koushikdutta/async/http/libcore/HeaderParser$CacheControlHandler;->handle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    .end local v1    # "parameter":Ljava/lang/String;
    .end local v2    # "parameterStart":I
    :cond_3
    move v2, v3

    .line 57
    .restart local v2    # "parameterStart":I
    const-string v5, ","

    invoke-static {p0, v3, v5}, Lcom/koushikdutta/async/http/libcore/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 58
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "parameter":Ljava/lang/String;
    goto :goto_1
.end method

.method public static parseSeconds(Ljava/lang/String;)I
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 99
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 100
    .local v0, "seconds":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 101
    const v2, 0x7fffffff

    .line 108
    .end local v0    # "seconds":J
    :goto_0
    return v2

    .line 102
    .restart local v0    # "seconds":J
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 103
    const/4 v2, 0x0

    goto :goto_0

    .line 105
    :cond_1
    long-to-int v2, v0

    goto :goto_0

    .line 108
    .end local v0    # "seconds":J
    :catch_0
    move-exception v2

    const/4 v2, -0x1

    goto :goto_0
.end method

.method private static skipUntil(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "characters"    # Ljava/lang/String;

    .prologue
    .line 71
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 76
    :cond_0
    return p1

    .line 72
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 71
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private static skipWhitespace(Ljava/lang/String;I)I
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I

    .prologue
    .line 84
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 90
    :cond_0
    return p1

    .line 85
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 86
    .local v0, "c":C
    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 84
    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method
