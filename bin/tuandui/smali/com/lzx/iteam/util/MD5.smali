.class public Lcom/lzx/iteam/util/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# static fields
.field private static final strDigits:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 14
    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "f"

    aput-object v2, v0, v1

    .line 13
    sput-object v0, Lcom/lzx/iteam/util/MD5;->strDigits:[Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static GetMD5Code(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "strObj"    # Ljava/lang/String;

    .prologue
    .line 51
    const/4 v2, 0x0

    .line 53
    .local v2, "resultString":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v2    # "resultString":Ljava/lang/String;
    .local v3, "resultString":Ljava/lang/String;
    :try_start_1
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 56
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    invoke-static {v4}, Lcom/lzx/iteam/util/MD5;->byteToString([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 60
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local v3    # "resultString":Ljava/lang/String;
    .restart local v2    # "resultString":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 57
    .end local v0    # "ex":Ljava/security/NoSuchAlgorithmException;
    .end local v2    # "resultString":Ljava/lang/String;
    .restart local v3    # "resultString":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "resultString":Ljava/lang/String;
    .restart local v2    # "resultString":Ljava/lang/String;
    goto :goto_1
.end method

.method private static byteToArrayString(B)Ljava/lang/String;
    .locals 5
    .param p0, "bByte"    # B

    .prologue
    .line 21
    move v2, p0

    .line 23
    .local v2, "iRet":I
    if-gez v2, :cond_0

    .line 24
    add-int/lit16 v2, v2, 0x100

    .line 26
    :cond_0
    div-int/lit8 v0, v2, 0x10

    .line 27
    .local v0, "iD1":I
    rem-int/lit8 v1, v2, 0x10

    .line 28
    .local v1, "iD2":I
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/lzx/iteam/util/MD5;->strDigits:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/lzx/iteam/util/MD5;->strDigits:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static byteToNum(B)Ljava/lang/String;
    .locals 4
    .param p0, "bByte"    # B

    .prologue
    .line 33
    move v0, p0

    .line 34
    .local v0, "iRet":I
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "iRet1="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 35
    if-gez v0, :cond_0

    .line 36
    add-int/lit16 v0, v0, 0x100

    .line 38
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static byteToString([B)Ljava/lang/String;
    .locals 3
    .param p0, "bByte"    # [B

    .prologue
    .line 43
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 44
    .local v1, "sBuffer":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 45
    :cond_0
    aget-byte v2, p0, v0

    invoke-static {v2}, Lcom/lzx/iteam/util/MD5;->byteToArrayString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
