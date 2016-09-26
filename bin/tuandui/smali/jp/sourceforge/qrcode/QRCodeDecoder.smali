.class public Ljp/sourceforge/qrcode/QRCodeDecoder;
.super Ljava/lang/Object;
.source "QRCodeDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/sourceforge/qrcode/QRCodeDecoder$DecodeResult;
    }
.end annotation


# static fields
.field static canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;


# instance fields
.field imageReader:Ljp/sourceforge/qrcode/reader/QRCodeImageReader;

.field lastResults:Ljava/util/Vector;

.field numLastCorrectionFailures:I

.field numTryDecode:I

.field qrCodeSymbol:Ljp/sourceforge/qrcode/data/QRCodeSymbol;

.field results:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljp/sourceforge/qrcode/QRCodeDecoder;->lastResults:Ljava/util/Vector;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Ljp/sourceforge/qrcode/QRCodeDecoder;->numTryDecode:I

    .line 58
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljp/sourceforge/qrcode/QRCodeDecoder;->results:Ljava/util/Vector;

    .line 59
    new-instance v0, Ljp/sourceforge/qrcode/util/DebugCanvasAdapter;

    invoke-direct {v0}, Ljp/sourceforge/qrcode/util/DebugCanvasAdapter;-><init>()V

    sput-object v0, Ljp/sourceforge/qrcode/QRCodeDecoder;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    .line 60
    return-void
.end method

.method public static getCanvas()Ljp/sourceforge/qrcode/util/DebugCanvas;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Ljp/sourceforge/qrcode/QRCodeDecoder;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    return-object v0
.end method

.method public static setCanvas(Ljp/sourceforge/qrcode/util/DebugCanvas;)V
    .locals 0
    .param p0, "canvas"    # Ljp/sourceforge/qrcode/util/DebugCanvas;

    .prologue
    .line 49
    sput-object p0, Ljp/sourceforge/qrcode/QRCodeDecoder;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    .line 50
    return-void
.end method


# virtual methods
.method correctDataBlocks([I)[I
    .locals 27
    .param p1, "blocks"    # [I

    .prologue
    .line 179
    const/16 v19, 0x0

    .line 180
    .local v19, "numSucceededCorrections":I
    const/4 v14, 0x0

    .line 181
    .local v14, "numCorrectionFailures":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/sourceforge/qrcode/QRCodeDecoder;->qrCodeSymbol:Ljp/sourceforge/qrcode/data/QRCodeSymbol;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->getDataCapacity()I

    move-result v5

    .line 182
    .local v5, "dataCapacity":I
    new-array v4, v5, [I

    .line 183
    .local v4, "dataBlocks":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/sourceforge/qrcode/QRCodeDecoder;->qrCodeSymbol:Ljp/sourceforge/qrcode/data/QRCodeSymbol;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->getNumErrorCollectionCode()I

    move-result v15

    .line 184
    .local v15, "numErrorCollectionCode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/sourceforge/qrcode/QRCodeDecoder;->qrCodeSymbol:Ljp/sourceforge/qrcode/data/QRCodeSymbol;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->getNumRSBlocks()I

    move-result v17

    .line 185
    .local v17, "numRSBlocks":I
    div-int v6, v15, v17

    .line 186
    .local v6, "eccPerRSBlock":I
    const/16 v24, 0x1

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 187
    new-instance v3, Ljp/sourceforge/reedsolomon/RsDecode;

    div-int/lit8 v24, v6, 0x2

    move/from16 v0, v24

    invoke-direct {v3, v0}, Ljp/sourceforge/reedsolomon/RsDecode;-><init>(I)V

    .line 188
    .local v3, "corrector":Ljp/sourceforge/reedsolomon/RsDecode;
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljp/sourceforge/reedsolomon/RsDecode;->decode([I)I

    move-result v22

    .line 189
    .local v22, "ret":I
    if-lez v22, :cond_1

    .line 190
    add-int v19, v19, v22

    .line 277
    .end local v3    # "corrector":Ljp/sourceforge/reedsolomon/RsDecode;
    .end local v22    # "ret":I
    .end local p1    # "blocks":[I
    :cond_0
    :goto_0
    return-object p1

    .line 191
    .restart local v3    # "corrector":Ljp/sourceforge/reedsolomon/RsDecode;
    .restart local v22    # "ret":I
    .restart local p1    # "blocks":[I
    :cond_1
    if-gez v22, :cond_0

    .line 192
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 196
    .end local v3    # "corrector":Ljp/sourceforge/reedsolomon/RsDecode;
    .end local v22    # "ret":I
    :cond_2
    rem-int v16, v5, v17

    .line 197
    .local v16, "numLongerRSBlocks":I
    if-nez v16, :cond_a

    .line 198
    div-int v10, v5, v17

    .line 199
    .local v10, "lengthRSBlock":I
    move/from16 v0, v17

    filled-new-array {v0, v10}, [I

    move-result-object v24

    sget-object v25, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    .line 201
    .local v2, "RSBlocks":[[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    move/from16 v0, v17

    if-lt v7, v0, :cond_4

    .line 214
    const/16 v20, 0x0

    .line 215
    .local v20, "p":I
    const/4 v7, 0x0

    :goto_2
    move/from16 v0, v17

    if-lt v7, v0, :cond_8

    .line 272
    .end local v2    # "RSBlocks":[[I
    .end local v10    # "lengthRSBlock":I
    :cond_3
    if-lez v19, :cond_17

    .line 273
    sget-object v24, Ljp/sourceforge/qrcode/QRCodeDecoder;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, " data errors corrected successfully."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 276
    :goto_3
    move-object/from16 v0, p0

    iput v14, v0, Ljp/sourceforge/qrcode/QRCodeDecoder;->numLastCorrectionFailures:I

    move-object/from16 p1, v4

    .line 277
    goto :goto_0

    .line 202
    .end local v20    # "p":I
    .restart local v2    # "RSBlocks":[[I
    .restart local v10    # "lengthRSBlock":I
    :cond_4
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_4
    if-lt v8, v10, :cond_6

    .line 205
    sget-object v24, Ljp/sourceforge/qrcode/QRCodeDecoder;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "eccPerRSBlock="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 206
    new-instance v3, Ljp/sourceforge/reedsolomon/RsDecode;

    div-int/lit8 v24, v6, 0x2

    move/from16 v0, v24

    invoke-direct {v3, v0}, Ljp/sourceforge/reedsolomon/RsDecode;-><init>(I)V

    .line 207
    .restart local v3    # "corrector":Ljp/sourceforge/reedsolomon/RsDecode;
    aget-object v24, v2, v7

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljp/sourceforge/reedsolomon/RsDecode;->decode([I)I

    move-result v22

    .line 208
    .restart local v22    # "ret":I
    if-lez v22, :cond_7

    .line 209
    add-int v19, v19, v22

    .line 201
    :cond_5
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 203
    .end local v3    # "corrector":Ljp/sourceforge/reedsolomon/RsDecode;
    .end local v22    # "ret":I
    :cond_6
    aget-object v24, v2, v7

    mul-int v25, v8, v17

    add-int v25, v25, v7

    aget v25, p1, v25

    aput v25, v24, v8

    .line 202
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 210
    .restart local v3    # "corrector":Ljp/sourceforge/reedsolomon/RsDecode;
    .restart local v22    # "ret":I
    :cond_7
    if-gez v22, :cond_5

    .line 211
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 216
    .end local v3    # "corrector":Ljp/sourceforge/reedsolomon/RsDecode;
    .end local v8    # "j":I
    .end local v22    # "ret":I
    .restart local v20    # "p":I
    :cond_8
    const/4 v8, 0x0

    .restart local v8    # "j":I
    move/from16 v21, v20

    .end local v20    # "p":I
    .local v21, "p":I
    :goto_6
    sub-int v24, v10, v6

    move/from16 v0, v24

    if-lt v8, v0, :cond_9

    .line 215
    add-int/lit8 v7, v7, 0x1

    move/from16 v20, v21

    .end local v21    # "p":I
    .restart local v20    # "p":I
    goto :goto_2

    .line 217
    .end local v20    # "p":I
    .restart local v21    # "p":I
    :cond_9
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "p":I
    .restart local v20    # "p":I
    aget-object v24, v2, v7

    aget v24, v24, v8

    aput v24, v4, v21

    .line 216
    add-int/lit8 v8, v8, 0x1

    move/from16 v21, v20

    .end local v20    # "p":I
    .restart local v21    # "p":I
    goto :goto_6

    .line 222
    .end local v2    # "RSBlocks":[[I
    .end local v7    # "i":I
    .end local v8    # "j":I
    .end local v10    # "lengthRSBlock":I
    .end local v21    # "p":I
    :cond_a
    div-int v11, v5, v17

    .line 223
    .local v11, "lengthShorterRSBlock":I
    div-int v24, v5, v17

    add-int/lit8 v9, v24, 0x1

    .line 224
    .local v9, "lengthLongerRSBlock":I
    sub-int v18, v17, v16

    .line 225
    .local v18, "numShorterRSBlocks":I
    move/from16 v0, v18

    filled-new-array {v0, v11}, [I

    move-result-object v24

    sget-object v25, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [[I

    .line 226
    .local v23, "shorterRSBlocks":[[I
    move/from16 v0, v16

    filled-new-array {v0, v9}, [I

    move-result-object v24

    sget-object v25, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[I

    .line 227
    .local v12, "longerRSBlocks":[[I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_7
    move/from16 v0, v17

    if-lt v7, v0, :cond_b

    .line 258
    const/16 v20, 0x0

    .line 259
    .restart local v20    # "p":I
    const/4 v7, 0x0

    :goto_8
    move/from16 v0, v17

    if-ge v7, v0, :cond_3

    .line 260
    move/from16 v0, v18

    if-ge v7, v0, :cond_15

    .line 261
    const/4 v8, 0x0

    .restart local v8    # "j":I
    move/from16 v21, v20

    .end local v20    # "p":I
    .restart local v21    # "p":I
    :goto_9
    sub-int v24, v11, v6

    move/from16 v0, v24

    if-lt v8, v0, :cond_14

    move/from16 v20, v21

    .line 259
    .end local v21    # "p":I
    .restart local v20    # "p":I
    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 228
    .end local v8    # "j":I
    .end local v20    # "p":I
    :cond_b
    move/from16 v0, v18

    if-ge v7, v0, :cond_10

    .line 229
    const/4 v13, 0x0

    .line 230
    .local v13, "mod":I
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_b
    if-lt v8, v11, :cond_d

    .line 234
    sget-object v24, Ljp/sourceforge/qrcode/QRCodeDecoder;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "eccPerRSBlock(shorter)="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 235
    new-instance v3, Ljp/sourceforge/reedsolomon/RsDecode;

    div-int/lit8 v24, v6, 0x2

    move/from16 v0, v24

    invoke-direct {v3, v0}, Ljp/sourceforge/reedsolomon/RsDecode;-><init>(I)V

    .line 236
    .restart local v3    # "corrector":Ljp/sourceforge/reedsolomon/RsDecode;
    aget-object v24, v23, v7

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljp/sourceforge/reedsolomon/RsDecode;->decode([I)I

    move-result v22

    .line 237
    .restart local v22    # "ret":I
    if-lez v22, :cond_f

    .line 238
    add-int v19, v19, v22

    .line 227
    :cond_c
    :goto_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 231
    .end local v3    # "corrector":Ljp/sourceforge/reedsolomon/RsDecode;
    .end local v22    # "ret":I
    :cond_d
    sub-int v24, v11, v6

    move/from16 v0, v24

    if-ne v8, v0, :cond_e

    move/from16 v13, v16

    .line 232
    :cond_e
    aget-object v24, v23, v7

    mul-int v25, v8, v17

    add-int v25, v25, v7

    add-int v25, v25, v13

    aget v25, p1, v25

    aput v25, v24, v8

    .line 230
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 239
    .restart local v3    # "corrector":Ljp/sourceforge/reedsolomon/RsDecode;
    .restart local v22    # "ret":I
    :cond_f
    if-gez v22, :cond_c

    .line 240
    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    .line 244
    .end local v3    # "corrector":Ljp/sourceforge/reedsolomon/RsDecode;
    .end local v8    # "j":I
    .end local v13    # "mod":I
    .end local v22    # "ret":I
    :cond_10
    const/4 v13, 0x0

    .line 245
    .restart local v13    # "mod":I
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_d
    if-lt v8, v9, :cond_11

    .line 249
    sget-object v24, Ljp/sourceforge/qrcode/QRCodeDecoder;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "eccPerRSBlock(longer)="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 250
    new-instance v3, Ljp/sourceforge/reedsolomon/RsDecode;

    div-int/lit8 v24, v6, 0x2

    move/from16 v0, v24

    invoke-direct {v3, v0}, Ljp/sourceforge/reedsolomon/RsDecode;-><init>(I)V

    .line 251
    .restart local v3    # "corrector":Ljp/sourceforge/reedsolomon/RsDecode;
    sub-int v24, v7, v18

    aget-object v24, v12, v24

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljp/sourceforge/reedsolomon/RsDecode;->decode([I)I

    move-result v22

    .line 252
    .restart local v22    # "ret":I
    if-lez v22, :cond_13

    .line 253
    add-int v19, v19, v22

    goto :goto_c

    .line 246
    .end local v3    # "corrector":Ljp/sourceforge/reedsolomon/RsDecode;
    .end local v22    # "ret":I
    :cond_11
    sub-int v24, v11, v6

    move/from16 v0, v24

    if-ne v8, v0, :cond_12

    move/from16 v13, v18

    .line 247
    :cond_12
    sub-int v24, v7, v18

    aget-object v24, v12, v24

    mul-int v25, v8, v17

    add-int v25, v25, v7

    sub-int v25, v25, v13

    aget v25, p1, v25

    aput v25, v24, v8

    .line 245
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 254
    .restart local v3    # "corrector":Ljp/sourceforge/reedsolomon/RsDecode;
    .restart local v22    # "ret":I
    :cond_13
    if-gez v22, :cond_c

    .line 255
    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    .line 262
    .end local v3    # "corrector":Ljp/sourceforge/reedsolomon/RsDecode;
    .end local v13    # "mod":I
    .end local v22    # "ret":I
    .restart local v21    # "p":I
    :cond_14
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "p":I
    .restart local v20    # "p":I
    aget-object v24, v23, v7

    aget v24, v24, v8

    aput v24, v4, v21

    .line 261
    add-int/lit8 v8, v8, 0x1

    move/from16 v21, v20

    .end local v20    # "p":I
    .restart local v21    # "p":I
    goto/16 :goto_9

    .line 266
    .end local v8    # "j":I
    .end local v21    # "p":I
    .restart local v20    # "p":I
    :cond_15
    const/4 v8, 0x0

    .restart local v8    # "j":I
    move/from16 v21, v20

    .end local v20    # "p":I
    .restart local v21    # "p":I
    :goto_e
    sub-int v24, v9, v6

    move/from16 v0, v24

    if-lt v8, v0, :cond_16

    move/from16 v20, v21

    .end local v21    # "p":I
    .restart local v20    # "p":I
    goto/16 :goto_a

    .line 267
    .end local v20    # "p":I
    .restart local v21    # "p":I
    :cond_16
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "p":I
    .restart local v20    # "p":I
    sub-int v24, v7, v18

    aget-object v24, v12, v24

    aget v24, v24, v8

    aput v24, v4, v21

    .line 266
    add-int/lit8 v8, v8, 0x1

    move/from16 v21, v20

    .end local v20    # "p":I
    .restart local v21    # "p":I
    goto :goto_e

    .line 275
    .end local v8    # "j":I
    .end local v9    # "lengthLongerRSBlock":I
    .end local v11    # "lengthShorterRSBlock":I
    .end local v12    # "longerRSBlocks":[[I
    .end local v18    # "numShorterRSBlocks":I
    .end local v21    # "p":I
    .end local v23    # "shorterRSBlocks":[[I
    .restart local v20    # "p":I
    :cond_17
    sget-object v24, Ljp/sourceforge/qrcode/QRCodeDecoder;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    const-string v25, "No errors found."

    invoke-interface/range {v24 .. v25}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method decode(Ljp/sourceforge/qrcode/data/QRCodeImage;Ljp/sourceforge/qrcode/geom/Point;)Ljp/sourceforge/qrcode/QRCodeDecoder$DecodeResult;
    .locals 7
    .param p1, "qrCodeImage"    # Ljp/sourceforge/qrcode/data/QRCodeImage;
    .param p2, "adjust"    # Ljp/sourceforge/qrcode/geom/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/sourceforge/qrcode/exception/DecodingFailedException;
        }
    .end annotation

    .prologue
    .line 132
    :try_start_0
    iget v4, p0, Ljp/sourceforge/qrcode/QRCodeDecoder;->numTryDecode:I

    if-nez v4, :cond_0

    .line 133
    sget-object v4, Ljp/sourceforge/qrcode/QRCodeDecoder;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    const-string v5, "Decoding started"

    invoke-interface {v4, v5}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0, p1}, Ljp/sourceforge/qrcode/QRCodeDecoder;->imageToIntArray(Ljp/sourceforge/qrcode/data/QRCodeImage;)[[I

    move-result-object v3

    .line 135
    .local v3, "intImage":[[I
    new-instance v4, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;

    invoke-direct {v4}, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;-><init>()V

    iput-object v4, p0, Ljp/sourceforge/qrcode/QRCodeDecoder;->imageReader:Ljp/sourceforge/qrcode/reader/QRCodeImageReader;

    .line 136
    iget-object v4, p0, Ljp/sourceforge/qrcode/QRCodeDecoder;->imageReader:Ljp/sourceforge/qrcode/reader/QRCodeImageReader;

    invoke-virtual {v4, v3}, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->getQRCodeSymbol([[I)Ljp/sourceforge/qrcode/data/QRCodeSymbol;

    move-result-object v4

    iput-object v4, p0, Ljp/sourceforge/qrcode/QRCodeDecoder;->qrCodeSymbol:Ljp/sourceforge/qrcode/data/QRCodeSymbol;
    :try_end_0
    .catch Ljp/sourceforge/qrcode/exception/SymbolNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v3    # "intImage":[[I
    :goto_0
    sget-object v4, Ljp/sourceforge/qrcode/QRCodeDecoder;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    const-string v5, "Created QRCode symbol."

    invoke-interface {v4, v5}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 146
    sget-object v4, Ljp/sourceforge/qrcode/QRCodeDecoder;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    const-string v5, "Reading symbol."

    invoke-interface {v4, v5}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 147
    sget-object v4, Ljp/sourceforge/qrcode/QRCodeDecoder;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Version: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Ljp/sourceforge/qrcode/QRCodeDecoder;->qrCodeSymbol:Ljp/sourceforge/qrcode/data/QRCodeSymbol;

    invoke-virtual {v6}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->getVersionReference()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 148
    sget-object v4, Ljp/sourceforge/qrcode/QRCodeDecoder;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Mask pattern: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Ljp/sourceforge/qrcode/QRCodeDecoder;->qrCodeSymbol:Ljp/sourceforge/qrcode/data/QRCodeSymbol;

    invoke-virtual {v6}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->getMaskPatternRefererAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 150
    iget-object v4, p0, Ljp/sourceforge/qrcode/QRCodeDecoder;->qrCodeSymbol:Ljp/sourceforge/qrcode/data/QRCodeSymbol;

    invoke-virtual {v4}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->getBlocks()[I

    move-result-object v0

    .line 151
    .local v0, "blocks":[I
    sget-object v4, Ljp/sourceforge/qrcode/QRCodeDecoder;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    const-string v5, "Correcting data errors."

    invoke-interface {v4, v5}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0, v0}, Ljp/sourceforge/qrcode/QRCodeDecoder;->correctDataBlocks([I)[I

    move-result-object v0

    .line 157
    :try_start_1
    iget-object v4, p0, Ljp/sourceforge/qrcode/QRCodeDecoder;->qrCodeSymbol:Ljp/sourceforge/qrcode/data/QRCodeSymbol;

    invoke-virtual {v4}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->getVersion()I

    move-result v4

    iget-object v5, p0, Ljp/sourceforge/qrcode/QRCodeDecoder;->qrCodeSymbol:Ljp/sourceforge/qrcode/data/QRCodeSymbol;

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->getNumErrorCollectionCode()I

    move-result v5

    invoke-virtual {p0, v0, v4, v5}, Ljp/sourceforge/qrcode/QRCodeDecoder;->getDecodedByteArray([III)[B

    move-result-object v1

    .line 158
    .local v1, "decodedByteArray":[B
    new-instance v4, Ljp/sourceforge/qrcode/QRCodeDecoder$DecodeResult;

    iget v5, p0, Ljp/sourceforge/qrcode/QRCodeDecoder;->numLastCorrectionFailures:I

    invoke-direct {v4, p0, v1, v5}, Ljp/sourceforge/qrcode/QRCodeDecoder$DecodeResult;-><init>(Ljp/sourceforge/qrcode/QRCodeDecoder;[BI)V
    :try_end_1
    .catch Ljp/sourceforge/qrcode/exception/InvalidDataBlockException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    .line 138
    .end local v0    # "blocks":[I
    .end local v1    # "decodedByteArray":[B
    :cond_0
    :try_start_2
    sget-object v4, Ljp/sourceforge/qrcode/QRCodeDecoder;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    const-string v5, "--"

    invoke-interface {v4, v5}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 139
    sget-object v4, Ljp/sourceforge/qrcode/QRCodeDecoder;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Decoding restarted #"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Ljp/sourceforge/qrcode/QRCodeDecoder;->numTryDecode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 140
    iget-object v4, p0, Ljp/sourceforge/qrcode/QRCodeDecoder;->imageReader:Ljp/sourceforge/qrcode/reader/QRCodeImageReader;

    invoke-virtual {v4, p2}, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->getQRCodeSymbolWithAdjustedGrid(Ljp/sourceforge/qrcode/geom/Point;)Ljp/sourceforge/qrcode/data/QRCodeSymbol;

    move-result-object v4

    iput-object v4, p0, Ljp/sourceforge/qrcode/QRCodeDecoder;->qrCodeSymbol:Ljp/sourceforge/qrcode/data/QRCodeSymbol;
    :try_end_2
    .catch Ljp/sourceforge/qrcode/exception/SymbolNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 142
    :catch_0
    move-exception v2

    .line 143
    .local v2, "e":Ljp/sourceforge/qrcode/exception/SymbolNotFoundException;
    new-instance v4, Ljp/sourceforge/qrcode/exception/DecodingFailedException;

    invoke-virtual {v2}, Ljp/sourceforge/qrcode/exception/SymbolNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljp/sourceforge/qrcode/exception/DecodingFailedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 159
    .end local v2    # "e":Ljp/sourceforge/qrcode/exception/SymbolNotFoundException;
    .restart local v0    # "blocks":[I
    :catch_1
    move-exception v2

    .line 160
    .local v2, "e":Ljp/sourceforge/qrcode/exception/InvalidDataBlockException;
    sget-object v4, Ljp/sourceforge/qrcode/QRCodeDecoder;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    invoke-virtual {v2}, Ljp/sourceforge/qrcode/exception/InvalidDataBlockException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 161
    new-instance v4, Ljp/sourceforge/qrcode/exception/DecodingFailedException;

    invoke-virtual {v2}, Ljp/sourceforge/qrcode/exception/InvalidDataBlockException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljp/sourceforge/qrcode/exception/DecodingFailedException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public decode(Ljp/sourceforge/qrcode/data/QRCodeImage;)[B
    .locals 10
    .param p1, "qrCodeImage"    # Ljp/sourceforge/qrcode/data/QRCodeImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/sourceforge/qrcode/exception/DecodingFailedException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/QRCodeDecoder;->getAdjustPoints()[Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v0

    .line 64
    .local v0, "adjusts":[Ljp/sourceforge/qrcode/geom/Point;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 65
    .local v6, "results":Ljava/util/Vector;
    const/4 v7, 0x0

    iput v7, p0, Ljp/sourceforge/qrcode/QRCodeDecoder;->numTryDecode:I

    .line 66
    :goto_0
    iget v7, p0, Ljp/sourceforge/qrcode/QRCodeDecoder;->numTryDecode:I

    array-length v8, v0

    if-lt v7, v8, :cond_0

    .line 85
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 86
    new-instance v7, Ljp/sourceforge/qrcode/exception/DecodingFailedException;

    const-string v8, "Give up decoding"

    invoke-direct {v7, v8}, Ljp/sourceforge/qrcode/exception/DecodingFailedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 68
    :cond_0
    :try_start_0
    iget v7, p0, Ljp/sourceforge/qrcode/QRCodeDecoder;->numTryDecode:I

    aget-object v7, v0, v7

    invoke-virtual {p0, p1, v7}, Ljp/sourceforge/qrcode/QRCodeDecoder;->decode(Ljp/sourceforge/qrcode/data/QRCodeImage;Ljp/sourceforge/qrcode/geom/Point;)Ljp/sourceforge/qrcode/QRCodeDecoder$DecodeResult;

    move-result-object v5

    .line 69
    .local v5, "result":Ljp/sourceforge/qrcode/QRCodeDecoder$DecodeResult;
    invoke-virtual {v5}, Ljp/sourceforge/qrcode/QRCodeDecoder$DecodeResult;->isCorrectionSucceeded()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 70
    invoke-virtual {v5}, Ljp/sourceforge/qrcode/QRCodeDecoder$DecodeResult;->getDecodedBytes()[B
    :try_end_0
    .catch Ljp/sourceforge/qrcode/exception/DecodingFailedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 81
    iget v8, p0, Ljp/sourceforge/qrcode/QRCodeDecoder;->numTryDecode:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ljp/sourceforge/qrcode/QRCodeDecoder;->numTryDecode:I

    .line 101
    .end local v5    # "result":Ljp/sourceforge/qrcode/QRCodeDecoder$DecodeResult;
    :goto_1
    return-object v7

    .line 73
    .restart local v5    # "result":Ljp/sourceforge/qrcode/QRCodeDecoder$DecodeResult;
    :cond_1
    :try_start_1
    invoke-virtual {v6, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 74
    sget-object v7, Ljp/sourceforge/qrcode/QRCodeDecoder;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    const-string v8, "Decoding succeeded but could not correct"

    invoke-interface {v7, v8}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 75
    sget-object v7, Ljp/sourceforge/qrcode/QRCodeDecoder;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    const-string v8, "all errors. Retrying.."

    invoke-interface {v7, v8}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljp/sourceforge/qrcode/exception/DecodingFailedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    iget v7, p0, Ljp/sourceforge/qrcode/QRCodeDecoder;->numTryDecode:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljp/sourceforge/qrcode/QRCodeDecoder;->numTryDecode:I

    goto :goto_0

    .line 77
    .end local v5    # "result":Ljp/sourceforge/qrcode/QRCodeDecoder$DecodeResult;
    :catch_0
    move-exception v1

    .line 78
    .local v1, "dfe":Ljp/sourceforge/qrcode/exception/DecodingFailedException;
    :try_start_2
    invoke-virtual {v1}, Ljp/sourceforge/qrcode/exception/DecodingFailedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Finder Pattern"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_2

    .line 79
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    .end local v1    # "dfe":Ljp/sourceforge/qrcode/exception/DecodingFailedException;
    :catchall_0
    move-exception v7

    .line 81
    iget v8, p0, Ljp/sourceforge/qrcode/QRCodeDecoder;->numTryDecode:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ljp/sourceforge/qrcode/QRCodeDecoder;->numTryDecode:I

    .line 82
    throw v7

    .line 81
    .restart local v1    # "dfe":Ljp/sourceforge/qrcode/exception/DecodingFailedException;
    :cond_2
    iget v7, p0, Ljp/sourceforge/qrcode/QRCodeDecoder;->numTryDecode:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljp/sourceforge/qrcode/QRCodeDecoder;->numTryDecode:I

    goto :goto_0

    .line 88
    .end local v1    # "dfe":Ljp/sourceforge/qrcode/exception/DecodingFailedException;
    :cond_3
    const/4 v4, -0x1

    .line 89
    .local v4, "minErrorIndex":I
    const v3, 0x7fffffff

    .line 90
    .local v3, "minError":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v2, v7, :cond_4

    .line 97
    sget-object v7, Ljp/sourceforge/qrcode/QRCodeDecoder;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    const-string v8, "All trials need for correct error"

    invoke-interface {v7, v8}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 98
    sget-object v7, Ljp/sourceforge/qrcode/QRCodeDecoder;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Reporting #"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " that,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 99
    sget-object v7, Ljp/sourceforge/qrcode/QRCodeDecoder;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "corrected minimum errors ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 100
    sget-object v7, Ljp/sourceforge/qrcode/QRCodeDecoder;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    const-string v8, "Decoding finished."

    invoke-interface {v7, v8}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljp/sourceforge/qrcode/QRCodeDecoder$DecodeResult;

    invoke-virtual {v7}, Ljp/sourceforge/qrcode/QRCodeDecoder$DecodeResult;->getDecodedBytes()[B

    move-result-object v7

    goto/16 :goto_1

    .line 91
    :cond_4
    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljp/sourceforge/qrcode/QRCodeDecoder$DecodeResult;

    .line 92
    .restart local v5    # "result":Ljp/sourceforge/qrcode/QRCodeDecoder$DecodeResult;
    invoke-virtual {v5}, Ljp/sourceforge/qrcode/QRCodeDecoder$DecodeResult;->getNumCorrectuionFailures()I

    move-result v7

    if-ge v7, v3, :cond_5

    .line 93
    invoke-virtual {v5}, Ljp/sourceforge/qrcode/QRCodeDecoder$DecodeResult;->getNumCorrectuionFailures()I

    move-result v3

    .line 94
    move v4, v2

    .line 90
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method getAdjustPoints()[Ljp/sourceforge/qrcode/geom/Point;
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v11, -0x4

    .line 110
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 111
    .local v0, "adjustPoints":Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, "d":I
    :goto_0
    const/4 v8, 0x4

    if-lt v2, v8, :cond_0

    .line 113
    const/4 v4, 0x0

    .local v4, "lastX":I
    const/4 v5, 0x0

    .line 114
    .local v5, "lastY":I
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_1
    if-gt v7, v11, :cond_1

    .line 123
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v8

    new-array v1, v8, [Ljp/sourceforge/qrcode/geom/Point;

    .line 124
    .local v1, "adjusts":[Ljp/sourceforge/qrcode/geom/Point;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v8, v1

    if-lt v3, v8, :cond_4

    .line 126
    return-object v1

    .line 112
    .end local v1    # "adjusts":[Ljp/sourceforge/qrcode/geom/Point;
    .end local v3    # "i":I
    .end local v4    # "lastX":I
    .end local v5    # "lastY":I
    .end local v7    # "y":I
    :cond_0
    new-instance v8, Ljp/sourceforge/qrcode/geom/Point;

    invoke-direct {v8, v9, v9}, Ljp/sourceforge/qrcode/geom/Point;-><init>(II)V

    invoke-virtual {v0, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    .restart local v4    # "lastX":I
    .restart local v5    # "lastY":I
    .restart local v7    # "y":I
    :cond_1
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_3
    if-gt v6, v11, :cond_2

    .line 114
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 116
    :cond_2
    if-eq v6, v7, :cond_3

    add-int v8, v6, v7

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_3

    .line 117
    new-instance v8, Ljp/sourceforge/qrcode/geom/Point;

    sub-int v9, v6, v4

    sub-int v10, v7, v5

    invoke-direct {v8, v9, v10}, Ljp/sourceforge/qrcode/geom/Point;-><init>(II)V

    invoke-virtual {v0, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 118
    move v4, v6

    .line 119
    move v5, v7

    .line 115
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 125
    .end local v6    # "x":I
    .restart local v1    # "adjusts":[Ljp/sourceforge/qrcode/geom/Point;
    .restart local v3    # "i":I
    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljp/sourceforge/qrcode/geom/Point;

    aput-object v8, v1, v3

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method getDecodedByteArray([III)[B
    .locals 3
    .param p1, "blocks"    # [I
    .param p2, "version"    # I
    .param p3, "numErrorCorrectionCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/sourceforge/qrcode/exception/InvalidDataBlockException;
        }
    .end annotation

    .prologue
    .line 283
    new-instance v2, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;

    invoke-direct {v2, p1, p2, p3}, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;-><init>([III)V

    .line 285
    .local v2, "reader":Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;
    :try_start_0
    invoke-virtual {v2}, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->getDataByte()[B
    :try_end_0
    .catch Ljp/sourceforge/qrcode/exception/InvalidDataBlockException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 289
    .local v0, "byteArray":[B
    return-object v0

    .line 286
    .end local v0    # "byteArray":[B
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Ljp/sourceforge/qrcode/exception/InvalidDataBlockException;
    throw v1
.end method

.method imageToIntArray(Ljp/sourceforge/qrcode/data/QRCodeImage;)[[I
    .locals 7
    .param p1, "image"    # Ljp/sourceforge/qrcode/data/QRCodeImage;

    .prologue
    .line 167
    invoke-interface {p1}, Ljp/sourceforge/qrcode/data/QRCodeImage;->getWidth()I

    move-result v2

    .line 168
    .local v2, "width":I
    invoke-interface {p1}, Ljp/sourceforge/qrcode/data/QRCodeImage;->getHeight()I

    move-result v0

    .line 169
    .local v0, "height":I
    filled-new-array {v2, v0}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 170
    .local v1, "intImage":[[I
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_0
    if-lt v4, v0, :cond_0

    .line 175
    return-object v1

    .line 171
    :cond_0
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_1
    if-lt v3, v2, :cond_1

    .line 170
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 172
    :cond_1
    aget-object v5, v1, v3

    invoke-interface {p1, v3, v4}, Ljp/sourceforge/qrcode/data/QRCodeImage;->getPixel(II)I

    move-result v6

    aput v6, v5, v4

    .line 171
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
