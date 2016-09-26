.class public Lcom/swetake/util/Qrcode;
.super Ljava/lang/Object;
.source "Qrcode.java"


# static fields
.field static final QRCODE_DATA_PATH:Ljava/lang/String; = "qrcode_data"


# instance fields
.field qrcodeEncodeMode:C

.field qrcodeErrorCorrect:C

.field qrcodeStructureappendM:I

.field qrcodeStructureappendN:I

.field qrcodeStructureappendOriginaldata:Ljava/lang/String;

.field qrcodeStructureappendParity:I

.field qrcodeVersion:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x4d

    iput-char v0, p0, Lcom/swetake/util/Qrcode;->qrcodeErrorCorrect:C

    .line 30
    const/16 v0, 0x42

    iput-char v0, p0, Lcom/swetake/util/Qrcode;->qrcodeEncodeMode:C

    .line 31
    iput v1, p0, Lcom/swetake/util/Qrcode;->qrcodeVersion:I

    .line 33
    iput v1, p0, Lcom/swetake/util/Qrcode;->qrcodeStructureappendN:I

    .line 34
    iput v1, p0, Lcom/swetake/util/Qrcode;->qrcodeStructureappendM:I

    .line 35
    iput v1, p0, Lcom/swetake/util/Qrcode;->qrcodeStructureappendParity:I

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/swetake/util/Qrcode;->qrcodeStructureappendOriginaldata:Ljava/lang/String;

    return-void
.end method

.method private static calculateByteArrayBits([B[BLjava/lang/String;)[B
    .locals 8
    .param p0, "xa"    # [B
    .param p1, "xb"    # [B
    .param p2, "ind"    # Ljava/lang/String;

    .prologue
    .line 685
    array-length v6, p0

    array-length v7, p1

    if-le v6, v7, :cond_0

    .line 686
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 687
    .local v4, "xl":[B
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 692
    .local v5, "xs":[B
    :goto_0
    array-length v1, v4

    .line 693
    .local v1, "ll":I
    array-length v2, v5

    .line 694
    .local v2, "ls":I
    new-array v3, v1, [B

    .line 696
    .local v3, "res":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_1

    .line 707
    return-object v3

    .line 689
    .end local v0    # "i":I
    .end local v1    # "ll":I
    .end local v2    # "ls":I
    .end local v3    # "res":[B
    .end local v4    # "xl":[B
    .end local v5    # "xs":[B
    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 690
    .restart local v4    # "xl":[B
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .restart local v5    # "xs":[B
    goto :goto_0

    .line 697
    .restart local v0    # "i":I
    .restart local v1    # "ll":I
    .restart local v2    # "ls":I
    .restart local v3    # "res":[B
    :cond_1
    if-ge v0, v2, :cond_3

    .line 698
    const-string v6, "xor"

    if-ne p2, v6, :cond_2

    .line 699
    aget-byte v6, v4, v0

    aget-byte v7, v5, v0

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    .line 696
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 701
    :cond_2
    aget-byte v6, v4, v0

    aget-byte v7, v5, v0

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    goto :goto_2

    .line 704
    :cond_3
    aget-byte v6, v4, v0

    aput-byte v6, v3, v0

    goto :goto_2
.end method

.method private static calculateRSECC([BB[BII)[B
    .locals 25
    .param p0, "codewords"    # [B
    .param p1, "rsEccCodewords"    # B
    .param p2, "rsBlockOrder"    # [B
    .param p3, "maxDataCodewords"    # I
    .param p4, "maxCodewords"    # I

    .prologue
    .line 598
    const/16 v22, 0x100

    move/from16 v0, v22

    move/from16 v1, p1

    filled-new-array {v0, v1}, [I

    move-result-object v22

    sget-object v23, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [[B

    .line 600
    .local v16, "rsCalTableArray":[[B
    :try_start_0
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "qrcode_data/rsc"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ".dat"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 601
    .local v8, "filename":Ljava/lang/String;
    const-class v22, Lcom/swetake/util/Qrcode;

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 602
    .local v10, "fis":Ljava/io/InputStream;
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 603
    .local v5, "bis":Ljava/io/BufferedInputStream;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    const/16 v22, 0x100

    move/from16 v0, v22

    if-lt v11, v0, :cond_0

    .line 606
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 607
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .end local v8    # "filename":Ljava/lang/String;
    .end local v10    # "fis":Ljava/io/InputStream;
    .end local v11    # "i":I
    :goto_1
    const/4 v11, 0x0

    .line 616
    .restart local v11    # "i":I
    const/4 v12, 0x0

    .line 617
    .local v12, "j":I
    const/4 v15, 0x0

    .line 619
    .local v15, "rsBlockNumber":I
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [[B

    move-object/from16 v19, v0

    .line 620
    .local v19, "rsTemp":[[B
    move/from16 v0, p4

    new-array v14, v0, [B

    .line 621
    .local v14, "res":[B
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v14, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 623
    const/4 v11, 0x0

    .line 624
    :goto_2
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v11, v0, :cond_1

    .line 628
    const/4 v11, 0x0

    .line 629
    :goto_3
    move/from16 v0, p3

    if-lt v11, v0, :cond_2

    .line 641
    const/4 v15, 0x0

    .line 642
    :goto_4
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v15, v0, :cond_4

    .line 675
    return-object v14

    .line 604
    .end local v12    # "j":I
    .end local v14    # "res":[B
    .end local v15    # "rsBlockNumber":I
    .end local v19    # "rsTemp":[[B
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v8    # "filename":Ljava/lang/String;
    .restart local v10    # "fis":Ljava/io/InputStream;
    :cond_0
    :try_start_1
    aget-object v22, v16, v11

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 603
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 608
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .end local v8    # "filename":Ljava/lang/String;
    .end local v10    # "fis":Ljava/io/InputStream;
    .end local v11    # "i":I
    :catch_0
    move-exception v7

    .line 609
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 625
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v11    # "i":I
    .restart local v12    # "j":I
    .restart local v14    # "res":[B
    .restart local v15    # "rsBlockNumber":I
    .restart local v19    # "rsTemp":[[B
    :cond_1
    aget-byte v22, p2, v11

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    sub-int v22, v22, p1

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    aput-object v22, v19, v11

    .line 626
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 630
    :cond_2
    aget-object v22, v19, v15

    aget-byte v23, p0, v11

    aput-byte v23, v22, v12

    .line 631
    add-int/lit8 v12, v12, 0x1

    .line 632
    aget-byte v22, p2, v15

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    sub-int v22, v22, p1

    move/from16 v0, v22

    if-lt v12, v0, :cond_3

    .line 633
    const/4 v12, 0x0

    .line 634
    add-int/lit8 v15, v15, 0x1

    .line 636
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 644
    :cond_4
    aget-object v22, v19, v15

    invoke-virtual/range {v22 .. v22}, [B->clone()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [B

    .line 646
    .local v20, "rsTempData":[B
    aget-byte v22, p2, v15

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 647
    .local v17, "rsCodewords":I
    sub-int v18, v17, p1

    .line 649
    .local v18, "rsDataCodewords":I
    move/from16 v12, v18

    .line 650
    :goto_5
    if-gtz v12, :cond_5

    .line 672
    const/16 v22, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v23, v0

    mul-int v24, v15, p1

    add-int v23, v23, v24

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, p1

    invoke-static {v0, v1, v14, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 673
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 651
    :cond_5
    const/16 v22, 0x0

    aget-byte v9, v20, v22

    .line 652
    .local v9, "first":B
    if-eqz v9, :cond_6

    .line 653
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    new-array v13, v0, [B

    .line 654
    .local v13, "leftChr":[B
    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v13, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 655
    and-int/lit16 v0, v9, 0xff

    move/from16 v22, v0

    aget-object v6, v16, v22

    .line 656
    .local v6, "cal":[B
    const-string v22, "xor"

    move-object/from16 v0, v22

    invoke-static {v13, v6, v0}, Lcom/swetake/util/Qrcode;->calculateByteArrayBits([B[BLjava/lang/String;)[B

    move-result-object v20

    .line 669
    .end local v6    # "cal":[B
    .end local v13    # "leftChr":[B
    :goto_6
    add-int/lit8 v12, v12, -0x1

    goto :goto_5

    .line 658
    :cond_6
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, p1

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 659
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 660
    .local v21, "rsTempNew":[B
    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 661
    invoke-virtual/range {v21 .. v21}, [B->clone()Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "rsTempData":[B
    check-cast v20, [B

    .restart local v20    # "rsTempData":[B
    goto :goto_6

    .line 663
    .end local v21    # "rsTempNew":[B
    :cond_7
    move/from16 v0, p1

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 664
    .restart local v21    # "rsTempNew":[B
    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 665
    add-int/lit8 v22, p1, -0x1

    const/16 v23, 0x0

    aput-byte v23, v21, v22

    .line 666
    invoke-virtual/range {v21 .. v21}, [B->clone()Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "rsTempData":[B
    check-cast v20, [B

    .restart local v20    # "rsTempData":[B
    goto :goto_6
.end method

.method private static divideDataBy8Bits([I[BI)[B
    .locals 12
    .param p0, "data"    # [I
    .param p1, "bits"    # [B
    .param p2, "maxDataCodewords"    # I

    .prologue
    .line 528
    array-length v6, p1

    .line 530
    .local v6, "l1":I
    const/4 v3, 0x0

    .line 531
    .local v3, "codewordsCounter":I
    const/16 v9, 0x8

    .line 532
    .local v9, "remainingBits":I
    const/4 v8, 0x0

    .line 537
    .local v8, "max":I
    array-length v10, p0

    .line 539
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-lt v5, v6, :cond_2

    .line 542
    add-int/lit8 v10, v8, -0x1

    div-int/lit8 v10, v10, 0x8

    add-int/lit8 v7, v10, 0x1

    .line 543
    .local v7, "l2":I
    new-array v2, p2, [B

    .line 544
    .local v2, "codewords":[B
    const/4 v5, 0x0

    :goto_1
    if-lt v5, v7, :cond_3

    .line 547
    const/4 v5, 0x0

    :goto_2
    if-lt v5, v6, :cond_4

    .line 575
    :cond_0
    const/16 v10, 0x8

    if-eq v9, v10, :cond_8

    .line 576
    aget-byte v10, v2, v3

    shl-int/2addr v10, v9

    int-to-byte v10, v10

    aput-byte v10, v2, v3

    .line 580
    :goto_3
    add-int/lit8 v10, p2, -0x1

    if-ge v3, v10, :cond_1

    .line 581
    const/4 v4, 0x1

    .line 582
    .local v4, "flag":Z
    :goto_4
    add-int/lit8 v10, p2, -0x1

    if-lt v3, v10, :cond_9

    .line 592
    .end local v4    # "flag":Z
    :cond_1
    return-object v2

    .line 540
    .end local v2    # "codewords":[B
    .end local v7    # "l2":I
    :cond_2
    aget-byte v10, p1, v5

    add-int/2addr v8, v10

    .line 539
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 545
    .restart local v2    # "codewords":[B
    .restart local v7    # "l2":I
    :cond_3
    const/4 v10, 0x0

    aput-byte v10, v2, v5

    .line 544
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 548
    :cond_4
    aget v0, p0, v5

    .line 549
    .local v0, "buffer":I
    aget-byte v1, p1, v5

    .line 550
    .local v1, "bufferBits":I
    const/4 v4, 0x1

    .line 552
    .restart local v4    # "flag":Z
    if-eqz v1, :cond_0

    .line 555
    :goto_5
    if-nez v4, :cond_5

    .line 547
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 556
    :cond_5
    if-le v9, v1, :cond_6

    .line 557
    aget-byte v10, v2, v3

    shl-int/2addr v10, v1

    or-int/2addr v10, v0

    int-to-byte v10, v10

    aput-byte v10, v2, v3

    .line 558
    sub-int/2addr v9, v1

    .line 559
    const/4 v4, 0x0

    goto :goto_5

    .line 561
    :cond_6
    sub-int/2addr v1, v9

    .line 562
    aget-byte v10, v2, v3

    shl-int/2addr v10, v9

    shr-int v11, v0, v1

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v2, v3

    .line 564
    if-nez v1, :cond_7

    .line 565
    const/4 v4, 0x0

    .line 570
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 571
    const/16 v9, 0x8

    goto :goto_5

    .line 567
    :cond_7
    const/4 v10, 0x1

    shl-int/2addr v10, v1

    add-int/lit8 v10, v10, -0x1

    and-int/2addr v0, v10

    .line 568
    const/4 v4, 0x1

    goto :goto_6

    .line 578
    .end local v0    # "buffer":I
    .end local v1    # "bufferBits":I
    .end local v4    # "flag":Z
    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 583
    .restart local v4    # "flag":Z
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 584
    if-eqz v4, :cond_a

    .line 585
    const/16 v10, -0x14

    aput-byte v10, v2, v3

    .line 589
    :goto_7
    if-eqz v4, :cond_b

    const/4 v4, 0x0

    :goto_8
    goto :goto_4

    .line 587
    :cond_a
    const/16 v10, 0x11

    aput-byte v10, v2, v3

    goto :goto_7

    .line 589
    :cond_b
    const/4 v4, 0x1

    goto :goto_8
.end method

.method private static selectMask([[BI)B
    .locals 24
    .param p0, "matrixContent"    # [[B
    .param p1, "maxCodewordsBitWithRemain"    # I

    .prologue
    .line 711
    move-object/from16 v0, p0

    array-length v11, v0

    .line 712
    .local v11, "l":I
    const/16 v21, 0x8

    move/from16 v0, v21

    new-array v2, v0, [I

    .line 713
    .local v2, "d1":[I
    const/16 v21, 0x8

    move/from16 v0, v21

    new-array v3, v0, [I

    .line 714
    .local v3, "d2":[I
    const/16 v21, 0x8

    move/from16 v0, v21

    new-array v6, v0, [I

    .line 715
    .local v6, "d3":[I
    const/16 v21, 0x8

    move/from16 v0, v21

    new-array v7, v0, [I

    .line 717
    .local v7, "d4":[I
    const/4 v4, 0x0

    .line 718
    .local v4, "d2And":I
    const/4 v5, 0x0

    .line 719
    .local v5, "d2Or":I
    const/16 v21, 0x8

    move/from16 v0, v21

    new-array v8, v0, [I

    .line 721
    .local v8, "d4Counter":[I
    const/16 v18, 0x0

    .local v18, "y":I
    :goto_0
    move/from16 v0, v18

    if-lt v0, v11, :cond_0

    .line 794
    const/4 v13, 0x0

    .line 795
    .local v13, "minValue":I
    const/4 v14, 0x0

    .line 796
    .local v14, "res":B
    const/16 v21, 0x15

    move/from16 v0, v21

    new-array v9, v0, [I

    const/16 v21, 0x0

    const/16 v22, 0x5a

    aput v22, v9, v21

    const/16 v21, 0x1

    const/16 v22, 0x50

    aput v22, v9, v21

    const/16 v21, 0x2

    const/16 v22, 0x46

    aput v22, v9, v21

    const/16 v21, 0x3

    const/16 v22, 0x3c

    aput v22, v9, v21

    const/16 v21, 0x4

    const/16 v22, 0x32

    aput v22, v9, v21

    const/16 v21, 0x5

    const/16 v22, 0x28

    aput v22, v9, v21

    const/16 v21, 0x6

    const/16 v22, 0x1e

    aput v22, v9, v21

    const/16 v21, 0x7

    const/16 v22, 0x14

    aput v22, v9, v21

    const/16 v21, 0x8

    const/16 v22, 0xa

    aput v22, v9, v21

    const/16 v21, 0xb

    const/16 v22, 0xa

    aput v22, v9, v21

    const/16 v21, 0xc

    const/16 v22, 0x14

    aput v22, v9, v21

    const/16 v21, 0xd

    const/16 v22, 0x1e

    aput v22, v9, v21

    const/16 v21, 0xe

    const/16 v22, 0x28

    aput v22, v9, v21

    const/16 v21, 0xf

    const/16 v22, 0x32

    aput v22, v9, v21

    const/16 v21, 0x10

    const/16 v22, 0x3c

    aput v22, v9, v21

    const/16 v21, 0x11

    const/16 v22, 0x46

    aput v22, v9, v21

    const/16 v21, 0x12

    const/16 v22, 0x50

    aput v22, v9, v21

    const/16 v21, 0x13

    const/16 v22, 0x5a

    aput v22, v9, v21

    const/16 v21, 0x14

    const/16 v22, 0x5a

    aput v22, v9, v21

    .line 797
    .local v9, "d4Value":[I
    const/4 v12, 0x0

    .local v12, "maskNumber":I
    :goto_1
    const/16 v21, 0x8

    move/from16 v0, v21

    if-lt v12, v0, :cond_12

    .line 808
    return v14

    .line 722
    .end local v9    # "d4Value":[I
    .end local v12    # "maskNumber":I
    .end local v13    # "minValue":I
    .end local v14    # "res":B
    :cond_0
    const/16 v21, 0x8

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 723
    .local v17, "xData":[I
    const/16 v21, 0x8

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 724
    .local v20, "yData":[I
    const/16 v21, 0x8

    move/from16 v0, v21

    new-array v0, v0, [Z

    move-object/from16 v16, v0

    .line 725
    .local v16, "xD1Flag":[Z
    const/16 v21, 0x8

    move/from16 v0, v21

    new-array v0, v0, [Z

    move-object/from16 v19, v0

    .line 727
    .local v19, "yD1Flag":[Z
    const/4 v15, 0x0

    .local v15, "x":I
    :goto_2
    if-lt v15, v11, :cond_1

    .line 721
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 729
    :cond_1
    if-lez v15, :cond_2

    if-lez v18, :cond_2

    .line 730
    aget-object v21, p0, v15

    aget-byte v21, v21, v18

    add-int/lit8 v22, v15, -0x1

    aget-object v22, p0, v22

    aget-byte v22, v22, v18

    and-int v21, v21, v22

    aget-object v22, p0, v15

    add-int/lit8 v23, v18, -0x1

    aget-byte v22, v22, v23

    and-int v21, v21, v22

    add-int/lit8 v22, v15, -0x1

    aget-object v22, p0, v22

    add-int/lit8 v23, v18, -0x1

    aget-byte v22, v22, v23

    and-int v21, v21, v22

    move/from16 v0, v21

    and-int/lit16 v4, v0, 0xff

    .line 732
    aget-object v21, p0, v15

    aget-byte v21, v21, v18

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    add-int/lit8 v22, v15, -0x1

    aget-object v22, p0, v22

    aget-byte v22, v22, v18

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    or-int v21, v21, v22

    aget-object v22, p0, v15

    add-int/lit8 v23, v18, -0x1

    aget-byte v22, v22, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    or-int v21, v21, v22

    add-int/lit8 v22, v15, -0x1

    aget-object v22, p0, v22

    add-int/lit8 v23, v18, -0x1

    aget-byte v22, v22, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    or-int v5, v21, v22

    .line 735
    :cond_2
    const/4 v12, 0x0

    .restart local v12    # "maskNumber":I
    :goto_3
    const/16 v21, 0x8

    move/from16 v0, v21

    if-lt v12, v0, :cond_3

    .line 727
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 737
    :cond_3
    aget v21, v17, v12

    and-int/lit8 v21, v21, 0x3f

    shl-int/lit8 v21, v21, 0x1

    aget-object v22, p0, v15

    aget-byte v22, v22, v18

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    ushr-int v22, v22, v12

    and-int/lit8 v22, v22, 0x1

    or-int v21, v21, v22

    aput v21, v17, v12

    .line 740
    aget v21, v20, v12

    and-int/lit8 v21, v21, 0x3f

    shl-int/lit8 v21, v21, 0x1

    aget-object v22, p0, v18

    aget-byte v22, v22, v15

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    ushr-int v22, v22, v12

    and-int/lit8 v22, v22, 0x1

    or-int v21, v21, v22

    aput v21, v20, v12

    .line 743
    aget-object v21, p0, v15

    aget-byte v21, v21, v18

    const/16 v22, 0x1

    shl-int v22, v22, v12

    and-int v21, v21, v22

    if-eqz v21, :cond_4

    .line 744
    aget v21, v8, v12

    add-int/lit8 v21, v21, 0x1

    aput v21, v8, v12

    .line 748
    :cond_4
    aget v21, v17, v12

    const/16 v22, 0x5d

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 749
    aget v21, v6, v12

    add-int/lit8 v21, v21, 0x28

    aput v21, v6, v12

    .line 752
    :cond_5
    aget v21, v20, v12

    const/16 v22, 0x5d

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 753
    aget v21, v6, v12

    add-int/lit8 v21, v21, 0x28

    aput v21, v6, v12

    .line 756
    :cond_6
    if-lez v15, :cond_9

    if-lez v18, :cond_9

    .line 758
    and-int/lit8 v21, v4, 0x1

    if-nez v21, :cond_7

    and-int/lit8 v21, v5, 0x1

    if-nez v21, :cond_8

    .line 759
    :cond_7
    aget v21, v3, v12

    add-int/lit8 v21, v21, 0x3

    aput v21, v3, v12

    .line 762
    :cond_8
    shr-int/lit8 v4, v4, 0x1

    .line 763
    shr-int/lit8 v5, v5, 0x1

    .line 766
    :cond_9
    aget v21, v17, v12

    and-int/lit8 v21, v21, 0x1f

    if-eqz v21, :cond_a

    aget v21, v17, v12

    and-int/lit8 v21, v21, 0x1f

    const/16 v22, 0x1f

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    .line 767
    :cond_a
    const/16 v21, 0x3

    move/from16 v0, v21

    if-le v15, v0, :cond_b

    .line 768
    aget-boolean v21, v16, v12

    if-eqz v21, :cond_e

    .line 769
    aget v21, v2, v12

    add-int/lit8 v21, v21, 0x1

    aput v21, v2, v12

    .line 778
    :cond_b
    :goto_4
    aget v21, v20, v12

    and-int/lit8 v21, v21, 0x1f

    if-eqz v21, :cond_c

    aget v21, v20, v12

    and-int/lit8 v21, v21, 0x1f

    const/16 v22, 0x1f

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    .line 779
    :cond_c
    const/16 v21, 0x3

    move/from16 v0, v21

    if-le v15, v0, :cond_d

    .line 780
    aget-boolean v21, v19, v12

    if-eqz v21, :cond_10

    .line 781
    aget v21, v2, v12

    add-int/lit8 v21, v21, 0x1

    aput v21, v2, v12

    .line 735
    :cond_d
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 771
    :cond_e
    aget v21, v2, v12

    add-int/lit8 v21, v21, 0x3

    aput v21, v2, v12

    .line 772
    const/16 v21, 0x1

    aput-boolean v21, v16, v12

    goto :goto_4

    .line 776
    :cond_f
    const/16 v21, 0x0

    aput-boolean v21, v16, v12

    goto :goto_4

    .line 783
    :cond_10
    aget v21, v2, v12

    add-int/lit8 v21, v21, 0x3

    aput v21, v2, v12

    .line 784
    const/16 v21, 0x1

    aput-boolean v21, v19, v12

    goto :goto_5

    .line 788
    :cond_11
    const/16 v21, 0x0

    aput-boolean v21, v19, v12

    goto :goto_5

    .line 799
    .end local v15    # "x":I
    .end local v16    # "xD1Flag":[Z
    .end local v17    # "xData":[I
    .end local v19    # "yD1Flag":[Z
    .end local v20    # "yData":[I
    .restart local v9    # "d4Value":[I
    .restart local v13    # "minValue":I
    .restart local v14    # "res":B
    :cond_12
    aget v21, v8, v12

    mul-int/lit8 v21, v21, 0x14

    div-int v21, v21, p1

    aget v21, v9, v21

    aput v21, v7, v12

    .line 801
    aget v21, v2, v12

    aget v22, v3, v12

    add-int v21, v21, v22

    aget v22, v6, v12

    add-int v21, v21, v22

    aget v22, v7, v12

    add-int v10, v21, v22

    .line 803
    .local v10, "demerit":I
    if-lt v10, v13, :cond_13

    if-nez v12, :cond_14

    .line 804
    :cond_13
    int-to-byte v14, v12

    .line 805
    move v13, v10

    .line 797
    :cond_14
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public calQrcode([B)[[Z
    .locals 62
    .param p1, "qrcodeData"    # [B

    .prologue
    .line 141
    const/16 v18, 0x0

    .line 143
    .local v18, "dataCounter":I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    .line 145
    .local v19, "dataLength":I
    add-int/lit8 v58, v19, 0x20

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 146
    .local v20, "dataValue":[I
    add-int/lit8 v58, v19, 0x20

    move/from16 v0, v58

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 148
    .local v16, "dataBits":[B
    if-gtz v19, :cond_0

    .line 149
    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [[Z

    move-object/from16 v52, v0

    const/16 v58, 0x0

    const/16 v59, 0x1

    move/from16 v0, v59

    new-array v0, v0, [Z

    move-object/from16 v59, v0

    aput-object v59, v52, v58

    .line 513
    :goto_0
    return-object v52

    .line 153
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/swetake/util/Qrcode;->qrcodeStructureappendN:I

    move/from16 v58, v0

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-le v0, v1, :cond_1

    .line 154
    const/16 v58, 0x0

    const/16 v59, 0x3

    aput v59, v20, v58

    .line 155
    const/16 v58, 0x0

    const/16 v59, 0x4

    aput-byte v59, v16, v58

    .line 157
    const/16 v58, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/swetake/util/Qrcode;->qrcodeStructureappendM:I

    move/from16 v59, v0

    add-int/lit8 v59, v59, -0x1

    aput v59, v20, v58

    .line 158
    const/16 v58, 0x1

    const/16 v59, 0x4

    aput-byte v59, v16, v58

    .line 160
    const/16 v58, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/swetake/util/Qrcode;->qrcodeStructureappendN:I

    move/from16 v59, v0

    add-int/lit8 v59, v59, -0x1

    aput v59, v20, v58

    .line 161
    const/16 v58, 0x2

    const/16 v59, 0x4

    aput-byte v59, v16, v58

    .line 163
    const/16 v58, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/swetake/util/Qrcode;->qrcodeStructureappendParity:I

    move/from16 v59, v0

    aput v59, v20, v58

    .line 164
    const/16 v58, 0x3

    const/16 v59, 0x8

    aput-byte v59, v16, v58

    .line 166
    const/16 v18, 0x4

    .line 168
    :cond_1
    const/16 v58, 0x4

    aput-byte v58, v16, v18

    .line 175
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/swetake/util/Qrcode;->qrcodeEncodeMode:C

    move/from16 v58, v0

    sparse-switch v58, :sswitch_data_0

    .line 266
    const/16 v58, 0x29

    move/from16 v0, v58

    new-array v12, v0, [I

    const/16 v58, 0xa

    .line 267
    const/16 v59, 0x8

    aput v59, v12, v58

    const/16 v58, 0xb

    const/16 v59, 0x8

    aput v59, v12, v58

    const/16 v58, 0xc

    const/16 v59, 0x8

    aput v59, v12, v58

    const/16 v58, 0xd

    const/16 v59, 0x8

    aput v59, v12, v58

    const/16 v58, 0xe

    const/16 v59, 0x8

    aput v59, v12, v58

    const/16 v58, 0xf

    const/16 v59, 0x8

    aput v59, v12, v58

    const/16 v58, 0x10

    const/16 v59, 0x8

    aput v59, v12, v58

    const/16 v58, 0x11

    const/16 v59, 0x8

    aput v59, v12, v58

    const/16 v58, 0x12

    const/16 v59, 0x8

    aput v59, v12, v58

    const/16 v58, 0x13

    const/16 v59, 0x8

    aput v59, v12, v58

    const/16 v58, 0x14

    const/16 v59, 0x8

    aput v59, v12, v58

    const/16 v58, 0x15

    const/16 v59, 0x8

    aput v59, v12, v58

    const/16 v58, 0x16

    const/16 v59, 0x8

    aput v59, v12, v58

    const/16 v58, 0x17

    const/16 v59, 0x8

    aput v59, v12, v58

    const/16 v58, 0x18

    const/16 v59, 0x8

    aput v59, v12, v58

    const/16 v58, 0x19

    const/16 v59, 0x8

    aput v59, v12, v58

    const/16 v58, 0x1a

    const/16 v59, 0x8

    aput v59, v12, v58

    const/16 v58, 0x1b

    .line 268
    const/16 v59, 0x8

    aput v59, v12, v58

    const/16 v58, 0x1c

    const/16 v59, 0x8

    aput v59, v12, v58

    const/16 v58, 0x1d

    const/16 v59, 0x8

    aput v59, v12, v58

    const/16 v58, 0x1e

    const/16 v59, 0x8

    aput v59, v12, v58

    const/16 v58, 0x1f

    const/16 v59, 0x8

    aput v59, v12, v58

    const/16 v58, 0x20

    const/16 v59, 0x8

    aput v59, v12, v58

    const/16 v58, 0x21

    const/16 v59, 0x8

    aput v59, v12, v58

    const/16 v58, 0x22

    const/16 v59, 0x8

    aput v59, v12, v58

    const/16 v58, 0x23

    const/16 v59, 0x8

    aput v59, v12, v58

    const/16 v58, 0x24

    const/16 v59, 0x8

    aput v59, v12, v58

    const/16 v58, 0x25

    const/16 v59, 0x8

    aput v59, v12, v58

    const/16 v58, 0x26

    const/16 v59, 0x8

    aput v59, v12, v58

    const/16 v58, 0x27

    const/16 v59, 0x8

    aput v59, v12, v58

    const/16 v58, 0x28

    const/16 v59, 0x8

    aput v59, v12, v58

    .line 269
    .local v12, "codewordNumPlus":[I
    const/16 v58, 0x4

    aput v58, v20, v18

    .line 270
    add-int/lit8 v18, v18, 0x1

    .line 271
    aput v19, v20, v18

    .line 272
    const/16 v58, 0x8

    aput-byte v58, v16, v18

    .line 273
    move/from16 v11, v18

    .line 275
    .local v11, "codewordNumCounterValue":I
    add-int/lit8 v18, v18, 0x1

    .line 277
    const/16 v32, 0x0

    .local v32, "i":I
    :goto_1
    move/from16 v0, v32

    move/from16 v1, v19

    if-lt v0, v1, :cond_15

    .line 281
    add-int v18, v18, v19

    .line 286
    :goto_2
    const/16 v57, 0x0

    .line 287
    .local v57, "totalDataBits":I
    const/16 v32, 0x0

    :goto_3
    move/from16 v0, v32

    move/from16 v1, v18

    if-lt v0, v1, :cond_16

    .line 292
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/swetake/util/Qrcode;->qrcodeErrorCorrect:C

    move/from16 v58, v0

    sparse-switch v58, :sswitch_data_1

    .line 303
    const/16 v22, 0x0

    .line 307
    .local v22, "ec":I
    :goto_4
    const/16 v58, 0x4

    move/from16 v0, v58

    new-array v0, v0, [[I

    move-object/from16 v46, v0

    const/16 v58, 0x0

    .line 308
    const/16 v59, 0x29

    move/from16 v0, v59

    new-array v0, v0, [I

    move-object/from16 v59, v0

    const/16 v60, 0x1

    const/16 v61, 0x80

    aput v61, v59, v60

    const/16 v60, 0x2

    const/16 v61, 0xe0

    aput v61, v59, v60

    const/16 v60, 0x3

    const/16 v61, 0x160

    aput v61, v59, v60

    const/16 v60, 0x4

    const/16 v61, 0x200

    aput v61, v59, v60

    const/16 v60, 0x5

    const/16 v61, 0x2b0

    aput v61, v59, v60

    const/16 v60, 0x6

    const/16 v61, 0x360

    aput v61, v59, v60

    const/16 v60, 0x7

    const/16 v61, 0x3e0

    aput v61, v59, v60

    const/16 v60, 0x8

    const/16 v61, 0x4d0

    aput v61, v59, v60

    const/16 v60, 0x9

    const/16 v61, 0x5b0

    aput v61, v59, v60

    const/16 v60, 0xa

    const/16 v61, 0x6c0

    aput v61, v59, v60

    const/16 v60, 0xb

    .line 309
    const/16 v61, 0x7f0

    aput v61, v59, v60

    const/16 v60, 0xc

    const/16 v61, 0x910

    aput v61, v59, v60

    const/16 v60, 0xd

    const/16 v61, 0xa70

    aput v61, v59, v60

    const/16 v60, 0xe

    const/16 v61, 0xb68

    aput v61, v59, v60

    const/16 v60, 0xf

    const/16 v61, 0xcf8

    aput v61, v59, v60

    const/16 v60, 0x10

    const/16 v61, 0xe28

    aput v61, v59, v60

    const/16 v60, 0x11

    const/16 v61, 0xfd8

    aput v61, v59, v60

    const/16 v60, 0x12

    const/16 v61, 0x1198

    aput v61, v59, v60

    const/16 v60, 0x13

    const/16 v61, 0x1398

    aput v61, v59, v60

    const/16 v60, 0x14

    const/16 v61, 0x14e8

    aput v61, v59, v60

    const/16 v60, 0x15

    .line 310
    const/16 v61, 0x1650

    aput v61, v59, v60

    const/16 v60, 0x16

    const/16 v61, 0x1870

    aput v61, v59, v60

    const/16 v60, 0x17

    const/16 v61, 0x1ae0

    aput v61, v59, v60

    const/16 v60, 0x18

    const/16 v61, 0x1c90

    aput v61, v59, v60

    const/16 v60, 0x19

    const/16 v61, 0x1f40

    aput v61, v59, v60

    const/16 v60, 0x1a

    const/16 v61, 0x2130

    aput v61, v59, v60

    const/16 v60, 0x1b

    const/16 v61, 0x2340

    aput v61, v59, v60

    const/16 v60, 0x1c

    const/16 v61, 0x2548

    aput v61, v59, v60

    const/16 v60, 0x1d

    const/16 v61, 0x2798

    aput v61, v59, v60

    const/16 v60, 0x1e

    const/16 v61, 0x2ae8

    aput v61, v59, v60

    const/16 v60, 0x1f

    .line 311
    const/16 v61, 0x2d78

    aput v61, v59, v60

    const/16 v60, 0x20

    const/16 v61, 0x3028

    aput v61, v59, v60

    const/16 v60, 0x21

    const/16 v61, 0x32f8

    aput v61, v59, v60

    const/16 v60, 0x22

    const/16 v61, 0x35e8

    aput v61, v59, v60

    const/16 v60, 0x23

    const/16 v61, 0x38a0

    aput v61, v59, v60

    const/16 v60, 0x24

    const/16 v61, 0x3bd0

    aput v61, v59, v60

    const/16 v60, 0x25

    const/16 v61, 0x3e40

    aput v61, v59, v60

    const/16 v60, 0x26

    const/16 v61, 0x41b0

    aput v61, v59, v60

    const/16 v60, 0x27

    const/16 v61, 0x4540

    aput v61, v59, v60

    const/16 v60, 0x28

    const/16 v61, 0x48f0

    aput v61, v59, v60

    aput-object v59, v46, v58

    const/16 v58, 0x1

    .line 313
    const/16 v59, 0x29

    move/from16 v0, v59

    new-array v0, v0, [I

    move-object/from16 v59, v0

    const/16 v60, 0x1

    const/16 v61, 0x98

    aput v61, v59, v60

    const/16 v60, 0x2

    const/16 v61, 0x110

    aput v61, v59, v60

    const/16 v60, 0x3

    const/16 v61, 0x1b8

    aput v61, v59, v60

    const/16 v60, 0x4

    const/16 v61, 0x280

    aput v61, v59, v60

    const/16 v60, 0x5

    const/16 v61, 0x360

    aput v61, v59, v60

    const/16 v60, 0x6

    const/16 v61, 0x440

    aput v61, v59, v60

    const/16 v60, 0x7

    const/16 v61, 0x4e0

    aput v61, v59, v60

    const/16 v60, 0x8

    const/16 v61, 0x610

    aput v61, v59, v60

    const/16 v60, 0x9

    const/16 v61, 0x740

    aput v61, v59, v60

    const/16 v60, 0xa

    const/16 v61, 0x890

    aput v61, v59, v60

    const/16 v60, 0xb

    .line 314
    const/16 v61, 0xa20

    aput v61, v59, v60

    const/16 v60, 0xc

    const/16 v61, 0xb90

    aput v61, v59, v60

    const/16 v60, 0xd

    const/16 v61, 0xd60

    aput v61, v59, v60

    const/16 v60, 0xe

    const/16 v61, 0xe68

    aput v61, v59, v60

    const/16 v60, 0xf

    const/16 v61, 0x1058

    aput v61, v59, v60

    const/16 v60, 0x10

    const/16 v61, 0x1268

    aput v61, v59, v60

    const/16 v60, 0x11

    const/16 v61, 0x1438

    aput v61, v59, v60

    const/16 v60, 0x12

    const/16 v61, 0x1688

    aput v61, v59, v60

    const/16 v60, 0x13

    const/16 v61, 0x18d8

    aput v61, v59, v60

    const/16 v60, 0x14

    const/16 v61, 0x1ae8

    aput v61, v59, v60

    const/16 v60, 0x15

    .line 315
    const/16 v61, 0x1d20

    aput v61, v59, v60

    const/16 v60, 0x16

    const/16 v61, 0x1f70

    aput v61, v59, v60

    const/16 v60, 0x17

    const/16 v61, 0x2230

    aput v61, v59, v60

    const/16 v60, 0x18

    const/16 v61, 0x24b0

    aput v61, v59, v60

    const/16 v60, 0x19

    const/16 v61, 0x27e0

    aput v61, v59, v60

    const/16 v60, 0x1a

    const/16 v61, 0x2ad0

    aput v61, v59, v60

    const/16 v60, 0x1b

    const/16 v61, 0x2de0

    aput v61, v59, v60

    const/16 v60, 0x1c

    const/16 v61, 0x2fd8

    aput v61, v59, v60

    const/16 v60, 0x1d

    const/16 v61, 0x32f8

    aput v61, v59, v60

    const/16 v60, 0x1e

    const/16 v61, 0x3638

    aput v61, v59, v60

    const/16 v60, 0x1f

    .line 316
    const/16 v61, 0x3998

    aput v61, v59, v60

    const/16 v60, 0x20

    const/16 v61, 0x3d18

    aput v61, v59, v60

    const/16 v60, 0x21

    const/16 v61, 0x40b8

    aput v61, v59, v60

    const/16 v60, 0x22

    const/16 v61, 0x4478

    aput v61, v59, v60

    const/16 v60, 0x23

    const/16 v61, 0x4810

    aput v61, v59, v60

    const/16 v60, 0x24

    const/16 v61, 0x4c10

    aput v61, v59, v60

    const/16 v60, 0x25

    const/16 v61, 0x5030

    aput v61, v59, v60

    const/16 v60, 0x26

    const/16 v61, 0x5470

    aput v61, v59, v60

    const/16 v60, 0x27

    const/16 v61, 0x57e0

    aput v61, v59, v60

    const/16 v60, 0x28

    const/16 v61, 0x5c60

    aput v61, v59, v60

    aput-object v59, v46, v58

    const/16 v58, 0x2

    .line 318
    const/16 v59, 0x29

    move/from16 v0, v59

    new-array v0, v0, [I

    move-object/from16 v59, v0

    const/16 v60, 0x1

    const/16 v61, 0x48

    aput v61, v59, v60

    const/16 v60, 0x2

    const/16 v61, 0x80

    aput v61, v59, v60

    const/16 v60, 0x3

    const/16 v61, 0xd0

    aput v61, v59, v60

    const/16 v60, 0x4

    const/16 v61, 0x120

    aput v61, v59, v60

    const/16 v60, 0x5

    const/16 v61, 0x170

    aput v61, v59, v60

    const/16 v60, 0x6

    const/16 v61, 0x1e0

    aput v61, v59, v60

    const/16 v60, 0x7

    const/16 v61, 0x210

    aput v61, v59, v60

    const/16 v60, 0x8

    const/16 v61, 0x2b0

    aput v61, v59, v60

    const/16 v60, 0x9

    const/16 v61, 0x320

    aput v61, v59, v60

    const/16 v60, 0xa

    const/16 v61, 0x3d0

    aput v61, v59, v60

    const/16 v60, 0xb

    .line 319
    const/16 v61, 0x460

    aput v61, v59, v60

    const/16 v60, 0xc

    const/16 v61, 0x4f0

    aput v61, v59, v60

    const/16 v60, 0xd

    const/16 v61, 0x5a0

    aput v61, v59, v60

    const/16 v60, 0xe

    const/16 v61, 0x628

    aput v61, v59, v60

    const/16 v60, 0xf

    const/16 v61, 0x6f8

    aput v61, v59, v60

    const/16 v60, 0x10

    const/16 v61, 0x7e8

    aput v61, v59, v60

    const/16 v60, 0x11

    const/16 v61, 0x8d8

    aput v61, v59, v60

    const/16 v60, 0x12

    const/16 v61, 0x9c8

    aput v61, v59, v60

    const/16 v60, 0x13

    const/16 v61, 0xaa8

    aput v61, v59, v60

    const/16 v60, 0x14

    const/16 v61, 0xc08

    aput v61, v59, v60

    const/16 v60, 0x15

    .line 320
    const/16 v61, 0xcb0

    aput v61, v59, v60

    const/16 v60, 0x16

    const/16 v61, 0xdd0

    aput v61, v59, v60

    const/16 v60, 0x17

    const/16 v61, 0xe80

    aput v61, v59, v60

    const/16 v60, 0x18

    const/16 v61, 0x1010

    aput v61, v59, v60

    const/16 v60, 0x19

    const/16 v61, 0x10d0

    aput v61, v59, v60

    const/16 v60, 0x1a

    const/16 v61, 0x12a0

    aput v61, v59, v60

    const/16 v60, 0x1b

    const/16 v61, 0x13a0

    aput v61, v59, v60

    const/16 v60, 0x1c

    const/16 v61, 0x14a8

    aput v61, v59, v60

    const/16 v60, 0x1d

    const/16 v61, 0x15e8

    aput v61, v59, v60

    const/16 v60, 0x1e

    const/16 v61, 0x1748

    aput v61, v59, v60

    const/16 v60, 0x1f

    .line 321
    const/16 v61, 0x18c8

    aput v61, v59, v60

    const/16 v60, 0x20

    const/16 v61, 0x1a68

    aput v61, v59, v60

    const/16 v60, 0x21

    const/16 v61, 0x1c28

    aput v61, v59, v60

    const/16 v60, 0x22

    const/16 v61, 0x1e08

    aput v61, v59, v60

    const/16 v60, 0x23

    const/16 v61, 0x1ed0

    aput v61, v59, v60

    const/16 v60, 0x24

    const/16 v61, 0x20f0

    aput v61, v59, v60

    const/16 v60, 0x25

    const/16 v61, 0x2240

    aput v61, v59, v60

    const/16 v60, 0x26

    const/16 v61, 0x23b0

    aput v61, v59, v60

    const/16 v60, 0x27

    const/16 v61, 0x2630

    aput v61, v59, v60

    const/16 v60, 0x28

    const/16 v61, 0x27e0

    aput v61, v59, v60

    aput-object v59, v46, v58

    const/16 v58, 0x3

    .line 323
    const/16 v59, 0x29

    move/from16 v0, v59

    new-array v0, v0, [I

    move-object/from16 v59, v0

    const/16 v60, 0x1

    const/16 v61, 0x68

    aput v61, v59, v60

    const/16 v60, 0x2

    const/16 v61, 0xb0

    aput v61, v59, v60

    const/16 v60, 0x3

    const/16 v61, 0x110

    aput v61, v59, v60

    const/16 v60, 0x4

    const/16 v61, 0x180

    aput v61, v59, v60

    const/16 v60, 0x5

    const/16 v61, 0x1f0

    aput v61, v59, v60

    const/16 v60, 0x6

    const/16 v61, 0x260

    aput v61, v59, v60

    const/16 v60, 0x7

    const/16 v61, 0x2c0

    aput v61, v59, v60

    const/16 v60, 0x8

    const/16 v61, 0x370

    aput v61, v59, v60

    const/16 v60, 0x9

    const/16 v61, 0x420

    aput v61, v59, v60

    const/16 v60, 0xa

    const/16 v61, 0x4d0

    aput v61, v59, v60

    const/16 v60, 0xb

    .line 324
    const/16 v61, 0x5a0

    aput v61, v59, v60

    const/16 v60, 0xc

    const/16 v61, 0x670

    aput v61, v59, v60

    const/16 v60, 0xd

    const/16 v61, 0x7a0

    aput v61, v59, v60

    const/16 v60, 0xe

    const/16 v61, 0x828

    aput v61, v59, v60

    const/16 v60, 0xf

    const/16 v61, 0x938

    aput v61, v59, v60

    const/16 v60, 0x10

    const/16 v61, 0xa28

    aput v61, v59, v60

    const/16 v60, 0x11

    const/16 v61, 0xb78

    aput v61, v59, v60

    const/16 v60, 0x12

    const/16 v61, 0xc68

    aput v61, v59, v60

    const/16 v60, 0x13

    const/16 v61, 0xde8

    aput v61, v59, v60

    const/16 v60, 0x14

    const/16 v61, 0xf28

    aput v61, v59, v60

    const/16 v60, 0x15

    .line 325
    const/16 v61, 0x1000

    aput v61, v59, v60

    const/16 v60, 0x16

    const/16 v61, 0x11c0

    aput v61, v59, v60

    const/16 v60, 0x17

    const/16 v61, 0x1330

    aput v61, v59, v60

    const/16 v60, 0x18

    const/16 v61, 0x14c0

    aput v61, v59, v60

    const/16 v60, 0x19

    const/16 v61, 0x1670

    aput v61, v59, v60

    const/16 v60, 0x1a

    const/16 v61, 0x1790

    aput v61, v59, v60

    const/16 v60, 0x1b

    const/16 v61, 0x1940

    aput v61, v59, v60

    const/16 v60, 0x1c

    const/16 v61, 0x1b38

    aput v61, v59, v60

    const/16 v60, 0x1d

    const/16 v61, 0x1c78

    aput v61, v59, v60

    const/16 v60, 0x1e

    const/16 v61, 0x1ec8

    aput v61, v59, v60

    const/16 v60, 0x1f

    .line 326
    const/16 v61, 0x2048

    aput v61, v59, v60

    const/16 v60, 0x20

    const/16 v61, 0x22d8

    aput v61, v59, v60

    const/16 v60, 0x21

    const/16 v61, 0x2498

    aput v61, v59, v60

    const/16 v60, 0x22

    const/16 v61, 0x2678

    aput v61, v59, v60

    const/16 v60, 0x23

    const/16 v61, 0x2830

    aput v61, v59, v60

    const/16 v60, 0x24

    const/16 v61, 0x2a50

    aput v61, v59, v60

    const/16 v60, 0x25

    const/16 v61, 0x2c90

    aput v61, v59, v60

    const/16 v60, 0x26

    const/16 v61, 0x2ef0

    aput v61, v59, v60

    const/16 v60, 0x27

    const/16 v61, 0x3170

    aput v61, v59, v60

    const/16 v60, 0x28

    const/16 v61, 0x3410

    aput v61, v59, v60

    aput-object v59, v46, v58

    .line 329
    .local v46, "maxDataBitsArray":[[I
    const/16 v45, 0x0

    .line 331
    .local v45, "maxDataBits":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/swetake/util/Qrcode;->qrcodeVersion:I

    move/from16 v58, v0

    if-nez v58, :cond_19

    .line 334
    const/16 v58, 0x1

    move/from16 v0, v58

    move-object/from16 v1, p0

    iput v0, v1, Lcom/swetake/util/Qrcode;->qrcodeVersion:I

    .line 335
    const/16 v32, 0x1

    :goto_5
    const/16 v58, 0x28

    move/from16 v0, v32

    move/from16 v1, v58

    if-le v0, v1, :cond_17

    .line 345
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/swetake/util/Qrcode;->qrcodeVersion:I

    move/from16 v58, v0

    aget v58, v12, v58

    add-int v57, v57, v58

    .line 346
    aget-byte v58, v16, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/swetake/util/Qrcode;->qrcodeVersion:I

    move/from16 v59, v0

    aget v59, v12, v59

    add-int v58, v58, v59

    move/from16 v0, v58

    int-to-byte v0, v0

    move/from16 v58, v0

    aput-byte v58, v16, v11

    .line 348
    const/16 v58, 0x29

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v44, v0

    const/16 v58, 0x1

    const/16 v59, 0x1a

    aput v59, v44, v58

    const/16 v58, 0x2

    const/16 v59, 0x2c

    aput v59, v44, v58

    const/16 v58, 0x3

    const/16 v59, 0x46

    aput v59, v44, v58

    const/16 v58, 0x4

    const/16 v59, 0x64

    aput v59, v44, v58

    const/16 v58, 0x5

    const/16 v59, 0x86

    aput v59, v44, v58

    const/16 v58, 0x6

    const/16 v59, 0xac

    aput v59, v44, v58

    const/16 v58, 0x7

    const/16 v59, 0xc4

    aput v59, v44, v58

    const/16 v58, 0x8

    const/16 v59, 0xf2

    aput v59, v44, v58

    const/16 v58, 0x9

    .line 349
    const/16 v59, 0x124

    aput v59, v44, v58

    const/16 v58, 0xa

    const/16 v59, 0x15a

    aput v59, v44, v58

    const/16 v58, 0xb

    const/16 v59, 0x194

    aput v59, v44, v58

    const/16 v58, 0xc

    const/16 v59, 0x1d2

    aput v59, v44, v58

    const/16 v58, 0xd

    const/16 v59, 0x214

    aput v59, v44, v58

    const/16 v58, 0xe

    const/16 v59, 0x245

    aput v59, v44, v58

    const/16 v58, 0xf

    const/16 v59, 0x28f

    aput v59, v44, v58

    const/16 v58, 0x10

    const/16 v59, 0x2dd

    aput v59, v44, v58

    const/16 v58, 0x11

    const/16 v59, 0x32f

    aput v59, v44, v58

    const/16 v58, 0x12

    const/16 v59, 0x385

    aput v59, v44, v58

    const/16 v58, 0x13

    const/16 v59, 0x3df

    aput v59, v44, v58

    const/16 v58, 0x14

    const/16 v59, 0x43d

    aput v59, v44, v58

    const/16 v58, 0x15

    const/16 v59, 0x484

    aput v59, v44, v58

    const/16 v58, 0x16

    .line 350
    const/16 v59, 0x4ea

    aput v59, v44, v58

    const/16 v58, 0x17

    const/16 v59, 0x554

    aput v59, v44, v58

    const/16 v58, 0x18

    const/16 v59, 0x5c2

    aput v59, v44, v58

    const/16 v58, 0x19

    const/16 v59, 0x634

    aput v59, v44, v58

    const/16 v58, 0x1a

    const/16 v59, 0x6aa

    aput v59, v44, v58

    const/16 v58, 0x1b

    const/16 v59, 0x724

    aput v59, v44, v58

    const/16 v58, 0x1c

    const/16 v59, 0x781

    aput v59, v44, v58

    const/16 v58, 0x1d

    const/16 v59, 0x803

    aput v59, v44, v58

    const/16 v58, 0x1e

    const/16 v59, 0x889

    aput v59, v44, v58

    const/16 v58, 0x1f

    const/16 v59, 0x913

    aput v59, v44, v58

    const/16 v58, 0x20

    const/16 v59, 0x9a1

    aput v59, v44, v58

    const/16 v58, 0x21

    .line 351
    const/16 v59, 0xa33

    aput v59, v44, v58

    const/16 v58, 0x22

    const/16 v59, 0xac9

    aput v59, v44, v58

    const/16 v58, 0x23

    const/16 v59, 0xb3c

    aput v59, v44, v58

    const/16 v58, 0x24

    const/16 v59, 0xbda

    aput v59, v44, v58

    const/16 v58, 0x25

    const/16 v59, 0xc7c

    aput v59, v44, v58

    const/16 v58, 0x26

    const/16 v59, 0xd22

    aput v59, v44, v58

    const/16 v58, 0x27

    const/16 v59, 0xdcc

    aput v59, v44, v58

    const/16 v58, 0x28

    const/16 v59, 0xe7a

    aput v59, v44, v58

    .line 353
    .local v44, "maxCodewordsArray":[I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/swetake/util/Qrcode;->qrcodeVersion:I

    move/from16 v58, v0

    aget v43, v44, v58

    .line 354
    .local v43, "maxCodewords":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/swetake/util/Qrcode;->qrcodeVersion:I

    move/from16 v58, v0

    shl-int/lit8 v58, v58, 0x2

    add-int/lit8 v48, v58, 0x11

    .line 356
    .local v48, "maxModules1side":I
    const/16 v58, 0x29

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v39, v0

    const/16 v58, 0x2

    const/16 v59, 0x7

    aput v59, v39, v58

    const/16 v58, 0x3

    const/16 v59, 0x7

    aput v59, v39, v58

    const/16 v58, 0x4

    const/16 v59, 0x7

    aput v59, v39, v58

    const/16 v58, 0x5

    const/16 v59, 0x7

    aput v59, v39, v58

    const/16 v58, 0x6

    const/16 v59, 0x7

    aput v59, v39, v58

    const/16 v58, 0xe

    const/16 v59, 0x3

    aput v59, v39, v58

    const/16 v58, 0xf

    const/16 v59, 0x3

    aput v59, v39, v58

    const/16 v58, 0x10

    const/16 v59, 0x3

    aput v59, v39, v58

    const/16 v58, 0x11

    const/16 v59, 0x3

    aput v59, v39, v58

    const/16 v58, 0x12

    const/16 v59, 0x3

    aput v59, v39, v58

    const/16 v58, 0x13

    const/16 v59, 0x3

    aput v59, v39, v58

    const/16 v58, 0x14

    const/16 v59, 0x3

    aput v59, v39, v58

    const/16 v58, 0x15

    .line 357
    const/16 v59, 0x4

    aput v59, v39, v58

    const/16 v58, 0x16

    const/16 v59, 0x4

    aput v59, v39, v58

    const/16 v58, 0x17

    const/16 v59, 0x4

    aput v59, v39, v58

    const/16 v58, 0x18

    const/16 v59, 0x4

    aput v59, v39, v58

    const/16 v58, 0x19

    const/16 v59, 0x4

    aput v59, v39, v58

    const/16 v58, 0x1a

    const/16 v59, 0x4

    aput v59, v39, v58

    const/16 v58, 0x1b

    const/16 v59, 0x4

    aput v59, v39, v58

    const/16 v58, 0x1c

    const/16 v59, 0x3

    aput v59, v39, v58

    const/16 v58, 0x1d

    const/16 v59, 0x3

    aput v59, v39, v58

    const/16 v58, 0x1e

    const/16 v59, 0x3

    aput v59, v39, v58

    const/16 v58, 0x1f

    const/16 v59, 0x3

    aput v59, v39, v58

    const/16 v58, 0x20

    const/16 v59, 0x3

    aput v59, v39, v58

    const/16 v58, 0x21

    const/16 v59, 0x3

    aput v59, v39, v58

    const/16 v58, 0x22

    const/16 v59, 0x3

    aput v59, v39, v58

    .line 361
    .local v39, "matrixRemainBit":[I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/swetake/util/Qrcode;->qrcodeVersion:I

    move/from16 v58, v0

    aget v58, v39, v58

    shl-int/lit8 v59, v43, 0x3

    add-int v6, v58, v59

    .line 363
    .local v6, "byte_num":I
    new-array v0, v6, [B

    move-object/from16 v41, v0

    .line 364
    .local v41, "matrixX":[B
    new-array v0, v6, [B

    move-object/from16 v42, v0

    .line 365
    .local v42, "matrixY":[B
    new-array v0, v6, [B

    move-object/from16 v34, v0

    .line 366
    .local v34, "maskArray":[B
    const/16 v58, 0xf

    move/from16 v0, v58

    new-array v0, v0, [B

    move-object/from16 v28, v0

    .line 367
    .local v28, "formatInformationX2":[B
    const/16 v58, 0xf

    move/from16 v0, v58

    new-array v0, v0, [B

    move-object/from16 v30, v0

    .line 368
    .local v30, "formatInformationY2":[B
    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [B

    move-object/from16 v56, v0

    .line 369
    .local v56, "rsEccCodewords":[B
    const/16 v58, 0x80

    move/from16 v0, v58

    new-array v0, v0, [B

    move-object/from16 v55, v0

    .line 372
    .local v55, "rsBlockOrderTemp":[B
    :try_start_0
    new-instance v58, Ljava/lang/StringBuilder;

    const-string v59, "qrcode_data/qrv"

    invoke-direct/range {v58 .. v59}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/swetake/util/Qrcode;->qrcodeVersion:I

    move/from16 v59, v0

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, "_"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, ".dat"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 374
    .local v23, "filename":Ljava/lang/String;
    const-class v58, Lcom/swetake/util/Qrcode;

    move-object/from16 v0, v58

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v24

    .line 375
    .local v24, "fis":Ljava/io/InputStream;
    new-instance v5, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 376
    .local v5, "bis":Ljava/io/BufferedInputStream;
    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 377
    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 378
    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 379
    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 380
    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 381
    move-object/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 382
    move-object/from16 v0, v55

    invoke-virtual {v5, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 383
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 384
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .end local v23    # "filename":Ljava/lang/String;
    .end local v24    # "fis":Ljava/io/InputStream;
    :goto_7
    const/16 v54, 0x1

    .line 390
    .local v54, "rsBlockOrderLength":B
    const/16 v32, 0x1

    .local v32, "i":B
    :goto_8
    const/16 v58, 0x80

    move/from16 v0, v32

    move/from16 v1, v58

    if-lt v0, v1, :cond_1a

    .line 396
    :goto_9
    move/from16 v0, v54

    new-array v0, v0, [B

    move-object/from16 v53, v0

    .line 397
    .local v53, "rsBlockOrder":[B
    const/16 v58, 0x0

    const/16 v59, 0x0

    move-object/from16 v0, v55

    move/from16 v1, v58

    move-object/from16 v2, v53

    move/from16 v3, v59

    move/from16 v4, v54

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    const/16 v58, 0xf

    move/from16 v0, v58

    new-array v0, v0, [B

    move-object/from16 v27, v0

    const/16 v58, 0x1

    const/16 v59, 0x1

    aput-byte v59, v27, v58

    const/16 v58, 0x2

    const/16 v59, 0x2

    aput-byte v59, v27, v58

    const/16 v58, 0x3

    const/16 v59, 0x3

    aput-byte v59, v27, v58

    const/16 v58, 0x4

    const/16 v59, 0x4

    aput-byte v59, v27, v58

    const/16 v58, 0x5

    const/16 v59, 0x5

    aput-byte v59, v27, v58

    const/16 v58, 0x6

    const/16 v59, 0x7

    aput-byte v59, v27, v58

    const/16 v58, 0x7

    const/16 v59, 0x8

    aput-byte v59, v27, v58

    const/16 v58, 0x8

    const/16 v59, 0x8

    aput-byte v59, v27, v58

    const/16 v58, 0x9

    const/16 v59, 0x8

    aput-byte v59, v27, v58

    const/16 v58, 0xa

    const/16 v59, 0x8

    aput-byte v59, v27, v58

    const/16 v58, 0xb

    const/16 v59, 0x8

    aput-byte v59, v27, v58

    const/16 v58, 0xc

    const/16 v59, 0x8

    aput-byte v59, v27, v58

    const/16 v58, 0xd

    const/16 v59, 0x8

    aput-byte v59, v27, v58

    const/16 v58, 0xe

    const/16 v59, 0x8

    aput-byte v59, v27, v58

    .line 401
    .local v27, "formatInformationX1":[B
    const/16 v58, 0xf

    move/from16 v0, v58

    new-array v0, v0, [B

    move-object/from16 v29, v0

    const/16 v58, 0x0

    const/16 v59, 0x8

    aput-byte v59, v29, v58

    const/16 v58, 0x1

    const/16 v59, 0x8

    aput-byte v59, v29, v58

    const/16 v58, 0x2

    const/16 v59, 0x8

    aput-byte v59, v29, v58

    const/16 v58, 0x3

    const/16 v59, 0x8

    aput-byte v59, v29, v58

    const/16 v58, 0x4

    const/16 v59, 0x8

    aput-byte v59, v29, v58

    const/16 v58, 0x5

    const/16 v59, 0x8

    aput-byte v59, v29, v58

    const/16 v58, 0x6

    const/16 v59, 0x8

    aput-byte v59, v29, v58

    const/16 v58, 0x7

    const/16 v59, 0x8

    aput-byte v59, v29, v58

    const/16 v58, 0x8

    const/16 v59, 0x7

    aput-byte v59, v29, v58

    const/16 v58, 0x9

    const/16 v59, 0x5

    aput-byte v59, v29, v58

    const/16 v58, 0xa

    const/16 v59, 0x4

    aput-byte v59, v29, v58

    const/16 v58, 0xb

    const/16 v59, 0x3

    aput-byte v59, v29, v58

    const/16 v58, 0xc

    const/16 v59, 0x2

    aput-byte v59, v29, v58

    const/16 v58, 0xd

    const/16 v59, 0x1

    aput-byte v59, v29, v58

    .line 403
    .local v29, "formatInformationY1":[B
    shr-int/lit8 v47, v45, 0x3

    .line 407
    .local v47, "maxDataCodewords":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/swetake/util/Qrcode;->qrcodeVersion:I

    move/from16 v58, v0

    mul-int/lit8 v58, v58, 0x4

    add-int/lit8 v49, v58, 0x11

    .line 408
    .local v49, "modules1Side":I
    mul-int v40, v49, v49

    .line 409
    .local v40, "matrixTotalBits":I
    add-int v58, v40, v49

    move/from16 v0, v58

    new-array v0, v0, [B

    move-object/from16 v31, v0

    .line 412
    .local v31, "frameData":[B
    :try_start_1
    new-instance v58, Ljava/lang/StringBuilder;

    const-string v59, "qrcode_data/qrvfr"

    invoke-direct/range {v58 .. v59}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/swetake/util/Qrcode;->qrcodeVersion:I

    move/from16 v59, v0

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, ".dat"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 414
    .restart local v23    # "filename":Ljava/lang/String;
    const-class v58, Lcom/swetake/util/Qrcode;

    move-object/from16 v0, v58

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v24

    .line 415
    .restart local v24    # "fis":Ljava/io/InputStream;
    new-instance v5, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 416
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 417
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 418
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 425
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .end local v23    # "filename":Ljava/lang/String;
    .end local v24    # "fis":Ljava/io/InputStream;
    :goto_a
    add-int/lit8 v58, v45, -0x4

    move/from16 v0, v57

    move/from16 v1, v58

    if-gt v0, v1, :cond_1c

    .line 426
    const/16 v58, 0x0

    aput v58, v20, v18

    .line 427
    const/16 v58, 0x4

    aput-byte v58, v16, v18

    .line 438
    :cond_2
    :goto_b
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move/from16 v2, v47

    invoke-static {v0, v1, v2}, Lcom/swetake/util/Qrcode;->divideDataBy8Bits([I[BI)[B

    move-result-object v17

    .line 439
    .local v17, "dataCodewords":[B
    const/16 v58, 0x0

    aget-byte v58, v56, v58

    move-object/from16 v0, v17

    move/from16 v1, v58

    move-object/from16 v2, v53

    move/from16 v3, v47

    move/from16 v4, v43

    invoke-static {v0, v1, v2, v3, v4}, Lcom/swetake/util/Qrcode;->calculateRSECC([BB[BII)[B

    move-result-object v14

    .line 443
    .local v14, "codewords":[B
    move/from16 v0, v49

    move/from16 v1, v49

    filled-new-array {v0, v1}, [I

    move-result-object v58

    sget-object v59, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v59

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, [[B

    .line 445
    .local v37, "matrixContent":[[B
    const/16 v32, 0x0

    .local v32, "i":I
    :goto_c
    move/from16 v0, v32

    move/from16 v1, v49

    if-lt v0, v1, :cond_1e

    .line 452
    const/16 v32, 0x0

    :goto_d
    move/from16 v0, v32

    move/from16 v1, v43

    if-lt v0, v1, :cond_20

    .line 465
    move-object/from16 v0, p0

    iget v0, v0, Lcom/swetake/util/Qrcode;->qrcodeVersion:I

    move/from16 v58, v0

    aget v38, v39, v58

    .local v38, "matrixRemain":I
    :goto_e
    if-gtz v38, :cond_22

    .line 471
    move-object/from16 v0, p0

    iget v0, v0, Lcom/swetake/util/Qrcode;->qrcodeVersion:I

    move/from16 v58, v0

    aget v58, v39, v58

    mul-int/lit8 v59, v43, 0x8

    add-int v58, v58, v59

    move-object/from16 v0, v37

    move/from16 v1, v58

    invoke-static {v0, v1}, Lcom/swetake/util/Qrcode;->selectMask([[BI)B

    move-result v36

    .line 472
    .local v36, "maskNumber":B
    const/16 v58, 0x1

    shl-int v58, v58, v36

    move/from16 v0, v58

    int-to-byte v0, v0

    move/from16 v35, v0

    .line 476
    .local v35, "maskContent":B
    shl-int/lit8 v58, v22, 0x3

    or-int v58, v58, v36

    move/from16 v0, v58

    int-to-byte v0, v0

    move/from16 v26, v0

    .line 478
    .local v26, "formatInformationValue":B
    const/16 v58, 0x20

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v58, 0x0

    const-string v59, "101010000010010"

    aput-object v59, v25, v58

    const/16 v58, 0x1

    const-string v59, "101000100100101"

    aput-object v59, v25, v58

    const/16 v58, 0x2

    .line 479
    const-string v59, "101111001111100"

    aput-object v59, v25, v58

    const/16 v58, 0x3

    const-string v59, "101101101001011"

    aput-object v59, v25, v58

    const/16 v58, 0x4

    const-string v59, "100010111111001"

    aput-object v59, v25, v58

    const/16 v58, 0x5

    const-string v59, "100000011001110"

    aput-object v59, v25, v58

    const/16 v58, 0x6

    .line 480
    const-string v59, "100111110010111"

    aput-object v59, v25, v58

    const/16 v58, 0x7

    const-string v59, "100101010100000"

    aput-object v59, v25, v58

    const/16 v58, 0x8

    const-string v59, "111011111000100"

    aput-object v59, v25, v58

    const/16 v58, 0x9

    const-string v59, "111001011110011"

    aput-object v59, v25, v58

    const/16 v58, 0xa

    .line 481
    const-string v59, "111110110101010"

    aput-object v59, v25, v58

    const/16 v58, 0xb

    const-string v59, "111100010011101"

    aput-object v59, v25, v58

    const/16 v58, 0xc

    const-string v59, "110011000101111"

    aput-object v59, v25, v58

    const/16 v58, 0xd

    const-string v59, "110001100011000"

    aput-object v59, v25, v58

    const/16 v58, 0xe

    .line 482
    const-string v59, "110110001000001"

    aput-object v59, v25, v58

    const/16 v58, 0xf

    const-string v59, "110100101110110"

    aput-object v59, v25, v58

    const/16 v58, 0x10

    const-string v59, "001011010001001"

    aput-object v59, v25, v58

    const/16 v58, 0x11

    const-string v59, "001001110111110"

    aput-object v59, v25, v58

    const/16 v58, 0x12

    .line 483
    const-string v59, "001110011100111"

    aput-object v59, v25, v58

    const/16 v58, 0x13

    const-string v59, "001100111010000"

    aput-object v59, v25, v58

    const/16 v58, 0x14

    const-string v59, "000011101100010"

    aput-object v59, v25, v58

    const/16 v58, 0x15

    const-string v59, "000001001010101"

    aput-object v59, v25, v58

    const/16 v58, 0x16

    .line 484
    const-string v59, "000110100001100"

    aput-object v59, v25, v58

    const/16 v58, 0x17

    const-string v59, "000100000111011"

    aput-object v59, v25, v58

    const/16 v58, 0x18

    const-string v59, "011010101011111"

    aput-object v59, v25, v58

    const/16 v58, 0x19

    const-string v59, "011000001101000"

    aput-object v59, v25, v58

    const/16 v58, 0x1a

    .line 485
    const-string v59, "011111100110001"

    aput-object v59, v25, v58

    const/16 v58, 0x1b

    const-string v59, "011101000000110"

    aput-object v59, v25, v58

    const/16 v58, 0x1c

    const-string v59, "010010010110100"

    aput-object v59, v25, v58

    const/16 v58, 0x1d

    const-string v59, "010000110000011"

    aput-object v59, v25, v58

    const/16 v58, 0x1e

    .line 486
    const-string v59, "010111011011010"

    aput-object v59, v25, v58

    const/16 v58, 0x1f

    const-string v59, "010101111101101"

    aput-object v59, v25, v58

    .line 488
    .local v25, "formatInformationArray":[Ljava/lang/String;
    const/16 v32, 0x0

    :goto_f
    const/16 v58, 0xf

    move/from16 v0, v32

    move/from16 v1, v58

    if-lt v0, v1, :cond_23

    .line 497
    move/from16 v0, v49

    move/from16 v1, v49

    filled-new-array {v0, v1}, [I

    move-result-object v58

    sget-object v59, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v59

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, [[Z

    .line 499
    .local v50, "out":[[Z
    const/4 v7, 0x0

    .line 500
    .local v7, "c":I
    const/16 v32, 0x0

    :goto_10
    move/from16 v0, v32

    move/from16 v1, v49

    if-lt v0, v1, :cond_24

    move-object/from16 v52, v50

    .line 513
    goto/16 :goto_0

    .line 181
    .end local v6    # "byte_num":I
    .end local v7    # "c":I
    .end local v11    # "codewordNumCounterValue":I
    .end local v12    # "codewordNumPlus":[I
    .end local v14    # "codewords":[B
    .end local v17    # "dataCodewords":[B
    .end local v22    # "ec":I
    .end local v25    # "formatInformationArray":[Ljava/lang/String;
    .end local v26    # "formatInformationValue":B
    .end local v27    # "formatInformationX1":[B
    .end local v28    # "formatInformationX2":[B
    .end local v29    # "formatInformationY1":[B
    .end local v30    # "formatInformationY2":[B
    .end local v31    # "frameData":[B
    .end local v32    # "i":I
    .end local v34    # "maskArray":[B
    .end local v35    # "maskContent":B
    .end local v36    # "maskNumber":B
    .end local v37    # "matrixContent":[[B
    .end local v38    # "matrixRemain":I
    .end local v39    # "matrixRemainBit":[I
    .end local v40    # "matrixTotalBits":I
    .end local v41    # "matrixX":[B
    .end local v42    # "matrixY":[B
    .end local v43    # "maxCodewords":I
    .end local v44    # "maxCodewordsArray":[I
    .end local v45    # "maxDataBits":I
    .end local v46    # "maxDataBitsArray":[[I
    .end local v47    # "maxDataCodewords":I
    .end local v48    # "maxModules1side":I
    .end local v49    # "modules1Side":I
    .end local v50    # "out":[[Z
    .end local v53    # "rsBlockOrder":[B
    .end local v54    # "rsBlockOrderLength":B
    .end local v55    # "rsBlockOrderTemp":[B
    .end local v56    # "rsEccCodewords":[B
    .end local v57    # "totalDataBits":I
    :sswitch_0
    const/16 v58, 0x29

    move/from16 v0, v58

    new-array v12, v0, [I

    const/16 v58, 0xa

    .line 182
    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0xb

    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0xc

    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0xd

    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0xe

    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0xf

    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0x10

    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0x11

    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0x12

    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0x13

    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0x14

    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0x15

    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0x16

    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0x17

    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0x18

    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0x19

    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0x1a

    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0x1b

    .line 183
    const/16 v59, 0x4

    aput v59, v12, v58

    const/16 v58, 0x1c

    const/16 v59, 0x4

    aput v59, v12, v58

    const/16 v58, 0x1d

    const/16 v59, 0x4

    aput v59, v12, v58

    const/16 v58, 0x1e

    const/16 v59, 0x4

    aput v59, v12, v58

    const/16 v58, 0x1f

    const/16 v59, 0x4

    aput v59, v12, v58

    const/16 v58, 0x20

    const/16 v59, 0x4

    aput v59, v12, v58

    const/16 v58, 0x21

    const/16 v59, 0x4

    aput v59, v12, v58

    const/16 v58, 0x22

    const/16 v59, 0x4

    aput v59, v12, v58

    const/16 v58, 0x23

    const/16 v59, 0x4

    aput v59, v12, v58

    const/16 v58, 0x24

    const/16 v59, 0x4

    aput v59, v12, v58

    const/16 v58, 0x25

    const/16 v59, 0x4

    aput v59, v12, v58

    const/16 v58, 0x26

    const/16 v59, 0x4

    aput v59, v12, v58

    const/16 v58, 0x27

    const/16 v59, 0x4

    aput v59, v12, v58

    const/16 v58, 0x28

    const/16 v59, 0x4

    aput v59, v12, v58

    .line 185
    .restart local v12    # "codewordNumPlus":[I
    const/16 v58, 0x2

    aput v58, v20, v18

    .line 186
    add-int/lit8 v18, v18, 0x1

    .line 187
    aput v19, v20, v18

    .line 188
    const/16 v58, 0x9

    aput-byte v58, v16, v18

    .line 189
    move/from16 v11, v18

    .line 191
    .restart local v11    # "codewordNumCounterValue":I
    add-int/lit8 v18, v18, 0x1

    .line 192
    const/16 v32, 0x0

    .restart local v32    # "i":I
    :goto_11
    move/from16 v0, v32

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 223
    add-int/lit8 v18, v18, 0x1

    .line 224
    goto/16 :goto_2

    .line 193
    :cond_3
    aget-byte v58, p1, v32

    move/from16 v0, v58

    int-to-char v8, v0

    .line 194
    .local v8, "chr":C
    const/4 v9, 0x0

    .line 195
    .local v9, "chrValue":B
    const/16 v58, 0x30

    move/from16 v0, v58

    if-lt v8, v0, :cond_6

    const/16 v58, 0x3a

    move/from16 v0, v58

    if-ge v8, v0, :cond_6

    .line 196
    add-int/lit8 v58, v8, -0x30

    move/from16 v0, v58

    int-to-byte v9, v0

    .line 212
    :cond_4
    :goto_12
    rem-int/lit8 v58, v32, 0x2

    if-nez v58, :cond_10

    .line 213
    aput v9, v20, v18

    .line 214
    const/16 v58, 0x6

    aput-byte v58, v16, v18

    .line 192
    :cond_5
    :goto_13
    add-int/lit8 v32, v32, 0x1

    goto :goto_11

    .line 198
    :cond_6
    const/16 v58, 0x41

    move/from16 v0, v58

    if-lt v8, v0, :cond_7

    const/16 v58, 0x5b

    move/from16 v0, v58

    if-ge v8, v0, :cond_7

    .line 199
    add-int/lit8 v58, v8, -0x37

    move/from16 v0, v58

    int-to-byte v9, v0

    goto :goto_12

    .line 201
    :cond_7
    const/16 v58, 0x20

    move/from16 v0, v58

    if-ne v8, v0, :cond_8

    const/16 v9, 0x24

    .line 202
    :cond_8
    const/16 v58, 0x24

    move/from16 v0, v58

    if-ne v8, v0, :cond_9

    const/16 v9, 0x25

    .line 203
    :cond_9
    const/16 v58, 0x25

    move/from16 v0, v58

    if-ne v8, v0, :cond_a

    const/16 v9, 0x26

    .line 204
    :cond_a
    const/16 v58, 0x2a

    move/from16 v0, v58

    if-ne v8, v0, :cond_b

    const/16 v9, 0x27

    .line 205
    :cond_b
    const/16 v58, 0x2b

    move/from16 v0, v58

    if-ne v8, v0, :cond_c

    const/16 v9, 0x28

    .line 206
    :cond_c
    const/16 v58, 0x2d

    move/from16 v0, v58

    if-ne v8, v0, :cond_d

    const/16 v9, 0x29

    .line 207
    :cond_d
    const/16 v58, 0x2e

    move/from16 v0, v58

    if-ne v8, v0, :cond_e

    const/16 v9, 0x2a

    .line 208
    :cond_e
    const/16 v58, 0x2f

    move/from16 v0, v58

    if-ne v8, v0, :cond_f

    const/16 v9, 0x2b

    .line 209
    :cond_f
    const/16 v58, 0x3a

    move/from16 v0, v58

    if-ne v8, v0, :cond_4

    const/16 v9, 0x2c

    goto :goto_12

    .line 216
    :cond_10
    aget v58, v20, v18

    mul-int/lit8 v58, v58, 0x2d

    add-int v58, v58, v9

    aput v58, v20, v18

    .line 217
    const/16 v58, 0xb

    aput-byte v58, v16, v18

    .line 218
    add-int/lit8 v58, v19, -0x1

    move/from16 v0, v32

    move/from16 v1, v58

    if-ge v0, v1, :cond_5

    .line 219
    add-int/lit8 v18, v18, 0x1

    goto :goto_13

    .line 229
    .end local v8    # "chr":C
    .end local v9    # "chrValue":B
    .end local v11    # "codewordNumCounterValue":I
    .end local v12    # "codewordNumPlus":[I
    .end local v32    # "i":I
    :sswitch_1
    const/16 v58, 0x29

    move/from16 v0, v58

    new-array v12, v0, [I

    const/16 v58, 0xa

    .line 230
    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0xb

    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0xc

    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0xd

    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0xe

    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0xf

    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0x10

    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0x11

    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0x12

    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0x13

    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0x14

    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0x15

    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0x16

    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0x17

    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0x18

    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0x19

    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0x1a

    const/16 v59, 0x2

    aput v59, v12, v58

    const/16 v58, 0x1b

    .line 231
    const/16 v59, 0x4

    aput v59, v12, v58

    const/16 v58, 0x1c

    const/16 v59, 0x4

    aput v59, v12, v58

    const/16 v58, 0x1d

    const/16 v59, 0x4

    aput v59, v12, v58

    const/16 v58, 0x1e

    const/16 v59, 0x4

    aput v59, v12, v58

    const/16 v58, 0x1f

    const/16 v59, 0x4

    aput v59, v12, v58

    const/16 v58, 0x20

    const/16 v59, 0x4

    aput v59, v12, v58

    const/16 v58, 0x21

    const/16 v59, 0x4

    aput v59, v12, v58

    const/16 v58, 0x22

    const/16 v59, 0x4

    aput v59, v12, v58

    const/16 v58, 0x23

    const/16 v59, 0x4

    aput v59, v12, v58

    const/16 v58, 0x24

    const/16 v59, 0x4

    aput v59, v12, v58

    const/16 v58, 0x25

    const/16 v59, 0x4

    aput v59, v12, v58

    const/16 v58, 0x26

    const/16 v59, 0x4

    aput v59, v12, v58

    const/16 v58, 0x27

    const/16 v59, 0x4

    aput v59, v12, v58

    const/16 v58, 0x28

    const/16 v59, 0x4

    aput v59, v12, v58

    .line 233
    .restart local v12    # "codewordNumPlus":[I
    const/16 v58, 0x1

    aput v58, v20, v18

    .line 234
    add-int/lit8 v18, v18, 0x1

    .line 235
    aput v19, v20, v18

    .line 237
    const/16 v58, 0xa

    aput-byte v58, v16, v18

    .line 238
    move/from16 v11, v18

    .line 240
    .restart local v11    # "codewordNumCounterValue":I
    add-int/lit8 v18, v18, 0x1

    .line 241
    const/16 v32, 0x0

    .restart local v32    # "i":I
    :goto_14
    move/from16 v0, v32

    move/from16 v1, v19

    if-lt v0, v1, :cond_11

    .line 260
    add-int/lit8 v18, v18, 0x1

    .line 261
    goto/16 :goto_2

    .line 243
    :cond_11
    rem-int/lit8 v58, v32, 0x3

    if-nez v58, :cond_13

    .line 244
    aget-byte v58, p1, v32

    add-int/lit8 v58, v58, -0x30

    aput v58, v20, v18

    .line 245
    const/16 v58, 0x4

    aput-byte v58, v16, v18

    .line 241
    :cond_12
    :goto_15
    add-int/lit8 v32, v32, 0x1

    goto :goto_14

    .line 248
    :cond_13
    aget v58, v20, v18

    mul-int/lit8 v58, v58, 0xa

    aget-byte v59, p1, v32

    add-int/lit8 v59, v59, -0x30

    add-int v58, v58, v59

    aput v58, v20, v18

    .line 250
    rem-int/lit8 v58, v32, 0x3

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_14

    .line 251
    const/16 v58, 0x7

    aput-byte v58, v16, v18

    goto :goto_15

    .line 253
    :cond_14
    const/16 v58, 0xa

    aput-byte v58, v16, v18

    .line 254
    add-int/lit8 v58, v19, -0x1

    move/from16 v0, v32

    move/from16 v1, v58

    if-ge v0, v1, :cond_12

    .line 255
    add-int/lit8 v18, v18, 0x1

    goto :goto_15

    .line 278
    :cond_15
    add-int v58, v32, v18

    aget-byte v59, p1, v32

    move/from16 v0, v59

    and-int/lit16 v0, v0, 0xff

    move/from16 v59, v0

    aput v59, v20, v58

    .line 279
    add-int v58, v32, v18

    const/16 v59, 0x8

    aput-byte v59, v16, v58

    .line 277
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_1

    .line 288
    .restart local v57    # "totalDataBits":I
    :cond_16
    aget-byte v58, v16, v32

    add-int v57, v57, v58

    .line 287
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_3

    .line 294
    :sswitch_2
    const/16 v22, 0x1

    .line 295
    .restart local v22    # "ec":I
    goto/16 :goto_4

    .line 297
    .end local v22    # "ec":I
    :sswitch_3
    const/16 v22, 0x3

    .line 298
    .restart local v22    # "ec":I
    goto/16 :goto_4

    .line 300
    .end local v22    # "ec":I
    :sswitch_4
    const/16 v22, 0x2

    .line 301
    .restart local v22    # "ec":I
    goto/16 :goto_4

    .line 336
    .restart local v45    # "maxDataBits":I
    .restart local v46    # "maxDataBitsArray":[[I
    :cond_17
    aget-object v58, v46, v22

    aget v58, v58, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/swetake/util/Qrcode;->qrcodeVersion:I

    move/from16 v59, v0

    aget v59, v12, v59

    add-int v59, v59, v57

    move/from16 v0, v58

    move/from16 v1, v59

    if-lt v0, v1, :cond_18

    .line 337
    aget-object v58, v46, v22

    aget v45, v58, v32

    .line 338
    goto/16 :goto_6

    .line 340
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/swetake/util/Qrcode;->qrcodeVersion:I

    move/from16 v58, v0

    add-int/lit8 v58, v58, 0x1

    move/from16 v0, v58

    move-object/from16 v1, p0

    iput v0, v1, Lcom/swetake/util/Qrcode;->qrcodeVersion:I

    .line 335
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_5

    .line 343
    :cond_19
    aget-object v58, v46, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/swetake/util/Qrcode;->qrcodeVersion:I

    move/from16 v59, v0

    aget v45, v58, v59

    goto/16 :goto_6

    .line 385
    .restart local v6    # "byte_num":I
    .restart local v28    # "formatInformationX2":[B
    .restart local v30    # "formatInformationY2":[B
    .restart local v34    # "maskArray":[B
    .restart local v39    # "matrixRemainBit":[I
    .restart local v41    # "matrixX":[B
    .restart local v42    # "matrixY":[B
    .restart local v43    # "maxCodewords":I
    .restart local v44    # "maxCodewordsArray":[I
    .restart local v48    # "maxModules1side":I
    .restart local v55    # "rsBlockOrderTemp":[B
    .restart local v56    # "rsEccCodewords":[B
    :catch_0
    move-exception v21

    .line 386
    .local v21, "e":Ljava/lang/Exception;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 391
    .end local v21    # "e":Ljava/lang/Exception;
    .local v32, "i":B
    .restart local v54    # "rsBlockOrderLength":B
    :cond_1a
    aget-byte v58, v55, v32

    if-nez v58, :cond_1b

    .line 392
    move/from16 v54, v32

    .line 393
    goto/16 :goto_9

    .line 390
    :cond_1b
    add-int/lit8 v58, v32, 0x1

    move/from16 v0, v58

    int-to-byte v0, v0

    move/from16 v32, v0

    goto/16 :goto_8

    .line 419
    .restart local v27    # "formatInformationX1":[B
    .restart local v29    # "formatInformationY1":[B
    .restart local v31    # "frameData":[B
    .restart local v40    # "matrixTotalBits":I
    .restart local v47    # "maxDataCodewords":I
    .restart local v49    # "modules1Side":I
    .restart local v53    # "rsBlockOrder":[B
    :catch_1
    move-exception v21

    .line 420
    .restart local v21    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a

    .line 429
    .end local v21    # "e":Ljava/lang/Exception;
    :cond_1c
    move/from16 v0, v57

    move/from16 v1, v45

    if-ge v0, v1, :cond_1d

    .line 430
    const/16 v58, 0x0

    aput v58, v20, v18

    .line 431
    sub-int v58, v45, v57

    move/from16 v0, v58

    int-to-byte v0, v0

    move/from16 v58, v0

    aput-byte v58, v16, v18

    goto/16 :goto_b

    .line 433
    :cond_1d
    move/from16 v0, v57

    move/from16 v1, v45

    if-le v0, v1, :cond_2

    .line 434
    sget-object v58, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v59, "overflow"

    invoke-virtual/range {v58 .. v59}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 446
    .restart local v14    # "codewords":[B
    .restart local v17    # "dataCodewords":[B
    .local v32, "i":I
    .restart local v37    # "matrixContent":[[B
    :cond_1e
    const/16 v33, 0x0

    .local v33, "j":I
    :goto_16
    move/from16 v0, v33

    move/from16 v1, v49

    if-lt v0, v1, :cond_1f

    .line 445
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_c

    .line 447
    :cond_1f
    aget-object v58, v37, v33

    const/16 v59, 0x0

    aput-byte v59, v58, v32

    .line 446
    add-int/lit8 v33, v33, 0x1

    goto :goto_16

    .line 454
    .end local v33    # "j":I
    :cond_20
    aget-byte v13, v14, v32

    .line 455
    .local v13, "codeword_i":B
    const/16 v33, 0x7

    .restart local v33    # "j":I
    :goto_17
    if-gez v33, :cond_21

    .line 452
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_d

    .line 457
    :cond_21
    mul-int/lit8 v58, v32, 0x8

    add-int v10, v58, v33

    .line 459
    .local v10, "codewordBitsNumber":I
    aget-byte v58, v41, v10

    move/from16 v0, v58

    and-int/lit16 v0, v0, 0xff

    move/from16 v58, v0

    aget-object v58, v37, v58

    aget-byte v59, v42, v10

    move/from16 v0, v59

    and-int/lit16 v0, v0, 0xff

    move/from16 v59, v0

    and-int/lit8 v60, v13, 0x1

    move/from16 v0, v60

    mul-int/lit16 v0, v0, 0xff

    move/from16 v60, v0

    aget-byte v61, v34, v10

    xor-int v60, v60, v61

    move/from16 v0, v60

    int-to-byte v0, v0

    move/from16 v60, v0

    aput-byte v60, v58, v59

    .line 461
    and-int/lit16 v0, v13, 0xff

    move/from16 v58, v0

    ushr-int/lit8 v58, v58, 0x1

    move/from16 v0, v58

    int-to-byte v13, v0

    .line 455
    add-int/lit8 v33, v33, -0x1

    goto :goto_17

    .line 466
    .end local v10    # "codewordBitsNumber":I
    .end local v13    # "codeword_i":B
    .end local v33    # "j":I
    .restart local v38    # "matrixRemain":I
    :cond_22
    mul-int/lit8 v58, v43, 0x8

    add-int v58, v58, v38

    add-int/lit8 v51, v58, -0x1

    .line 467
    .local v51, "remainBitTemp":I
    aget-byte v58, v41, v51

    move/from16 v0, v58

    and-int/lit16 v0, v0, 0xff

    move/from16 v58, v0

    aget-object v58, v37, v58

    aget-byte v59, v42, v51

    move/from16 v0, v59

    and-int/lit16 v0, v0, 0xff

    move/from16 v59, v0

    aget-byte v60, v34, v51

    move/from16 v0, v60

    xor-int/lit16 v0, v0, 0xff

    move/from16 v60, v0

    move/from16 v0, v60

    int-to-byte v0, v0

    move/from16 v60, v0

    aput-byte v60, v58, v59

    .line 465
    add-int/lit8 v38, v38, -0x1

    goto/16 :goto_e

    .line 490
    .end local v51    # "remainBitTemp":I
    .restart local v25    # "formatInformationArray":[Ljava/lang/String;
    .restart local v26    # "formatInformationValue":B
    .restart local v35    # "maskContent":B
    .restart local v36    # "maskNumber":B
    :cond_23
    aget-object v58, v25, v26

    add-int/lit8 v59, v32, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v32

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v15

    .line 492
    .local v15, "content":B
    aget-byte v58, v27, v32

    move/from16 v0, v58

    and-int/lit16 v0, v0, 0xff

    move/from16 v58, v0

    aget-object v58, v37, v58

    aget-byte v59, v29, v32

    move/from16 v0, v59

    and-int/lit16 v0, v0, 0xff

    move/from16 v59, v0

    mul-int/lit16 v0, v15, 0xff

    move/from16 v60, v0

    move/from16 v0, v60

    int-to-byte v0, v0

    move/from16 v60, v0

    aput-byte v60, v58, v59

    .line 493
    aget-byte v58, v28, v32

    move/from16 v0, v58

    and-int/lit16 v0, v0, 0xff

    move/from16 v58, v0

    aget-object v58, v37, v58

    aget-byte v59, v30, v32

    move/from16 v0, v59

    and-int/lit16 v0, v0, 0xff

    move/from16 v59, v0

    mul-int/lit16 v0, v15, 0xff

    move/from16 v60, v0

    move/from16 v0, v60

    int-to-byte v0, v0

    move/from16 v60, v0

    aput-byte v60, v58, v59

    .line 488
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_f

    .line 501
    .end local v15    # "content":B
    .restart local v7    # "c":I
    .restart local v50    # "out":[[Z
    :cond_24
    const/16 v33, 0x0

    .restart local v33    # "j":I
    :goto_18
    move/from16 v0, v33

    move/from16 v1, v49

    if-lt v0, v1, :cond_25

    .line 510
    add-int/lit8 v7, v7, 0x1

    .line 500
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_10

    .line 503
    :cond_25
    aget-object v58, v37, v33

    aget-byte v58, v58, v32

    and-int v58, v58, v35

    if-nez v58, :cond_26

    aget-byte v58, v31, v7

    const/16 v59, 0x31

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_27

    .line 504
    :cond_26
    aget-object v58, v50, v33

    const/16 v59, 0x1

    aput-boolean v59, v58, v32

    .line 508
    :goto_19
    add-int/lit8 v7, v7, 0x1

    .line 501
    add-int/lit8 v33, v33, 0x1

    goto :goto_18

    .line 506
    :cond_27
    aget-object v58, v50, v33

    const/16 v59, 0x0

    aput-boolean v59, v58, v32

    goto :goto_19

    .line 175
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_0
        0x4e -> :sswitch_1
    .end sparse-switch

    .line 292
    :sswitch_data_1
    .sparse-switch
        0x48 -> :sswitch_4
        0x4c -> :sswitch_2
        0x51 -> :sswitch_3
    .end sparse-switch
.end method

.method public calStructureappendParity([B)I
    .locals 4
    .param p1, "originaldata"    # [B

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "i":I
    const/4 v2, 0x0

    .line 119
    .local v2, "structureappendParity":I
    array-length v1, p1

    .line 121
    .local v1, "originaldataLength":I
    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    .line 122
    const/4 v2, 0x0

    .line 123
    :goto_0
    if-lt v0, v1, :cond_0

    .line 130
    :goto_1
    return v2

    .line 124
    :cond_0
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v2, v3

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getQrcodeEncodeMode()C
    .locals 1

    .prologue
    .line 94
    iget-char v0, p0, Lcom/swetake/util/Qrcode;->qrcodeEncodeMode:C

    return v0
.end method

.method public getQrcodeErrorCorrect()C
    .locals 1

    .prologue
    .line 54
    iget-char v0, p0, Lcom/swetake/util/Qrcode;->qrcodeErrorCorrect:C

    return v0
.end method

.method public getQrcodeVersion()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/swetake/util/Qrcode;->qrcodeVersion:I

    return v0
.end method

.method public setQrcodeEncodeMode(C)V
    .locals 0
    .param p1, "encMode"    # C

    .prologue
    .line 85
    iput-char p1, p0, Lcom/swetake/util/Qrcode;->qrcodeEncodeMode:C

    .line 86
    return-void
.end method

.method public setQrcodeErrorCorrect(C)V
    .locals 0
    .param p1, "ecc"    # C

    .prologue
    .line 45
    iput-char p1, p0, Lcom/swetake/util/Qrcode;->qrcodeErrorCorrect:C

    .line 46
    return-void
.end method

.method public setQrcodeVersion(I)V
    .locals 1
    .param p1, "ver"    # I

    .prologue
    .line 73
    if-ltz p1, :cond_0

    const/16 v0, 0x28

    if-gt p1, v0, :cond_0

    .line 74
    iput p1, p0, Lcom/swetake/util/Qrcode;->qrcodeVersion:I

    .line 76
    :cond_0
    return-void
.end method

.method public setStructureappend(III)V
    .locals 2
    .param p1, "m"    # I
    .param p2, "n"    # I
    .param p3, "p"    # I

    .prologue
    const/16 v1, 0x10

    .line 103
    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    if-gt p2, v1, :cond_0

    if-lez p1, :cond_0

    if-gt p1, v1, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xff

    if-gt p3, v0, :cond_0

    .line 104
    iput p1, p0, Lcom/swetake/util/Qrcode;->qrcodeStructureappendM:I

    .line 105
    iput p2, p0, Lcom/swetake/util/Qrcode;->qrcodeStructureappendN:I

    .line 106
    iput p3, p0, Lcom/swetake/util/Qrcode;->qrcodeStructureappendParity:I

    .line 108
    :cond_0
    return-void
.end method
