.class public Ljp/sourceforge/qrcode/data/QRCodeSymbol;
.super Ljava/lang/Object;
.source "QRCodeSymbol.java"


# instance fields
.field alignmentPattern:[[Ljp/sourceforge/qrcode/geom/Point;

.field dataCapacity:I

.field errorCollectionLevel:I

.field height:I

.field maskPattern:I

.field moduleMatrix:[[Z

.field final numErrorCollectionCode:[[I

.field final numRSBlocks:[[I

.field version:I

.field width:I


# direct methods
.method public constructor <init>([[Z)V
    .locals 8
    .param p1, "moduleMatrix"    # [[Z

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0x28

    new-array v0, v0, [[I

    .line 18
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    .line 19
    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 20
    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 21
    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 22
    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 23
    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [I

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [I

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [I

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 24
    new-array v2, v3, [I

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [I

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [I

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [I

    fill-array-data v2, :array_25

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [I

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [I

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    iput-object v0, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->numErrorCollectionCode:[[I

    .line 27
    const/16 v0, 0x28

    new-array v0, v0, [[I

    .line 28
    new-array v1, v3, [I

    fill-array-data v1, :array_28

    aput-object v1, v0, v4

    .line 29
    new-array v1, v3, [I

    fill-array-data v1, :array_29

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_2a

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_2b

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_2c

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_2d

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 30
    new-array v2, v3, [I

    fill-array-data v2, :array_2e

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_2f

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_31

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_32

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_33

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_34

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 31
    new-array v2, v3, [I

    fill-array-data v2, :array_35

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_36

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_37

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_38

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_39

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_3a

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_3b

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 32
    new-array v2, v3, [I

    fill-array-data v2, :array_3c

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_3d

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_3e

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_3f

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_40

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [I

    fill-array-data v2, :array_41

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [I

    fill-array-data v2, :array_42

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 33
    new-array v2, v3, [I

    fill-array-data v2, :array_43

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [I

    fill-array-data v2, :array_44

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [I

    fill-array-data v2, :array_45

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [I

    fill-array-data v2, :array_46

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [I

    fill-array-data v2, :array_47

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [I

    fill-array-data v2, :array_48

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [I

    fill-array-data v2, :array_49

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 34
    new-array v2, v3, [I

    fill-array-data v2, :array_4a

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [I

    fill-array-data v2, :array_4b

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [I

    fill-array-data v2, :array_4c

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [I

    fill-array-data v2, :array_4d

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [I

    fill-array-data v2, :array_4e

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [I

    fill-array-data v2, :array_4f

    aput-object v2, v0, v1

    iput-object v0, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->numRSBlocks:[[I

    .line 51
    iput-object p1, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->moduleMatrix:[[Z

    .line 52
    array-length v0, p1

    iput v0, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->width:I

    .line 53
    aget-object v0, p1, v4

    array-length v0, v0

    iput v0, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->height:I

    .line 54
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->initialize()V

    .line 55
    return-void

    .line 18
    :array_0
    .array-data 4
        0x7
        0xa
        0xd
        0x11
    .end array-data

    .line 19
    :array_1
    .array-data 4
        0xa
        0x10
        0x16
        0x1c
    .end array-data

    :array_2
    .array-data 4
        0xf
        0x1a
        0x24
        0x2c
    .end array-data

    :array_3
    .array-data 4
        0x14
        0x24
        0x34
        0x40
    .end array-data

    :array_4
    .array-data 4
        0x1a
        0x30
        0x48
        0x58
    .end array-data

    :array_5
    .array-data 4
        0x24
        0x40
        0x60
        0x70
    .end array-data

    .line 20
    :array_6
    .array-data 4
        0x28
        0x48
        0x6c
        0x82
    .end array-data

    :array_7
    .array-data 4
        0x30
        0x58
        0x84
        0x9c
    .end array-data

    :array_8
    .array-data 4
        0x3c
        0x6e
        0xa0
        0xc0
    .end array-data

    :array_9
    .array-data 4
        0x48
        0x82
        0xc0
        0xe0
    .end array-data

    :array_a
    .array-data 4
        0x50
        0x96
        0xe0
        0x108
    .end array-data

    :array_b
    .array-data 4
        0x60
        0xb0
        0x104
        0x134
    .end array-data

    :array_c
    .array-data 4
        0x68
        0xc6
        0x120
        0x160
    .end array-data

    .line 21
    :array_d
    .array-data 4
        0x78
        0xd8
        0x140
        0x180
    .end array-data

    :array_e
    .array-data 4
        0x84
        0xf0
        0x168
        0x1b0
    .end array-data

    :array_f
    .array-data 4
        0x90
        0x118
        0x198
        0x1e0
    .end array-data

    :array_10
    .array-data 4
        0xa8
        0x134
        0x1c0
        0x214
    .end array-data

    :array_11
    .array-data 4
        0xb4
        0x152
        0x1f8
        0x24c
    .end array-data

    :array_12
    .array-data 4
        0xc4
        0x16c
        0x222
        0x28a
    .end array-data

    :array_13
    .array-data 4
        0xe0
        0x1a0
        0x258
        0x2bc
    .end array-data

    .line 22
    :array_14
    .array-data 4
        0xe0
        0x1ba
        0x284
        0x2ee
    .end array-data

    :array_15
    .array-data 4
        0xfc
        0x1dc
        0x2b2
        0x330
    .end array-data

    :array_16
    .array-data 4
        0x10e
        0x1f8
        0x2ee
        0x384
    .end array-data

    :array_17
    .array-data 4
        0x12c
        0x230
        0x32a
        0x3c0
    .end array-data

    :array_18
    .array-data 4
        0x138
        0x24c
        0x366
        0x41a
    .end array-data

    :array_19
    .array-data 4
        0x150
        0x284
        0x3b8
        0x456
    .end array-data

    :array_1a
    .array-data 4
        0x168
        0x2bc
        0x3fc
        0x4b0
    .end array-data

    .line 23
    :array_1b
    .array-data 4
        0x186
        0x2d8
        0x41a
        0x4ec
    .end array-data

    :array_1c
    .array-data 4
        0x1a4
        0x310
        0x474
        0x546
    .end array-data

    :array_1d
    .array-data 4
        0x1c2
        0x32c
        0x4b0
        0x5a0
    .end array-data

    :array_1e
    .array-data 4
        0x1e0
        0x364
        0x50a
        0x5fa
    .end array-data

    :array_1f
    .array-data 4
        0x1fe
        0x39c
        0x546
        0x654
    .end array-data

    :array_20
    .array-data 4
        0x21c
        0x3d4
        0x5a0
        0x6ae
    .end array-data

    :array_21
    .array-data 4
        0x23a
        0x40c
        0x5fa
        0x708
    .end array-data

    .line 24
    :array_22
    .array-data 4
        0x23a
        0x428
        0x636
        0x762
    .end array-data

    :array_23
    .array-data 4
        0x258
        0x460
        0x690
        0x7bc
    .end array-data

    :array_24
    .array-data 4
        0x276
        0x4b4
        0x6ea
        0x834
    .end array-data

    :array_25
    .array-data 4
        0x294
        0x4ec
        0x744
        0x8ac
    .end array-data

    :array_26
    .array-data 4
        0x2d0
        0x524
        0x79e
        0x906
    .end array-data

    :array_27
    .array-data 4
        0x2ee
        0x55c
        0x7f8
        0x97e
    .end array-data

    .line 28
    :array_28
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 29
    :array_29
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_2a
    .array-data 4
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_2b
    .array-data 4
        0x1
        0x2
        0x2
        0x4
    .end array-data

    :array_2c
    .array-data 4
        0x1
        0x2
        0x4
        0x4
    .end array-data

    :array_2d
    .array-data 4
        0x2
        0x4
        0x4
        0x4
    .end array-data

    .line 30
    :array_2e
    .array-data 4
        0x2
        0x4
        0x6
        0x5
    .end array-data

    :array_2f
    .array-data 4
        0x2
        0x4
        0x6
        0x6
    .end array-data

    :array_30
    .array-data 4
        0x2
        0x5
        0x8
        0x8
    .end array-data

    :array_31
    .array-data 4
        0x4
        0x5
        0x8
        0x8
    .end array-data

    :array_32
    .array-data 4
        0x4
        0x5
        0x8
        0xb
    .end array-data

    :array_33
    .array-data 4
        0x4
        0x8
        0xa
        0xb
    .end array-data

    :array_34
    .array-data 4
        0x4
        0x9
        0xc
        0x10
    .end array-data

    .line 31
    :array_35
    .array-data 4
        0x4
        0x9
        0x10
        0x10
    .end array-data

    :array_36
    .array-data 4
        0x6
        0xa
        0xc
        0x12
    .end array-data

    :array_37
    .array-data 4
        0x6
        0xa
        0x11
        0x10
    .end array-data

    :array_38
    .array-data 4
        0x6
        0xb
        0x10
        0x13
    .end array-data

    :array_39
    .array-data 4
        0x6
        0xd
        0x12
        0x15
    .end array-data

    :array_3a
    .array-data 4
        0x7
        0xe
        0x15
        0x19
    .end array-data

    :array_3b
    .array-data 4
        0x8
        0x10
        0x14
        0x19
    .end array-data

    .line 32
    :array_3c
    .array-data 4
        0x8
        0x11
        0x17
        0x19
    .end array-data

    :array_3d
    .array-data 4
        0x9
        0x11
        0x17
        0x22
    .end array-data

    :array_3e
    .array-data 4
        0x9
        0x12
        0x19
        0x1e
    .end array-data

    :array_3f
    .array-data 4
        0xa
        0x14
        0x1b
        0x20
    .end array-data

    :array_40
    .array-data 4
        0xc
        0x15
        0x1d
        0x23
    .end array-data

    :array_41
    .array-data 4
        0xc
        0x17
        0x22
        0x25
    .end array-data

    :array_42
    .array-data 4
        0xc
        0x19
        0x22
        0x28
    .end array-data

    .line 33
    :array_43
    .array-data 4
        0xd
        0x1a
        0x23
        0x2a
    .end array-data

    :array_44
    .array-data 4
        0xe
        0x1c
        0x26
        0x2d
    .end array-data

    :array_45
    .array-data 4
        0xf
        0x1d
        0x28
        0x30
    .end array-data

    :array_46
    .array-data 4
        0x10
        0x1f
        0x2b
        0x33
    .end array-data

    :array_47
    .array-data 4
        0x11
        0x21
        0x2d
        0x36
    .end array-data

    :array_48
    .array-data 4
        0x12
        0x23
        0x30
        0x39
    .end array-data

    :array_49
    .array-data 4
        0x13
        0x25
        0x33
        0x3c
    .end array-data

    .line 34
    :array_4a
    .array-data 4
        0x13
        0x26
        0x35
        0x3f
    .end array-data

    :array_4b
    .array-data 4
        0x14
        0x28
        0x38
        0x42
    .end array-data

    :array_4c
    .array-data 4
        0x15
        0x2b
        0x3b
        0x46
    .end array-data

    :array_4d
    .array-data 4
        0x16
        0x2d
        0x3e
        0x4a
    .end array-data

    :array_4e
    .array-data 4
        0x18
        0x2f
        0x41
        0x4d
    .end array-data

    :array_4f
    .array-data 4
        0x19
        0x31
        0x44
        0x51
    .end array-data
.end method

.method private calcDataCapacity()I
    .locals 8

    .prologue
    .line 232
    const/4 v3, 0x0

    .line 233
    .local v3, "numFunctionPatternModule":I
    const/4 v2, 0x0

    .line 234
    .local v2, "numFormatAndVersionInfoModule":I
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->getVersion()I

    move-result v5

    .line 237
    .local v5, "version":I
    const/4 v6, 0x6

    if-gt v5, v6, :cond_0

    .line 238
    const/16 v2, 0x1f

    .line 244
    :goto_0
    div-int/lit8 v6, v5, 0x7

    add-int/lit8 v4, v6, 0x2

    .line 248
    .local v4, "sqrtCenters":I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    const/16 v1, 0xc0

    .line 251
    .local v1, "modulesLeft":I
    :goto_1
    mul-int/lit8 v6, v5, 0x8

    add-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v7, v4, -0x2

    mul-int/lit8 v7, v7, 0xa

    sub-int v3, v6, v7

    .line 253
    iget v6, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->width:I

    iget v7, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->width:I

    mul-int/2addr v6, v7

    sub-int/2addr v6, v3

    sub-int/2addr v6, v2

    div-int/lit8 v0, v6, 0x8

    .line 255
    .local v0, "dataCapacity":I
    return v0

    .line 240
    .end local v0    # "dataCapacity":I
    .end local v1    # "modulesLeft":I
    .end local v4    # "sqrtCenters":I
    :cond_0
    const/16 v2, 0x43

    goto :goto_0

    .line 248
    .restart local v4    # "sqrtCenters":I
    :cond_1
    mul-int v6, v4, v4

    add-int/lit8 v6, v6, -0x3

    mul-int/lit8 v6, v6, 0x19

    add-int/lit16 v1, v6, 0xc0

    goto :goto_1
.end method


# virtual methods
.method decodeFormatInformation([Z)V
    .locals 4
    .param p1, "formatInformation"    # [Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x3

    .line 264
    const/4 v1, 0x4

    aget-boolean v1, p1, v1

    if-nez v1, :cond_1

    .line 265
    aget-boolean v1, p1, v2

    if-eqz v1, :cond_0

    .line 266
    const/4 v1, 0x0

    iput v1, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->errorCollectionLevel:I

    .line 275
    :goto_0
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_1
    if-gez v0, :cond_3

    .line 278
    return-void

    .line 268
    .end local v0    # "i":I
    :cond_0
    iput v3, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->errorCollectionLevel:I

    goto :goto_0

    .line 270
    :cond_1
    aget-boolean v1, p1, v2

    if-eqz v1, :cond_2

    .line 271
    const/4 v1, 0x2

    iput v1, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->errorCollectionLevel:I

    goto :goto_0

    .line 273
    :cond_2
    iput v2, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->errorCollectionLevel:I

    goto :goto_0

    .line 276
    .restart local v0    # "i":I
    :cond_3
    aget-boolean v1, p1, v0

    if-eqz v1, :cond_4

    .line 277
    iget v1, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->maskPattern:I

    shl-int v2, v3, v0

    add-int/2addr v1, v2

    iput v1, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->maskPattern:I

    .line 275
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method generateMaskPattern()[[Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 183
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->getMaskPatternReferer()I

    move-result v2

    .line 185
    .local v2, "maskPatternReferer":I
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->getWidth()I

    move-result v3

    .line 186
    .local v3, "width":I
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->getHeight()I

    move-result v0

    .line 187
    .local v0, "height":I
    filled-new-array {v3, v0}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    .line 188
    .local v1, "maskPattern":[[Z
    const/4 v5, 0x0

    .local v5, "y":I
    :goto_0
    if-lt v5, v0, :cond_0

    .line 228
    return-object v1

    .line 189
    :cond_0
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_1
    if-lt v4, v3, :cond_1

    .line 188
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {p0, v4, v5}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->isInFunctionPattern(II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 189
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 192
    :cond_3
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 194
    :pswitch_0
    add-int v6, v5, v4

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_2

    .line 195
    aget-object v6, v1, v4

    aput-boolean v8, v6, v5

    goto :goto_2

    .line 198
    :pswitch_1
    rem-int/lit8 v6, v5, 0x2

    if-nez v6, :cond_2

    .line 199
    aget-object v6, v1, v4

    aput-boolean v8, v6, v5

    goto :goto_2

    .line 202
    :pswitch_2
    rem-int/lit8 v6, v4, 0x3

    if-nez v6, :cond_2

    .line 203
    aget-object v6, v1, v4

    aput-boolean v8, v6, v5

    goto :goto_2

    .line 206
    :pswitch_3
    add-int v6, v5, v4

    rem-int/lit8 v6, v6, 0x3

    if-nez v6, :cond_2

    .line 207
    aget-object v6, v1, v4

    aput-boolean v8, v6, v5

    goto :goto_2

    .line 210
    :pswitch_4
    div-int/lit8 v6, v5, 0x2

    div-int/lit8 v7, v4, 0x3

    add-int/2addr v6, v7

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_2

    .line 211
    aget-object v6, v1, v4

    aput-boolean v8, v6, v5

    goto :goto_2

    .line 214
    :pswitch_5
    mul-int v6, v5, v4

    rem-int/lit8 v6, v6, 0x2

    mul-int v7, v5, v4

    rem-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    if-nez v6, :cond_2

    .line 215
    aget-object v6, v1, v4

    aput-boolean v8, v6, v5

    goto :goto_2

    .line 218
    :pswitch_6
    mul-int v6, v5, v4

    rem-int/lit8 v6, v6, 0x2

    mul-int v7, v5, v4

    rem-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_2

    .line 219
    aget-object v6, v1, v4

    aput-boolean v8, v6, v5

    goto :goto_2

    .line 222
    :pswitch_7
    mul-int v6, v5, v4

    rem-int/lit8 v6, v6, 0x3

    add-int v7, v5, v4

    rem-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_2

    .line 223
    aget-object v6, v1, v4

    aput-boolean v8, v6, v5

    goto :goto_2

    .line 192
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getAlignmentPattern()[[Ljp/sourceforge/qrcode/geom/Point;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->alignmentPattern:[[Ljp/sourceforge/qrcode/geom/Point;

    return-object v0
.end method

.method public getBlocks()[I
    .locals 18

    .prologue
    .line 303
    invoke-virtual/range {p0 .. p0}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->getWidth()I

    move-result v13

    .line 306
    .local v13, "width":I
    invoke-virtual/range {p0 .. p0}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->getHeight()I

    move-result v8

    .line 307
    .local v8, "height":I
    add-int/lit8 v14, v13, -0x1

    .line 308
    .local v14, "x":I
    add-int/lit8 v15, v8, -0x1

    .line 309
    .local v15, "y":I
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 310
    .local v3, "codeBits":Ljava/util/Vector;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 311
    .local v4, "codeWords":Ljava/util/Vector;
    const/4 v12, 0x0

    .line 312
    .local v12, "tempWord":I
    const/4 v6, 0x7

    .line 313
    .local v6, "figure":I
    const/4 v10, 0x0

    .line 314
    .local v10, "isNearFinish":I
    const/4 v2, 0x1

    .line 315
    .local v2, "READ_UP":Z
    const/4 v1, 0x0

    .line 316
    .local v1, "READ_DOWN":Z
    const/4 v5, 0x1

    .line 319
    .local v5, "direction":Z
    :cond_0
    new-instance v16, Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->getElement(II)Z

    move-result v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/Boolean;-><init>(Z)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 325
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->getElement(II)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 326
    const/16 v16, 0x1

    shl-int v16, v16, v6

    add-int v12, v12, v16

    .line 329
    :cond_1
    add-int/lit8 v6, v6, -0x1

    .line 330
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v6, v0, :cond_2

    .line 331
    new-instance v16, Ljava/lang/Integer;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 334
    const/4 v6, 0x7

    .line 335
    const/4 v12, 0x0

    .line 339
    :cond_2
    if-eqz v5, :cond_6

    .line 340
    add-int v16, v14, v10

    rem-int/lit8 v16, v16, 0x2

    if-nez v16, :cond_3

    .line 341
    add-int/lit8 v14, v14, -0x1

    .line 376
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->isInFunctionPattern(II)Z

    move-result v16

    .line 338
    if-nez v16, :cond_2

    .line 378
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_0

    .line 380
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v7, v0, [I

    .line 381
    .local v7, "gotWords":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v16

    move/from16 v0, v16

    if-lt v9, v0, :cond_a

    .line 385
    return-object v7

    .line 343
    .end local v7    # "gotWords":[I
    .end local v9    # "i":I
    :cond_3
    if-lez v15, :cond_4

    .line 344
    add-int/lit8 v14, v14, 0x1

    .line 345
    add-int/lit8 v15, v15, -0x1

    goto :goto_0

    .line 348
    :cond_4
    add-int/lit8 v14, v14, -0x1

    .line 349
    const/16 v16, 0x6

    move/from16 v0, v16

    if-ne v14, v0, :cond_5

    .line 350
    add-int/lit8 v14, v14, -0x1

    .line 351
    const/4 v10, 0x1

    .line 353
    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    .line 359
    :cond_6
    add-int v16, v14, v10

    rem-int/lit8 v16, v16, 0x2

    if-nez v16, :cond_7

    .line 360
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    .line 362
    :cond_7
    add-int/lit8 v16, v8, -0x1

    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    .line 363
    add-int/lit8 v14, v14, 0x1

    .line 364
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 367
    :cond_8
    add-int/lit8 v14, v14, -0x1

    .line 368
    const/16 v16, 0x6

    move/from16 v0, v16

    if-ne v14, v0, :cond_9

    .line 369
    add-int/lit8 v14, v14, -0x1

    .line 370
    const/4 v10, 0x1

    .line 372
    :cond_9
    const/4 v5, 0x1

    goto :goto_0

    .line 382
    .restart local v7    # "gotWords":[I
    .restart local v9    # "i":I
    :cond_a
    invoke-virtual {v4, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 383
    .local v11, "temp":Ljava/lang/Integer;
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v16

    aput v16, v7, v9

    .line 381
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method public getDataCapacity()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->dataCapacity:I

    return v0
.end method

.method public getElement(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 38
    iget-object v0, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->moduleMatrix:[[Z

    aget-object v0, v0, p1

    aget-boolean v0, v0, p2

    return v0
.end method

.method public getErrorCollectionLevel()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->errorCollectionLevel:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->height:I

    return v0
.end method

.method public getMaskPatternReferer()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->maskPattern:I

    return v0
.end method

.method public getMaskPatternRefererAsString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 288
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->getMaskPatternReferer()I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, "maskPattern":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 290
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    rsub-int/lit8 v3, v1, 0x3

    if-lt v0, v3, :cond_0

    .line 292
    return-object v2

    .line 291
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getNumErrorCollectionCode()I
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->numErrorCollectionCode:[[I

    iget v1, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->version:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget v1, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->errorCollectionLevel:I

    aget v0, v0, v1

    return v0
.end method

.method public getNumRSBlocks()I
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->numRSBlocks:[[I

    iget v1, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->version:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget v1, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->errorCollectionLevel:I

    aget v0, v0, v1

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->version:I

    return v0
.end method

.method public getVersionReference()Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    const/4 v1, 0x4

    new-array v0, v1, [C

    fill-array-data v0, :array_0

    .line 115
    .local v0, "versionReferenceCharacter":[C
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->version:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 116
    iget v2, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->errorCollectionLevel:I

    aget-char v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 113
    :array_0
    .array-data 2
        0x4cs
        0x4ds
        0x51s
        0x48s
    .end array-data
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->width:I

    return v0
.end method

.method initialize()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 61
    iget v5, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->width:I

    add-int/lit8 v5, v5, -0x11

    div-int/lit8 v5, v5, 0x4

    iput v5, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->version:I

    .line 62
    filled-new-array {v7, v7}, [I

    move-result-object v5

    const-class v6, Ljp/sourceforge/qrcode/geom/Point;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljp/sourceforge/qrcode/geom/Point;

    .line 64
    .local v0, "alignmentPattern":[[Ljp/sourceforge/qrcode/geom/Point;
    new-array v3, v7, [I

    .line 82
    .local v3, "logicalSeeds":[I
    iget v5, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->version:I

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    iget v5, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->version:I

    const/16 v6, 0x28

    if-gt v5, v6, :cond_0

    .line 89
    iget v5, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->version:I

    invoke-static {v5}, Ljp/sourceforge/qrcode/pattern/LogicalSeed;->getSeed(I)[I

    move-result-object v3

    .line 90
    array-length v5, v3

    array-length v6, v3

    filled-new-array {v5, v6}, [I

    move-result-object v5

    const-class v6, Ljp/sourceforge/qrcode/geom/Point;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "alignmentPattern":[[Ljp/sourceforge/qrcode/geom/Point;
    check-cast v0, [[Ljp/sourceforge/qrcode/geom/Point;

    .line 94
    .restart local v0    # "alignmentPattern":[[Ljp/sourceforge/qrcode/geom/Point;
    :cond_0
    const/4 v1, 0x0

    .local v1, "col":I
    :goto_0
    array-length v5, v3

    if-lt v1, v5, :cond_1

    .line 99
    iput-object v0, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->alignmentPattern:[[Ljp/sourceforge/qrcode/geom/Point;

    .line 102
    invoke-direct {p0}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->calcDataCapacity()I

    move-result v5

    iput v5, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->dataCapacity:I

    .line 104
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->readFormatInformation()[Z

    move-result-object v2

    .line 105
    .local v2, "formatInformation":[Z
    invoke-virtual {p0, v2}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->decodeFormatInformation([Z)V

    .line 107
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->unmask()V

    .line 108
    return-void

    .line 95
    .end local v2    # "formatInformation":[Z
    :cond_1
    const/4 v4, 0x0

    .local v4, "row":I
    :goto_1
    array-length v5, v3

    if-lt v4, v5, :cond_2

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_2
    aget-object v5, v0, v4

    new-instance v6, Ljp/sourceforge/qrcode/geom/Point;

    aget v7, v3, v4

    aget v8, v3, v1

    invoke-direct {v6, v7, v8}, Ljp/sourceforge/qrcode/geom/Point;-><init>(II)V

    aput-object v6, v5, v1

    .line 95
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public isInFunctionPattern(II)Z
    .locals 9
    .param p1, "targetX"    # I
    .param p2, "targetY"    # I

    .prologue
    const/4 v8, 0x3

    const/16 v6, 0x9

    const/4 v7, 0x6

    const/4 v4, 0x1

    .line 392
    if-ge p1, v6, :cond_1

    if-ge p2, v6, :cond_1

    .line 422
    :cond_0
    :goto_0
    return v4

    .line 394
    :cond_1
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x9

    if-le p1, v5, :cond_2

    if-lt p2, v6, :cond_0

    .line 396
    :cond_2
    if-ge p1, v6, :cond_3

    invoke-virtual {p0}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x9

    if-gt p2, v5, :cond_0

    .line 399
    :cond_3
    iget v5, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->version:I

    const/4 v6, 0x7

    if-lt v5, v6, :cond_5

    .line 400
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0xc

    if-le p1, v5, :cond_4

    if-lt p2, v7, :cond_0

    .line 402
    :cond_4
    if-ge p1, v7, :cond_5

    invoke-virtual {p0}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0xc

    if-gt p2, v5, :cond_0

    .line 406
    :cond_5
    if-eq p1, v7, :cond_0

    if-eq p2, v7, :cond_0

    .line 410
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->getAlignmentPattern()[[Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v0

    .line 411
    .local v0, "alignmentPattern":[[Ljp/sourceforge/qrcode/geom/Point;
    array-length v1, v0

    .line 413
    .local v1, "sideLength":I
    const/4 v3, 0x0

    .local v3, "y":I
    :goto_1
    if-lt v3, v1, :cond_6

    .line 422
    const/4 v4, 0x0

    goto :goto_0

    .line 414
    :cond_6
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_2
    if-lt v2, v1, :cond_7

    .line 413
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 415
    :cond_7
    if-nez v2, :cond_8

    if-eqz v3, :cond_b

    :cond_8
    add-int/lit8 v5, v1, -0x1

    if-ne v2, v5, :cond_9

    if-eqz v3, :cond_b

    :cond_9
    if-nez v2, :cond_a

    add-int/lit8 v5, v1, -0x1

    if-eq v3, v5, :cond_b

    .line 416
    :cond_a
    aget-object v5, v0, v2

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v5

    sub-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v8, :cond_b

    .line 417
    aget-object v5, v0, v2

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v5

    sub-int/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v5, v8, :cond_0

    .line 414
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method readFormatInformation()[Z
    .locals 14

    .prologue
    const/16 v13, 0xe

    const/4 v12, 0x1

    const/4 v11, 0x7

    const/4 v10, 0x5

    const/16 v9, 0x8

    .line 124
    const/16 v7, 0xf

    new-array v4, v7, [Z

    .line 127
    .local v4, "modules":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-le v2, v10, :cond_0

    .line 130
    const/4 v7, 0x6

    invoke-virtual {p0, v9, v11}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->getElement(II)Z

    move-result v8

    aput-boolean v8, v4, v7

    .line 131
    invoke-virtual {p0, v9, v9}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->getElement(II)Z

    move-result v7

    aput-boolean v7, v4, v11

    .line 132
    invoke-virtual {p0, v11, v9}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->getElement(II)Z

    move-result v7

    aput-boolean v7, v4, v9

    .line 134
    const/16 v2, 0x9

    :goto_1
    if-le v2, v13, :cond_1

    .line 138
    const/16 v3, 0x5412

    .line 140
    .local v3, "maskPattern":I
    const/4 v2, 0x0

    :goto_2
    if-le v2, v13, :cond_2

    .line 154
    new-instance v0, Ljp/sourceforge/qrcode/ecc/BCH15_5;

    invoke-direct {v0, v4}, Ljp/sourceforge/qrcode/ecc/BCH15_5;-><init>([Z)V

    .line 155
    .local v0, "corrector":Ljp/sourceforge/qrcode/ecc/BCH15_5;
    invoke-virtual {v0}, Ljp/sourceforge/qrcode/ecc/BCH15_5;->correct()[Z

    move-result-object v5

    .line 159
    .local v5, "output":[Z
    new-array v1, v10, [Z

    .line 160
    .local v1, "formatInformation":[Z
    const/4 v2, 0x0

    :goto_3
    if-lt v2, v10, :cond_5

    .line 163
    return-object v1

    .line 128
    .end local v0    # "corrector":Ljp/sourceforge/qrcode/ecc/BCH15_5;
    .end local v1    # "formatInformation":[Z
    .end local v3    # "maskPattern":I
    .end local v5    # "output":[Z
    :cond_0
    invoke-virtual {p0, v9, v2}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->getElement(II)Z

    move-result v7

    aput-boolean v7, v4, v2

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    :cond_1
    rsub-int/lit8 v7, v2, 0xe

    invoke-virtual {p0, v7, v9}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->getElement(II)Z

    move-result v7

    aput-boolean v7, v4, v2

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 141
    .restart local v3    # "maskPattern":I
    :cond_2
    const/4 v6, 0x0

    .line 142
    .local v6, "xorBit":Z
    ushr-int v7, v3, v2

    and-int/lit8 v7, v7, 0x1

    if-ne v7, v12, :cond_3

    .line 143
    const/4 v6, 0x1

    .line 148
    :goto_4
    aget-boolean v7, v4, v2

    if-ne v7, v6, :cond_4

    .line 149
    const/4 v7, 0x0

    aput-boolean v7, v4, v2

    .line 140
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 145
    :cond_3
    const/4 v6, 0x0

    goto :goto_4

    .line 151
    :cond_4
    aput-boolean v12, v4, v2

    goto :goto_5

    .line 161
    .end local v6    # "xorBit":Z
    .restart local v0    # "corrector":Ljp/sourceforge/qrcode/ecc/BCH15_5;
    .restart local v1    # "formatInformation":[Z
    .restart local v5    # "output":[Z
    :cond_5
    add-int/lit8 v7, v2, 0xa

    aget-boolean v7, v5, v7

    aput-boolean v7, v1, v2

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public reverseElement(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 389
    iget-object v0, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->moduleMatrix:[[Z

    aget-object v1, v0, p1

    iget-object v0, p0, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->moduleMatrix:[[Z

    aget-object v0, v0, p1

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    aput-boolean v0, v1, p2

    .line 390
    return-void

    .line 389
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method unmask()V
    .locals 5

    .prologue
    .line 168
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->generateMaskPattern()[[Z

    move-result-object v0

    .line 170
    .local v0, "maskPattern":[[Z
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->getWidth()I

    move-result v1

    .line 172
    .local v1, "size":I
    const/4 v3, 0x0

    .local v3, "y":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 179
    return-void

    .line 173
    :cond_0
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_1
    if-lt v2, v1, :cond_1

    .line 172
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 174
    :cond_1
    aget-object v4, v0, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_2

    .line 175
    invoke-virtual {p0, v2, v3}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;->reverseElement(II)V

    .line 173
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
