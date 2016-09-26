.class public final Lcn/jpush/b/a/b/p;
.super Ljava/lang/Object;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field a:I

.field b:I

.field c:J

.field d:Ljava/lang/String;

.field e:Ljava/lang/Object;

.field f:Lcn/jpush/a/a/af;

.field g:I

.field h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0xa

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "{\u000eBVYJ\u000cOS\u0017M\rN\u0017\u001a\u000e"

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

    const/16 v9, 0x37

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

    const-string v1, "\u0002@OYCG\u0014S\r"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "\u0002@KGGE\u0005S\r"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "\u0002@XRD^\u000fDDRm\u000fNR\r"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "\u0002@XRD^\u000fDDRc\u0005YDVI\u0005\u0010"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "u)ggEA\u0014ETXB=\n\u001a\u0017M\u000fGZV@\u0004\u0010"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "\u0002@\\RE]\tEY\r"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "\u0002@_^S\u0014"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "{\u000eBVYJ\u000cOS\u0017g-\nTZJ@SRC\u000eM\n"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "u*zBDF=\n\u001a\u0017"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/b/a/b/p;->z:[Ljava/lang/String;

    return-void

    :pswitch_9
    const/16 v9, 0x2e

    goto :goto_2

    :pswitch_a
    const/16 v9, 0x60

    goto :goto_2

    :pswitch_b
    const/16 v9, 0x2a

    goto :goto_2

    :pswitch_c
    const/16 v9, 0x37

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
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
    .end packed-switch
.end method

.method public constructor <init>(IIJLjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcn/jpush/b/a/b/p;->g:I

    iput p1, p0, Lcn/jpush/b/a/b/p;->a:I

    const/4 v0, 0x1

    iput v0, p0, Lcn/jpush/b/a/b/p;->b:I

    iput-wide p3, p0, Lcn/jpush/b/a/b/p;->c:J

    iput-object p5, p0, Lcn/jpush/b/a/b/p;->d:Ljava/lang/String;

    iput-object p6, p0, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcn/jpush/b/a/b/p;->g:I

    invoke-static {p1}, Lcn/jpush/a/a/z;->a([B)Lcn/jpush/a/a/z;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/a/a/z;->d()Lcn/jpush/a/a/ad;

    move-result-object v1

    invoke-virtual {v0}, Lcn/jpush/a/a/z;->f()Lcn/jpush/a/a/ab;

    move-result-object v0

    invoke-virtual {v1}, Lcn/jpush/a/a/ad;->d()I

    move-result v2

    iput v2, p0, Lcn/jpush/b/a/b/p;->a:I

    invoke-virtual {v1}, Lcn/jpush/a/a/ad;->f()I

    move-result v2

    iput v2, p0, Lcn/jpush/b/a/b/p;->b:I

    invoke-virtual {v1}, Lcn/jpush/a/a/ad;->h()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/jpush/b/a/b/p;->c:J

    invoke-virtual {v1}, Lcn/jpush/a/a/ad;->j()Lcom/google/protobuf/jpush/c;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcn/jpush/a/a/ad;->j()Lcom/google/protobuf/jpush/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/jpush/c;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/jpush/b/a/b/p;->d:Ljava/lang/String;

    :cond_0
    invoke-virtual {v0}, Lcn/jpush/a/a/ab;->N()Lcn/jpush/a/a/af;

    move-result-object v1

    iput-object v1, p0, Lcn/jpush/b/a/b/p;->f:Lcn/jpush/a/a/af;

    iget v1, p0, Lcn/jpush/b/a/b/p;->a:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/b/a/b/p;->z:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/jpush/b/a/b/p;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/b/a/b/p;->z:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    :goto_0
    return-void

    :pswitch_1
    invoke-virtual {v0}, Lcn/jpush/a/a/ab;->d()Lcn/jpush/a/a/bl;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lcn/jpush/a/a/ab;->f()Lcn/jpush/a/a/bn;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Lcn/jpush/a/a/ab;->h()Lcn/jpush/a/a/bi;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    goto :goto_0

    :pswitch_4
    invoke-virtual {v0}, Lcn/jpush/a/a/ab;->j()Lcn/jpush/a/a/be;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    goto :goto_0

    :pswitch_5
    invoke-virtual {v0}, Lcn/jpush/a/a/ab;->l()Lcn/jpush/a/a/d;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    goto :goto_0

    :pswitch_6
    invoke-virtual {v0}, Lcn/jpush/a/a/ab;->n()Lcn/jpush/a/a/h;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    goto :goto_0

    :pswitch_7
    invoke-virtual {v0}, Lcn/jpush/a/a/ab;->p()Lcn/jpush/a/a/j;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    goto :goto_0

    :pswitch_8
    invoke-virtual {v0}, Lcn/jpush/a/a/ab;->r()Lcn/jpush/a/a/o;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    goto :goto_0

    :pswitch_9
    invoke-virtual {v0}, Lcn/jpush/a/a/ab;->t()Lcn/jpush/a/a/s;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    goto :goto_0

    :pswitch_a
    invoke-virtual {v0}, Lcn/jpush/a/a/ab;->v()Lcn/jpush/a/a/m;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    goto :goto_0

    :pswitch_b
    invoke-virtual {v0}, Lcn/jpush/a/a/ab;->x()Lcn/jpush/a/a/q;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    goto :goto_0

    :pswitch_c
    invoke-virtual {v0}, Lcn/jpush/a/a/ab;->z()Lcn/jpush/a/a/u;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    goto :goto_0

    :pswitch_d
    invoke-virtual {v0}, Lcn/jpush/a/a/ab;->B()Lcn/jpush/a/a/ba;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    goto :goto_0

    :pswitch_e
    invoke-virtual {v0}, Lcn/jpush/a/a/ab;->D()Lcn/jpush/a/a/aq;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    goto :goto_0

    :pswitch_f
    invoke-virtual {v0}, Lcn/jpush/a/a/ab;->F()Lcn/jpush/a/a/bc;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    goto :goto_0

    :pswitch_10
    invoke-virtual {v0}, Lcn/jpush/a/a/ab;->H()Lcn/jpush/a/a/ay;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    goto :goto_0

    :pswitch_11
    invoke-virtual {v0}, Lcn/jpush/a/a/ab;->J()Lcn/jpush/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    goto :goto_0

    :pswitch_12
    invoke-virtual {v0}, Lcn/jpush/a/a/ab;->L()Lcn/jpush/a/a/f;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    goto :goto_0

    :pswitch_13
    invoke-virtual {v0}, Lcn/jpush/a/a/ab;->P()Lcn/jpush/a/a/bp;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {v0}, Lcn/jpush/a/a/ab;->R()Lcn/jpush/a/a/am;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {v0}, Lcn/jpush/a/a/ab;->T()Lcn/jpush/a/a/aw;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual {v0}, Lcn/jpush/a/a/ab;->V()Lcn/jpush/a/a/ak;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual {v0}, Lcn/jpush/a/a/ab;->X()Lcn/jpush/a/a/au;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual {v0}, Lcn/jpush/a/a/ab;->Z()Lcn/jpush/a/a/ai;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual {v0}, Lcn/jpush/a/a/ab;->ab()Lcn/jpush/a/a/as;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method


# virtual methods
.method public final a()Lcn/jpush/a/a/z;
    .locals 6

    invoke-static {}, Lcn/jpush/a/a/ad;->p()Lcn/jpush/a/a/ae;

    move-result-object v0

    iget v1, p0, Lcn/jpush/b/a/b/p;->a:I

    invoke-virtual {v0, v1}, Lcn/jpush/a/a/ae;->a(I)Lcn/jpush/a/a/ae;

    move-result-object v0

    iget v1, p0, Lcn/jpush/b/a/b/p;->b:I

    invoke-virtual {v0, v1}, Lcn/jpush/a/a/ae;->b(I)Lcn/jpush/a/a/ae;

    move-result-object v0

    iget-wide v2, p0, Lcn/jpush/b/a/b/p;->c:J

    invoke-virtual {v0, v2, v3}, Lcn/jpush/a/a/ae;->a(J)Lcn/jpush/a/a/ae;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/b/a/b/p;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcn/jpush/b/a/b/p;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/jpush/b/a/b/p;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/protobuf/jpush/c;->a(Ljava/lang/String;)Lcom/google/protobuf/jpush/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jpush/a/a/ae;->a(Lcom/google/protobuf/jpush/c;)Lcn/jpush/a/a/ae;

    :cond_0
    invoke-static {}, Lcn/jpush/a/a/z;->h()Lcn/jpush/a/a/aa;

    move-result-object v1

    invoke-virtual {v0}, Lcn/jpush/a/a/ae;->a()Lcn/jpush/a/a/ad;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/jpush/a/a/aa;->a(Lcn/jpush/a/a/ad;)Lcn/jpush/a/a/aa;

    move-result-object v1

    iget v2, p0, Lcn/jpush/b/a/b/p;->a:I

    iget-object v0, p0, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    iget-object v3, p0, Lcn/jpush/b/a/b/p;->f:Lcn/jpush/a/a/af;

    invoke-static {}, Lcn/jpush/a/a/ab;->ad()Lcn/jpush/a/a/ac;

    move-result-object v4

    if-eqz v3, :cond_1

    invoke-virtual {v4, v3}, Lcn/jpush/a/a/ac;->a(Lcn/jpush/a/a/af;)Lcn/jpush/a/a/ac;

    :cond_1
    if-nez v0, :cond_2

    :goto_0
    invoke-virtual {v4}, Lcn/jpush/a/a/ac;->a()Lcn/jpush/a/a/ab;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/jpush/a/a/aa;->a(Lcn/jpush/a/a/ab;)Lcn/jpush/a/a/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/a/a/aa;->a()Lcn/jpush/a/a/z;

    move-result-object v0

    return-object v0

    :cond_2
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/b/a/b/p;->z:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/b/a/c/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    check-cast v0, Lcn/jpush/a/a/bl;

    invoke-virtual {v4, v0}, Lcn/jpush/a/a/ac;->a(Lcn/jpush/a/a/bl;)Lcn/jpush/a/a/ac;

    goto :goto_0

    :pswitch_2
    check-cast v0, Lcn/jpush/a/a/bn;

    invoke-virtual {v4, v0}, Lcn/jpush/a/a/ac;->a(Lcn/jpush/a/a/bn;)Lcn/jpush/a/a/ac;

    goto :goto_0

    :pswitch_3
    check-cast v0, Lcn/jpush/a/a/bi;

    invoke-virtual {v4, v0}, Lcn/jpush/a/a/ac;->a(Lcn/jpush/a/a/bi;)Lcn/jpush/a/a/ac;

    goto :goto_0

    :pswitch_4
    check-cast v0, Lcn/jpush/a/a/be;

    invoke-virtual {v4, v0}, Lcn/jpush/a/a/ac;->a(Lcn/jpush/a/a/be;)Lcn/jpush/a/a/ac;

    goto :goto_0

    :pswitch_5
    check-cast v0, Lcn/jpush/a/a/d;

    invoke-virtual {v4, v0}, Lcn/jpush/a/a/ac;->a(Lcn/jpush/a/a/d;)Lcn/jpush/a/a/ac;

    goto :goto_0

    :pswitch_6
    check-cast v0, Lcn/jpush/a/a/h;

    invoke-virtual {v4, v0}, Lcn/jpush/a/a/ac;->a(Lcn/jpush/a/a/h;)Lcn/jpush/a/a/ac;

    goto :goto_0

    :pswitch_7
    check-cast v0, Lcn/jpush/a/a/j;

    invoke-virtual {v4, v0}, Lcn/jpush/a/a/ac;->a(Lcn/jpush/a/a/j;)Lcn/jpush/a/a/ac;

    goto :goto_0

    :pswitch_8
    check-cast v0, Lcn/jpush/a/a/o;

    invoke-virtual {v4, v0}, Lcn/jpush/a/a/ac;->a(Lcn/jpush/a/a/o;)Lcn/jpush/a/a/ac;

    goto :goto_0

    :pswitch_9
    check-cast v0, Lcn/jpush/a/a/s;

    invoke-virtual {v4, v0}, Lcn/jpush/a/a/ac;->a(Lcn/jpush/a/a/s;)Lcn/jpush/a/a/ac;

    goto :goto_0

    :pswitch_a
    check-cast v0, Lcn/jpush/a/a/m;

    invoke-virtual {v4, v0}, Lcn/jpush/a/a/ac;->a(Lcn/jpush/a/a/m;)Lcn/jpush/a/a/ac;

    goto :goto_0

    :pswitch_b
    check-cast v0, Lcn/jpush/a/a/q;

    invoke-virtual {v4, v0}, Lcn/jpush/a/a/ac;->a(Lcn/jpush/a/a/q;)Lcn/jpush/a/a/ac;

    goto :goto_0

    :pswitch_c
    check-cast v0, Lcn/jpush/a/a/u;

    invoke-virtual {v4, v0}, Lcn/jpush/a/a/ac;->a(Lcn/jpush/a/a/u;)Lcn/jpush/a/a/ac;

    goto :goto_0

    :pswitch_d
    check-cast v0, Lcn/jpush/a/a/ba;

    invoke-virtual {v4, v0}, Lcn/jpush/a/a/ac;->a(Lcn/jpush/a/a/ba;)Lcn/jpush/a/a/ac;

    goto :goto_0

    :pswitch_e
    check-cast v0, Lcn/jpush/a/a/aq;

    invoke-virtual {v4, v0}, Lcn/jpush/a/a/ac;->a(Lcn/jpush/a/a/aq;)Lcn/jpush/a/a/ac;

    goto :goto_0

    :pswitch_f
    check-cast v0, Lcn/jpush/a/a/bc;

    invoke-virtual {v4, v0}, Lcn/jpush/a/a/ac;->a(Lcn/jpush/a/a/bc;)Lcn/jpush/a/a/ac;

    goto :goto_0

    :pswitch_10
    check-cast v0, Lcn/jpush/a/a/ay;

    invoke-virtual {v4, v0}, Lcn/jpush/a/a/ac;->a(Lcn/jpush/a/a/ay;)Lcn/jpush/a/a/ac;

    goto/16 :goto_0

    :pswitch_11
    check-cast v0, Lcn/jpush/a/a/b;

    invoke-virtual {v4, v0}, Lcn/jpush/a/a/ac;->a(Lcn/jpush/a/a/b;)Lcn/jpush/a/a/ac;

    goto/16 :goto_0

    :pswitch_12
    check-cast v0, Lcn/jpush/a/a/f;

    invoke-virtual {v4, v0}, Lcn/jpush/a/a/ac;->a(Lcn/jpush/a/a/f;)Lcn/jpush/a/a/ac;

    goto/16 :goto_0

    :pswitch_13
    check-cast v0, Lcn/jpush/a/a/bp;

    invoke-virtual {v4, v0}, Lcn/jpush/a/a/ac;->a(Lcn/jpush/a/a/bp;)Lcn/jpush/a/a/ac;

    goto/16 :goto_0

    :pswitch_14
    check-cast v0, Lcn/jpush/a/a/am;

    invoke-virtual {v4, v0}, Lcn/jpush/a/a/ac;->a(Lcn/jpush/a/a/am;)Lcn/jpush/a/a/ac;

    goto/16 :goto_0

    :pswitch_15
    check-cast v0, Lcn/jpush/a/a/aw;

    invoke-virtual {v4, v0}, Lcn/jpush/a/a/ac;->a(Lcn/jpush/a/a/aw;)Lcn/jpush/a/a/ac;

    goto/16 :goto_0

    :pswitch_16
    check-cast v0, Lcn/jpush/a/a/ak;

    invoke-virtual {v4, v0}, Lcn/jpush/a/a/ac;->a(Lcn/jpush/a/a/ak;)Lcn/jpush/a/a/ac;

    goto/16 :goto_0

    :pswitch_17
    check-cast v0, Lcn/jpush/a/a/au;

    invoke-virtual {v4, v0}, Lcn/jpush/a/a/ac;->a(Lcn/jpush/a/a/au;)Lcn/jpush/a/a/ac;

    goto/16 :goto_0

    :pswitch_18
    check-cast v0, Lcn/jpush/a/a/ai;

    invoke-virtual {v4, v0}, Lcn/jpush/a/a/ac;->a(Lcn/jpush/a/a/ai;)Lcn/jpush/a/a/ac;

    goto/16 :goto_0

    :pswitch_19
    check-cast v0, Lcn/jpush/a/a/as;

    invoke-virtual {v4, v0}, Lcn/jpush/a/a/ac;->a(Lcn/jpush/a/a/as;)Lcn/jpush/a/a/ac;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcn/jpush/b/a/b/p;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/b/a/b/p;->z:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/jpush/b/a/b/p;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/b/a/b/p;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/jpush/b/a/b/p;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/b/a/b/p;->z:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/jpush/b/a/b/p;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/b/a/b/p;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/b/a/b/p;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcn/jpush/b/a/b/p;->g:I

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/b/a/b/p;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/jpush/b/a/b/p;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcn/jpush/b/a/b/p;->g:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcn/jpush/b/a/b/p;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/b/a/b/p;->z:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jpush/b/a/b/p;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/b/a/b/p;->z:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
