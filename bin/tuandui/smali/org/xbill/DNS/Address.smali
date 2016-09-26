.class public final Lorg/xbill/DNS/Address;
.super Ljava/lang/Object;
.source "Address.java"


# static fields
.field public static final IPv4:I = 0x1

.field public static final IPv6:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addrFromRecord(Ljava/lang/String;Lorg/xbill/DNS/Record;)Ljava/net/InetAddress;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "r"    # Lorg/xbill/DNS/Record;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 265
    instance-of v1, p1, Lorg/xbill/DNS/ARecord;

    if-eqz v1, :cond_0

    .line 266
    check-cast p1, Lorg/xbill/DNS/ARecord;

    .end local p1    # "r":Lorg/xbill/DNS/Record;
    invoke-virtual {p1}, Lorg/xbill/DNS/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 270
    .local v0, "addr":Ljava/net/InetAddress;
    :goto_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-static {p0, v1}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 268
    .end local v0    # "addr":Ljava/net/InetAddress;
    .restart local p1    # "r":Lorg/xbill/DNS/Record;
    :cond_0
    check-cast p1, Lorg/xbill/DNS/AAAARecord;

    .end local p1    # "r":Lorg/xbill/DNS/Record;
    invoke-virtual {p1}, Lorg/xbill/DNS/AAAARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .restart local v0    # "addr":Ljava/net/InetAddress;
    goto :goto_0
.end method

.method public static addressLength(I)I
    .locals 2
    .param p0, "family"    # I

    .prologue
    .line 385
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 386
    const/4 v0, 0x4

    .line 388
    :goto_0
    return v0

    .line 387
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 388
    const/16 v0, 0x10

    goto :goto_0

    .line 389
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown address family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static familyOf(Ljava/net/InetAddress;)I
    .locals 2
    .param p0, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 371
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 372
    const/4 v0, 0x1

    .line 374
    :goto_0
    return v0

    .line 373
    :cond_0
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    .line 374
    const/4 v0, 0x2

    goto :goto_0

    .line 375
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown address family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 298
    :try_start_0
    invoke-static {p0}, Lorg/xbill/DNS/Address;->getByAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 299
    .local v0, "addr":Ljava/net/InetAddress;
    const/4 v4, 0x1

    new-array v1, v4, [Ljava/net/InetAddress;

    const/4 v4, 0x0

    aput-object v0, v1, v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_0
    return-object v1

    .line 301
    :catch_0
    move-exception v4

    invoke-static {p0, v5}, Lorg/xbill/DNS/Address;->lookupHostName(Ljava/lang/String;Z)[Lorg/xbill/DNS/Record;

    move-result-object v3

    .line 302
    .local v3, "records":[Lorg/xbill/DNS/Record;
    array-length v4, v3

    new-array v1, v4, [Ljava/net/InetAddress;

    .line 303
    .local v1, "addrs":[Ljava/net/InetAddress;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 304
    aget-object v4, v3, v2

    invoke-static {p0, v4}, Lorg/xbill/DNS/Address;->addrFromRecord(Ljava/lang/String;Lorg/xbill/DNS/Record;)Ljava/net/InetAddress;

    move-result-object v4

    aput-object v4, v1, v2

    .line 303
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getByAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 4
    .param p0, "addr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 319
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 320
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    .line 321
    invoke-static {p0, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v1

    .line 324
    :goto_0
    return-object v1

    .line 322
    :cond_0
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 323
    if-eqz v0, :cond_1

    .line 324
    invoke-static {p0, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_0

    .line 325
    :cond_1
    new-instance v1, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid address: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getByAddress(Ljava/lang/String;I)Ljava/net/InetAddress;
    .locals 4
    .param p0, "addr"    # Ljava/lang/String;
    .param p1, "family"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 339
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 340
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unknown address family"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_0
    invoke-static {p0, p1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 343
    .local v0, "bytes":[B
    if-eqz v0, :cond_1

    .line 344
    invoke-static {p0, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 345
    :cond_1
    new-instance v1, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid address: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 282
    :try_start_0
    invoke-static {p0}, Lorg/xbill/DNS/Address;->getByAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 285
    :goto_0
    return-object v1

    .line 284
    :catch_0
    move-exception v1

    invoke-static {p0, v2}, Lorg/xbill/DNS/Address;->lookupHostName(Ljava/lang/String;Z)[Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 285
    .local v0, "records":[Lorg/xbill/DNS/Record;
    aget-object v1, v0, v2

    invoke-static {p0, v1}, Lorg/xbill/DNS/Address;->addrFromRecord(Ljava/lang/String;Lorg/xbill/DNS/Record;)Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHostName(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 5
    .param p0, "addr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 356
    invoke-static {p0}, Lorg/xbill/DNS/ReverseMap;->fromAddress(Ljava/net/InetAddress;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 357
    .local v0, "name":Lorg/xbill/DNS/Name;
    new-instance v3, Lorg/xbill/DNS/Lookup;

    const/16 v4, 0xc

    invoke-direct {v3, v0, v4}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;I)V

    invoke-virtual {v3}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 358
    .local v2, "records":[Lorg/xbill/DNS/Record;
    if-nez v2, :cond_0

    .line 359
    new-instance v3, Ljava/net/UnknownHostException;

    const-string v4, "unknown address"

    invoke-direct {v3, v4}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 360
    :cond_0
    const/4 v3, 0x0

    aget-object v1, v2, v3

    check-cast v1, Lorg/xbill/DNS/PTRRecord;

    .line 361
    .local v1, "ptr":Lorg/xbill/DNS/PTRRecord;
    invoke-virtual {v1}, Lorg/xbill/DNS/PTRRecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static isDottedQuad(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 209
    invoke-static {p0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 210
    .local v0, "address":[B
    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static lookupHostName(Ljava/lang/String;Z)[Lorg/xbill/DNS/Record;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "all"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 237
    :try_start_0
    new-instance v2, Lorg/xbill/DNS/Lookup;

    const/4 v4, 0x1

    invoke-direct {v2, p0, v4}, Lorg/xbill/DNS/Lookup;-><init>(Ljava/lang/String;I)V

    .line 238
    .local v2, "lookup":Lorg/xbill/DNS/Lookup;
    invoke-virtual {v2}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 239
    .local v0, "a":[Lorg/xbill/DNS/Record;
    if-nez v0, :cond_2

    .line 240
    invoke-virtual {v2}, Lorg/xbill/DNS/Lookup;->getResult()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 241
    new-instance v4, Lorg/xbill/DNS/Lookup;

    const/16 v5, 0x1c

    invoke-direct {v4, p0, v5}, Lorg/xbill/DNS/Lookup;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 242
    .local v1, "aaaa":[Lorg/xbill/DNS/Record;
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 255
    .end local v0    # "a":[Lorg/xbill/DNS/Record;
    .end local v1    # "aaaa":[Lorg/xbill/DNS/Record;
    :cond_0
    :goto_0
    return-object v0

    .line 245
    .restart local v0    # "a":[Lorg/xbill/DNS/Record;
    :cond_1
    new-instance v4, Ljava/net/UnknownHostException;

    const-string v5, "unknown host"

    invoke-direct {v4, v5}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v0    # "a":[Lorg/xbill/DNS/Record;
    .end local v2    # "lookup":Lorg/xbill/DNS/Lookup;
    :catch_0
    move-exception v4

    new-instance v4, Ljava/net/UnknownHostException;

    const-string v5, "invalid name"

    invoke-direct {v4, v5}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 247
    .restart local v0    # "a":[Lorg/xbill/DNS/Record;
    .restart local v2    # "lookup":Lorg/xbill/DNS/Lookup;
    :cond_2
    if-eqz p1, :cond_0

    .line 249
    :try_start_1
    new-instance v4, Lorg/xbill/DNS/Lookup;

    const/16 v5, 0x1c

    invoke-direct {v4, p0, v5}, Lorg/xbill/DNS/Lookup;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 250
    .restart local v1    # "aaaa":[Lorg/xbill/DNS/Record;
    if-eqz v1, :cond_0

    .line 252
    array-length v4, v0

    array-length v5, v1

    add-int/2addr v4, v5

    new-array v3, v4, [Lorg/xbill/DNS/Record;

    .line 253
    .local v3, "merged":[Lorg/xbill/DNS/Record;
    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v0, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    const/4 v4, 0x0

    array-length v5, v0

    array-length v6, v1

    invoke-static {v1, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v3

    .line 255
    goto :goto_0
.end method

.method private static parseV4(Ljava/lang/String;)[B
    .locals 11
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x3

    const/4 v8, 0x0

    .line 27
    const/4 v9, 0x4

    new-array v7, v9, [B

    .line 29
    .local v7, "values":[B
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 31
    .local v5, "length":I
    const/4 v1, 0x0

    .line 32
    .local v1, "currentOctet":I
    const/4 v3, 0x0

    .line 33
    .local v3, "currentValue":I
    const/4 v6, 0x0

    .line 34
    .local v6, "numDigits":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v2, v1

    .end local v1    # "currentOctet":I
    .local v2, "currentOctet":I
    :goto_0
    if-lt v4, v5, :cond_0

    .line 63
    if-eq v2, v10, :cond_7

    move-object v7, v8

    .line 69
    .end local v7    # "values":[B
    :goto_1
    return-object v7

    .line 35
    .restart local v7    # "values":[B
    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 36
    .local v0, "c":C
    const/16 v9, 0x30

    if-lt v0, v9, :cond_3

    const/16 v9, 0x39

    if-gt v0, v9, :cond_3

    .line 38
    if-ne v6, v10, :cond_1

    move-object v7, v8

    .line 39
    goto :goto_1

    .line 41
    :cond_1
    if-lez v6, :cond_2

    if-nez v3, :cond_2

    move-object v7, v8

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 44
    mul-int/lit8 v3, v3, 0xa

    .line 45
    add-int/lit8 v9, v0, -0x30

    add-int/2addr v3, v9

    .line 47
    const/16 v9, 0xff

    if-le v3, v9, :cond_9

    move-object v7, v8

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    const/16 v9, 0x2e

    if-ne v0, v9, :cond_6

    .line 51
    if-ne v2, v10, :cond_4

    move-object v7, v8

    .line 52
    goto :goto_1

    .line 54
    :cond_4
    if-nez v6, :cond_5

    move-object v7, v8

    .line 55
    goto :goto_1

    .line 56
    :cond_5
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "currentOctet":I
    .restart local v1    # "currentOctet":I
    int-to-byte v9, v3

    aput-byte v9, v7, v2

    .line 57
    const/4 v3, 0x0

    .line 58
    const/4 v6, 0x0

    .line 34
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1    # "currentOctet":I
    .restart local v2    # "currentOctet":I
    goto :goto_0

    :cond_6
    move-object v7, v8

    .line 60
    goto :goto_1

    .line 66
    .end local v0    # "c":C
    :cond_7
    if-nez v6, :cond_8

    move-object v7, v8

    .line 67
    goto :goto_1

    .line 68
    :cond_8
    int-to-byte v8, v3

    aput-byte v8, v7, v2

    goto :goto_1

    .restart local v0    # "c":C
    :cond_9
    move v1, v2

    .end local v2    # "currentOctet":I
    .restart local v1    # "currentOctet":I
    goto :goto_2
.end method

.method private static parseV6(Ljava/lang/String;)[B
    .locals 15
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 74
    const/4 v9, -0x1

    .line 75
    .local v9, "range":I
    const/16 v13, 0x10

    new-array v1, v13, [B

    .line 77
    .local v1, "data":[B
    const-string v13, ":"

    const/4 v14, -0x1

    invoke-virtual {p0, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 79
    .local v10, "tokens":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 80
    .local v3, "first":I
    array-length v13, v10

    add-int/lit8 v8, v13, -0x1

    .line 82
    .local v8, "last":I
    const/4 v13, 0x0

    aget-object v13, v10, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_0

    .line 86
    sub-int v13, v8, v3

    if-lez v13, :cond_3

    const/4 v13, 0x1

    aget-object v13, v10, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_3

    .line 87
    add-int/lit8 v3, v3, 0x1

    .line 92
    :cond_0
    aget-object v13, v10, v8

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_1

    .line 96
    sub-int v13, v8, v3

    if-lez v13, :cond_4

    add-int/lit8 v13, v8, -0x1

    aget-object v13, v10, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_4

    .line 97
    add-int/lit8 v8, v8, -0x1

    .line 102
    :cond_1
    sub-int v13, v8, v3

    add-int/lit8 v13, v13, 0x1

    const/16 v14, 0x8

    if-le v13, v14, :cond_5

    .line 103
    const/4 v1, 0x0

    .line 156
    .end local v1    # "data":[B
    :cond_2
    :goto_0
    return-object v1

    .line 89
    .restart local v1    # "data":[B
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 99
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 106
    :cond_5
    move v4, v3

    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "j":I
    move v6, v5

    .end local v5    # "j":I
    .local v6, "j":I
    :goto_1
    if-le v4, v8, :cond_6

    move v5, v6

    .line 146
    .end local v6    # "j":I
    .restart local v5    # "j":I
    :goto_2
    const/16 v13, 0x10

    if-ge v5, v13, :cond_12

    if-gez v9, :cond_12

    .line 147
    const/4 v1, 0x0

    goto :goto_0

    .line 107
    .end local v5    # "j":I
    .restart local v6    # "j":I
    :cond_6
    aget-object v13, v10, v4

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_8

    .line 108
    if-ltz v9, :cond_7

    .line 109
    const/4 v1, 0x0

    goto :goto_0

    .line 110
    :cond_7
    move v9, v6

    move v5, v6

    .line 106
    .end local v6    # "j":I
    .restart local v5    # "j":I
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    .end local v5    # "j":I
    .restart local v6    # "j":I
    goto :goto_1

    .line 114
    :cond_8
    aget-object v13, v10, v4

    const/16 v14, 0x2e

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-ltz v13, :cond_d

    .line 116
    if-ge v4, v8, :cond_9

    .line 117
    const/4 v1, 0x0

    goto :goto_0

    .line 119
    :cond_9
    const/4 v13, 0x6

    if-le v4, v13, :cond_a

    .line 120
    const/4 v1, 0x0

    goto :goto_0

    .line 121
    :cond_a
    aget-object v13, v10, v4

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v11

    .line 122
    .local v11, "v4addr":[B
    if-nez v11, :cond_b

    .line 123
    const/4 v1, 0x0

    goto :goto_0

    .line 124
    :cond_b
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_4
    const/4 v13, 0x4

    if-lt v7, v13, :cond_c

    move v5, v6

    .line 126
    .end local v6    # "j":I
    .restart local v5    # "j":I
    goto :goto_2

    .line 125
    .end local v5    # "j":I
    .restart local v6    # "j":I
    :cond_c
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "j":I
    .restart local v5    # "j":I
    aget-byte v13, v11, v7

    aput-byte v13, v1, v6

    .line 124
    add-int/lit8 v7, v7, 0x1

    move v6, v5

    .end local v5    # "j":I
    .restart local v6    # "j":I
    goto :goto_4

    .line 130
    .end local v7    # "k":I
    .end local v11    # "v4addr":[B
    :cond_d
    const/4 v7, 0x0

    .restart local v7    # "k":I
    :goto_5
    :try_start_0
    aget-object v13, v10, v4

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lt v7, v13, :cond_f

    .line 135
    aget-object v13, v10, v4

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    .line 136
    .local v12, "x":I
    const v13, 0xffff

    if-gt v12, v13, :cond_e

    if-gez v12, :cond_11

    .line 137
    :cond_e
    const/4 v1, 0x0

    goto :goto_0

    .line 131
    .end local v12    # "x":I
    :cond_f
    aget-object v13, v10, v4

    invoke-virtual {v13, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 132
    .local v0, "c":C
    const/16 v13, 0x10

    invoke-static {v0, v13}, Ljava/lang/Character;->digit(CI)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-gez v13, :cond_10

    .line 133
    const/4 v1, 0x0

    goto :goto_0

    .line 130
    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 138
    .end local v0    # "c":C
    .restart local v12    # "x":I
    :cond_11
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "j":I
    .restart local v5    # "j":I
    ushr-int/lit8 v13, v12, 0x8

    int-to-byte v13, v13

    :try_start_1
    aput-byte v13, v1, v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "j":I
    .restart local v6    # "j":I
    and-int/lit16 v13, v12, 0xff

    int-to-byte v13, v13

    :try_start_2
    aput-byte v13, v1, v5
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move v5, v6

    .line 140
    .end local v6    # "j":I
    .restart local v5    # "j":I
    goto :goto_3

    .line 142
    .end local v5    # "j":I
    .end local v12    # "x":I
    .restart local v6    # "j":I
    :catch_0
    move-exception v13

    move v5, v6

    .end local v6    # "j":I
    .restart local v5    # "j":I
    :goto_6
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 149
    .end local v7    # "k":I
    :cond_12
    if-ltz v9, :cond_2

    .line 150
    rsub-int/lit8 v2, v5, 0x10

    .line 151
    .local v2, "empty":I
    add-int v13, v9, v2

    sub-int v14, v5, v9

    invoke-static {v1, v9, v1, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    move v4, v9

    :goto_7
    add-int v13, v9, v2

    if-ge v4, v13, :cond_2

    .line 153
    const/4 v13, 0x0

    aput-byte v13, v1, v4

    .line 152
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 142
    .end local v2    # "empty":I
    .restart local v7    # "k":I
    .restart local v12    # "x":I
    :catch_1
    move-exception v13

    goto :goto_6
.end method

.method public static toArray(Ljava/lang/String;)[I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 183
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/xbill/DNS/Address;->toArray(Ljava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method public static toArray(Ljava/lang/String;I)[I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "family"    # I

    .prologue
    .line 167
    invoke-static {p0, p1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 168
    .local v0, "byteArray":[B
    if-nez v0, :cond_1

    .line 169
    const/4 v2, 0x0

    .line 173
    :cond_0
    return-object v2

    .line 170
    :cond_1
    array-length v3, v0

    new-array v2, v3, [I

    .line 171
    .local v2, "intArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 172
    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v1

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static toByteArray(Ljava/lang/String;I)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "family"    # I

    .prologue
    .line 194
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 195
    invoke-static {p0}, Lorg/xbill/DNS/Address;->parseV4(Ljava/lang/String;)[B

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    .line 196
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 197
    invoke-static {p0}, Lorg/xbill/DNS/Address;->parseV6(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 199
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown address family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toDottedQuad([B)Ljava/lang/String;
    .locals 2
    .param p0, "addr"    # [B

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 221
    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toDottedQuad([I)Ljava/lang/String;
    .locals 2
    .param p0, "addr"    # [I

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v1, p0, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static truncate(Ljava/net/InetAddress;I)Ljava/net/InetAddress;
    .locals 8
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "maskLength"    # I

    .prologue
    .line 401
    invoke-static {p0}, Lorg/xbill/DNS/Address;->familyOf(Ljava/net/InetAddress;)I

    move-result v2

    .line 402
    .local v2, "family":I
    invoke-static {v2}, Lorg/xbill/DNS/Address;->addressLength(I)I

    move-result v6

    mul-int/lit8 v5, v6, 0x8

    .line 403
    .local v5, "maxMaskLength":I
    if-ltz p1, :cond_0

    if-le p1, v5, :cond_1

    .line 404
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "invalid mask length"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 405
    :cond_1
    if-ne p1, v5, :cond_2

    .line 416
    .end local p0    # "address":Ljava/net/InetAddress;
    :goto_0
    return-object p0

    .line 407
    .restart local p0    # "address":Ljava/net/InetAddress;
    :cond_2
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 408
    .local v1, "bytes":[B
    div-int/lit8 v6, p1, 0x8

    add-int/lit8 v3, v6, 0x1

    .local v3, "i":I
    :goto_1
    array-length v6, v1

    if-lt v3, v6, :cond_3

    .line 410
    rem-int/lit8 v4, p1, 0x8

    .line 411
    .local v4, "maskBits":I
    const/4 v0, 0x0

    .line 412
    .local v0, "bitmask":I
    const/4 v3, 0x0

    :goto_2
    if-lt v3, v4, :cond_4

    .line 414
    div-int/lit8 v6, p1, 0x8

    aget-byte v7, v1, v6

    and-int/2addr v7, v0

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .line 416
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 409
    .end local v0    # "bitmask":I
    .end local v4    # "maskBits":I
    :cond_3
    const/4 v6, 0x0

    aput-byte v6, v1, v3

    .line 408
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 413
    .restart local v0    # "bitmask":I
    .restart local v4    # "maskBits":I
    :cond_4
    const/4 v6, 0x1

    rsub-int/lit8 v7, v3, 0x7

    shl-int/2addr v6, v7

    or-int/2addr v0, v6

    .line 412
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 418
    :catch_0
    move-exception v6

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "invalid address"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
