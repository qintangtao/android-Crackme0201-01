.class public final Lcn/jpush/android/helpers/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcn/jpush/android/data/d;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/google/gson/jpush/ab;

.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x1b

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "S@-e)NF9"

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

    const/16 v9, 0x4c

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

    const-string v1, "\u0017C9vzA\u00128\'zC\u0012d\".\u0011Clu(A\u0011h&.\u0012Fjsx\u0010D"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "uK9h<EF(u(\u001a\u0005)~\'NJ+~lPP/xlMV;08YU90a"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "M@/c-G@"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "pP/x\u0001EV/q+Eu.\u007f/EV/\u007f>"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "S@2t)Rl8"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "TD;q ID/O?ET5t"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "AF(y#N\u001f.u/EL*u(pP/x\u0001EV/q+E\u00051c+iA|-l"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "CKrz<UV4>-NA.\u007f%D\u000b\u0012_\u0018ic\u0015S\rtl\u0013^\u0013t|\u000cU"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "\u000eU9b!IV/y#N\u000b\u0016@\u0019sm\u0003]\tsv\u001dW\t"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "dP,|%CD(u(\u0000H/wb\u0000b5f)\u0000P,0<RJ?u?SL2wl\r\u0005"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "CKrz<UV4>-NA.\u007f%D\u000b5~8EK(>\u0018ab\u0003Q\u0000id\u000fO\u000fai\u0010R\rcn"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "m@/c-G@|V%EI8cl\r\u0005=`<iAf"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "TD;q ID/O)RW3b/OA9"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "PW3s)SV\u001eq?IF\u0019~8IQ%08YU9*"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "CKrz<UV4>-NA.\u007f%D\u000b5~8EK(>\u0002oq\u0015V\u0005cd\u0008Y\u0003nz\u000eU\u000fel\nU\u0008\u007fu\u000e_\u0014y"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "\u000c\u00051c+cJ2d)NQf"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "tL1ulTJ|`>OF9c?\u0000W9s)IS9tlMV;>"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, "TD;q ID/0!SB\u001f\u007f\"T@2dv"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_11
    aput-object v1, v3, v2

    const/16 v2, 0x13

    const-string v1, "CJ8u"

    const/16 v0, 0x12

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_12
    aput-object v1, v3, v2

    const/16 v2, 0x14

    const-string v1, "\u000c\u0005/u\"D@.Y(\u001a"

    const/16 v0, 0x13

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_13
    aput-object v1, v3, v2

    const/16 v2, 0x15

    const-string v1, "AU,Y("

    const/16 v0, 0x14

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_14
    aput-object v1, v3, v2

    const/16 v2, 0x16

    const-string v1, "sP?s)EA|d#\u0000W9`#RQ|b)C@5f)D\u0005q0"

    const/16 v0, 0x15

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_15
    aput-object v1, v3, v2

    const/16 v2, 0x17

    const-string v1, "PD.c)nJ.}-L\u0005q0lMV;Y(\u001a"

    const/16 v0, 0x16

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_16
    aput-object v1, v3, v2

    const/16 v2, 0x18

    const-string v1, "MV;D5P@|-l"

    const/16 v0, 0x17

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_17
    aput-object v1, v3, v2

    const/16 v2, 0x19

    const-string v1, "MV;O%D"

    const/16 v0, 0x18

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_18
    aput-object v1, v3, v2

    const/16 v2, 0x1a

    const-string v1, "\u000c\u00051c+iA|-l"

    const/16 v0, 0x19

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_19
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/helpers/f;->z:[Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcn/jpush/android/helpers/f;->a:Ljava/util/Queue;

    new-instance v0, Lcom/google/gson/jpush/ab;

    invoke-direct {v0}, Lcom/google/gson/jpush/ab;-><init>()V

    sput-object v0, Lcn/jpush/android/helpers/f;->b:Lcom/google/gson/jpush/ab;

    return-void

    :pswitch_1a
    const/16 v9, 0x20

    goto/16 :goto_2

    :pswitch_1b
    const/16 v9, 0x25

    goto/16 :goto_2

    :pswitch_1c
    const/16 v9, 0x5c

    goto/16 :goto_2

    :pswitch_1d
    const/16 v9, 0x10

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
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
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)J
    .locals 5

    const-wide/16 v0, 0x0

    :try_start_0
    sget-object v2, Lcn/jpush/android/helpers/f;->b:Lcom/google/gson/jpush/ab;

    invoke-virtual {v2, p0}, Lcom/google/gson/jpush/ab;->a(Ljava/lang/String;)Lcom/google/gson/jpush/w;

    move-result-object v2

    instance-of v3, v2, Lcom/google/gson/jpush/z;

    if-nez v3, :cond_0

    invoke-static {}, Lcn/jpush/android/util/z;->e()V

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v2}, Lcom/google/gson/jpush/w;->h()Lcom/google/gson/jpush/z;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/helpers/f;->z:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/google/gson/jpush/z;->b(Ljava/lang/String;)Lcom/google/gson/jpush/w;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Lcom/google/gson/jpush/ac;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/google/gson/jpush/w;->e()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcn/jpush/android/util/z;->e()V
    :try_end_0
    .catch Lcom/google/gson/jpush/af; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {}, Lcn/jpush/android/util/z;->e()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/os/Handler;JLcn/jpush/b/a/a/h;)V
    .locals 12

    check-cast p4, Lcn/jpush/b/a/a/j;

    invoke-virtual/range {p4 .. p4}, Lcn/jpush/b/a/a/j;->a()I

    move-result v0

    invoke-virtual/range {p4 .. p4}, Lcn/jpush/b/a/a/j;->g()J

    move-result-wide v6

    invoke-virtual/range {p4 .. p4}, Lcn/jpush/b/a/a/j;->e()Lcn/jpush/b/a/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jpush/b/a/a/e;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v2, 0x0

    invoke-static {}, Lcn/jpush/android/a;->t()J

    move-result-wide v3

    int-to-byte v5, v0

    invoke-static {}, Lcn/jpush/android/a;->i()I

    move-result v10

    move-wide v0, p2

    invoke-static/range {v0 .. v10}, Lcn/jpush/android/service/PushProtocol;->MsgResponse(JIJBJJI)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    :goto_0
    invoke-virtual/range {p4 .. p4}, Lcn/jpush/b/a/a/j;->g()J

    move-result-wide v2

    invoke-virtual/range {p4 .. p4}, Lcn/jpush/b/a/a/j;->a()I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Lcn/jpush/b/a/a/j;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/helpers/f;->z:[Ljava/lang/String;

    const/16 v6, 0x18

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcn/jpush/android/helpers/f;->z:[Ljava/lang/String;

    const/16 v6, 0x1a

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    new-instance v4, Ljava/io/LineNumberReader;

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    :try_start_0
    invoke-virtual {v4}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-static {}, Lcn/jpush/android/util/z;->e()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :sswitch_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/helpers/f;->z:[Ljava/lang/String;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-static {}, Lcn/jpush/android/util/z;->e()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/z;->i()V

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v8, v6, 0x1

    if-le v7, v8, :cond_3

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcn/jpush/android/helpers/f;->z:[Ljava/lang/String;

    const/16 v8, 0xc

    aget-object v7, v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcn/jpush/android/helpers/f;->z:[Ljava/lang/String;

    const/16 v8, 0x14

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcn/jpush/android/helpers/f;->z:[Ljava/lang/String;

    const/16 v8, 0x10

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    sparse-switch v1, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/helpers/f;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    goto :goto_1

    :cond_3
    :try_start_3
    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    const-string v0, ""
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :sswitch_1
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v6, Lcn/jpush/android/helpers/f;->z:[Ljava/lang/String;

    const/16 v7, 0x17

    aget-object v6, v6, v7

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    invoke-static {p0}, Lcn/jpush/android/service/ServiceInterface;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcn/jpush/android/util/z;->c()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/z;->i()V

    goto/16 :goto_1

    :cond_4
    :try_start_5
    new-instance v6, Lcn/jpush/android/util/aj;

    sget-object v1, Lcn/jpush/android/helpers/f;->z:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v1, v1, v7

    sget-object v7, Lcn/jpush/android/helpers/f;->z:[Ljava/lang/String;

    const/16 v8, 0x11

    aget-object v7, v7, v8

    invoke-direct {v6, v1, v7}, Lcn/jpush/android/util/aj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v7, Lcn/jpush/android/helpers/f;->z:[Ljava/lang/String;

    const/4 v8, 0x7

    aget-object v7, v7, v8

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v5, v4, v1}, Lcn/jpush/android/helpers/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/jpush/android/data/a;

    move-result-object v7

    if-nez v7, :cond_6

    :cond_5
    :goto_3
    invoke-virtual {v6}, Lcn/jpush/android/util/aj;->a()V

    goto/16 :goto_1

    :cond_6
    new-instance v1, Lcn/jpush/android/data/d;

    invoke-direct {v1, v7, v7}, Lcn/jpush/android/data/d;-><init>(Lcn/jpush/android/data/c;Lcn/jpush/android/data/c;)V

    sget-object v8, Lcn/jpush/android/helpers/f;->a:Ljava/util/Queue;

    invoke-interface {v8, v1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/helpers/f;->z:[Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->e()V

    goto :goto_3

    :cond_7
    sget-object v8, Lcn/jpush/android/helpers/f;->a:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->size()I

    move-result v8

    const/16 v9, 0xc8

    if-lt v8, v9, :cond_8

    sget-object v8, Lcn/jpush/android/helpers/f;->a:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    :cond_8
    sget-object v8, Lcn/jpush/android/helpers/f;->a:Ljava/util/Queue;

    invoke-interface {v8, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    sget-object v8, Lcn/jpush/android/helpers/f;->z:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {p0, v7}, Lcn/jpush/android/helpers/d;->a(Landroid/content/Context;Lcn/jpush/android/data/a;)V

    :cond_9
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v8, Lcn/jpush/android/helpers/f;->z:[Ljava/lang/String;

    const/16 v9, 0xe

    aget-object v8, v8, v9

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    new-instance v1, Landroid/content/Intent;

    sget-object v3, Lcn/jpush/android/helpers/f;->z:[Ljava/lang/String;

    const/16 v8, 0xf

    aget-object v3, v3, v8

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcn/jpush/android/helpers/f;->z:[Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v3, v3, v8

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcn/jpush/android/helpers/f;->z:[Ljava/lang/String;

    const/16 v4, 0x15

    aget-object v3, v3, v4

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcn/jpush/android/helpers/f;->z:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcn/jpush/android/helpers/f;->z:[Ljava/lang/String;

    const/16 v3, 0x19

    aget-object v0, v0, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcn/jpush/android/helpers/f;->z:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    iget v2, v7, Lcn/jpush/android/data/a;->g:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcn/jpush/android/helpers/f;->z:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    iget-boolean v1, v7, Lcn/jpush/android/data/a;->e:Z

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    iget v8, v7, Lcn/jpush/android/data/a;->b:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_9

    const/4 v1, 0x3

    goto/16 :goto_4

    :cond_b
    const/4 v1, 0x2

    goto/16 :goto_4

    :cond_c
    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    iget-object v0, v7, Lcn/jpush/android/data/a;->i:Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v7, Lcn/jpush/android/data/a;->l:Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_d
    invoke-static {p0, v7}, Lcn/jpush/android/util/a;->b(Landroid/content/Context;Lcn/jpush/android/data/c;)V

    goto/16 :goto_3

    :cond_e
    invoke-static {}, Lcn/jpush/android/util/z;->e()V

    goto/16 :goto_3

    :cond_f
    invoke-static {}, Lcn/jpush/android/util/z;->d()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3

    :sswitch_2
    invoke-static {p0}, Lcn/jpush/android/helpers/g;->a(Landroid/content/Context;)V

    goto/16 :goto_1

    :sswitch_3
    invoke-static {p0}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;)V

    goto/16 :goto_1

    :sswitch_4
    invoke-static {p0}, Lcn/jpush/android/helpers/g;->b(Landroid/content/Context;)V

    goto/16 :goto_1

    :sswitch_5
    invoke-static {v0}, Lcn/jpush/android/helpers/f;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v1, Lcn/jpush/b/a/a/m;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual/range {p4 .. p4}, Lcn/jpush/b/a/a/j;->e()Lcn/jpush/b/a/a/e;

    move-result-object v4

    invoke-virtual {v4}, Lcn/jpush/b/a/a/e;->b()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcn/jpush/b/a/a/m;-><init>(JJILjava/lang/String;I)V

    const/16 v2, 0x3f1

    invoke-static {p1, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :try_start_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/jpush/android/helpers/f;->z:[Ljava/lang/String;

    const/16 v3, 0x13

    aget-object v2, v2, v3

    sget v3, Lcn/jpush/android/api/d;->i:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    sget-object v3, Lcn/jpush/android/helpers/f;->z:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lcn/jpush/android/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcn/jpush/android/helpers/f;->z:[Ljava/lang/String;

    const/16 v6, 0xb

    aget-object v3, v3, v6

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcn/jpush/android/helpers/f;->z:[Ljava/lang/String;

    const/16 v6, 0xd

    aget-object v3, v3, v6

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v2, Lcn/jpush/android/helpers/f;->z:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/helpers/f;->z:[Ljava/lang/String;

    const/16 v3, 0x12

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->d()V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x4 -> :sswitch_2
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x9 -> :sswitch_4
        0x14 -> :sswitch_5
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x2c -> :sswitch_3
    .end sparse-switch
.end method
