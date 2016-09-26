.class public final Lcom/google/protobuf/jpush/j;
.super Ljava/io/IOException;


# static fields
.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x8

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "y|$**Ja\'~(L}8?\"L.(1+]o\"0 M.*0e@`=?)@jk*$N.c$ [abp"

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

    const/16 v9, 0x45

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

    const-string v1, "ja/;!``;+1zz9;$D..0&F{%* [k/~$\tc*2#F|&;!\tx*,,Gze"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "ja/;!``;+1zz9;$D..0&F{%* [k/~$G..3\'Lj/;!\t}?,,Gik17\tc.-6Hi.~2Ag(6eJb*7(Ljk**\tf*( \t`.9$]g=;eZg1;k"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "y|$**Ja\'~(L}8?\"L.#?!\tz$1eDo%\'eEk=;)Z.$8eGk8*,Gie~edo2~\'L.&?)@m\"10Z k~\u0010Zkk\u001d*Mk/\u0017+Y{?\r1[k*3kZk?\u000c J{9-,F`\u00077(@zcwe]ak7+J|.?6L.?6 \tj..1A.\'7(@ze"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "y|$**Ja\'~(L}8?\"L.<?6\tz$1eEo99 \u0007.k\u0013$P.);eDo\'7&@a>-k\t.\u001e- \tM$: MG%.0]]?, Hce- ]]\"$ eg&71\u0001\'k**\tg%=7Lo8;e]f.~6@t.~)@c\"*k"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "y|$**Ja\'~(L}8?\"L.??\"\tf*:e@`=?)@jk),[kk*<Yke"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "~f\"2 \t~*,6@`,~$\t~911Fm$2eDk8-$Nkg~1Akk7+Y{?~ Gj.:e\\`.&5Lm?;!Ewk7+\tz#;eDg/:)L.$8eH.-7 Eje~e}f\"-eJa>2!\tc.?+\tk\"*-L|k*-H`k*-L.\"05\\zk6$Z.); G.?,0Gm** M.$,e]f**eH`k;(Kk/: M.&;6Zo,;eDg8, Ya9* M.\"*6\ta<0eEk%91A "

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "y|$**Ja\'~(L}8?\"L..0!\u0004i910Y.??\"\tj\":eGa?~(Hz(6eLv;;&]k/~1Hie"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    sput-object v4, Lcom/google/protobuf/jpush/j;->z:[Ljava/lang/String;

    return-void

    :pswitch_7
    const/16 v9, 0x29

    goto :goto_2

    :pswitch_8
    const/16 v9, 0xe

    goto :goto_2

    :pswitch_9
    const/16 v9, 0x4b

    goto :goto_2

    :pswitch_a
    const/16 v9, 0x5e

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
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
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static a()Lcom/google/protobuf/jpush/j;
    .locals 3

    new-instance v0, Lcom/google/protobuf/jpush/j;

    sget-object v1, Lcom/google/protobuf/jpush/j;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/google/protobuf/jpush/j;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static b()Lcom/google/protobuf/jpush/j;
    .locals 3

    new-instance v0, Lcom/google/protobuf/jpush/j;

    sget-object v1, Lcom/google/protobuf/jpush/j;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/google/protobuf/jpush/j;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static c()Lcom/google/protobuf/jpush/j;
    .locals 3

    new-instance v0, Lcom/google/protobuf/jpush/j;

    sget-object v1, Lcom/google/protobuf/jpush/j;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/google/protobuf/jpush/j;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static d()Lcom/google/protobuf/jpush/j;
    .locals 3

    new-instance v0, Lcom/google/protobuf/jpush/j;

    sget-object v1, Lcom/google/protobuf/jpush/j;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/google/protobuf/jpush/j;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static e()Lcom/google/protobuf/jpush/j;
    .locals 3

    new-instance v0, Lcom/google/protobuf/jpush/j;

    sget-object v1, Lcom/google/protobuf/jpush/j;->z:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/google/protobuf/jpush/j;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static f()Lcom/google/protobuf/jpush/j;
    .locals 3

    new-instance v0, Lcom/google/protobuf/jpush/j;

    sget-object v1, Lcom/google/protobuf/jpush/j;->z:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/google/protobuf/jpush/j;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static g()Lcom/google/protobuf/jpush/j;
    .locals 3

    new-instance v0, Lcom/google/protobuf/jpush/j;

    sget-object v1, Lcom/google/protobuf/jpush/j;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/google/protobuf/jpush/j;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static h()Lcom/google/protobuf/jpush/j;
    .locals 3

    new-instance v0, Lcom/google/protobuf/jpush/j;

    sget-object v1, Lcom/google/protobuf/jpush/j;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/google/protobuf/jpush/j;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
