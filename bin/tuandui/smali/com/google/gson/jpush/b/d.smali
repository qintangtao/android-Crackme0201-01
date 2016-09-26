.class public Lcom/google/gson/jpush/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final z:[Ljava/lang/String;


# instance fields
.field private final c:Ljava/io/Writer;

.field private d:[I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x12

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "$S"

    const/4 v0, -0x1

    move-object v4, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gt v5, v7, :cond_2

    :cond_0
    move-object v7, v1

    move v8, v6

    move v11, v5

    move-object v5, v1

    move v1, v11

    :goto_1
    aget-char v10, v5, v6

    rem-int/lit8 v9, v8, 0x5

    packed-switch v9, :pswitch_data_0

    const/16 v9, 0x69

    :goto_2
    xor-int/2addr v9, v10

    int-to-char v9, v9

    aput-char v9, v5, v6

    add-int/lit8 v6, v8, 0x1

    if-nez v1, :cond_1

    move-object v5, v7

    move v8, v6

    move v6, v1

    goto :goto_1

    :cond_1
    move v5, v1

    move-object v1, v7

    :cond_2
    if-gt v5, v6, :cond_0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_1

    aput-object v1, v3, v2

    const/4 v2, 0x1

    const-string v1, "T \u0019\'Is\u0006%\u001dIv\u0012 \u000cIq\u001d:\u0010Iq\u001d3I\u001dq\u0003{\u0005\u000ch\u0016:I\u001f\u007f\u001f#\u000cG"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "T \u0019\'Is\u0006%\u001dIm\u00077\u001b\u001d>\u0004?\u001d\u0001>\u00128I\u0008l\u00017\u0010Iq\u0001v\u0008\u0007>\u001c4\u0003\u000c}\u0007x"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "P\u0016%\u001d\u0000p\u0014v\u0019\u001bq\u0011:\u000c\u00040"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "q\u0006\"IT#S8\u001c\u0005r"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "x\u0012:\u001a\u000c"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "j\u0001#\u000c"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "W\u001d5\u0006\u0004n\u001f3\u001d\u000c>\u00179\n\u001cs\u00168\u001d"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "W\u001d0\u0000\u0007w\u0007/"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "P\u0006;\u000c\u001bw\u0010v\u001f\u0008r\u00063\u001aIs\u0006%\u001dI|\u0016v\u000f\u0000p\u001a\"\u000cE>\u0011#\u001dIi\u0012%I"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "3:8\u000f\u0000p\u001a\"\u0010"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "P\u0012\u0018"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "p\u0006:\u0005"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "T\u00009\u0007>l\u001a\"\u000c\u001b>\u001a%I\nr\u001c%\u000c\r0"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "Z\u00128\u000e\u0005w\u001d1I\u0007\u007f\u001e3SI"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "B\u0006dY[\'"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "B\u0006dY[&"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "p\u0012;\u000cI#Nv\u0007\u001cr\u001f"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    sput-object v4, Lcom/google/gson/jpush/b/d;->z:[Ljava/lang/String;

    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/gson/jpush/b/d;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    :goto_3
    const/16 v0, 0x1f

    if-gt v3, v0, :cond_6

    sget-object v2, Lcom/google/gson/jpush/b/d;->a:[Ljava/lang/String;

    const-string v1, "B\u0006sY]f"

    const/4 v0, -0x1

    move-object v4, v2

    move v2, v3

    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gt v5, v7, :cond_5

    :cond_3
    move-object v7, v1

    move v8, v6

    move v11, v5

    move-object v5, v1

    move v1, v11

    :goto_5
    aget-char v10, v5, v6

    rem-int/lit8 v9, v8, 0x5

    packed-switch v9, :pswitch_data_2

    const/16 v9, 0x69

    :goto_6
    xor-int/2addr v9, v10

    int-to-char v9, v9

    aput-char v9, v5, v6

    add-int/lit8 v6, v8, 0x1

    if-nez v1, :cond_4

    move-object v5, v7

    move v8, v6

    move v6, v1

    goto :goto_5

    :pswitch_11
    const/16 v9, 0x1e

    goto/16 :goto_2

    :pswitch_12
    const/16 v9, 0x73

    goto/16 :goto_2

    :pswitch_13
    const/16 v9, 0x56

    goto/16 :goto_2

    :pswitch_14
    const/16 v9, 0x69

    goto/16 :goto_2

    :pswitch_15
    const/16 v9, 0x1e

    goto :goto_6

    :pswitch_16
    const/16 v9, 0x73

    goto :goto_6

    :pswitch_17
    const/16 v9, 0x56

    goto :goto_6

    :pswitch_18
    const/16 v9, 0x69

    goto :goto_6

    :cond_4
    move v5, v1

    move-object v1, v7

    :cond_5
    if-gt v5, v6, :cond_3

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    sget-object v4, Lcom/google/gson/jpush/b/d;->a:[Ljava/lang/String;

    const/16 v2, 0x22

    const-string v1, "BQ"

    const/4 v0, 0x0

    goto :goto_4

    :pswitch_19
    aput-object v1, v4, v2

    sget-object v4, Lcom/google/gson/jpush/b/d;->a:[Ljava/lang/String;

    const/16 v2, 0x5c

    const-string v1, "B/"

    const/4 v0, 0x1

    goto :goto_4

    :pswitch_1a
    aput-object v1, v4, v2

    sget-object v4, Lcom/google/gson/jpush/b/d;->a:[Ljava/lang/String;

    const/16 v2, 0x9

    const-string v1, "B\u0007"

    const/4 v0, 0x2

    goto :goto_4

    :pswitch_1b
    aput-object v1, v4, v2

    sget-object v4, Lcom/google/gson/jpush/b/d;->a:[Ljava/lang/String;

    const/16 v2, 0x8

    const-string v1, "B\u0011"

    const/4 v0, 0x3

    goto/16 :goto_4

    :pswitch_1c
    aput-object v1, v4, v2

    sget-object v4, Lcom/google/gson/jpush/b/d;->a:[Ljava/lang/String;

    const/16 v2, 0xa

    const-string v1, "B\u001d"

    const/4 v0, 0x4

    goto/16 :goto_4

    :pswitch_1d
    aput-object v1, v4, v2

    sget-object v4, Lcom/google/gson/jpush/b/d;->a:[Ljava/lang/String;

    const/16 v2, 0xd

    const-string v1, "B\u0001"

    const/4 v0, 0x5

    goto/16 :goto_4

    :pswitch_1e
    aput-object v1, v4, v2

    sget-object v4, Lcom/google/gson/jpush/b/d;->a:[Ljava/lang/String;

    const/16 v2, 0xc

    const-string v1, "B\u0015"

    const/4 v0, 0x6

    goto/16 :goto_4

    :pswitch_1f
    aput-object v1, v4, v2

    sget-object v0, Lcom/google/gson/jpush/b/d;->a:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/gson/jpush/b/d;->b:[Ljava/lang/String;

    const/16 v4, 0x3c

    const-string v2, "B\u0006fYZ}"

    const/4 v1, 0x7

    move v11, v1

    move-object v1, v2

    move v2, v4

    move-object v4, v0

    move v0, v11

    goto/16 :goto_4

    :pswitch_20
    aput-object v1, v4, v2

    sget-object v4, Lcom/google/gson/jpush/b/d;->b:[Ljava/lang/String;

    const/16 v2, 0x3e

    const-string v1, "B\u0006fYZ{"

    const/16 v0, 0x8

    goto/16 :goto_4

    :pswitch_21
    aput-object v1, v4, v2

    sget-object v4, Lcom/google/gson/jpush/b/d;->b:[Ljava/lang/String;

    const/16 v2, 0x26

    const-string v1, "B\u0006fY[("

    const/16 v0, 0x9

    goto/16 :goto_4

    :pswitch_22
    aput-object v1, v4, v2

    sget-object v4, Lcom/google/gson/jpush/b/d;->b:[Ljava/lang/String;

    const/16 v2, 0x3d

    const-string v1, "B\u0006fYZz"

    const/16 v0, 0xa

    goto/16 :goto_4

    :pswitch_23
    aput-object v1, v4, v2

    sget-object v4, Lcom/google/gson/jpush/b/d;->b:[Ljava/lang/String;

    const/16 v2, 0x27

    const-string v1, "B\u0006fY[)"

    const/16 v0, 0xb

    goto/16 :goto_4

    :pswitch_24
    aput-object v1, v4, v2

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
    .end packed-switch
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/gson/jpush/b/d;->d:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/jpush/b/d;->e:I

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/d;->a(I)V

    const-string v0, ":"

    iput-object v0, p0, Lcom/google/gson/jpush/b/d;->g:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/jpush/b/d;->k:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    sget-object v1, Lcom/google/gson/jpush/b/d;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/gson/jpush/b/d;->c:Ljava/io/Writer;

    return-void
.end method

.method private a()I
    .locals 3

    iget v0, p0, Lcom/google/gson/jpush/b/d;->e:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/google/gson/jpush/b/d;->z:[Ljava/lang/String;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/jpush/b/d;->d:[I

    iget v1, p0, Lcom/google/gson/jpush/b/d;->e:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method private a(IILjava/lang/String;)Lcom/google/gson/jpush/b/d;
    .locals 4

    invoke-direct {p0}, Lcom/google/gson/jpush/b/d;->a()I

    move-result v0

    if-eq v0, p2, :cond_0

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/google/gson/jpush/b/d;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/google/gson/jpush/b/d;->j:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/gson/jpush/b/d;->z:[Ljava/lang/String;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/gson/jpush/b/d;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v1, p0, Lcom/google/gson/jpush/b/d;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/jpush/b/d;->e:I

    if-ne v0, p2, :cond_2

    invoke-direct {p0}, Lcom/google/gson/jpush/b/d;->k()V

    :cond_2
    iget-object v0, p0, Lcom/google/gson/jpush/b/d;->c:Ljava/io/Writer;

    invoke-virtual {v0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method private a(ILjava/lang/String;)Lcom/google/gson/jpush/b/d;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/d;->e(Z)V

    invoke-direct {p0, p1}, Lcom/google/gson/jpush/b/d;->a(I)V

    iget-object v0, p0, Lcom/google/gson/jpush/b/d;->c:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method private a(I)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/gson/jpush/b/d;->e:I

    iget-object v1, p0, Lcom/google/gson/jpush/b/d;->d:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/gson/jpush/b/d;->e:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/gson/jpush/b/d;->d:[I

    iget v2, p0, Lcom/google/gson/jpush/b/d;->e:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/gson/jpush/b/d;->d:[I

    :cond_0
    iget-object v0, p0, Lcom/google/gson/jpush/b/d;->d:[I

    iget v1, p0, Lcom/google/gson/jpush/b/d;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/jpush/b/d;->e:I

    aput p1, v0, v1

    return-void
.end method

.method private b(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/gson/jpush/b/d;->d:[I

    iget v1, p0, Lcom/google/gson/jpush/b/d;->e:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/gson/jpush/b/d;->i:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/gson/jpush/b/d;->b:[Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/google/gson/jpush/b/d;->c:Ljava/io/Writer;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    move v3, v1

    :goto_1
    if-ge v3, v4, :cond_6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x80

    if-ge v2, v5, :cond_2

    aget-object v2, v0, v2

    if-nez v2, :cond_3

    :cond_0
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/google/gson/jpush/b/d;->a:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/16 v5, 0x2028

    if-ne v2, v5, :cond_5

    sget-object v2, Lcom/google/gson/jpush/b/d;->z:[Ljava/lang/String;

    const/16 v5, 0x10

    aget-object v2, v2, v5

    :cond_3
    :goto_3
    if-ge v1, v3, :cond_4

    iget-object v5, p0, Lcom/google/gson/jpush/b/d;->c:Ljava/io/Writer;

    sub-int v6, v3, v1

    invoke-virtual {v5, p1, v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    :cond_4
    iget-object v1, p0, Lcom/google/gson/jpush/b/d;->c:Ljava/io/Writer;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v3, 0x1

    goto :goto_2

    :cond_5
    const/16 v5, 0x2029

    if-ne v2, v5, :cond_0

    sget-object v2, Lcom/google/gson/jpush/b/d;->z:[Ljava/lang/String;

    const/16 v5, 0xf

    aget-object v2, v2, v5

    goto :goto_3

    :cond_6
    if-ge v1, v4, :cond_7

    iget-object v0, p0, Lcom/google/gson/jpush/b/d;->c:Ljava/io/Writer;

    sub-int v2, v4, v1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    :cond_7
    iget-object v0, p0, Lcom/google/gson/jpush/b/d;->c:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method private e(Z)V
    .locals 3

    const/4 v2, 0x2

    invoke-direct {p0}, Lcom/google/gson/jpush/b/d;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/google/gson/jpush/b/d;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-boolean v0, p0, Lcom/google/gson/jpush/b/d;->h:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/google/gson/jpush/b/d;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :pswitch_2
    iget-boolean v0, p0, Lcom/google/gson/jpush/b/d;->h:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/google/gson/jpush/b/d;->z:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/d;->b(I)V

    :goto_0
    return-void

    :pswitch_3
    invoke-direct {p0, v2}, Lcom/google/gson/jpush/b/d;->b(I)V

    invoke-direct {p0}, Lcom/google/gson/jpush/b/d;->k()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/gson/jpush/b/d;->c:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    invoke-direct {p0}, Lcom/google/gson/jpush/b/d;->k()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/google/gson/jpush/b/d;->c:Ljava/io/Writer;

    iget-object v1, p0, Lcom/google/gson/jpush/b/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/d;->b(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private j()V
    .locals 3

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/google/gson/jpush/b/d;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/gson/jpush/b/d;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/gson/jpush/b/d;->c:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    :cond_0
    invoke-direct {p0}, Lcom/google/gson/jpush/b/d;->k()V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/d;->b(I)V

    iget-object v0, p0, Lcom/google/gson/jpush/b/d;->j:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/d;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/jpush/b/d;->j:Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/google/gson/jpush/b/d;->z:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private k()V
    .locals 4

    iget-object v0, p0, Lcom/google/gson/jpush/b/d;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/gson/jpush/b/d;->c:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/gson/jpush/b/d;->e:I

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/google/gson/jpush/b/d;->c:Ljava/io/Writer;

    iget-object v3, p0, Lcom/google/gson/jpush/b/d;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(J)Lcom/google/gson/jpush/b/d;
    .locals 3

    invoke-direct {p0}, Lcom/google/gson/jpush/b/d;->j()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/d;->e(Z)V

    iget-object v0, p0, Lcom/google/gson/jpush/b/d;->c:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Ljava/lang/Number;)Lcom/google/gson/jpush/b/d;
    .locals 4

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/d;->f()Lcom/google/gson/jpush/b/d;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/google/gson/jpush/b/d;->j()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/gson/jpush/b/d;->h:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/google/gson/jpush/b/d;->z:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/gson/jpush/b/d;->z:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/gson/jpush/b/d;->z:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/gson/jpush/b/d;->z:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/gson/jpush/b/d;->e(Z)V

    iget-object v1, p0, Lcom/google/gson/jpush/b/d;->c:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/google/gson/jpush/b/d;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    sget-object v1, Lcom/google/gson/jpush/b/d;->z:[Ljava/lang/String;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/jpush/b/d;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/gson/jpush/b/d;->e:I

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/google/gson/jpush/b/d;->z:[Ljava/lang/String;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/google/gson/jpush/b/d;->j:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/google/gson/jpush/b/d;
    .locals 3

    invoke-direct {p0}, Lcom/google/gson/jpush/b/d;->j()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/d;->e(Z)V

    iget-object v1, p0, Lcom/google/gson/jpush/b/d;->c:Ljava/io/Writer;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/gson/jpush/b/d;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0

    :cond_0
    sget-object v0, Lcom/google/gson/jpush/b/d;->z:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    goto :goto_0
.end method

.method public b()Lcom/google/gson/jpush/b/d;
    .locals 2

    invoke-direct {p0}, Lcom/google/gson/jpush/b/d;->j()V

    const/4 v0, 0x1

    const-string v1, "["

    invoke-direct {p0, v0, v1}, Lcom/google/gson/jpush/b/d;->a(ILjava/lang/String;)Lcom/google/gson/jpush/b/d;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/google/gson/jpush/b/d;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/d;->f()Lcom/google/gson/jpush/b/d;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/google/gson/jpush/b/d;->j()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/d;->e(Z)V

    invoke-direct {p0, p1}, Lcom/google/gson/jpush/b/d;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/gson/jpush/b/d;->h:Z

    return-void
.end method

.method public c()Lcom/google/gson/jpush/b/d;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    const-string v2, "]"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/gson/jpush/b/d;->a(IILjava/lang/String;)Lcom/google/gson/jpush/b/d;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/jpush/b/d;->f:Ljava/lang/String;

    const-string v0, ":"

    iput-object v0, p0, Lcom/google/gson/jpush/b/d;->g:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/gson/jpush/b/d;->f:Ljava/lang/String;

    sget-object v0, Lcom/google/gson/jpush/b/d;->z:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/gson/jpush/b/d;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/gson/jpush/b/d;->i:Z

    return-void
.end method

.method public close()V
    .locals 3

    const/4 v2, 0x7

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/gson/jpush/b/d;->c:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    iget v0, p0, Lcom/google/gson/jpush/b/d;->e:I

    if-gt v0, v1, :cond_0

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/gson/jpush/b/d;->d:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    if-eq v0, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    sget-object v1, Lcom/google/gson/jpush/b/d;->z:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/jpush/b/d;->e:I

    return-void
.end method

.method public d()Lcom/google/gson/jpush/b/d;
    .locals 2

    invoke-direct {p0}, Lcom/google/gson/jpush/b/d;->j()V

    const/4 v0, 0x3

    const-string v1, "{"

    invoke-direct {p0, v0, v1}, Lcom/google/gson/jpush/b/d;->a(ILjava/lang/String;)Lcom/google/gson/jpush/b/d;

    move-result-object v0

    return-object v0
.end method

.method public final d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/gson/jpush/b/d;->k:Z

    return-void
.end method

.method public e()Lcom/google/gson/jpush/b/d;
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x5

    const-string v2, "}"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/gson/jpush/b/d;->a(IILjava/lang/String;)Lcom/google/gson/jpush/b/d;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/google/gson/jpush/b/d;
    .locals 3

    iget-object v0, p0, Lcom/google/gson/jpush/b/d;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/gson/jpush/b/d;->k:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/gson/jpush/b/d;->j()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/d;->e(Z)V

    iget-object v0, p0, Lcom/google/gson/jpush/b/d;->c:Ljava/io/Writer;

    sget-object v1, Lcom/google/gson/jpush/b/d;->z:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/jpush/b/d;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method public flush()V
    .locals 3

    iget v0, p0, Lcom/google/gson/jpush/b/d;->e:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/google/gson/jpush/b/d;->z:[Ljava/lang/String;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/jpush/b/d;->c:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/gson/jpush/b/d;->h:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/gson/jpush/b/d;->i:Z

    return v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/gson/jpush/b/d;->k:Z

    return v0
.end method
