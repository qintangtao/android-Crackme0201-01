.class public Lcom/google/gson/jpush/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final a:[C

.field private static final z:[Ljava/lang/String;


# instance fields
.field private final b:Ljava/io/Reader;

.field private c:Z

.field private final d:[C

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:J

.field private k:I

.field private l:Ljava/lang/String;

.field private m:[I

.field private n:I

.field private o:[Ljava/lang/String;

.field private p:[I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x24

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "JP\u0007Nt"

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

    const/16 v9, 0x31

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

    const-string v1, "BD\u0007Q"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "bd\'q"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "XC\u001eX"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "jp\'nT"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "xc>x"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, ",r$qDa\u007fk"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, ",p?=]e\u007f.="

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, ",a*iY,"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "Ii;xRxt/=P,s$r]ip%=SyekjP\u007f1"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "Yb.={\u007f~%OTmu.o\u001f\u007ft?QTbx.sE$e9hT%1?r\u0011mr(xAx1&|]j~9pTh1\u0001N~B"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "Ii;xRxt/=Pb1\"sE,s>i\u0011{p8="

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "Ii;xRxt/=P,\u007f*pT,s>i\u0011{p8="

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "Y\u007f?xCax%|EiuknE~x%z"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "Y\u007f.eAir?xU,g*qDi"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "Ii;xRxt/=\u001666"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "Ii;xRxt/=Gm}>x"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "Y\u007f?xCax%|EiukrSft(i"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, "Y\u007f?xCax%|Eiuk|C~p2"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_11
    aput-object v1, v3, v2

    const/16 v2, 0x13

    const-string v1, "Ii;xRxt/=_m|."

    const/16 v0, 0x12

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_12
    aput-object v1, v3, v2

    const/16 v2, 0x14

    const-string v1, "Fb$scip/xC,x8=R`~8xU"

    const/16 v0, 0x13

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_13
    aput-object v1, v3, v2

    const/16 v2, 0x15

    const-string v1, "&>"

    const/16 v0, 0x14

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_14
    aput-object v1, v3, v2

    const/16 v2, 0x16

    const-string v1, "Y\u007f?xCax%|Eiuk~^a|.sE"

    const/16 v0, 0x15

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_15
    aput-object v1, v3, v2

    const/16 v2, 0x17

    const-string v1, "I\u007f/=^j1\"sAyek|E,}\"sT,"

    const/16 v0, 0x16

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_16
    aput-object v1, v3, v2

    const/16 v2, 0x18

    const-string v1, "FB\u0004S\u0011j~9\u007fXhbkSPB1*sU,x%{Xbx?tT\u007f+k"

    const/16 v0, 0x17

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_17
    aput-object v1, v3, v2

    const/16 v2, 0x19

    const-string v1, "Ii;xRxt/=P,u$hS`tk\u007fDx1<|B,"

    const/16 v0, 0x18

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_18
    aput-object v1, v3, v2

    const/16 v2, 0x1a

    const-string v1, "Ii;xRxt/=sIV\u0002SnCS\u0001XrX1)hE,f*n\u0011"

    const/16 v0, 0x19

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_19
    aput-object v1, v3, v2

    const/16 v2, 0x1b

    const-string v1, "Ii;xRxt/=P,}$sV,s>i\u0011{p8="

    const/16 v0, 0x1a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1a
    aput-object v1, v3, v2

    const/16 v2, 0x1c

    const-string v1, "Ii;xRxt/=P,b?oXbvk\u007fDx1<|B,"

    const/16 v0, 0x1b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1b
    aput-object v1, v3, v2

    const/16 v2, 0x1d

    const-string v1, "Ii;xRxt/=tBU\u0014RsFT\u0008I\u0011nd?=Fmbk"

    const/16 v0, 0x1c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1c
    aput-object v1, v3, v2

    const/16 v2, 0x1e

    const-string v1, "Ii;xRxt/=sIV\u0002SnMC\u0019\\h,s>i\u0011{p8="

    const/16 v0, 0x1d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1d
    aput-object v1, v3, v2

    const/16 v2, 0x1f

    const-string v1, "Ii;xRxt/=_y}\'=SyekjP\u007f1"

    const/16 v0, 0x1e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1e
    aput-object v1, v3, v2

    const/16 v2, 0x20

    const-string v1, "e\u007fk \u000c,\u007f>q]"

    const/16 v0, 0x1f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1f
    aput-object v1, v3, v2

    const/16 v2, 0x21

    const-string v1, "Ii;xRxt/=tBU\u0014\\c^P\u0012=SyekjP\u007f1"

    const/16 v0, 0x20

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_20
    aput-object v1, v3, v2

    const/16 v2, 0x22

    const-string v1, "Y\u007f?xCax%|EiukxBop;x\u0011\u007ft:hTbr."

    const/16 v0, 0x21

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_21
    aput-object v1, v3, v2

    const/16 v2, 0x23

    const-string v1, "Pd"

    const/16 v0, 0x22

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_22
    aput-object v1, v3, v2

    sput-object v4, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const-string v0, "%L6:;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_5

    :cond_3
    move-object v3, v0

    move v4, v2

    move v11, v1

    move-object v1, v0

    move v0, v11

    :goto_3
    aget-char v6, v1, v2

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_2

    const/16 v5, 0x31

    :goto_4
    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v2

    add-int/lit8 v2, v4, 0x1

    if-nez v0, :cond_4

    move-object v1, v3

    move v4, v2

    move v2, v0

    goto :goto_3

    :pswitch_23
    const/16 v9, 0xc

    goto/16 :goto_2

    :pswitch_24
    const/16 v9, 0x11

    goto/16 :goto_2

    :pswitch_25
    const/16 v9, 0x4b

    goto/16 :goto_2

    :pswitch_26
    const/16 v9, 0x1d

    goto/16 :goto_2

    :pswitch_27
    const/16 v5, 0xc

    goto :goto_4

    :pswitch_28
    const/16 v5, 0x11

    goto :goto_4

    :pswitch_29
    const/16 v5, 0x4b

    goto :goto_4

    :pswitch_2a
    const/16 v5, 0x1d

    goto :goto_4

    :cond_4
    move v1, v0

    move-object v0, v3

    :cond_5
    if-gt v1, v2, :cond_3

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/gson/jpush/b/a;->a:[C

    new-instance v0, Lcom/google/gson/jpush/b/b;

    invoke-direct {v0}, Lcom/google/gson/jpush/b/b;-><init>()V

    sput-object v0, Lcom/google/gson/jpush/internal/u;->a:Lcom/google/gson/jpush/internal/u;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
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
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
    .end packed-switch
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    const/16 v3, 0x20

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/gson/jpush/b/a;->c:Z

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/gson/jpush/b/a;->d:[C

    iput v1, p0, Lcom/google/gson/jpush/b/a;->e:I

    iput v1, p0, Lcom/google/gson/jpush/b/a;->f:I

    iput v1, p0, Lcom/google/gson/jpush/b/a;->g:I

    iput v1, p0, Lcom/google/gson/jpush/b/a;->h:I

    iput v1, p0, Lcom/google/gson/jpush/b/a;->i:I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/gson/jpush/b/a;->m:[I

    iput v1, p0, Lcom/google/gson/jpush/b/a;->n:I

    iget-object v0, p0, Lcom/google/gson/jpush/b/a;->m:[I

    iget v1, p0, Lcom/google/gson/jpush/b/a;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/jpush/b/a;->n:I

    const/4 v2, 0x6

    aput v2, v0, v1

    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gson/jpush/b/a;->o:[Ljava/lang/String;

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/gson/jpush/b/a;->p:[I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    sget-object v1, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/gson/jpush/b/a;->b:Ljava/io/Reader;

    return-void
.end method

.method static synthetic a(Lcom/google/gson/jpush/b/a;)I
    .locals 1

    iget v0, p0, Lcom/google/gson/jpush/b/a;->i:I

    return v0
.end method

.method static synthetic a(Lcom/google/gson/jpush/b/a;I)I
    .locals 0

    iput p1, p0, Lcom/google/gson/jpush/b/a;->i:I

    return p1
.end method

.method private a(Ljava/lang/String;)Ljava/io/IOException;
    .locals 4

    new-instance v0, Lcom/google/gson/jpush/b/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/gson/jpush/b/a;->g:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/jpush/b/e;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(I)V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcom/google/gson/jpush/b/a;->n:I

    iget-object v1, p0, Lcom/google/gson/jpush/b/a;->m:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/gson/jpush/b/a;->n:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/google/gson/jpush/b/a;->n:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/google/gson/jpush/b/a;->n:I

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/gson/jpush/b/a;->m:[I

    iget v4, p0, Lcom/google/gson/jpush/b/a;->n:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/gson/jpush/b/a;->p:[I

    iget v4, p0, Lcom/google/gson/jpush/b/a;->n:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/gson/jpush/b/a;->o:[Ljava/lang/String;

    iget v4, p0, Lcom/google/gson/jpush/b/a;->n:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/gson/jpush/b/a;->m:[I

    iput-object v1, p0, Lcom/google/gson/jpush/b/a;->p:[I

    iput-object v2, p0, Lcom/google/gson/jpush/b/a;->o:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/gson/jpush/b/a;->m:[I

    iget v1, p0, Lcom/google/gson/jpush/b/a;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/jpush/b/a;->n:I

    aput p1, v0, v1

    return-void
.end method

.method private a(C)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->v()V

    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic b(Lcom/google/gson/jpush/b/a;)I
    .locals 1

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->o()I

    move-result v0

    return v0
.end method

.method private b(Z)I
    .locals 8

    const/16 v7, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/google/gson/jpush/b/a;->d:[C

    iget v1, p0, Lcom/google/gson/jpush/b/a;->e:I

    iget v0, p0, Lcom/google/gson/jpush/b/a;->f:I

    :goto_0
    if-ne v1, v0, :cond_0

    iput v1, p0, Lcom/google/gson/jpush/b/a;->e:I

    invoke-direct {p0, v3}, Lcom/google/gson/jpush/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v1, p0, Lcom/google/gson/jpush/b/a;->e:I

    iget v0, p0, Lcom/google/gson/jpush/b/a;->f:I

    :cond_0
    add-int/lit8 v4, v1, 0x1

    aget-char v1, v5, v1

    if-ne v1, v7, :cond_1

    iget v1, p0, Lcom/google/gson/jpush/b/a;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/jpush/b/a;->g:I

    iput v4, p0, Lcom/google/gson/jpush/b/a;->h:I

    move v1, v4

    goto :goto_0

    :cond_1
    const/16 v6, 0x20

    if-eq v1, v6, :cond_d

    const/16 v6, 0xd

    if-eq v1, v6, :cond_d

    const/16 v6, 0x9

    if-eq v1, v6, :cond_d

    const/16 v6, 0x2f

    if-ne v1, v6, :cond_9

    iput v4, p0, Lcom/google/gson/jpush/b/a;->e:I

    if-ne v4, v0, :cond_2

    iget v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->b(I)Z

    move-result v0

    iget v4, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/gson/jpush/b/a;->e:I

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    return v0

    :cond_2
    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->v()V

    iget v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    aget-char v0, v5, v0

    sparse-switch v0, :sswitch_data_0

    move v0, v1

    goto :goto_1

    :sswitch_0
    iget v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    sget-object v0, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/16 v1, 0x15

    aget-object v1, v0, v1

    :goto_2
    iget v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    iget v4, p0, Lcom/google/gson/jpush/b/a;->f:I

    if-le v0, v4, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_3
    iget-object v0, p0, Lcom/google/gson/jpush/b/a;->d:[C

    iget v4, p0, Lcom/google/gson/jpush/b/a;->e:I

    aget-char v0, v0, v4

    if-ne v0, v7, :cond_5

    iget v0, p0, Lcom/google/gson/jpush/b/a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/jpush/b/a;->g:I

    iget v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/jpush/b/a;->h:I

    :cond_4
    iget v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_6

    iget-object v4, p0, Lcom/google/gson/jpush/b/a;->d:[C

    iget v6, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/2addr v6, v0

    aget-char v4, v4, v6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v4, v6, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    move v0, v3

    :goto_4
    if-nez v0, :cond_8

    sget-object v0, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/16 v1, 0x16

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_7
    move v0, v2

    goto :goto_4

    :cond_8
    iget v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcom/google/gson/jpush/b/a;->f:I

    goto/16 :goto_0

    :sswitch_1
    iget v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->w()V

    iget v1, p0, Lcom/google/gson/jpush/b/a;->e:I

    iget v0, p0, Lcom/google/gson/jpush/b/a;->f:I

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x23

    if-ne v1, v0, :cond_a

    iput v4, p0, Lcom/google/gson/jpush/b/a;->e:I

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->v()V

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->w()V

    iget v1, p0, Lcom/google/gson/jpush/b/a;->e:I

    iget v0, p0, Lcom/google/gson/jpush/b/a;->f:I

    goto/16 :goto_0

    :cond_a
    iput v4, p0, Lcom/google/gson/jpush/b/a;->e:I

    move v0, v1

    goto/16 :goto_1

    :cond_b
    if-eqz p1, :cond_c

    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/16 v3, 0x17

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/gson/jpush/b/a;->g:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v0, -0x1

    goto/16 :goto_1

    :cond_d
    move v1, v4

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x2f -> :sswitch_1
    .end sparse-switch
.end method

.method private b(C)Ljava/lang/String;
    .locals 7

    iget-object v4, p0, Lcom/google/gson/jpush/b/a;->d:[C

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    iget v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    iget v1, p0, Lcom/google/gson/jpush/b/a;->f:I

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_4

    add-int/lit8 v3, v2, 0x1

    aget-char v2, v4, v2

    if-ne v2, p1, :cond_1

    iput v3, p0, Lcom/google/gson/jpush/b/a;->e:I

    sub-int v1, v3, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v4, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v6, 0x5c

    if-ne v2, v6, :cond_2

    iput v3, p0, Lcom/google/gson/jpush/b/a;->e:I

    sub-int v1, v3, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v4, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->x()C

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    iget v1, p0, Lcom/google/gson/jpush/b/a;->f:I

    move v2, v0

    goto :goto_0

    :cond_2
    const/16 v6, 0xa

    if-ne v2, v6, :cond_3

    iget v2, p0, Lcom/google/gson/jpush/b/a;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/gson/jpush/b/a;->g:I

    iput v3, p0, Lcom/google/gson/jpush/b/a;->h:I

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    sub-int v1, v2, v0

    invoke-virtual {v5, v4, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iput v2, p0, Lcom/google/gson/jpush/b/a;->e:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private b(I)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/gson/jpush/b/a;->d:[C

    iget v2, p0, Lcom/google/gson/jpush/b/a;->h:I

    iget v3, p0, Lcom/google/gson/jpush/b/a;->e:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/jpush/b/a;->h:I

    iget v2, p0, Lcom/google/gson/jpush/b/a;->f:I

    iget v3, p0, Lcom/google/gson/jpush/b/a;->e:I

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/google/gson/jpush/b/a;->f:I

    iget v3, p0, Lcom/google/gson/jpush/b/a;->e:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/jpush/b/a;->f:I

    iget v2, p0, Lcom/google/gson/jpush/b/a;->e:I

    iget v3, p0, Lcom/google/gson/jpush/b/a;->f:I

    invoke-static {v1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iput v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    :cond_0
    iget-object v2, p0, Lcom/google/gson/jpush/b/a;->b:Ljava/io/Reader;

    iget v3, p0, Lcom/google/gson/jpush/b/a;->f:I

    array-length v4, v1

    iget v5, p0, Lcom/google/gson/jpush/b/a;->f:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget v3, p0, Lcom/google/gson/jpush/b/a;->f:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/jpush/b/a;->f:I

    iget v2, p0, Lcom/google/gson/jpush/b/a;->g:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/google/gson/jpush/b/a;->h:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/google/gson/jpush/b/a;->f:I

    if-lez v2, :cond_1

    aget-char v2, v1, v0

    const v3, 0xfeff

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/gson/jpush/b/a;->e:I

    iget v2, p0, Lcom/google/gson/jpush/b/a;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/gson/jpush/b/a;->h:I

    add-int/lit8 p1, p1, 0x1

    :cond_1
    iget v2, p0, Lcom/google/gson/jpush/b/a;->f:I

    if-lt v2, p1, :cond_0

    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    iput v0, p0, Lcom/google/gson/jpush/b/a;->f:I

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/gson/jpush/b/a;)I
    .locals 1

    iget v0, p0, Lcom/google/gson/jpush/b/a;->g:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private c(C)V
    .locals 5

    iget-object v3, p0, Lcom/google/gson/jpush/b/a;->d:[C

    :cond_0
    iget v1, p0, Lcom/google/gson/jpush/b/a;->e:I

    iget v0, p0, Lcom/google/gson/jpush/b/a;->f:I

    :goto_0
    if-ge v1, v0, :cond_4

    add-int/lit8 v2, v1, 0x1

    aget-char v1, v3, v1

    if-ne v1, p1, :cond_1

    iput v2, p0, Lcom/google/gson/jpush/b/a;->e:I

    return-void

    :cond_1
    const/16 v4, 0x5c

    if-ne v1, v4, :cond_2

    iput v2, p0, Lcom/google/gson/jpush/b/a;->e:I

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->x()C

    iget v1, p0, Lcom/google/gson/jpush/b/a;->e:I

    iget v0, p0, Lcom/google/gson/jpush/b/a;->f:I

    goto :goto_0

    :cond_2
    const/16 v4, 0xa

    if-ne v1, v4, :cond_3

    iget v1, p0, Lcom/google/gson/jpush/b/a;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/jpush/b/a;->g:I

    iput v2, p0, Lcom/google/gson/jpush/b/a;->h:I

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iput v1, p0, Lcom/google/gson/jpush/b/a;->e:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method static synthetic d(Lcom/google/gson/jpush/b/a;)I
    .locals 1

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->u()I

    move-result v0

    return v0
.end method

.method private o()I
    .locals 8

    const/4 v4, 0x7

    const/4 v7, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/gson/jpush/b/a;->m:[I

    iget v5, p0, Lcom/google/gson/jpush/b/a;->n:I

    add-int/lit8 v5, v5, -0x1

    aget v5, v0, v5

    if-ne v5, v3, :cond_3

    iget-object v0, p0, Lcom/google/gson/jpush/b/a;->m:[I

    iget v6, p0, Lcom/google/gson/jpush/b/a;->n:I

    add-int/lit8 v6, v6, -0x1

    aput v2, v0, v6

    :cond_0
    :goto_0
    :pswitch_0
    :sswitch_0
    invoke-direct {p0, v3}, Lcom/google/gson/jpush/b/a;->b(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    iget v0, p0, Lcom/google/gson/jpush/b/a;->n:I

    if-ne v0, v3, :cond_1

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->v()V

    :cond_1
    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->r()I

    move-result v0

    if-eqz v0, :cond_16

    :cond_2
    :goto_1
    return v0

    :cond_3
    if-ne v5, v2, :cond_4

    invoke-direct {p0, v3}, Lcom/google/gson/jpush/b/a;->b(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    sget-object v0, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :sswitch_1
    iput v1, p0, Lcom/google/gson/jpush/b/a;->i:I

    move v0, v1

    goto :goto_1

    :sswitch_2
    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->v()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-eq v5, v0, :cond_5

    if-ne v5, v7, :cond_9

    :cond_5
    iget-object v0, p0, Lcom/google/gson/jpush/b/a;->m:[I

    iget v4, p0, Lcom/google/gson/jpush/b/a;->n:I

    add-int/lit8 v4, v4, -0x1

    aput v1, v0, v4

    if-ne v5, v7, :cond_6

    invoke-direct {p0, v3}, Lcom/google/gson/jpush/b/a;->b(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_2

    sget-object v0, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :sswitch_3
    iput v2, p0, Lcom/google/gson/jpush/b/a;->i:I

    move v0, v2

    goto :goto_1

    :sswitch_4
    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->v()V

    :cond_6
    :sswitch_5
    invoke-direct {p0, v3}, Lcom/google/gson/jpush/b/a;->b(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_3

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->v()V

    iget v1, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/jpush/b/a;->e:I

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->a(C)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xe

    iput v0, p0, Lcom/google/gson/jpush/b/a;->i:I

    goto :goto_1

    :sswitch_6
    const/16 v0, 0xd

    iput v0, p0, Lcom/google/gson/jpush/b/a;->i:I

    goto :goto_1

    :sswitch_7
    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->v()V

    const/16 v0, 0xc

    iput v0, p0, Lcom/google/gson/jpush/b/a;->i:I

    goto :goto_1

    :sswitch_8
    if-eq v5, v7, :cond_7

    iput v2, p0, Lcom/google/gson/jpush/b/a;->i:I

    move v0, v2

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/16 v1, 0x13

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_8
    sget-object v0, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/16 v1, 0x13

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_9
    if-ne v5, v1, :cond_b

    iget-object v0, p0, Lcom/google/gson/jpush/b/a;->m:[I

    iget v6, p0, Lcom/google/gson/jpush/b/a;->n:I

    add-int/lit8 v6, v6, -0x1

    aput v7, v0, v6

    invoke-direct {p0, v3}, Lcom/google/gson/jpush/b/a;->b(Z)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    sget-object v0, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_2
    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->v()V

    iget v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    iget v6, p0, Lcom/google/gson/jpush/b/a;->f:I

    if-lt v0, v6, :cond_a

    invoke-direct {p0, v3}, Lcom/google/gson/jpush/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_a
    iget-object v0, p0, Lcom/google/gson/jpush/b/a;->d:[C

    iget v6, p0, Lcom/google/gson/jpush/b/a;->e:I

    aget-char v0, v0, v6

    const/16 v6, 0x3e

    if-ne v0, v6, :cond_0

    iget v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x6

    if-ne v5, v0, :cond_f

    iget-boolean v0, p0, Lcom/google/gson/jpush/b/a;->c:Z

    if-eqz v0, :cond_e

    invoke-direct {p0, v3}, Lcom/google/gson/jpush/b/a;->b(Z)I

    iget v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    iget v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    sget-object v6, Lcom/google/gson/jpush/b/a;->a:[C

    array-length v6, v6

    add-int/2addr v0, v6

    iget v6, p0, Lcom/google/gson/jpush/b/a;->f:I

    if-le v0, v6, :cond_c

    sget-object v0, Lcom/google/gson/jpush/b/a;->a:[C

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_2
    sget-object v6, Lcom/google/gson/jpush/b/a;->a:[C

    array-length v6, v6

    if-ge v0, v6, :cond_d

    iget-object v6, p0, Lcom/google/gson/jpush/b/a;->d:[C

    iget v7, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/2addr v7, v0

    aget-char v6, v6, v7

    sget-object v7, Lcom/google/gson/jpush/b/a;->a:[C

    aget-char v7, v7, v0

    if-ne v6, v7, :cond_e

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_d
    iget v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    sget-object v6, Lcom/google/gson/jpush/b/a;->a:[C

    array-length v6, v6

    add-int/2addr v0, v6

    iput v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    :cond_e
    iget-object v0, p0, Lcom/google/gson/jpush/b/a;->m:[I

    iget v6, p0, Lcom/google/gson/jpush/b/a;->n:I

    add-int/lit8 v6, v6, -0x1

    aput v4, v0, v6

    goto/16 :goto_0

    :cond_f
    if-ne v5, v4, :cond_11

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->b(Z)I

    move-result v0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_10

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/gson/jpush/b/a;->i:I

    goto/16 :goto_1

    :cond_10
    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->v()V

    iget v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    goto/16 :goto_0

    :cond_11
    const/16 v0, 0x8

    if-ne v5, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_9
    if-ne v5, v3, :cond_12

    iput v1, p0, Lcom/google/gson/jpush/b/a;->i:I

    move v0, v1

    goto/16 :goto_1

    :cond_12
    :sswitch_a
    if-eq v5, v3, :cond_13

    if-ne v5, v2, :cond_14

    :cond_13
    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->v()V

    iget v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    iput v4, p0, Lcom/google/gson/jpush/b/a;->i:I

    move v0, v4

    goto/16 :goto_1

    :cond_14
    sget-object v0, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :sswitch_b
    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->v()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/google/gson/jpush/b/a;->i:I

    goto/16 :goto_1

    :sswitch_c
    iget v0, p0, Lcom/google/gson/jpush/b/a;->n:I

    if-ne v0, v3, :cond_15

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->v()V

    :cond_15
    const/16 v0, 0x9

    iput v0, p0, Lcom/google/gson/jpush/b/a;->i:I

    goto/16 :goto_1

    :sswitch_d
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/gson/jpush/b/a;->i:I

    goto/16 :goto_1

    :sswitch_e
    iput v3, p0, Lcom/google/gson/jpush/b/a;->i:I

    move v0, v3

    goto/16 :goto_1

    :cond_16
    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->s()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/gson/jpush/b/a;->d:[C

    iget v1, p0, Lcom/google/gson/jpush/b/a;->e:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->a(C)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_17
    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->v()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/google/gson/jpush/b/a;->i:I

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_c
        0x27 -> :sswitch_b
        0x2c -> :sswitch_a
        0x3b -> :sswitch_a
        0x5b -> :sswitch_d
        0x5d -> :sswitch_9
        0x7b -> :sswitch_e
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_2
        0x5d -> :sswitch_1
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x2c -> :sswitch_5
        0x3b -> :sswitch_4
        0x7d -> :sswitch_3
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x22 -> :sswitch_6
        0x27 -> :sswitch_7
        0x7d -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private r()I
    .locals 8

    const/4 v0, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/google/gson/jpush/b/a;->d:[C

    iget v2, p0, Lcom/google/gson/jpush/b/a;->e:I

    aget-char v1, v1, v2

    const/16 v2, 0x74

    if-eq v1, v2, :cond_0

    const/16 v2, 0x54

    if-ne v1, v2, :cond_1

    :cond_0
    sget-object v1, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v2, v1, v0

    sget-object v1, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v1, v1, v5

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    :goto_1
    if-ge v4, v5, :cond_8

    iget v6, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/google/gson/jpush/b/a;->f:I

    if-lt v6, v7, :cond_6

    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, v6}, Lcom/google/gson/jpush/b/a;->b(I)Z

    move-result v6

    if-nez v6, :cond_6

    move v0, v3

    :goto_2
    return v0

    :cond_1
    const/16 v0, 0x66

    if-eq v1, v0, :cond_2

    const/16 v0, 0x46

    if-ne v1, v0, :cond_3

    :cond_2
    sget-object v0, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v2, v0, v1

    sget-object v0, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v1, v0, v3

    const/4 v0, 0x6

    goto :goto_0

    :cond_3
    const/16 v0, 0x6e

    if-eq v1, v0, :cond_4

    const/16 v0, 0x4e

    if-ne v1, v0, :cond_5

    :cond_4
    sget-object v0, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v2, v0, v1

    sget-object v0, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v1, v0, v4

    const/4 v0, 0x7

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/google/gson/jpush/b/a;->d:[C

    iget v7, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/2addr v7, v4

    aget-char v6, v6, v7

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_7

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_7

    move v0, v3

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    iget v1, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/2addr v1, v5

    iget v2, p0, Lcom/google/gson/jpush/b/a;->f:I

    if-lt v1, v2, :cond_9

    add-int/lit8 v1, v5, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/jpush/b/a;->b(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    iget-object v1, p0, Lcom/google/gson/jpush/b/a;->d:[C

    iget v2, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/2addr v2, v5

    aget-char v1, v1, v2

    invoke-direct {p0, v1}, Lcom/google/gson/jpush/b/a;->a(C)Z

    move-result v1

    if-eqz v1, :cond_a

    move v0, v3

    goto :goto_2

    :cond_a
    iget v1, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/google/gson/jpush/b/a;->e:I

    iput v0, p0, Lcom/google/gson/jpush/b/a;->i:I

    goto :goto_2
.end method

.method private s()I
    .locals 15

    iget-object v11, p0, Lcom/google/gson/jpush/b/a;->d:[C

    iget v2, p0, Lcom/google/gson/jpush/b/a;->e:I

    iget v1, p0, Lcom/google/gson/jpush/b/a;->f:I

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    move v10, v0

    move v0, v1

    move v1, v2

    :goto_0
    add-int v2, v1, v10

    if-ne v2, v0, :cond_1

    array-length v0, v11

    if-ne v10, v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v10, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v1, p0, Lcom/google/gson/jpush/b/a;->e:I

    iget v0, p0, Lcom/google/gson/jpush/b/a;->f:I

    :cond_1
    add-int v2, v1, v10

    aget-char v2, v11, v2

    sparse-switch v2, :sswitch_data_0

    const/16 v8, 0x30

    if-lt v2, v8, :cond_2

    const/16 v8, 0x39

    if-le v2, v8, :cond_9

    :cond_2
    invoke-direct {p0, v2}, Lcom/google/gson/jpush/b/a;->a(C)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_0
    if-nez v3, :cond_3

    const/4 v3, 0x1

    const/4 v2, 0x1

    move v14, v4

    move v4, v3

    move v3, v14

    :goto_2
    add-int/lit8 v5, v10, 0x1

    move v10, v5

    move v5, v4

    move v4, v3

    move v3, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    if-ne v3, v2, :cond_4

    const/4 v2, 0x6

    move v3, v4

    move v4, v5

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const/4 v2, 0x5

    if-ne v3, v2, :cond_5

    const/4 v2, 0x6

    move v3, v4

    move v4, v5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const/4 v2, 0x2

    if-eq v3, v2, :cond_6

    const/4 v2, 0x4

    if-ne v3, v2, :cond_7

    :cond_6
    const/4 v2, 0x5

    move v3, v4

    move v4, v5

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const/4 v2, 0x2

    if-ne v3, v2, :cond_8

    const/4 v2, 0x3

    move v3, v4

    move v4, v5

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    :cond_9
    const/4 v8, 0x1

    if-eq v3, v8, :cond_a

    if-nez v3, :cond_b

    :cond_a
    add-int/lit8 v2, v2, -0x30

    neg-int v2, v2

    int-to-long v6, v2

    const/4 v2, 0x2

    move v3, v4

    move v4, v5

    goto :goto_2

    :cond_b
    const/4 v8, 0x2

    if-ne v3, v8, :cond_f

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_c

    const/4 v0, 0x0

    goto :goto_1

    :cond_c
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v6

    add-int/lit8 v2, v2, -0x30

    int-to-long v12, v2

    sub-long/2addr v8, v12

    const-wide v12, -0xcccccccccccccccL

    cmp-long v2, v6, v12

    if-gtz v2, :cond_d

    const-wide v12, -0xcccccccccccccccL

    cmp-long v2, v6, v12

    if-nez v2, :cond_e

    cmp-long v2, v8, v6

    if-gez v2, :cond_e

    :cond_d
    const/4 v2, 0x1

    :goto_3
    and-int/2addr v2, v4

    move v4, v5

    move-wide v6, v8

    move v14, v3

    move v3, v2

    move v2, v14

    goto :goto_2

    :cond_e
    const/4 v2, 0x0

    goto :goto_3

    :cond_f
    const/4 v2, 0x3

    if-ne v3, v2, :cond_10

    const/4 v2, 0x4

    move v3, v4

    move v4, v5

    goto :goto_2

    :cond_10
    const/4 v2, 0x5

    if-eq v3, v2, :cond_11

    const/4 v2, 0x6

    if-ne v3, v2, :cond_18

    :cond_11
    const/4 v2, 0x7

    move v3, v4

    move v4, v5

    goto :goto_2

    :cond_12
    const/4 v0, 0x2

    if-ne v3, v0, :cond_15

    if-eqz v4, :cond_15

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, v6, v0

    if-nez v0, :cond_13

    if-eqz v5, :cond_15

    :cond_13
    if-eqz v5, :cond_14

    :goto_4
    iput-wide v6, p0, Lcom/google/gson/jpush/b/a;->j:J

    iget v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/2addr v0, v10

    iput v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/google/gson/jpush/b/a;->i:I

    goto/16 :goto_1

    :cond_14
    neg-long v6, v6

    goto :goto_4

    :cond_15
    const/4 v0, 0x2

    if-eq v3, v0, :cond_16

    const/4 v0, 0x4

    if-eq v3, v0, :cond_16

    const/4 v0, 0x7

    if-ne v3, v0, :cond_17

    :cond_16
    iput v10, p0, Lcom/google/gson/jpush/b/a;->k:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/google/gson/jpush/b/a;->i:I

    goto/16 :goto_1

    :cond_17
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_18
    move v2, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_1
        0x2d -> :sswitch_0
        0x2e -> :sswitch_3
        0x45 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch
.end method

.method private t()Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v1, v2

    :goto_0
    iget v3, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/google/gson/jpush/b/a;->f:I

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lcom/google/gson/jpush/b/a;->d:[C

    iget v4, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->v()V

    :cond_0
    :goto_1
    :sswitch_1
    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/gson/jpush/b/a;->d:[C

    iget v3, p0, Lcom/google/gson/jpush/b/a;->e:I

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    :goto_2
    iget v2, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/jpush/b/a;->e:I

    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/google/gson/jpush/b/a;->d:[C

    array-length v3, v3

    if-ge v1, v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Lcom/google/gson/jpush/b/a;->b(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_3
    iget-object v3, p0, Lcom/google/gson/jpush/b/a;->d:[C

    iget v4, p0, Lcom/google/gson/jpush/b/a;->e:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/gson/jpush/b/a;->e:I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/jpush/b/a;->b(I)Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/google/gson/jpush/b/a;->d:[C

    iget v3, p0, Lcom/google/gson/jpush/b/a;->e:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private u()I
    .locals 2

    iget v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    iget v1, p0, Lcom/google/gson/jpush/b/a;->h:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private v()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/gson/jpush/b/a;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method private w()V
    .locals 3

    :goto_0
    iget v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    iget v1, p0, Lcom/google/gson/jpush/b/a;->f:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/gson/jpush/b/a;->d:[C

    iget v1, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/jpush/b/a;->e:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/google/gson/jpush/b/a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/jpush/b/a;->g:I

    iget v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    iput v0, p0, Lcom/google/gson/jpush/b/a;->h:I

    :cond_1
    return-void

    :cond_2
    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    goto :goto_0
.end method

.method private x()C
    .locals 7

    const/16 v3, 0x22

    const/4 v5, 0x4

    iget v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    iget v1, p0, Lcom/google/gson/jpush/b/a;->f:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/jpush/b/a;->d:[C

    iget v1, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/jpush/b/a;->e:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    iget v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/google/gson/jpush/b/a;->f:I

    if-le v0, v1, :cond_1

    invoke-direct {p0, v5}, Lcom/google/gson/jpush/b/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    const/4 v1, 0x0

    iget v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/lit8 v2, v0, 0x4

    move v6, v0

    move v0, v1

    move v1, v6

    :goto_1
    if-ge v1, v2, :cond_5

    iget-object v3, p0, Lcom/google/gson/jpush/b/a;->d:[C

    aget-char v3, v3, v1

    shl-int/lit8 v0, v0, 0x4

    int-to-char v0, v0

    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-gt v3, v4, :cond_2

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    int-to-char v0, v0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/16 v4, 0x61

    if-lt v3, v4, :cond_3

    const/16 v4, 0x66

    if-gt v3, v4, :cond_3

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_2

    :cond_3
    const/16 v4, 0x41

    if-lt v3, v4, :cond_4

    const/16 v4, 0x46

    if-gt v3, v4, :cond_4

    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/16 v3, 0x23

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/gson/jpush/b/a;->d:[C

    iget v4, p0, Lcom/google/gson/jpush/b/a;->e:I

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget v1, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/gson/jpush/b/a;->e:I

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_2
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_6
    iget v1, p0, Lcom/google/gson/jpush/b/a;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/jpush/b/a;->g:I

    iget v1, p0, Lcom/google/gson/jpush/b/a;->e:I

    iput v1, p0, Lcom/google/gson/jpush/b/a;->h:I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_6
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/gson/jpush/b/a;->i:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->o()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->a(I)V

    iget-object v0, p0, Lcom/google/gson/jpush/b/a;->p:[I

    iget v1, p0, Lcom/google/gson/jpush/b/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aput v2, v0, v1

    iput v2, p0, Lcom/google/gson/jpush/b/a;->i:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/16 v3, 0x1e

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/gson/jpush/b/a;->g:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/gson/jpush/b/a;->c:Z

    return-void
.end method

.method public b()V
    .locals 4

    iget v0, p0, Lcom/google/gson/jpush/b/a;->i:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->o()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/gson/jpush/b/a;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/jpush/b/a;->n:I

    iget-object v0, p0, Lcom/google/gson/jpush/b/a;->p:[I

    iget v1, p0, Lcom/google/gson/jpush/b/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/jpush/b/a;->i:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/16 v3, 0x21

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/gson/jpush/b/a;->g:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()V
    .locals 4

    iget v0, p0, Lcom/google/gson/jpush/b/a;->i:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->o()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->a(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/jpush/b/a;->i:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/16 v3, 0x1a

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/gson/jpush/b/a;->g:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/gson/jpush/b/a;->i:I

    iget-object v0, p0, Lcom/google/gson/jpush/b/a;->m:[I

    const/16 v1, 0x8

    aput v1, v0, v2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/gson/jpush/b/a;->n:I

    iget-object v0, p0, Lcom/google/gson/jpush/b/a;->b:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public d()V
    .locals 4

    iget v0, p0, Lcom/google/gson/jpush/b/a;->i:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->o()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/gson/jpush/b/a;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/jpush/b/a;->n:I

    iget-object v0, p0, Lcom/google/gson/jpush/b/a;->o:[Ljava/lang/String;

    iget v1, p0, Lcom/google/gson/jpush/b/a;->n:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/google/gson/jpush/b/a;->p:[I

    iget v1, p0, Lcom/google/gson/jpush/b/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/jpush/b/a;->i:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/16 v3, 0x1d

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/gson/jpush/b/a;->g:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Z
    .locals 2

    iget v0, p0, Lcom/google/gson/jpush/b/a;->i:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->o()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Lcom/google/gson/jpush/b/c;
    .locals 1

    iget v0, p0, Lcom/google/gson/jpush/b/a;->i:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->o()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/google/gson/jpush/b/c;->c:Lcom/google/gson/jpush/b/c;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/google/gson/jpush/b/c;->d:Lcom/google/gson/jpush/b/c;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/google/gson/jpush/b/c;->a:Lcom/google/gson/jpush/b/c;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/gson/jpush/b/c;->b:Lcom/google/gson/jpush/b/c;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/gson/jpush/b/c;->e:Lcom/google/gson/jpush/b/c;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/google/gson/jpush/b/c;->h:Lcom/google/gson/jpush/b/c;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/google/gson/jpush/b/c;->i:Lcom/google/gson/jpush/b/c;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/google/gson/jpush/b/c;->f:Lcom/google/gson/jpush/b/c;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/google/gson/jpush/b/c;->g:Lcom/google/gson/jpush/b/c;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/google/gson/jpush/b/c;->j:Lcom/google/gson/jpush/b/c;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public g()Ljava/lang/String;
    .locals 4

    const/16 v3, 0xc

    iget v0, p0, Lcom/google/gson/jpush/b/a;->i:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->o()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->t()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/jpush/b/a;->i:I

    iget-object v1, p0, Lcom/google/gson/jpush/b/a;->o:[Ljava/lang/String;

    iget v2, p0, Lcom/google/gson/jpush/b/a;->n:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    return-object v0

    :cond_1
    if-ne v0, v3, :cond_2

    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/gson/jpush/b/a;->g:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x8

    iget v0, p0, Lcom/google/gson/jpush/b/a;->i:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->o()I

    move-result v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->t()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/jpush/b/a;->i:I

    iget-object v1, p0, Lcom/google/gson/jpush/b/a;->p:[I

    iget v2, p0, Lcom/google/gson/jpush/b/a;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    return-object v0

    :cond_1
    if-ne v0, v4, :cond_2

    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/gson/jpush/b/a;->l:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/gson/jpush/b/a;->l:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    iget-wide v0, p0, Lcom/google/gson/jpush/b/a;->j:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/gson/jpush/b/a;->d:[C

    iget v2, p0, Lcom/google/gson/jpush/b/a;->e:I

    iget v3, p0, Lcom/google/gson/jpush/b/a;->k:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iget v1, p0, Lcom/google/gson/jpush/b/a;->e:I

    iget v2, p0, Lcom/google/gson/jpush/b/a;->k:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/jpush/b/a;->e:I

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/16 v3, 0x1c

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/gson/jpush/b/a;->g:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Z
    .locals 5

    const/4 v4, 0x6

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/gson/jpush/b/a;->i:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->o()I

    move-result v1

    :cond_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    iput v0, p0, Lcom/google/gson/jpush/b/a;->i:I

    iget-object v0, p0, Lcom/google/gson/jpush/b/a;->p:[I

    iget v1, p0, Lcom/google/gson/jpush/b/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    if-ne v1, v4, :cond_2

    iput v0, p0, Lcom/google/gson/jpush/b/a;->i:I

    iget-object v1, p0, Lcom/google/gson/jpush/b/a;->p:[I

    iget v2, p0, Lcom/google/gson/jpush/b/a;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/gson/jpush/b/a;->g:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()V
    .locals 5

    const/4 v4, 0x7

    iget v0, p0, Lcom/google/gson/jpush/b/a;->i:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->o()I

    move-result v0

    :cond_0
    if-ne v0, v4, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/jpush/b/a;->i:I

    iget-object v0, p0, Lcom/google/gson/jpush/b/a;->p:[I

    iget v1, p0, Lcom/google/gson/jpush/b/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/16 v3, 0x1f

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/gson/jpush/b/a;->g:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()D
    .locals 9

    const/16 v5, 0xb

    const/4 v8, 0x7

    const/4 v7, 0x6

    const/4 v4, 0x0

    const/16 v6, 0x8

    iget v0, p0, Lcom/google/gson/jpush/b/a;->i:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->o()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    iput v4, p0, Lcom/google/gson/jpush/b/a;->i:I

    iget-object v0, p0, Lcom/google/gson/jpush/b/a;->p:[I

    iget v1, p0, Lcom/google/gson/jpush/b/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lcom/google/gson/jpush/b/a;->j:J

    long-to-double v0, v0

    :goto_0
    return-wide v0

    :cond_1
    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/gson/jpush/b/a;->d:[C

    iget v2, p0, Lcom/google/gson/jpush/b/a;->e:I

    iget v3, p0, Lcom/google/gson/jpush/b/a;->k:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/gson/jpush/b/a;->l:Ljava/lang/String;

    iget v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    iget v1, p0, Lcom/google/gson/jpush/b/a;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    :cond_2
    :goto_1
    iput v5, p0, Lcom/google/gson/jpush/b/a;->i:I

    iget-object v0, p0, Lcom/google/gson/jpush/b/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-boolean v2, p0, Lcom/google/gson/jpush/b/a;->c:Z

    if-nez v2, :cond_9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_3
    new-instance v2, Lcom/google/gson/jpush/b/e;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/16 v5, 0x18

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/gson/jpush/b/a;->g:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->u()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/gson/jpush/b/e;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    if-eq v0, v6, :cond_5

    const/16 v1, 0x9

    if-ne v0, v1, :cond_7

    :cond_5
    if-ne v0, v6, :cond_6

    const/16 v0, 0x27

    :goto_2
    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/jpush/b/a;->l:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const/16 v0, 0x22

    goto :goto_2

    :cond_7
    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/jpush/b/a;->l:Ljava/lang/String;

    goto :goto_1

    :cond_8
    if-eq v0, v5, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/16 v3, 0x19

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/gson/jpush/b/a;->g:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/gson/jpush/b/a;->l:Ljava/lang/String;

    iput v4, p0, Lcom/google/gson/jpush/b/a;->i:I

    iget-object v2, p0, Lcom/google/gson/jpush/b/a;->p:[I

    iget v3, p0, Lcom/google/gson/jpush/b/a;->n:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto/16 :goto_0
.end method

.method public l()J
    .locals 11

    const/16 v10, 0x1b

    const/4 v9, 0x7

    const/4 v8, 0x6

    const/4 v7, 0x0

    const/16 v6, 0x8

    iget v0, p0, Lcom/google/gson/jpush/b/a;->i:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->o()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    iput v7, p0, Lcom/google/gson/jpush/b/a;->i:I

    iget-object v0, p0, Lcom/google/gson/jpush/b/a;->p:[I

    iget v1, p0, Lcom/google/gson/jpush/b/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lcom/google/gson/jpush/b/a;->j:J

    :goto_0
    return-wide v0

    :cond_1
    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/gson/jpush/b/a;->d:[C

    iget v2, p0, Lcom/google/gson/jpush/b/a;->e:I

    iget v3, p0, Lcom/google/gson/jpush/b/a;->k:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/gson/jpush/b/a;->l:Ljava/lang/String;

    iget v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    iget v1, p0, Lcom/google/gson/jpush/b/a;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    :goto_1
    const/16 v0, 0xb

    iput v0, p0, Lcom/google/gson/jpush/b/a;->i:I

    iget-object v0, p0, Lcom/google/gson/jpush/b/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-long v0, v2

    long-to-double v4, v0

    cmpl-double v2, v4, v2

    if-eqz v2, :cond_6

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/gson/jpush/b/a;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/gson/jpush/b/a;->g:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eq v0, v6, :cond_3

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    :cond_3
    if-ne v0, v6, :cond_4

    const/16 v0, 0x27

    :goto_2
    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/jpush/b/a;->l:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/google/gson/jpush/b/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/gson/jpush/b/a;->i:I

    iget-object v2, p0, Lcom/google/gson/jpush/b/a;->p:[I

    iget v3, p0, Lcom/google/gson/jpush/b/a;->n:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_4
    const/16 v0, 0x22

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/gson/jpush/b/a;->g:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/gson/jpush/b/a;->l:Ljava/lang/String;

    iput v7, p0, Lcom/google/gson/jpush/b/a;->i:I

    iget-object v2, p0, Lcom/google/gson/jpush/b/a;->p:[I

    iget v3, p0, Lcom/google/gson/jpush/b/a;->n:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto/16 :goto_0
.end method

.method public m()I
    .locals 11

    const/4 v10, 0x7

    const/4 v9, 0x6

    const/4 v8, 0x0

    const/16 v7, 0xb

    const/16 v6, 0x8

    iget v0, p0, Lcom/google/gson/jpush/b/a;->i:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->o()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/google/gson/jpush/b/a;->j:J

    long-to-int v0, v0

    iget-wide v2, p0, Lcom/google/gson/jpush/b/a;->j:J

    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/google/gson/jpush/b/a;->j:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/gson/jpush/b/a;->g:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput v8, p0, Lcom/google/gson/jpush/b/a;->i:I

    iget-object v1, p0, Lcom/google/gson/jpush/b/a;->p:[I

    iget v2, p0, Lcom/google/gson/jpush/b/a;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    :goto_0
    return v0

    :cond_2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/gson/jpush/b/a;->d:[C

    iget v2, p0, Lcom/google/gson/jpush/b/a;->e:I

    iget v3, p0, Lcom/google/gson/jpush/b/a;->k:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/gson/jpush/b/a;->l:Ljava/lang/String;

    iget v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    iget v1, p0, Lcom/google/gson/jpush/b/a;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/jpush/b/a;->e:I

    :goto_1
    iput v7, p0, Lcom/google/gson/jpush/b/a;->i:I

    iget-object v0, p0, Lcom/google/gson/jpush/b/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v0, v2

    int-to-double v4, v0

    cmpl-double v1, v4, v2

    if-eqz v1, :cond_7

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/gson/jpush/b/a;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/gson/jpush/b/a;->g:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eq v0, v6, :cond_4

    const/16 v1, 0x9

    if-ne v0, v1, :cond_6

    :cond_4
    if-ne v0, v6, :cond_5

    const/16 v0, 0x27

    :goto_2
    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/a;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/jpush/b/a;->l:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/google/gson/jpush/b/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/jpush/b/a;->i:I

    iget-object v1, p0, Lcom/google/gson/jpush/b/a;->p:[I

    iget v2, p0, Lcom/google/gson/jpush/b/a;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_5
    const/16 v0, 0x22

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/gson/jpush/b/a;->g:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/gson/jpush/b/a;->l:Ljava/lang/String;

    iput v8, p0, Lcom/google/gson/jpush/b/a;->i:I

    iget-object v1, p0, Lcom/google/gson/jpush/b/a;->p:[I

    iget v2, p0, Lcom/google/gson/jpush/b/a;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto/16 :goto_0
.end method

.method public n()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    move v0, v1

    :cond_0
    iget v2, p0, Lcom/google/gson/jpush/b/a;->i:I

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->o()I

    move-result v2

    :cond_1
    if-ne v2, v7, :cond_3

    invoke-direct {p0, v5}, Lcom/google/gson/jpush/b/a;->a(I)V

    add-int/lit8 v0, v0, 0x1

    :cond_2
    :goto_0
    iput v1, p0, Lcom/google/gson/jpush/b/a;->i:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/jpush/b/a;->p:[I

    iget v1, p0, Lcom/google/gson/jpush/b/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/gson/jpush/b/a;->o:[Ljava/lang/String;

    iget v1, p0, Lcom/google/gson/jpush/b/a;->n:I

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v6

    aput-object v2, v0, v1

    return-void

    :cond_3
    if-ne v2, v5, :cond_4

    invoke-direct {p0, v7}, Lcom/google/gson/jpush/b/a;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/gson/jpush/b/a;->n:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/gson/jpush/b/a;->n:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    if-ne v2, v6, :cond_6

    iget v2, p0, Lcom/google/gson/jpush/b/a;->n:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/gson/jpush/b/a;->n:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    const/16 v3, 0xe

    if-eq v2, v3, :cond_7

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    :cond_7
    move v2, v1

    :goto_1
    iget v3, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/google/gson/jpush/b/a;->f:I

    if-ge v3, v4, :cond_8

    iget-object v3, p0, Lcom/google/gson/jpush/b/a;->d:[C

    iget v4, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/2addr v4, v2

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :sswitch_0
    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->v()V

    :sswitch_1
    iget v3, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/jpush/b/a;->e:I

    goto :goto_0

    :cond_8
    iget v3, p0, Lcom/google/gson/jpush/b/a;->e:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/jpush/b/a;->e:I

    invoke-direct {p0, v5}, Lcom/google/gson/jpush/b/a;->b(I)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_9
    const/16 v3, 0x8

    if-eq v2, v3, :cond_a

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    :cond_a
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/google/gson/jpush/b/a;->c(C)V

    goto :goto_0

    :cond_b
    const/16 v3, 0x9

    if-eq v2, v3, :cond_c

    const/16 v3, 0xd

    if-ne v2, v3, :cond_d

    :cond_c
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/google/gson/jpush/b/a;->c(C)V

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/gson/jpush/b/a;->e:I

    iget v3, p0, Lcom/google/gson/jpush/b/a;->k:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/jpush/b/a;->e:I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/gson/jpush/b/a;->c:Z

    return v0
.end method

.method public final q()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "$"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget v2, p0, Lcom/google/gson/jpush/b/a;->n:I

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/google/gson/jpush/b/a;->m:[I

    aget v3, v3, v0

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/gson/jpush/b/a;->p:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/gson/jpush/b/a;->o:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/gson/jpush/b/a;->o:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/gson/jpush/b/a;->g:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/gson/jpush/b/a;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/gson/jpush/b/a;->u()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
