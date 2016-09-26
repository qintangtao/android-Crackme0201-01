.class public final Lcom/koushikdutta/async/http/libcore/Memory;
.super Ljava/lang/Object;
.source "Memory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static peekInt([BILjava/nio/ByteOrder;)I
    .locals 3
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 32
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v1, :cond_0

    .line 33
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    .line 34
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    .line 33
    or-int/2addr v1, v2

    .line 35
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    .line 33
    or-int/2addr v1, v2

    .line 36
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x0

    .line 33
    or-int/2addr v1, v2

    move p1, v0

    .line 38
    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    :goto_0
    return v1

    :cond_0
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    .line 39
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    .line 38
    or-int/2addr v1, v2

    .line 40
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    .line 38
    or-int/2addr v1, v2

    .line 41
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    .line 38
    or-int/2addr v1, v2

    move p1, v0

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    goto :goto_0
.end method

.method public static peekLong([BILjava/nio/ByteOrder;)J
    .locals 10
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .prologue
    const-wide v8, 0xffffffffL

    const/16 v6, 0x20

    .line 46
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v3, :cond_0

    .line 47
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "offset":I
    .local v2, "offset":I
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    .line 48
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    .line 47
    or-int/2addr v3, v4

    .line 49
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    .line 47
    or-int/2addr v3, v4

    .line 50
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x0

    .line 47
    or-int v0, v3, v4

    .line 51
    .local v0, "h":I
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    .line 52
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    .line 51
    or-int/2addr v3, v4

    .line 53
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    .line 51
    or-int/2addr v3, v4

    .line 54
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x0

    .line 51
    or-int v1, v3, v4

    .line 55
    .local v1, "l":I
    int-to-long v4, v0

    shl-long/2addr v4, v6

    int-to-long v6, v1

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    move p1, v2

    .line 65
    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    :goto_0
    return-wide v4

    .line 57
    .end local v0    # "h":I
    .end local v1    # "l":I
    :cond_0
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x0

    .line 58
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    .line 57
    or-int/2addr v3, v4

    .line 59
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    .line 57
    or-int/2addr v3, v4

    .line 60
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    .line 57
    or-int v1, v3, v4

    .line 61
    .restart local v1    # "l":I
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x0

    .line 62
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    .line 61
    or-int/2addr v3, v4

    .line 63
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    .line 61
    or-int/2addr v3, v4

    .line 64
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    .line 61
    or-int v0, v3, v4

    .line 65
    .restart local v0    # "h":I
    int-to-long v4, v0

    shl-long/2addr v4, v6

    int-to-long v6, v1

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    move p1, v2

    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    goto :goto_0
.end method

.method public static peekShort([BILjava/nio/ByteOrder;)S
    .locals 2
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 70
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_0

    .line 71
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 73
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_0
.end method

.method public static pokeInt([BIILjava/nio/ByteOrder;)V
    .locals 2
    .param p0, "dst"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # I
    .param p3, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 78
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v1, :cond_0

    .line 79
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 80
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 81
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 82
    shr-int/lit8 v1, p2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    move p1, v0

    .line 89
    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    :goto_0
    return-void

    .line 84
    :cond_0
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    shr-int/lit8 v1, p2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 85
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 86
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 87
    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    move p1, v0

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    goto :goto_0
.end method

.method public static pokeLong([BIJLjava/nio/ByteOrder;)V
    .locals 4
    .param p0, "dst"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # J
    .param p4, "order"    # Ljava/nio/ByteOrder;

    .prologue
    const/16 v3, 0x20

    .line 92
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p4, v2, :cond_0

    .line 93
    shr-long v2, p2, v3

    long-to-int v0, v2

    .line 94
    .local v0, "i":I
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .local v1, "offset":I
    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 95
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 96
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 97
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 98
    long-to-int v0, p2

    .line 99
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 100
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 101
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 102
    shr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    move p1, v1

    .line 115
    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    :goto_0
    return-void

    .line 104
    .end local v0    # "i":I
    :cond_0
    long-to-int v0, p2

    .line 105
    .restart local v0    # "i":I
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 106
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 107
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 108
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 109
    shr-long v2, p2, v3

    long-to-int v0, v2

    .line 110
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 111
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 112
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 113
    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    move p1, v1

    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    goto :goto_0
.end method

.method public static pokeShort([BISLjava/nio/ByteOrder;)V
    .locals 2
    .param p0, "dst"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # S
    .param p3, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 118
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v1, :cond_0

    .line 119
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 120
    shr-int/lit8 v1, p2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    move p1, v0

    .line 125
    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    :goto_0
    return-void

    .line 122
    :cond_0
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    shr-int/lit8 v1, p2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 123
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    move p1, v0

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    goto :goto_0
.end method
