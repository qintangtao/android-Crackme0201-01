.class public Lcom/lzx/iteam/util/PinyinConv;
.super Ljava/lang/Object;
.source "PinyinConv.java"


# static fields
.field private static final lc_FirstLetter:[Ljava/lang/String;

.field private static final li_SecPosValue:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 8
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lzx/iteam/util/PinyinConv;->li_SecPosValue:[I

    .line 11
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "a"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "b"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "c"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "d"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "e"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 12
    const-string v2, "f"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "g"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 13
    const-string v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "z"

    aput-object v2, v0, v1

    .line 11
    sput-object v0, Lcom/lzx/iteam/util/PinyinConv;->lc_FirstLetter:[Ljava/lang/String;

    .line 13
    return-void

    .line 8
    :array_0
    .array-data 4
        0x641
        0x665
        0x729
        0x81e
        0x8e2
        0x8fe
        0x981
        0xa22
        0xae3
        0xc22
        0xc8c
        0xd90
        0xe33
        0xe8a
        0xe92
        0xf12
        0xfbb
        0xff6
        0x1126
        0x11ce
        0x124c
        0x133d
        0x1481
        0x15d6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static conversionStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p2, "toCharsetName"    # Ljava/lang/String;

    .prologue
    .line 81
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local p0    # "str":Ljava/lang/String;
    .local v1, "str":Ljava/lang/String;
    move-object p0, v1

    .line 85
    .end local v1    # "str":Ljava/lang/String;
    .restart local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5b57\u7b26\u4e32\u7f16\u7801\u8f6c\u6362\u5f02\u5e38\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAllFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 22
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 23
    :cond_0
    const-string v0, ""

    .line 31
    :cond_1
    return-object v0

    .line 26
    :cond_2
    const-string v0, ""

    .line 27
    .local v0, "_str":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lzx/iteam/util/PinyinConv;->getFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "chinese"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 41
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 42
    :cond_0
    const-string p0, ""

    .line 68
    :cond_1
    :goto_0
    return-object p0

    .line 44
    :cond_2
    const-string v4, "GB2312"

    const-string v5, "ISO8859-1"

    invoke-static {p0, v4, v5}, Lcom/lzx/iteam/util/PinyinConv;->conversionStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_1

    .line 48
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 49
    .local v3, "li_SectorCode":I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 50
    .local v1, "li_PositionCode":I
    add-int/lit16 v3, v3, -0xa0

    .line 51
    add-int/lit16 v1, v1, -0xa0

    .line 52
    mul-int/lit8 v4, v3, 0x64

    add-int v2, v4, v1

    .line 53
    .local v2, "li_SecPosCode":I
    const/16 v4, 0x640

    if-le v2, v4, :cond_4

    const/16 v4, 0x15d6

    if-ge v2, v4, :cond_4

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v4, 0x17

    if-ge v0, v4, :cond_1

    .line 55
    sget-object v4, Lcom/lzx/iteam/util/PinyinConv;->li_SecPosValue:[I

    aget v4, v4, v0

    if-lt v2, v4, :cond_3

    .line 56
    sget-object v4, Lcom/lzx/iteam/util/PinyinConv;->li_SecPosValue:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    if-ge v2, v4, :cond_3

    .line 57
    sget-object v4, Lcom/lzx/iteam/util/PinyinConv;->lc_FirstLetter:[Ljava/lang/String;

    aget-object p0, v4, v0

    .line 58
    goto :goto_0

    .line 54
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 63
    .end local v0    # "i":I
    :cond_4
    const-string v4, "ISO8859-1"

    const-string v5, "GB2312"

    invoke-static {p0, v4, v5}, Lcom/lzx/iteam/util/PinyinConv;->conversionStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 64
    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
