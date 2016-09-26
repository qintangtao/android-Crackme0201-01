.class public Lcom/lzx/iteam/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field public static final SAPCE_REGEX:Ljava/lang/String; = " "


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MD5hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 167
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 173
    .local v0, "diggy":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/util/CharToByte;->charsToBytes([C)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 175
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/util/CharToByte;->bytesToString([B)Ljava/lang/String;

    move-result-object v2

    .end local v0    # "diggy":Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 170
    const-string v2, ""

    goto :goto_0
.end method

.method public static analysisUrl(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 588
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 589
    .local v4, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, ""

    .line 590
    .local v2, "key":Ljava/lang/String;
    const-string v6, ""

    .line 591
    .local v6, "value":Ljava/lang/String;
    invoke-static {p0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 592
    const-string v7, "\\?"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v0, v7, v9

    .line 593
    .local v0, "content":Ljava/lang/String;
    const-string v7, "&"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 594
    .local v5, "temp":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v5

    if-lt v1, v7, :cond_1

    .line 607
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v5    # "temp":[Ljava/lang/String;
    :cond_0
    return-object v4

    .line 595
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v5    # "temp":[Ljava/lang/String;
    :cond_1
    aget-object v7, v5, v1

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 596
    .local v3, "keyANDvalue":[Ljava/lang/String;
    array-length v7, v3

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 597
    aget-object v2, v3, v10

    .line 598
    aget-object v6, v3, v9

    .line 599
    invoke-interface {v4, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 600
    :cond_3
    array-length v7, v3

    if-ne v7, v9, :cond_2

    .line 601
    aget-object v2, v3, v10

    .line 602
    const-string v6, ""

    .line 603
    invoke-interface {v4, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static arraylistToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 457
    .local p0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 458
    :cond_0
    const/4 v2, 0x0

    .line 468
    :goto_0
    return-object v2

    .line 461
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    .local v0, "resultStr":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 468
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 462
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 464
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    const-string v3, "&!&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static byteToHex(I)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # I

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Lcom/lzx/iteam/util/StringUtil;->byteToHex(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static byteToHex(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "b"    # I

    .prologue
    .line 203
    and-int/lit16 p1, p1, 0xff

    .line 204
    const-string v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    const-string v0, "0123456789ABCDEF"

    and-int/lit8 v1, p1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    return-object p0
.end method

.method public static compressByGzip(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 210
    const/4 v5, 0x0

    .line 211
    .local v5, "ret":Ljava/lang/String;
    const/4 v3, 0x0

    .line 212
    .local v3, "os":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 214
    .local v1, "gos":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    .end local v3    # "os":Ljava/io/ByteArrayOutputStream;
    .local v4, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 216
    .end local v1    # "gos":Ljava/util/zip/GZIPOutputStream;
    .local v2, "gos":Ljava/util/zip/GZIPOutputStream;
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 217
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 219
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v5

    .line 223
    if-eqz v2, :cond_0

    .line 225
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 231
    :cond_0
    :goto_0
    if-eqz v4, :cond_5

    .line 233
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v1, v2

    .end local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "gos":Ljava/util/zip/GZIPOutputStream;
    move-object v3, v4

    .line 240
    .end local v4    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_1
    :goto_1
    return-object v5

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v6, "compress"

    const-string v7, "IOException: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 223
    if-eqz v1, :cond_2

    .line 225
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 231
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    if-eqz v3, :cond_1

    .line 233
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 234
    :catch_1
    move-exception v0

    .line 235
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "compress"

    const-string v7, "os : "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 227
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "compress"

    const-string v7, "gos : "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 222
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 223
    :goto_4
    if-eqz v1, :cond_3

    .line 225
    :try_start_8
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 231
    :cond_3
    :goto_5
    if-eqz v3, :cond_4

    .line 233
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 238
    :cond_4
    :goto_6
    throw v6

    .line 226
    :catch_3
    move-exception v0

    .line 227
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "compress"

    const-string v8, "gos : "

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 234
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 235
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "compress"

    const-string v8, "os : "

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 226
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "gos":Ljava/util/zip/GZIPOutputStream;
    .end local v3    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_5
    move-exception v0

    .line 227
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "compress"

    const-string v7, "gos : "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 234
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 235
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "compress"

    const-string v7, "os : "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    move-object v1, v2

    .end local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "gos":Ljava/util/zip/GZIPOutputStream;
    move-object v3, v4

    .end local v4    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "os":Ljava/io/ByteArrayOutputStream;
    goto :goto_1

    .line 222
    .end local v3    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "os":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "os":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .end local v1    # "gos":Ljava/util/zip/GZIPOutputStream;
    .end local v3    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "os":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v6

    move-object v1, v2

    .end local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "gos":Ljava/util/zip/GZIPOutputStream;
    move-object v3, v4

    .end local v4    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "os":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 220
    .end local v3    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v0

    move-object v3, v4

    .end local v4    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "os":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .end local v1    # "gos":Ljava/util/zip/GZIPOutputStream;
    .end local v3    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "gos":Ljava/util/zip/GZIPOutputStream;
    move-object v3, v4

    .end local v4    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "os":Ljava/io/ByteArrayOutputStream;
    goto :goto_2
.end method

.method public static compressByteArrayByGzip([B)Ljava/lang/String;
    .locals 9
    .param p0, "byteArr"    # [B

    .prologue
    .line 616
    const/4 v0, 0x0

    .line 617
    .local v0, "base64String":Ljava/lang/String;
    const/4 v4, 0x0

    .line 618
    .local v4, "os":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 620
    .local v2, "gos":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    .end local v4    # "os":Ljava/io/ByteArrayOutputStream;
    .local v5, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 622
    .end local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    .local v3, "gos":Ljava/util/zip/GZIPOutputStream;
    :try_start_2
    invoke-virtual {v3, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 623
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 625
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 629
    if-eqz v3, :cond_0

    .line 631
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 637
    :cond_0
    :goto_0
    if-eqz v5, :cond_5

    .line 639
    :try_start_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v2, v3

    .end local v3    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    move-object v4, v5

    .line 645
    .end local v5    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_1
    :goto_1
    return-object v0

    .line 626
    :catch_0
    move-exception v1

    .line 627
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v6, "compress"

    const-string v7, "IOException: "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 629
    if-eqz v2, :cond_2

    .line 631
    :try_start_6
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 637
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    if-eqz v4, :cond_1

    .line 639
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 640
    :catch_1
    move-exception v1

    .line 641
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "compress"

    const-string v7, "os : "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 632
    .local v1, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 633
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "compress"

    const-string v7, "gos : "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 628
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 629
    :goto_4
    if-eqz v2, :cond_3

    .line 631
    :try_start_8
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 637
    :cond_3
    :goto_5
    if-eqz v4, :cond_4

    .line 639
    :try_start_9
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 644
    :cond_4
    :goto_6
    throw v6

    .line 632
    :catch_3
    move-exception v1

    .line 633
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "compress"

    const-string v8, "gos : "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 640
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 641
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "compress"

    const-string v8, "os : "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 632
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    .end local v4    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_5
    move-exception v1

    .line 633
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "compress"

    const-string v7, "gos : "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 640
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 641
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "compress"

    const-string v7, "os : "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    move-object v2, v3

    .end local v3    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    move-object v4, v5

    .end local v5    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "os":Ljava/io/ByteArrayOutputStream;
    goto :goto_1

    .line 628
    .end local v4    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "os":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "os":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .end local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    .end local v4    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "os":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    move-object v4, v5

    .end local v5    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "os":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 626
    .end local v4    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v1

    move-object v4, v5

    .end local v5    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "os":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .end local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    .end local v4    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_8
    move-exception v1

    move-object v2, v3

    .end local v3    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    move-object v4, v5

    .end local v5    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "os":Ljava/io/ByteArrayOutputStream;
    goto :goto_2
.end method

.method public static decoderBase64File(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "base64Code"    # Ljava/lang/String;

    .prologue
    .line 721
    const-string v5, ""

    .line 722
    .local v5, "savePath":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/Yun/Sounds/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 723
    .local v4, "saveDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 724
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 725
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 727
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/lzx/iteam/util/StringUtil;->getRandomFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 728
    const/4 v6, 0x0

    invoke-static {p0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 730
    .local v0, "buffer":[B
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 731
    .local v3, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 732
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-object v5

    .line 733
    :catch_0
    move-exception v2

    .line 734
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static decompressByGzip(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "zipText"    # Ljava/lang/String;

    .prologue
    .line 245
    const/4 v8, 0x0

    .line 247
    .local v8, "ret":Ljava/lang/String;
    const/4 v10, 0x2

    invoke-static {p0, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 248
    .local v3, "compressed":[B
    const/4 v6, 0x0

    .line 249
    .local v6, "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    const/4 v0, 0x0

    .line 252
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v7, Ljava/util/zip/GZIPInputStream;

    .line 253
    new-instance v10, Ljava/io/ByteArrayInputStream;

    const/4 v11, 0x0

    array-length v12, v3

    invoke-direct {v10, v3, v11, v12}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 252
    invoke-direct {v7, v10}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .end local v6    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .local v7, "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 256
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0x400

    :try_start_2
    new-array v2, v10, [B

    .line 257
    .local v2, "buf":[B
    const/4 v4, 0x0

    .line 258
    .local v4, "count":I
    :goto_0
    invoke-virtual {v7, v2}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    const/4 v10, -0x1

    if-ne v4, v10, :cond_2

    .line 261
    new-instance v9, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 265
    .end local v8    # "ret":Ljava/lang/String;
    .local v9, "ret":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 267
    :try_start_3
    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 273
    :cond_0
    :goto_1
    if-eqz v1, :cond_6

    .line 275
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .end local v7    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v6    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    move-object v8, v9

    .line 282
    .end local v2    # "buf":[B
    .end local v4    # "count":I
    .end local v9    # "ret":Ljava/lang/String;
    .restart local v8    # "ret":Ljava/lang/String;
    :cond_1
    :goto_2
    return-object v8

    .line 259
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buf":[B
    .restart local v4    # "count":I
    .restart local v7    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    :cond_2
    const/4 v10, 0x0

    :try_start_5
    invoke-virtual {v1, v2, v10, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    .line 262
    .end local v2    # "buf":[B
    .end local v4    # "count":I
    :catch_0
    move-exception v5

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .line 263
    .end local v7    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .local v5, "e":Ljava/io/IOException;
    .restart local v6    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    :goto_3
    :try_start_6
    const-string v10, "decompress"

    const-string v11, "IOException"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 265
    if-eqz v6, :cond_3

    .line 267
    :try_start_7
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 273
    :cond_3
    :goto_4
    if-eqz v0, :cond_1

    .line 275
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 276
    :catch_1
    move-exception v5

    .line 277
    const-string v10, "decompress"

    const-string v11, "baos"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 268
    :catch_2
    move-exception v5

    .line 269
    const-string v10, "decompress"

    const-string v11, "gzip"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 264
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 265
    :goto_5
    if-eqz v6, :cond_4

    .line 267
    :try_start_9
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 273
    :cond_4
    :goto_6
    if-eqz v0, :cond_5

    .line 275
    :try_start_a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 280
    :cond_5
    :goto_7
    throw v10

    .line 268
    :catch_3
    move-exception v5

    .line 269
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v11, "decompress"

    const-string v12, "gzip"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 276
    .end local v5    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 277
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v11, "decompress"

    const-string v12, "baos"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 268
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .end local v8    # "ret":Ljava/lang/String;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buf":[B
    .restart local v4    # "count":I
    .restart local v7    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v9    # "ret":Ljava/lang/String;
    :catch_5
    move-exception v5

    .line 269
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v10, "decompress"

    const-string v11, "gzip"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 276
    .end local v5    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v5

    .line 277
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v10, "decompress"

    const-string v11, "baos"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v5    # "e":Ljava/io/IOException;
    :cond_6
    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .end local v7    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v6    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    move-object v8, v9

    .end local v9    # "ret":Ljava/lang/String;
    .restart local v8    # "ret":Ljava/lang/String;
    goto :goto_2

    .line 264
    .end local v2    # "buf":[B
    .end local v4    # "count":I
    .end local v6    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v7    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v6    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    goto :goto_5

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .end local v7    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v6    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    goto :goto_5

    .line 262
    :catch_7
    move-exception v5

    goto :goto_3

    .end local v6    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v7    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    :catch_8
    move-exception v5

    move-object v6, v7

    .end local v7    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v6    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    goto :goto_3
.end method

.method public static decompressToByteArrayByGzip(Ljava/lang/String;)[B
    .locals 13
    .param p0, "zipText"    # Ljava/lang/String;

    .prologue
    .line 654
    const/4 v3, 0x0

    .line 657
    .local v3, "byteArr":[B
    const/4 v10, 0x2

    :try_start_0
    invoke-static {p0, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 664
    .local v5, "compressed":[B
    const/4 v8, 0x0

    .line 666
    .local v8, "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    const/4 v0, 0x0

    .line 668
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v9, Ljava/util/zip/GZIPInputStream;

    .line 669
    new-instance v10, Ljava/io/ByteArrayInputStream;

    const/4 v11, 0x0

    array-length v12, v5

    invoke-direct {v10, v5, v11, v12}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 668
    invoke-direct {v9, v10}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 670
    .end local v8    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .local v9, "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    :try_start_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 672
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0x400

    :try_start_3
    new-array v2, v10, [B

    .line 673
    .local v2, "buf":[B
    const/4 v6, 0x0

    .line 674
    .local v6, "count":I
    :goto_0
    invoke-virtual {v9, v2}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v6

    const/4 v10, -0x1

    if-ne v6, v10, :cond_2

    .line 677
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v3

    .line 681
    if-eqz v9, :cond_0

    .line 683
    :try_start_4
    invoke-virtual {v9}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 689
    :cond_0
    :goto_1
    if-eqz v1, :cond_6

    .line 691
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v8, v9

    .end local v2    # "buf":[B
    .end local v6    # "count":I
    .end local v9    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    :cond_1
    :goto_2
    move-object v4, v3

    .line 697
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "byteArr":[B
    .end local v5    # "compressed":[B
    .end local v8    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .local v4, "byteArr":[B
    :goto_3
    return-object v4

    .line 659
    .end local v4    # "byteArr":[B
    .restart local v3    # "byteArr":[B
    :catch_0
    move-exception v10

    move-object v4, v3

    .end local v3    # "byteArr":[B
    .restart local v4    # "byteArr":[B
    goto :goto_3

    .line 662
    .end local v4    # "byteArr":[B
    .restart local v3    # "byteArr":[B
    :catch_1
    move-exception v10

    move-object v4, v3

    .end local v3    # "byteArr":[B
    .restart local v4    # "byteArr":[B
    goto :goto_3

    .line 675
    .end local v4    # "byteArr":[B
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buf":[B
    .restart local v3    # "byteArr":[B
    .restart local v5    # "compressed":[B
    .restart local v6    # "count":I
    .restart local v9    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    :cond_2
    const/4 v10, 0x0

    :try_start_6
    invoke-virtual {v1, v2, v10, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    .line 678
    .end local v2    # "buf":[B
    .end local v6    # "count":I
    :catch_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v8, v9

    .line 679
    .end local v9    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .local v7, "e":Ljava/io/IOException;
    .restart local v8    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    :goto_4
    :try_start_7
    const-string v10, "decompress"

    const-string v11, "IOException"

    invoke-static {v10, v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 681
    if-eqz v8, :cond_3

    .line 683
    :try_start_8
    invoke-virtual {v8}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 689
    :cond_3
    :goto_5
    if-eqz v0, :cond_1

    .line 691
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_2

    .line 692
    :catch_3
    move-exception v7

    .line 693
    const-string v10, "decompress"

    const-string v11, "baos"

    invoke-static {v10, v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 684
    :catch_4
    move-exception v7

    .line 685
    const-string v10, "decompress"

    const-string v11, "gzip"

    invoke-static {v10, v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 680
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 681
    :goto_6
    if-eqz v8, :cond_4

    .line 683
    :try_start_a
    invoke-virtual {v8}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 689
    :cond_4
    :goto_7
    if-eqz v0, :cond_5

    .line 691
    :try_start_b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 696
    :cond_5
    :goto_8
    throw v10

    .line 684
    :catch_5
    move-exception v7

    .line 685
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v11, "decompress"

    const-string v12, "gzip"

    invoke-static {v11, v12, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 692
    .end local v7    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v7

    .line 693
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v11, "decompress"

    const-string v12, "baos"

    invoke-static {v11, v12, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 684
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buf":[B
    .restart local v6    # "count":I
    .restart local v9    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    :catch_7
    move-exception v7

    .line 685
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v10, "decompress"

    const-string v11, "gzip"

    invoke-static {v10, v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 692
    .end local v7    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v7

    .line 693
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v10, "decompress"

    const-string v11, "baos"

    invoke-static {v10, v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v7    # "e":Ljava/io/IOException;
    :cond_6
    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v8, v9

    .end local v9    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    goto :goto_2

    .line 680
    .end local v2    # "buf":[B
    .end local v6    # "count":I
    .end local v8    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v9    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    goto :goto_6

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v8, v9

    .end local v9    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    goto :goto_6

    .line 678
    :catch_9
    move-exception v7

    goto :goto_4

    .end local v8    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v9    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    :catch_a
    move-exception v7

    move-object v8, v9

    .end local v9    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    goto :goto_4
.end method

.method public static encodeBase64File(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 707
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 708
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 709
    .local v2, "inputFile":Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v3, v4

    new-array v0, v3, [B

    .line 710
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 711
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 712
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static ensureEmptyStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 540
    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static filterUnNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 385
    const-string v2, "[^0-9]"

    .line 386
    .local v2, "regEx":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 387
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 388
    .local v0, "m":Ljava/util/regex/Matcher;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static formatTime(J)Ljava/lang/String;
    .locals 12
    .param p0, "time"    # J

    .prologue
    .line 544
    const-wide/16 v0, 0x0

    .line 545
    .local v0, "days":J
    const-wide/16 v2, 0x0

    .line 546
    .local v2, "hours":J
    const-wide/16 v4, 0x0

    .line 547
    .local v4, "mins":J
    move-wide v6, p0

    .line 548
    .local v6, "totalDuration":J
    const-wide/16 v8, 0x3c

    div-long v4, v6, v8

    .line 549
    const-wide/16 v8, 0x3c

    div-long v8, v6, v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 550
    const-wide/16 v8, 0x3c

    div-long v8, v4, v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 551
    const-wide/16 v8, 0x3c

    div-long v2, v4, v8

    .line 552
    const-wide/16 v8, 0x18

    div-long v8, v2, v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 553
    const-wide/16 v8, 0x18

    div-long v0, v2, v8

    .line 554
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\u5929,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u5c0f\u65f6, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u5206\u949f, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/16 v10, 0x3c

    rem-long v10, v6, v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 555
    const-string v9, "\u79d2"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 554
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 563
    :goto_0
    return-object v8

    .line 557
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\u5c0f\u65f6, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/16 v10, 0x3c

    rem-long v10, v4, v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u5206\u949f, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/16 v10, 0x3c

    rem-long v10, v6, v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u79d2"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 560
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\u5206\u949f, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/16 v10, 0x3c

    rem-long v10, v6, v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u79d2"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 563
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\u79d2"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public static getFirstLetterStr(Landroid/content/Context;)Ljava/lang/StringBuilder;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 473
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    .local v3, "firstLetterArray":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 475
    .local v4, "is":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 477
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 478
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 479
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 480
    .local v5, "line":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_12
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-result-object v5

    if-nez v5, :cond_0

    .line 489
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 494
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_11

    move-object v0, v1

    .line 501
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_1
    return-object v3

    .line 481
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    :cond_0
    :try_start_4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_12
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    goto :goto_0

    .line 483
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 484
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 489
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 494
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 495
    :catch_1
    move-exception v2

    .line 496
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 490
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    :catch_2
    move-exception v2

    .line 491
    .local v2, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 494
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_1

    .line 495
    :catch_3
    move-exception v2

    .line 496
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 492
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 494
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 498
    :goto_3
    throw v6

    .line 495
    :catch_4
    move-exception v2

    .line 496
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 485
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 486
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_b
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 489
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 494
    :try_start_d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_1

    .line 495
    :catch_6
    move-exception v2

    .line 496
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 490
    :catch_7
    move-exception v2

    .line 491
    :try_start_e
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 494
    :try_start_f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    goto :goto_1

    .line 495
    :catch_8
    move-exception v2

    .line 496
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 492
    :catchall_1
    move-exception v6

    .line 494
    :try_start_10
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 498
    :goto_5
    throw v6

    .line 495
    :catch_9
    move-exception v2

    .line 496
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 487
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v6

    .line 489
    :goto_6
    :try_start_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 494
    :try_start_12
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    .line 499
    :goto_7
    throw v6

    .line 490
    :catch_a
    move-exception v2

    .line 491
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_13
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 494
    :try_start_14
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b

    goto :goto_7

    .line 495
    :catch_b
    move-exception v2

    .line 496
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 492
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v6

    .line 494
    :try_start_15
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c

    .line 498
    :goto_8
    throw v6

    .line 495
    :catch_c
    move-exception v2

    .line 496
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 495
    .end local v2    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v2

    .line 496
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 490
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    :catch_e
    move-exception v2

    .line 491
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_16
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 494
    :try_start_17
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_f

    move-object v0, v1

    .line 495
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_f
    move-exception v2

    .line 496
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 492
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_4
    move-exception v6

    .line 494
    :try_start_18
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_10

    .line 498
    :goto_9
    throw v6

    .line 495
    :catch_10
    move-exception v2

    .line 496
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 495
    .end local v2    # "e":Ljava/io/IOException;
    :catch_11
    move-exception v2

    .line 496
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 487
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_5
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_6

    .line 485
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_12
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 483
    .end local v5    # "line":Ljava/lang/String;
    :catch_13
    move-exception v2

    goto/16 :goto_2
.end method

.method public static getHanziPinyin(Landroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "result"    # Ljava/lang/StringBuilder;

    .prologue
    .line 506
    if-nez p1, :cond_0

    .line 507
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1    # "result":Ljava/lang/StringBuilder;
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 509
    .restart local p1    # "result":Ljava/lang/StringBuilder;
    :cond_0
    const/4 v3, 0x0

    .line 510
    .local v3, "is":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 512
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f060000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 513
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 514
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 515
    .local v4, "line":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_12
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-result-object v4

    if-nez v4, :cond_1

    .line 524
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 529
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_11

    move-object v0, v1

    .line 536
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_1
    return-object p1

    .line 516
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_1
    :try_start_4
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_12
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    goto :goto_0

    .line 518
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 519
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 524
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 529
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 530
    :catch_1
    move-exception v2

    .line 531
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 525
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    :catch_2
    move-exception v2

    .line 526
    .local v2, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 529
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_1

    .line 530
    :catch_3
    move-exception v2

    .line 531
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 527
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 529
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 533
    :goto_3
    throw v5

    .line 530
    :catch_4
    move-exception v2

    .line 531
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 520
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 521
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_b
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 524
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 529
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_1

    .line 530
    :catch_6
    move-exception v2

    .line 531
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 525
    :catch_7
    move-exception v2

    .line 526
    :try_start_e
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 529
    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    goto :goto_1

    .line 530
    :catch_8
    move-exception v2

    .line 531
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 527
    :catchall_1
    move-exception v5

    .line 529
    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 533
    :goto_5
    throw v5

    .line 530
    :catch_9
    move-exception v2

    .line 531
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 522
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v5

    .line 524
    :goto_6
    :try_start_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 529
    :try_start_12
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    .line 534
    :goto_7
    throw v5

    .line 525
    :catch_a
    move-exception v2

    .line 526
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_13
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 529
    :try_start_14
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b

    goto :goto_7

    .line 530
    :catch_b
    move-exception v2

    .line 531
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 527
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v5

    .line 529
    :try_start_15
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c

    .line 533
    :goto_8
    throw v5

    .line 530
    :catch_c
    move-exception v2

    .line 531
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 530
    .end local v2    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v2

    .line 531
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 525
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :catch_e
    move-exception v2

    .line 526
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_16
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 529
    :try_start_17
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_f

    move-object v0, v1

    .line 530
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_f
    move-exception v2

    .line 531
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 527
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_4
    move-exception v5

    .line 529
    :try_start_18
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_10

    .line 533
    :goto_9
    throw v5

    .line 530
    :catch_10
    move-exception v2

    .line 531
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 530
    .end local v2    # "e":Ljava/io/IOException;
    :catch_11
    move-exception v2

    .line 531
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 522
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_5
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_6

    .line 520
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_12
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 518
    .end local v4    # "line":Ljava/lang/String;
    :catch_13
    move-exception v2

    goto/16 :goto_2
.end method

.method public static getRandomFileName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 740
    const-string v2, ""

    .line 741
    .local v2, "rel":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 742
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 743
    .local v0, "curDate":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 744
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 745
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".amr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getStringDate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 451
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 452
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd-HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 453
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getUriName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 141
    const/4 v1, 0x0

    .line 143
    .local v1, "name":Ljava/lang/String;
    const-string v2, "@"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 144
    .local v0, "at":I
    if-ne v0, v3, :cond_0

    .line 145
    const-string v2, "%40"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 148
    :cond_0
    if-eq v0, v3, :cond_1

    .line 149
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 152
    :cond_1
    return-object v1
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 67
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isLandlinePhoneInChina(Ljava/lang/String;)Z
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 447
    const-string v0, "^0\\d{2,3}(\\-)?\\d{7,8}$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMobile(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 92
    const/4 v2, 0x0

    .line 93
    .local v2, "p":Ljava/util/regex/Pattern;
    const/4 v1, 0x0

    .line 94
    .local v1, "m":Ljava/util/regex/Matcher;
    const/4 v0, 0x0

    .line 95
    .local v0, "b":Z
    const-string v3, "^[1][3,4,5,7,8][0-9]{9}$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 96
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 98
    return v0
.end method

.method public static isMobilePhoneInChina(Ljava/lang/String;)Z
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 443
    const-string v0, "^((\\+86)|(86)){0,1}(13[0-9]|147|15[0-9]|18[0-9])\\d{8}$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 393
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 396
    const-string v0, "^[\\+0-9]\\d*$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPhone(Ljava/lang/String;)Z
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 107
    const/4 v2, 0x0

    .local v2, "p1":Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 108
    .local v3, "p2":Ljava/util/regex/Pattern;
    const/4 v1, 0x0

    .line 109
    .local v1, "m":Ljava/util/regex/Matcher;
    const/4 v0, 0x0

    .line 110
    .local v0, "b":Z
    const-string v4, "^[0][1-9]{2,3}-[0-9]{5,10}$"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 111
    const-string v4, "^[1-9]{1}[0-9]{5,8}$"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x9

    if-le v4, v5, :cond_0

    .line 113
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 119
    :goto_0
    return v0

    .line 116
    :cond_0
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method public static isUriNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 131
    if-eqz p0, :cond_1

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static md5ToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 180
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 182
    .local v4, "result":Ljava/lang/StringBuffer;
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 183
    .local v1, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 184
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 185
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 187
    .local v0, "a":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v0

    if-lt v3, v5, :cond_0

    .line 191
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 195
    .end local v0    # "a":[B
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "i":I
    :goto_1
    return-object v5

    .line 188
    .restart local v0    # "a":[B
    .restart local v1    # "digest":Ljava/security/MessageDigest;
    .restart local v3    # "i":I
    :cond_0
    aget-byte v5, v0, v3

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Lcom/lzx/iteam/util/StringUtil;->byteToHex(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "a":[B
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 193
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 195
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static objectWithString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 286
    invoke-static {p0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 308
    :goto_0
    return-object v5

    .line 289
    :cond_0
    :try_start_0
    const-string v6, "UTF-8"

    invoke-static {p0, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "decoderValue":Ljava/lang/String;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 291
    const-string v6, "ISO-8859-1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 290
    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 292
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 293
    .local v4, "ios":Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v5

    goto :goto_0

    .line 294
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "decoderValue":Ljava/lang/String;
    .end local v4    # "ios":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v3

    .line 296
    .local v3, "e1":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 297
    .end local v3    # "e1":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v2

    .line 299
    .local v2, "e":Ljava/io/StreamCorruptedException;
    invoke-virtual {v2}, Ljava/io/StreamCorruptedException;->printStackTrace()V

    goto :goto_0

    .line 300
    .end local v2    # "e":Ljava/io/StreamCorruptedException;
    :catch_2
    move-exception v2

    .line 302
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 303
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 305
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static final sizeOf(Ljava/lang/Object;)I
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    if-nez p0, :cond_0

    .line 411
    const/4 v3, -0x1

    .line 432
    :goto_0
    return v3

    .line 416
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 420
    .local v1, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 423
    .local v2, "objectOutputStream":Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 424
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 425
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 428
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 432
    .local v0, "byteArray":[B
    if-nez v0, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    array-length v3, v0

    goto :goto_0
.end method

.method public static stringWithObject(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 312
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 315
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 316
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 317
    const-string v5, "ISO-8859-1"

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 318
    .local v4, "value":Ljava/lang/String;
    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 324
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .end local v4    # "value":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 320
    :catch_0
    move-exception v1

    .line 322
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 324
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static trasferDisplayName(Landroid/content/Context;Ljava/lang/StringBuffer;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dn"    # Ljava/lang/StringBuffer;
    .param p2, "firstLetterStr"    # Ljava/lang/StringBuilder;

    .prologue
    .line 330
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 331
    .local v2, "ioLen":I
    const-string v4, "\u5355\u66fe\u4ec7\u89e3\u79d8\u533a\u67e5\u8983\u77bf\u5c04\u8c0c"

    .line 332
    .local v4, "mutableHZ":Ljava/lang/String;
    const-string v5, "SZQXBOZQQXS"

    .line 333
    .local v5, "mutablePY":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 355
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 334
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    .line 335
    .local v7, "oname":C
    const/16 v8, 0x100

    if-le v7, v8, :cond_5

    .line 336
    invoke-static {p0, v7, p2}, Lcom/lzx/iteam/util/HanziUtil;->GetpinyinFirstLetter(Landroid/content/Context;CLjava/lang/StringBuilder;)C

    move-result v6

    .line 337
    .local v6, "oc":C
    if-nez v1, :cond_1

    .line 338
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 339
    .local v3, "length":I
    const/4 v0, 0x0

    .local v0, "fi":I
    :goto_1
    if-lt v0, v3, :cond_3

    .line 350
    .end local v0    # "fi":I
    .end local v3    # "length":I
    :cond_1
    :goto_2
    invoke-static {v6}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit8 v8, v6, -0x20

    int-to-char v6, v8

    .line 352
    :cond_2
    add-int/lit8 v8, v1, 0x1

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v1, v8, v9}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    .restart local v0    # "fi":I
    .restart local v3    # "length":I
    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_4

    .line 341
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 342
    goto :goto_2

    .line 339
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 348
    .end local v0    # "fi":I
    .end local v3    # "length":I
    .end local v6    # "oc":C
    :cond_5
    move v6, v7

    .restart local v6    # "oc":C
    goto :goto_2
.end method

.method public static trasferGOJ(Landroid/content/Context;Ljava/lang/StringBuffer;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "strGoj"    # Ljava/lang/StringBuffer;
    .param p2, "firstLetterStr"    # Ljava/lang/StringBuilder;

    .prologue
    .line 359
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 361
    .local v1, "ioLeng":I
    const/4 v0, 0x0

    .local v0, "iComp":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 380
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 362
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    .line 363
    .local v4, "oname":C
    const/4 v2, 0x0

    .line 364
    .local v2, "needReplace":Z
    const/16 v5, 0x100

    if-le v4, v5, :cond_3

    .line 365
    invoke-static {p0, v4, p2}, Lcom/lzx/iteam/util/HanziUtil;->GetpinyinFirstLetter(Landroid/content/Context;CLjava/lang/StringBuilder;)C

    move-result v3

    .line 366
    .local v3, "oc":C
    const/4 v2, 0x1

    .line 370
    :goto_1
    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 371
    add-int/lit8 v5, v3, -0x20

    int-to-char v3, v5

    .line 372
    const/4 v2, 0x1

    .line 375
    :cond_1
    if-eqz v2, :cond_2

    .line 376
    add-int/lit8 v5, v0, 0x1

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v0, v5, v6}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    .end local v3    # "oc":C
    :cond_3
    move v3, v4

    .restart local v3    # "oc":C
    goto :goto_1
.end method

.method public static trimTrailingNul(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 35
    const/4 v1, 0x0

    .line 46
    :goto_0
    return-object v1

    .line 38
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 39
    .local v0, "i":I
    :goto_1
    if-gez v0, :cond_2

    .line 46
    :cond_1
    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-nez v1, :cond_1

    .line 43
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static final writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "dos"    # Ljava/io/DataOutputStream;
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 157
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0
.end method
