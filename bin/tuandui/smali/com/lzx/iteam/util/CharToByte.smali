.class public Lcom/lzx/iteam/util/CharToByte;
.super Ljava/lang/Object;
.source "CharToByte.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToChars([B)[C
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 69
    array-length v5, p0

    div-int/lit8 v5, v5, 0x2

    new-array v4, v5, [C

    .line 70
    .local v4, "chars":[C
    const/4 v0, 0x0

    .local v0, "b":I
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_0
    array-length v5, p0

    if-lt v0, v5, :cond_0

    .line 75
    return-object v4

    .line 71
    :cond_0
    aget-byte v5, p0, v0

    and-int/lit16 v1, v5, 0xff

    .line 72
    .local v1, "b1":I
    add-int/lit8 v5, v0, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v2, v5, 0xff

    .line 73
    .local v2, "b2":I
    shl-int/lit8 v5, v1, 0x8

    add-int/2addr v5, v2

    int-to-char v5, v5

    aput-char v5, v4, v3

    .line 70
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static bytesToString([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    const/4 v5, 0x2

    .line 43
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 46
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 47
    :cond_0
    rem-int/lit8 v3, v0, 0x20

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    .line 48
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    :cond_1
    aget-byte v3, p0, v0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v5, :cond_2

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_3

    .line 53
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 54
    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static charsToBytes([C)[B
    .locals 3
    .param p0, "chars"    # [C

    .prologue
    .line 26
    array-length v2, p0

    new-array v0, v2, [B

    .line 28
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    .line 31
    return-object v0

    .line 29
    :cond_0
    aget-char v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
