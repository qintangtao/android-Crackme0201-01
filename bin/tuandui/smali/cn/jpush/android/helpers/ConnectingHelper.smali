.class public Lcn/jpush/android/helpers/ConnectingHelper;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x4e

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "72*\u001b{7)!\u0011"

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

    const/16 v9, 0x1e

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

    const-string v1, "\u0015>0\u001cq:}iUm13 6q:3!\u0016j=2*6v53#\u0010z"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "\u00172*\u001b{7)-\u001by\u001c8(\u0005{&"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "73j\u001fn!.,[\u007f:96\u001aw0s-\u001bj130[]\u001b\u0013\n0]\u0000\u0014\u000b;"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "\')%\u0001{t47Up;)d\u0016v53#\u0010ztpd"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "73j\u001fn!.,[\u007f:96\u001aw0s\u0007:P\u001a\u0018\u0007!W\u001b\u0013\u001b6V\u0015\u0013\u00030"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "\u0007\u0014\u0017UL1>!\u001ch=3#[0z"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "\u0007\u0014\u0017UL1>!\u001ch19d&j&4*\u0012$t"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "\u001380Um=.d\u001cp22d\u0010l&26U3t.-\u0006V;.0O"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "\u00002d\u0012{ }7\u001cmtpd\u001dq\')~"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "x}4\u001al g"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "\u0012<-\u0019{0}0\u001a>&87\u001ar\"8d\u001dq\')d\u0011p\'}iU"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "\u0011%\'\u0010n 4+\u001b>#5!\u001b>71+\u0006{t( \u0005>\'2\'\u001e{ }iU"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "\u0017<*Up;)d\u0012{ }7\u001cmt4*\u0013qt;6\u001ast5+\u0006jn}"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "\u001380Um=.d\u001cp22d\u0006k7>!\u0010zt*-\u0001vt5+\u0006jn}"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "x}7\u0010r1>0\u001cq:g"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "x}%\u0005n\u001f8=O"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "\u00182#\u001cpt;%\u001cr19d\u0002w 5d\u0006{&+!\u0007>1/6\u001altpd\u0016q08~"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, "x}7\u0011u\u000286\u0006w;3~"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_11
    aput-object v1, v3, v2

    const/16 v2, 0x13

    const-string v1, "\u00182#\u001cpt*-\u0001vtpd\u001fk=9~"

    const/16 v0, 0x12

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_12
    aput-object v1, v3, v2

    const/16 v2, 0x14

    const-string v1, "x}!\u0007l;/~"

    const/16 v0, 0x13

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_13
    aput-object v1, v3, v2

    const/16 v2, 0x15

    const-string v1, "x}\"\u0019\u007f3g"

    const/16 v0, 0x14

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_14
    aput-object v1, v3, v2

    const/16 v2, 0x16

    const-string v1, "fsu[-"

    const/16 v0, 0x15

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_15
    aput-object v1, v3, v2

    const/16 v2, 0x17

    const-string v1, "82#\u001cptpd\u001fk=9~"

    const/16 v0, 0x16

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_16
    aput-object v1, v3, v2

    const/16 v2, 0x18

    const-string v1, "\u00182#\u001cpt;%\u001cr19d\u0002w 5d9q7<(U{&/+\u0007>y}\'\u001az1g"

    const/16 v0, 0x17

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_17
    aput-object v1, v3, v2

    const/16 v2, 0x19

    const-string v1, "\u00182#\u001cpt;%\u001cr19d\u0002w 5d\u0007{ (6\u001b>72 \u0010$"

    const/16 v0, 0x18

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_18
    aput-object v1, v3, v2

    const/16 v2, 0x1a

    const-string v1, "t1+\u0012w:\u000f!\u0006n;37\u0010>=.d\u001bk81"

    const/16 v0, 0x19

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_19
    aput-object v1, v3, v2

    const/16 v2, 0x1b

    const-string v1, "x}7\u0010l\"86!w98\u007f"

    const/16 v0, 0x1a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1a
    aput-object v1, v3, v2

    const/16 v2, 0x1c

    const-string v1, "\u00182#\u001cpt.1\u0016}18 U3t.-\u0011$"

    const/16 v0, 0x1b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1b
    aput-object v1, v3, v2

    const/16 v2, 0x1d

    const-string v1, "=0rA0>-1\u0006vz>*"

    const/16 v0, 0x1c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1c
    aput-object v1, v3, v2

    const/16 v2, 0x1e

    const-string v1, "\u001d32\u0014r=9d\u0011{2<1\u0019jt>+\u001bpz"

    const/16 v0, 0x1d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1d
    aput-object v1, v3, v2

    const/16 v2, 0x1f

    const-string v1, "\u001b-!\u001b>72*\u001b{7)-\u001apt*-\u0001vt9!\u0013\u007f!10U3t44O"

    const/16 v0, 0x1e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1e
    aput-object v1, v3, v2

    const/16 v2, 0x20

    const-string v1, "x}4\u001al gwE.d"

    const/16 v0, 0x1f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1f
    aput-object v1, v3, v2

    const/16 v2, 0x21

    const-string v1, "\u001b-!\u001b>72*\u001b{7)-\u001apt*-\u0001vt5%\u0007z72 \u0010zt5+\u0006jtpd\u001cnn"

    const/16 v0, 0x20

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_20
    aput-object v1, v3, v2

    const/16 v2, 0x22

    const-string v1, "72*\u001b{7)-\u001ap"

    const/16 v0, 0x21

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_21
    aput-object v1, v3, v2

    const/16 v2, 0x23

    const-string v1, ">.+\u001b[,>!\u0005j=2*U3t"

    const/16 v0, 0x22

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_22
    aput-object v1, v3, v2

    const/16 v2, 0x24

    const-string v1, "\u0015>0\u001cq:}iUm13 &{&+!\u0007J=0!\u0007"

    const/16 v0, 0x23

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_23
    aput-object v1, v3, v2

    const/16 v2, 0x25

    const-string v1, "$(7\u001dA82#\u001cp\u000b1+\u0016\u007f8\u00020\u001cs1"

    const/16 v0, 0x24

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_24
    aput-object v1, v3, v2

    const/16 v2, 0x26

    const-string v1, "$(7\u001dA82#\u001cp\u000b.!\u0007h1/\u001b\u0001w98"

    const/16 v0, 0x25

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_25
    aput-object v1, v3, v2

    const/16 v2, 0x27

    const-string v1, "73j\u001fn!.,[w9s%\u001bz&2-\u001105>0\u001cq:s\r8A\u0006\u0018\u0017%Q\u001a\u000e\u0001"

    const/16 v0, 0x26

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_26
    aput-object v1, v3, v2

    const/16 v2, 0x28

    const-string v1, "$(7\u001dA 2\u001b\u001cs\u000b9%\u0001\u007f"

    const/16 v0, 0x27

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_27
    aput-object v1, v3, v2

    const/16 v2, 0x29

    const-string v1, "08\"\u0014k8)d\u001dj -~"

    const/16 v0, 0x28

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_28
    aput-object v1, v3, v2

    const/16 v2, 0x2a

    const-string v1, "\u001d32\u0014r=9d\u0006w\'}6\u0010m$2*\u0006{x}\"\u0014w88 Uj;}4\u0014l\'8d?M\u001b\u0013j"

    const/16 v0, 0x29

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_29
    aput-object v1, v3, v2

    const/16 v2, 0x2b

    const-string v1, "=-7"

    const/16 v0, 0x2a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2a
    aput-object v1, v3, v2

    const/16 v2, 0x2c

    const-string v1, "=-7U\u007f&/j\u0019{:}iU"

    const/16 v0, 0x2b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2b
    aput-object v1, v3, v2

    const/16 v2, 0x2d

    const-string v1, "$<6\u0006{\u000747\u001cp22d\u0016l5.,O$"

    const/16 v0, 0x2c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2c
    aput-object v1, v3, v2

    const/16 v2, 0x2e

    const-string v1, " 5!Ut\'2*U3t"

    const/16 v0, 0x2d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2d
    aput-object v1, v3, v2

    const/16 v2, 0x2f

    const-string v1, "\u001b-!\u001b>72*\u001b{7)-\u001apt;%\u001cr19dX>&80O"

    const/16 v0, 0x2e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2e
    aput-object v1, v3, v2

    const/16 v2, 0x30

    const-string v1, "\u00068#\u001cm 86Um!>\'\u0010{0}iUt!4 O"

    const/16 v0, 0x2f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2f
    aput-object v1, v3, v2

    const/16 v2, 0x31

    const-string v1, "\u00068#\u001cm 86Ux54(\u0010ztpd\u0007{ g"

    const/16 v0, 0x30

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_30
    aput-object v1, v3, v2

    const/16 v2, 0x32

    const-string v1, "\u00013!\rn1>0\u0010zn}6\u0010y=.0\u0007\u007f 4+\u001bW0r.\u0000w0}7\u001dq!1 Up;)d\u0017{t8)\u0005j-sd"

    const/16 v0, 0x31

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_31
    aput-object v1, v3, v2

    const/16 v2, 0x33

    const-string v1, "x}\'\u0019w130<p22~"

    const/16 v0, 0x32

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_32
    aput-object v1, v3, v2

    const/16 v2, 0x34

    const-string v1, "\u00068#\u001cm 86Ui=),O>?8=O"

    const/16 v0, 0x33

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_33
    aput-object v1, v3, v2

    const/16 v2, 0x35

    const-string v1, "x} \u0010h=>!<zn"

    const/16 v0, 0x34

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_34
    aput-object v1, v3, v2

    const/16 v2, 0x36

    const-string v1, "!3/\u001bq#3"

    const/16 v0, 0x35

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_35
    aput-object v1, v3, v2

    const/16 v2, 0x37

    const-string v1, "x}%\u0005u\u000286\u0006w;3~"

    const/16 v0, 0x36

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_36
    aput-object v1, v3, v2

    const/16 v2, 0x38

    const-string v1, "x}!\rj\u001f8=O"

    const/16 v0, 0x37

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_37
    aput-object v1, v3, v2

    const/16 v2, 0x39

    const-string v1, "x}6\u0010y=.0\u0007\u007f 4+\u001bW0g"

    const/16 v0, 0x38

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_38
    aput-object v1, v3, v2

    const/16 v2, 0x3a

    const-string v1, "\u5351\u5450~U"

    const/16 v0, 0x39

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_39
    aput-object v1, v3, v2

    const/16 v2, 0x3b

    const-string v1, "py"

    const/16 v0, 0x3a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3a
    aput-object v1, v3, v2

    const/16 v2, 0x3c

    const-string v1, "t\u4e53d4n$\u0016!\u000c$"

    const/16 v0, 0x3b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3b
    aput-object v1, v3, v2

    const/16 v2, 0x3d

    const-string v1, "$<7\u0006i;/ O"

    const/16 v0, 0x3c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3c
    aput-object v1, v3, v2

    const/16 v2, 0x3e

    const-string v1, "\u00068#\u001cm 86UX54(\u0010zt*-\u0001vt.!\u0007h1/d\u0010l&26U3t>+\u0011{n"

    const/16 v0, 0x3d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3d
    aput-object v1, v3, v2

    const/16 v2, 0x3f

    const-string v1, "\u00013,\u0014p01!\u0011>\'86\u0003{&}6\u0010m$2*\u0006{t86\u0007q&}\'\u001az1}iU"

    const/16 v0, 0x3e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3e
    aput-object v1, v3, v2

    const/16 v2, 0x40

    const-string v1, "73j\u001fn!.,[\u007f:96\u001aw0s-\u001bj130[L\u0011\u001a\r&J\u0006\u001c\u0010<Q\u001a"

    const/16 v0, 0x3f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3f
    aput-object v1, v3, v2

    const/16 v2, 0x41

    const-string v1, "\u4e59\u5364\u9109"

    const/16 v0, 0x40

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_40
    aput-object v1, v3, v2

    const/16 v2, 0x42

    const-string v1, "\u00182\'\u0014rt86\u0007q&} \u0010m7/-\u0005j=2*O>"

    const/16 v0, 0x41

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_41
    aput-object v1, v3, v2

    const/16 v2, 0x43

    const-string v1, "x})\u0010m\'<#\u0010$"

    const/16 v0, 0x42

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_42
    aput-object v1, v3, v2

    const/16 v2, 0x44

    const-string v1, "73j\u001fn!.,[\u007f:96\u001aw0s\u00160Y\u001d\u000e\u0010\'_\u0000\u0014\u000b;A\u001d\u0019"

    const/16 v0, 0x43

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_43
    aput-object v1, v3, v2

    const/16 v2, 0x45

    const-string v1, "$5+\u001b{"

    const/16 v0, 0x44

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_44
    aput-object v1, v3, v2

    const/16 v2, 0x46

    const-string v1, "\u0001\u001b"

    const/16 v0, 0x45

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_45
    aput-object v1, v3, v2

    const/16 v2, 0x47

    const-string v1, "\u0007(\'\u0016{19d\u0001qt24\u0010pt>+\u001bp1>0\u001cq:}iUw$g"

    const/16 v0, 0x46

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_46
    aput-object v1, v3, v2

    const/16 v2, 0x48

    const-string v1, "x}-\u001bz1%~"

    const/16 v0, 0x47

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_47
    aput-object v1, v3, v2

    const/16 v2, 0x49

    const-string v1, "\u001b-!\u001b>72*\u001b{7)-\u001apt*-\u0001vt24\u0001w;37U3t44O"

    const/16 v0, 0x48

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_48
    aput-object v1, v3, v2

    const/16 v2, 0x4a

    const-string v1, "\u0012<-\u0019{0}3\u001cj<}%\u0019rt>+\u001bp\'s"

    const/16 v0, 0x49

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_49
    aput-object v1, v3, v2

    const/16 v2, 0x4b

    const-string v1, "\u001d32\u0014r=9d\u0018\u007f=3d\u0016q:3"

    const/16 v0, 0x4a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4a
    aput-object v1, v3, v2

    const/16 v2, 0x4c

    const-string v1, "\u001b-!\u001b>72*\u001b{7)-\u001apt*-\u0001vt0%\u001cptpd\u001cnn"

    const/16 v0, 0x4b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4b
    aput-object v1, v3, v2

    const/16 v2, 0x4d

    const-string v1, "\u001b-!\u001b>72*\u001b{7)-\u001apt*-\u0001vt1%\u0006jt:+\u001aztpd\u001cnn"

    const/16 v0, 0x4c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4c
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcn/jpush/android/helpers/ConnectingHelper;->a:Ljava/util/List;

    const-string v0, "\'s.\u0005k\'5j\u0016p"

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
    aget-char v7, v1, v2

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_2

    const/16 v5, 0x1e

    :goto_4
    xor-int/2addr v5, v7

    int-to-char v5, v5

    aput-char v5, v1, v2

    add-int/lit8 v2, v4, 0x1

    if-nez v0, :cond_4

    move-object v1, v3

    move v4, v2

    move v2, v0

    goto :goto_3

    :pswitch_4d
    const/16 v9, 0x54

    goto/16 :goto_2

    :pswitch_4e
    const/16 v9, 0x5d

    goto/16 :goto_2

    :pswitch_4f
    const/16 v9, 0x44

    goto/16 :goto_2

    :pswitch_50
    const/16 v9, 0x75

    goto/16 :goto_2

    :pswitch_51
    const/16 v5, 0x54

    goto :goto_4

    :pswitch_52
    const/16 v5, 0x5d

    goto :goto_4

    :pswitch_53
    const/16 v5, 0x44

    goto :goto_4

    :pswitch_54
    const/16 v5, 0x75

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

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcn/jpush/android/helpers/ConnectingHelper;->a:Ljava/util/List;

    const-string v1, "\'47[t$(7\u001d0=2"

    const/4 v0, -0x1

    :goto_5
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v3, v5, :cond_8

    :cond_6
    move-object v5, v1

    move v6, v4

    move v11, v3

    move-object v3, v1

    move v1, v11

    :goto_6
    aget-char v8, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_3

    const/16 v7, 0x1e

    :goto_7
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v1, :cond_7

    move-object v3, v5

    move v6, v4

    move v4, v1

    goto :goto_6

    :pswitch_55
    const/16 v7, 0x54

    goto :goto_7

    :pswitch_56
    const/16 v7, 0x5d

    goto :goto_7

    :pswitch_57
    const/16 v7, 0x44

    goto :goto_7

    :pswitch_58
    const/16 v7, 0x75

    goto :goto_7

    :cond_7
    move v3, v1

    move-object v1, v5

    :cond_8
    if-gt v3, v4, :cond_6

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_4

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcn/jpush/android/helpers/ConnectingHelper;->a:Ljava/util/List;

    const-string v1, "1<7\u000cj;0!\u0006m5:![};0"

    const/4 v0, 0x0

    goto :goto_5

    :pswitch_59
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcn/jpush/android/helpers/ConnectingHelper;->a:Ljava/util/List;

    const-string v1, "elw[-esuB0em|"

    const/4 v0, 0x1

    goto :goto_5

    :pswitch_5a
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
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
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_59
        :pswitch_5a
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(J)I
    .locals 8

    const/4 v6, 0x2

    invoke-static {}, Lcn/jpush/android/a;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/jpush/android/a;->q()I

    move-result v1

    sget-object v2, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    aget-object v2, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v5, 0x1f

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v5, 0xa

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    :cond_0
    sget-object v0, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    aget-object v0, v0, v6

    sget-object v1, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v2, 0x1e

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {p0, p1, v0, v1}, Lcn/jpush/android/helpers/ConnectingHelper;->a(JLjava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v1, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v2, 0x1d

    aget-object v1, v1, v2

    invoke-static {v1}, Lcn/jpush/android/helpers/ConnectingHelper;->a(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v4, 0x21

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v4, 0x20

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    const/16 v2, 0xbb8

    invoke-static {p0, p1, v1, v2}, Lcn/jpush/android/helpers/ConnectingHelper;->a(JLjava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0
.end method

.method private static a(JLjava/lang/String;I)I
    .locals 6

    invoke-static {p0, p1, p2, p3}, Lcn/jpush/android/service/PushProtocol;->InitPush(JLjava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v4, 0x2f

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;ZII)Lcn/jpush/android/service/SisInfo;
    .locals 11

    const/16 v9, 0xc

    const/4 v8, 0x2

    :goto_0
    invoke-static {p0}, Lcn/jpush/android/util/a;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez p1, :cond_0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/jpush/android/a;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/jpush/android/util/z;->c()V

    invoke-static {}, Lcn/jpush/android/a;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/helpers/ConnectingHelper;->parseSisInfo(Ljava/lang/String;)Lcn/jpush/android/service/SisInfo;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string v3, ""

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x400

    :try_start_1
    new-array v4, v0, [B

    sget-object v0, Lcn/jpush/android/helpers/ConnectingHelper;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v1, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v1, v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v6, 0x9

    aget-object v5, v5, v6

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v6, 0xa

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v6, 0xf

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-gt p2, v8, :cond_2

    invoke-static {v0}, Lcn/jpush/android/helpers/ConnectingHelper;->a(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v5, 0xb

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v1

    move-object v10, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v10

    :goto_2
    :try_start_3
    sget-object v3, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v6, 0x8

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Lcn/jpush/android/util/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    add-int/lit8 p2, p2, 0x1

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V
    :try_end_4
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_4

    :cond_1
    :goto_3
    const/4 v0, 0x4

    if-ge p2, v0, :cond_7

    const/4 p1, 0x1

    goto/16 :goto_0

    :cond_2
    :try_start_5
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    :cond_3
    sget-object v3, Lcn/jpush/android/e;->f:Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/a;->t()J

    move-result-wide v6

    invoke-static {p0, v3, v6, v7}, Lcn/jpush/android/helpers/ConnectingHelper;->a(Landroid/content/Context;Ljava/lang/String;J)[B

    move-result-object v3

    new-instance v5, Ljava/net/DatagramPacket;

    const/16 v6, 0x80

    invoke-direct {v5, v3, v6, v1, p3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    const/16 v1, 0x1770

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    invoke-virtual {v2, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    new-instance v1, Ljava/net/DatagramPacket;

    const/16 v3, 0x400

    invoke-direct {v1, v4, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    sget-object v3, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    sget-object v4, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v3

    invoke-static {v1, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->c()V

    invoke-static {v1}, Lcn/jpush/android/helpers/ConnectingHelper;->parseSisInfo(Ljava/lang/String;)Lcn/jpush/android/service/SisInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    sget-object v3, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v6, 0xe

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jpush/android/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jpush/android/a;->h()V
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_4
    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_6
    .catch Ljava/lang/AssertionError; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    :goto_5
    move-object v0, v1

    goto/16 :goto_1

    :cond_5
    :try_start_7
    sget-object v3, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v6, 0xd

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jpush/android/util/z;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/AssertionError; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_6
    :try_start_8
    sget-object v1, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v1, v1, v4

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v6, 0x8

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcn/jpush/android/util/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    add-int/lit8 p2, p2, 0x1

    if-eqz v2, :cond_1

    :try_start_9
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_9
    .catch Ljava/lang/AssertionError; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/AssertionError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->e()V

    goto/16 :goto_3

    :catch_3
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/AssertionError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->e()V

    goto :goto_5

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/AssertionError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->e()V

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_7
    if-eqz v2, :cond_6

    :try_start_a
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_a
    .catch Ljava/lang/AssertionError; {:try_start_a .. :try_end_a} :catch_5

    :cond_6
    :goto_8
    throw v0

    :catch_5
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/AssertionError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->e()V

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_7

    :catch_6
    move-exception v0

    move-object v2, v1

    goto/16 :goto_6

    :catch_7
    move-exception v0

    goto/16 :goto_6

    :catch_8
    move-exception v0

    move-object v2, v3

    goto/16 :goto_2

    :catch_9
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_2
.end method

.method private static a(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Lcn/jpush/android/helpers/a;

    invoke-direct {v1, p0}, Lcn/jpush/android/helpers/a;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Lcn/jpush/android/helpers/a;->start()V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Lcn/jpush/android/helpers/a;->join(J)V

    invoke-virtual {v1}, Lcn/jpush/android/helpers/a;->a()Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {}, Lcn/jpush/android/util/z;->e()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;J)[B
    .locals 6

    const/4 v5, 0x2

    const/4 v2, 0x0

    invoke-static {p0}, Lcn/jpush/android/util/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v1, 0x45

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, ""

    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    sget-object v1, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v4, 0x46

    aget-object v1, v1, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_1
    const/16 v3, 0x80

    new-array v3, v3, [B

    new-array v4, v5, [B

    fill-array-data v4, :array_0

    invoke-static {v4, v2, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, v1, v5}, Lcn/jpush/b/a/c/a;->a([BLjava/lang/String;I)V

    const/16 v1, 0x22

    invoke-static {v3, v0, v1}, Lcn/jpush/b/a/c/a;->a([BII)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v4, p2

    long-to-int v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x26

    invoke-static {v3, v0, v1}, Lcn/jpush/b/a/c/a;->a([BII)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    const/16 v0, 0x31

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 v0, 0x2a

    invoke-static {v3, p1, v0}, Lcn/jpush/b/a/c/a;->a([BLjava/lang/String;I)V

    sget-object v0, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v1, 0x16

    aget-object v0, v0, v1

    const/16 v1, 0x5c

    invoke-static {v3, v0, v1}, Lcn/jpush/b/a/c/a;->a([BLjava/lang/String;I)V

    const/16 v0, 0x66

    invoke-static {v3, v2, v0}, Lcn/jpush/b/a/c/a;->a([BII)V

    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x0t
        -0x80t
    .end array-data
.end method

.method public static getIMLoginFlag()S
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static login(Landroid/content/Context;J)I
    .locals 19

    const/4 v14, 0x0

    const/16 v2, 0x80

    new-array v6, v2, [B

    invoke-static {}, Lcn/jpush/android/a;->t()J

    move-result-wide v7

    invoke-static {}, Lcn/jpush/android/a;->w()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/jpush/android/util/ai;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcn/jpush/android/a;->A()Ljava/lang/String;

    move-result-object v10

    sget-object v2, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v3, 0x16

    aget-object v2, v2, v3

    invoke-static {v2}, Lcn/jpush/android/util/a;->c(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v11, 0x13

    aget-object v5, v5, v11

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v11, 0x10

    aget-object v5, v5, v11

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v11, 0x12

    aget-object v5, v5, v11

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jpush/android/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static {}, Lcn/jpush/android/helpers/ConnectingHelper;->getIMLoginFlag()S

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v5, 0x17

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v5, 0x15

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    invoke-static {}, Lcn/jpush/android/a;->k()J

    move-result-wide v4

    int-to-long v11, v2

    move-wide/from16 v2, p1

    invoke-static/range {v2 .. v13}, Lcn/jpush/android/service/PushProtocol;->LogPush(JJ[BJLjava/lang/String;Ljava/lang/String;JS)I

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v3, 0x0

    if-eqz v4, :cond_0

    const/16 v2, 0x270f

    if-ne v4, v2, :cond_4

    :cond_0
    invoke-static {v6}, Lcn/jpush/b/a/a/d;->a([B)Lcn/jpush/b/a/a/h;

    move-result-object v2

    check-cast v2, Lcn/jpush/b/a/a/i;

    if-nez v2, :cond_1

    sget-object v2, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v6, 0x19

    aget-object v5, v5, v6

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v6, 0x1a

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jpush/android/util/z;->d(Ljava/lang/String;Ljava/lang/String;)V

    sub-long v2, v8, v16

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v2, v3, v5}, Lcn/jpush/android/util/r;->a(Landroid/content/Context;IJI)V

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_1
    invoke-virtual {v2}, Lcn/jpush/b/a/a/i;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    iget v3, v2, Lcn/jpush/b/a/a/i;->g:I

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcn/jpush/b/a/a/i;->a()I

    move-result v5

    invoke-virtual {v2}, Lcn/jpush/b/a/a/i;->g()I

    move-result v2

    int-to-long v6, v2

    const-wide/16 v10, 0x3e8

    mul-long/2addr v6, v10

    invoke-static {v5}, Lcn/jpush/android/a;->b(I)V

    invoke-static {v6, v7}, Lcn/jpush/android/a;->a(J)V

    sget-object v2, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/4 v10, 0x2

    aget-object v2, v2, v10

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v12, 0x1c

    aget-object v11, v11, v12

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v10, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v11, 0x1b

    aget-object v10, v10, v11

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcn/jpush/android/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lcn/jpush/android/helpers/ConnectingHelper;->sendServerTimer(Landroid/content/Context;J)V

    move v2, v14

    :goto_1
    sub-long v6, v8, v16

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6, v7, v2}, Lcn/jpush/android/util/r;->a(Landroid/content/Context;IJI)V

    const/16 v2, 0x2710

    if-ne v3, v2, :cond_5

    const/4 v2, -0x1

    goto :goto_0

    :cond_2
    const/16 v5, 0x2710

    if-ne v3, v5, :cond_3

    sget-object v5, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v10, 0x18

    aget-object v7, v7, v10

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v10, 0x14

    aget-object v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v2, v2, Lcn/jpush/b/a/a/i;->h:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcn/jpush/android/util/z;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    sget-object v5, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v10, 0x11

    aget-object v7, v7, v10

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v10, 0x14

    aget-object v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v2, v2, Lcn/jpush/b/a/a/i;->h:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcn/jpush/android/util/z;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v14

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    sget-object v5, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v10, 0x19

    aget-object v7, v7, v10

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/jpush/android/util/z;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    move v2, v4

    goto/16 :goto_0
.end method

.method public static declared-synchronized openConnection(Landroid/content/Context;JLcn/jpush/android/service/SisInfo;)Z
    .locals 13

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-class v6, Lcn/jpush/android/helpers/ConnectingHelper;

    monitor-enter v6

    if-nez p3, :cond_2

    :try_start_0
    invoke-static {}, Lcn/jpush/android/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/jpush/android/a;->f()I

    move-result v1

    if-eqz v0, :cond_0

    sget-object v4, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v7, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v8, 0x4d

    aget-object v7, v7, v8

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v8, 0xa

    aget-object v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, v0, v1}, Lcn/jpush/android/helpers/ConnectingHelper;->a(JLjava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    monitor-exit v6

    return v0

    :cond_0
    :try_start_1
    invoke-static {p1, p2}, Lcn/jpush/android/helpers/ConnectingHelper;->a(J)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcn/jpush/android/service/SisInfo;->getMainConnIp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcn/jpush/android/service/SisInfo;->getMainConnPort()I

    move-result v1

    sget-object v0, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v0, v0, v5

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v7, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v8, 0x4c

    aget-object v7, v7, v8

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v8, 0xa

    aget-object v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_3

    if-nez v1, :cond_4

    :cond_3
    const/4 v0, -0x1

    sget-object v5, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v5, v5, v7

    sget-object v7, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v8, 0x4b

    aget-object v7, v7, v8

    invoke-static {v5, v7}, Lcn/jpush/android/util/z;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual/range {p3 .. p3}, Lcn/jpush/android/service/SisInfo;->getOptionConnIp()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v5, v3

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lcn/jpush/android/service/SisInfo;->getOptionConnPort()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v1, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v1, v1, v8

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v10, 0x49

    aget-object v9, v9, v10

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v10, 0xa

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v10, 0x48

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, v0, v4}, Lcn/jpush/android/helpers/ConnectingHelper;->a(JLjava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 v5, v5, 0x1

    move v11, v1

    move v1, v4

    move-object v4, v0

    move v0, v11

    goto :goto_2

    :cond_4
    invoke-static {p1, p2, v4, v1}, Lcn/jpush/android/helpers/ConnectingHelper;->a(JLjava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_5
    move v11, v1

    move v1, v4

    move-object v4, v0

    move v0, v11

    :cond_6
    if-eqz v0, :cond_7

    invoke-static {p1, p2}, Lcn/jpush/android/helpers/ConnectingHelper;->a(J)I

    move-result v0

    :cond_7
    if-nez v0, :cond_8

    invoke-static {v4}, Lcn/jpush/android/a;->a(Ljava/lang/String;)V

    invoke-static {v1}, Lcn/jpush/android/a;->a(I)V

    sget-object v0, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v7, 0x47

    aget-object v5, v5, v7

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v5, 0xa

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v2, 0x4a

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static parseSisInfo(Ljava/lang/String;)Lcn/jpush/android/service/SisInfo;
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x2

    :try_start_0
    invoke-static {p0}, Lcn/jpush/android/service/SisInfo;->fromJson(Ljava/lang/String;)Lcn/jpush/android/service/SisInfo;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    sget-object v2, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v3, 0x2a

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcn/jpush/android/util/z;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Lcom/google/gson/jpush/ab;

    invoke-direct {v2}, Lcom/google/gson/jpush/ab;-><init>()V

    invoke-virtual {v2, p0}, Lcom/google/gson/jpush/ab;->a(Ljava/lang/String;)Lcom/google/gson/jpush/w;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v5, 0x2e

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/gson/jpush/w;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    instance-of v3, v2, Lcom/google/gson/jpush/z;

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/google/gson/jpush/w;->h()Lcom/google/gson/jpush/z;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v4, 0x2b

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/google/gson/jpush/z;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v4, 0x2b

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/google/gson/jpush/z;->b(Ljava/lang/String;)Lcom/google/gson/jpush/w;

    move-result-object v2

    instance-of v3, v2, Lcom/google/gson/jpush/t;

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/google/gson/jpush/w;->i()Lcom/google/gson/jpush/t;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v5, 0x2c

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/gson/jpush/t;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    invoke-virtual {v2}, Lcom/google/gson/jpush/t;->a()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/gson/jpush/t;->a(I)Lcom/google/gson/jpush/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/jpush/w;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v5, 0x29

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    invoke-static {v2}, Lcn/jpush/android/util/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    :goto_1
    invoke-virtual {v1, p0}, Lcn/jpush/android/service/SisInfo;->parseAndSet(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/jpush/android/service/SisInfo;->isInvalidSis()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcn/jpush/android/util/z;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    aget-object v2, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v5, 0x2d

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jpush/android/util/z;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static register(Landroid/content/Context;JZ)Z
    .locals 13

    const/16 v0, 0x80

    new-array v8, v0, [B

    invoke-static {p0}, Lcn/jpush/android/helpers/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcn/jpush/android/helpers/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v1, 0x16

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lcn/jpush/android/util/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Lcn/jpush/android/util/a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcn/jpush/android/util/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-static {p0, v2}, Lcn/jpush/android/util/a;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-static {p0, v3}, Lcn/jpush/android/util/a;->i(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v7, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v0, " "

    :cond_0
    invoke-static {v1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v1, " "

    :cond_1
    invoke-static {v2}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v2, " "

    :cond_2
    invoke-static {v3}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v3, " "

    :cond_3
    invoke-static {v7}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    sget-object v9, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v10, 0x36

    aget-object v9, v9, v10

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    const-string v7, " "

    :cond_5
    invoke-static {v3}, Lcn/jpush/android/a;->l(Ljava/lang/String;)V

    invoke-static {v1}, Lcn/jpush/android/a;->m(Ljava/lang/String;)V

    invoke-static {v2}, Lcn/jpush/android/a;->n(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget v10, Lcn/jpush/android/util/a;->a:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v11, 0x3b

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v9, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v10, 0x3b

    aget-object v9, v9, v10

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v9, 0x3b

    aget-object v3, v3, v9

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v3, 0x3b

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v2, 0x3b

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v2, 0x34

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v2, 0x37

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v2, 0x33

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v2, 0x38

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    invoke-static {}, Lcn/jpush/android/a;->k()J

    move-result-wide v2

    move-wide v0, p1

    invoke-static/range {v0 .. v7}, Lcn/jpush/android/service/PushProtocol;->RegPush(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v1, -0x3df

    if-ne v0, v1, :cond_6

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_6
    const/16 v0, 0x1e

    invoke-static {p1, p2, v8, v0}, Lcn/jpush/android/service/PushProtocol;->RecvPush(J[BI)I

    move-result v0

    if-lez v0, :cond_12

    invoke-static {v8}, Lcn/jpush/b/a/a/d;->a([B)Lcn/jpush/b/a/a/h;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-static {}, Lcn/jpush/android/util/z;->e()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Lcn/jpush/b/a/a/h;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    invoke-virtual {v0}, Lcn/jpush/b/a/a/h;->d()I

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcn/jpush/android/util/z;->e()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_8
    move-object v4, v0

    check-cast v4, Lcn/jpush/b/a/a/k;

    iget v0, v4, Lcn/jpush/b/a/a/k;->g:I

    invoke-static {p0, v0}, Lcn/jpush/android/a;->c(Landroid/content/Context;I)V

    if-nez v0, :cond_c

    invoke-virtual {v4}, Lcn/jpush/b/a/a/k;->a()J

    move-result-wide v0

    invoke-virtual {v4}, Lcn/jpush/b/a/a/k;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcn/jpush/b/a/a/k;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcn/jpush/b/a/a/k;->i()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v8, 0x30

    aget-object v7, v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v8, 0x39

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v8, 0x35

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/jpush/android/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v7, 0x3d

    aget-object v6, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    invoke-static {v3}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    const-wide/16 v6, 0x0

    cmp-long v5, v6, v0

    if-nez v5, :cond_a

    :cond_9
    sget-object v5, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    sget-object v6, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v7, 0x32

    aget-object v6, v6, v7

    invoke-static {v5, v6}, Lcn/jpush/android/util/z;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-static {p0, v4}, Lcn/jpush/android/util/a;->j(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v5, Lcn/jpush/android/e;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/a;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-wide v0, Lcn/jpush/android/e;->g:J

    sput-object v2, Lcn/jpush/android/e;->h:Ljava/lang/String;

    if-nez p3, :cond_b

    sget-object v0, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v1, 0x40

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v2, 0x44

    aget-object v1, v1, v2

    invoke-static {p0, v0, v1, v3}, Lcn/jpush/android/util/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_c
    iget-object v1, v4, Lcn/jpush/b/a/a/k;->h:Ljava/lang/String;

    sget-object v2, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v5, 0x3e

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v5, 0x43

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jpush/android/util/z;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/jpush/android/service/r;->a(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    sget-object v2, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v5, 0x42

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jpush/android/util/z;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    const/16 v1, 0x3ee

    if-ne v1, v0, :cond_e

    invoke-static {}, Lcn/jpush/android/a;->o()V

    :goto_1
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x3ef

    if-ne v1, v0, :cond_f

    invoke-static {}, Lcn/jpush/android/util/z;->c()V

    goto :goto_1

    :cond_f
    const/16 v1, 0x3ed

    if-ne v1, v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v2, 0x3a

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/jpush/android/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v2, 0x3c

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v2, 0x41

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v0}, Lcn/jpush/android/util/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jpush/android/a;->o()V

    goto :goto_1

    :cond_10
    const/16 v1, 0x3f1

    if-ne v1, v0, :cond_11

    invoke-static {}, Lcn/jpush/android/a;->o()V

    goto :goto_1

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v3, 0x3f

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->c()V

    goto :goto_1

    :cond_12
    sget-object v1, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v4, 0x31

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/util/z;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static sendConnectionChanged(Landroid/content/Context;Lcn/jpush/android/service/a;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    sget-object v3, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/jpush/android/a;->a(Landroid/content/Context;)Lcn/jpush/android/service/a;

    move-result-object v2

    if-ne p1, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcn/jpush/android/a;->a(Landroid/content/Context;Lcn/jpush/android/service/a;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {p1}, Lcn/jpush/android/service/a;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-static {p0, v0, v2}, Lcn/jpush/android/util/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static sendConnectionToHandler(Landroid/os/Message;J)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v2, 0x22

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static sendServerTimer(Landroid/content/Context;J)V
    .locals 7

    sget-object v0, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v2, 0x24

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v3, 0x26

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v2, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v3, 0x25

    aget-object v2, v2, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v2, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v3, 0x28

    aget-object v2, v2, v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v2, 0x27

    aget-object v1, v1, v2

    invoke-static {p0, v1, v0}, Lcn/jpush/android/util/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/helpers/ConnectingHelper;->z:[Ljava/lang/String;

    const/16 v3, 0x23

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->d()V

    goto :goto_0
.end method

.method public static declared-synchronized sendSis(Landroid/content/Context;)Lcn/jpush/android/service/SisInfo;
    .locals 4

    const-class v0, Lcn/jpush/android/helpers/ConnectingHelper;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x4a38

    :try_start_0
    invoke-static {p0, v1, v2, v3}, Lcn/jpush/android/helpers/ConnectingHelper;->a(Landroid/content/Context;ZII)Lcn/jpush/android/service/SisInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
