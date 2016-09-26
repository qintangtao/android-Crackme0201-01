.class public final Lcn/jpush/android/a;
.super Lcn/jpush/android/util/f;


# static fields
.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x48

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "\u000enfh;\u000fTbd?\u0003xdd*\u000foO`(\u001a`ux"

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

    const/16 v9, 0x58

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

    const-string v1, "\u0006jcu\u0007\u0019bc^*\u000fzed+\u001eTdh5\u000f"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "\u000enfb1\u000fTye\u0007\rn~d*\u000b\u007fue"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "\u0006jcu\u0007\u001ejwr\u0007\u0019~sb=\u0019xOu1\u0007n"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "\u0019ndu1\u0004lOq-\u0019cOu1\u0007n"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "\u000enfh;\u000fTbd?\u0003xds9\u001eb\u007fo\u0007\u0003o"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "\u0008jsj-\u001aTer=\u0018Tqe<\u0018"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "\u000enfh;\u000fT``+\u0019|\u007fs<"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "\td~o=\t\u007fyo?5xd`,\u000f"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "\u0006jcu\u0007\rd\u007fe\u0007\u0019bc"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "\u0019ndu1\u0004lOr1\u0006n~b=5{er05\u007fyl="

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "\u0006ic^*\u000f{\u007fs,5n~`:\u0006n"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "\u0019\u007f\u007fq\u0007\u000fsub-\u001ent^7\u0004Tyl4\u0005lyo"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "\u0006jcu\u0007\td~o=\t\u007fyn65\u007fiq="

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "\u000enfh;\u000fT}`1\u0004T}`;"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "\u000enfh;\u000fT}`1\u0004Tqo<\u0018dye\u0007\u0003o"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "\u0019o{^.\u000fych7\u0004"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "\u0019nbw1\tnc^4\u000b~~b0\u000foOu1\u0007n"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, "\u000enfh;\u000fT}`1\u0004Tyl=\u0003"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_11
    aput-object v1, v3, v2

    const/16 v2, 0x13

    const-string v1, "\u0000{er05xqw=5her,\u0005fOc-\u0003gtd*"

    const/16 v0, 0x12

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_12
    aput-object v1, v3, v2

    const/16 v2, 0x14

    const-string v1, "\u0006dwh65g\u007fb9\u0006Tdh5\u000f"

    const/16 v0, 0x13

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_13
    aput-object v1, v3, v2

    const/16 v2, 0x15

    const-string v1, "\u0006dwh65xus.\u000fyOu1\u0007n"

    const/16 v0, 0x14

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_14
    aput-object v1, v3, v2

    const/16 v2, 0x16

    const-string v1, "\u0006jcu\u0007\u000bgy`\u0007\u0019~sb=\u0019xOu1\u0007n"

    const/16 v0, 0x15

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_15
    aput-object v1, v3, v2

    const/16 v2, 0x17

    const-string v1, "\u001a~ci\u0007\u001foye"

    const/16 v0, 0x16

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_16
    aput-object v1, v3, v2

    const/16 v2, 0x18

    const-string v1, "\u0004ddh>\u0003hqu1\u0005eOd6\u000bi|d<"

    const/16 v0, 0x17

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_17
    aput-object v1, v3, v2

    const/16 v2, 0x19

    const-string v1, "\u0006jcu+\u000f\u007fO`4\u0003jc"

    const/16 v0, 0x18

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_18
    aput-object v1, v3, v2

    const/16 v2, 0x1a

    const-string v1, "\u0003fuh"

    const/16 v0, 0x19

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_19
    aput-object v1, v3, v2

    const/16 v2, 0x1b

    const-string v1, "\u0006jcu\u0007\u0018n`n*\u001eTyo<\u000fs"

    const/16 v0, 0x1a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1a
    aput-object v1, v3, v2

    const/16 v2, 0x1c

    const-string v1, "\u000enfh;\u000fTeh<"

    const/16 v0, 0x1b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1b
    aput-object v1, v3, v2

    const/16 v2, 0x1d

    const-string v1, "\u0004ddh>\u0003hqu1\u0005eOo-\u0007"

    const/16 v0, 0x1c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1c
    aput-object v1, v3, v2

    const/16 v2, 0x1e

    const-string v1, "\u0006jcu\u0007\rd\u007fe\u0007\td~o\u0007\u001adbu"

    const/16 v0, 0x1d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1d
    aput-object v1, v3, v2

    const/16 v2, 0x1f

    const-string v1, "\u0006jcu\u0007\rd\u007fe\u0007\td~o\u0007\u0003{"

    const/16 v0, 0x1e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1e
    aput-object v1, v3, v2

    const/16 v2, 0x20

    const-string v1, "[:#/k[%!6v[;&"

    const/16 v0, 0x1f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1f
    aput-object v1, v3, v2

    const/16 v2, 0x21

    const-string v1, "\u000env`-\u0006\u007fOb7\u0004eOh("

    const/16 v0, 0x20

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_20
    aput-object v1, v3, v2

    const/16 v2, 0x22

    const-string v1, "\u000enfh;\u000fTqq(\u0001ni"

    const/16 v0, 0x21

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_21
    aput-object v1, v3, v2

    const/16 v2, 0x23

    const-string v1, "\u0019nbw1\tnOr,\u0005{ue"

    const/16 v0, 0x22

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_22
    aput-object v1, v3, v2

    const/16 v2, 0x24

    const-string v1, "\u0003fOm7\rb~^;\u0005~~u"

    const/16 v0, 0x23

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_23
    aput-object v1, v3, v2

    const/16 v2, 0x25

    const-string v1, "\u000enfh;\u000fTsi9\u0004eum"

    const/16 v0, 0x24

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_24
    aput-object v1, v3, v2

    const/16 v2, 0x26

    const-string v1, "\u0019ncr1\u0005eOh<"

    const/16 v0, 0x25

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_25
    aput-object v1, v3, v2

    const/16 v2, 0x27

    const-string v1, "\u0007jh!6\u0005\u007fyg1\tjdh7\u00041"

    const/16 v0, 0x26

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_26
    aput-object v1, v3, v2

    const/16 v2, 0x28

    const-string v1, "\u0003xOh55g\u007ff?\u000foOh6"

    const/16 v0, 0x27

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_27
    aput-object v1, v3, v2

    const/16 v2, 0x29

    const-string v1, "\u0004nhu\u0007\u0018bt"

    const/16 v0, 0x28

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_28
    aput-object v1, v3, v2

    const/16 v2, 0x2a

    const-string v1, "\u0006jcu+\u000f\u007fOu9\r"

    const/16 v0, 0x29

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_29
    aput-object v1, v3, v2

    const/16 v2, 0x2b

    const-string v1, "\u0006jcu\u0007\u0018n`n*\u001eTtd.\u0003hu^1\u0004m\u007f"

    const/16 v0, 0x2a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2a
    aput-object v1, v3, v2

    const/16 v2, 0x2c

    const-string v1, "\u0002nqs,\u0008nqu\u0007\u0003edd*\u001cj|"

    const/16 v0, 0x2b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2b
    aput-object v1, v3, v2

    const/16 v2, 0x2d

    const-string v1, "\u0006jcu\u0007\u0018n`n*\u001eT|n;\u000b\u007fyn6"

    const/16 v0, 0x2c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2c
    aput-object v1, v3, v2

    const/16 v2, 0x2e

    const-string v1, "\u000enfh;\u000fT}`1\u0004Tye+"

    const/16 v0, 0x2d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2d
    aput-object v1, v3, v2

    const/16 v2, 0x2f

    const-string v1, "\u000enf^1\u0004m\u007f^*\u000f{Ou1\u0007n"

    const/16 v0, 0x2e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2e
    aput-object v1, v3, v2

    const/16 v2, 0x30

    const-string v1, "\u0018nwh+\u001eyqu1\u0005eOh<"

    const/16 v0, 0x2f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2f
    aput-object v1, v3, v2

    const/16 v2, 0x31

    const-string v1, "\u0000{er05xyr\u0007\u0004ndu!\u001an"

    const/16 v0, 0x30

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_30
    aput-object v1, v3, v2

    const/16 v2, 0x32

    const-string v1, "\u0008jsj-\u001aTbd(\u0005yd^9\u000eob"

    const/16 v0, 0x31

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_31
    aput-object v1, v3, v2

    const/16 v2, 0x33

    const-string v1, "\u0004ddh>\u000bhdh7\u0004T~t5"

    const/16 v0, 0x32

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_32
    aput-object v1, v3, v2

    const/16 v2, 0x34

    const-string v1, "\u0018nwh+\u001enb^<\u000f}yb=5j~e*\u0005bt^1\u000e"

    const/16 v0, 0x33

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_33
    aput-object v1, v3, v2

    const/16 v2, 0x35

    const-string v1, "\u0000{er05h\u007fo65f`n*\u001e"

    const/16 v0, 0x34

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_34
    aput-object v1, v3, v2

    const/16 v2, 0x36

    const-string v1, "\u0018nwh+\u001enb^<\u000f}yb=5b~g7"

    const/16 v0, 0x35

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_35
    aput-object v1, v3, v2

    const/16 v2, 0x37

    const-string v1, "\u0000{er05h\u007fo65fyq"

    const/16 v0, 0x36

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_36
    aput-object v1, v3, v2

    const/16 v2, 0x38

    const-string v1, "\u0002\u007fdq\u0007\u0018n`n*\u001eTch+5~bm"

    const/16 v0, 0x37

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_37
    aput-object v1, v3, v2

    const/16 v2, 0x39

    const-string v1, "\u0018nwh+\u001enb^<\u000f}yb=5b}d1"

    const/16 v0, 0x38

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_38
    aput-object v1, v3, v2

    const/16 v2, 0x3a

    const-string v1, "\u000env`-\u0006\u007fOb7\u0004eOq7\u0018\u007f"

    const/16 v0, 0x39

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_39
    aput-object v1, v3, v2

    const/16 v2, 0x3b

    const-string v1, " [er05Ouw1\tnYe"

    const/16 v0, 0x3a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3a
    aput-object v1, v3, v2

    const/16 v2, 0x3c

    const-string v1, "\u0019b|d6\tn@t+\u0002_yl="

    const/16 v0, 0x3b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3b
    aput-object v1, v3, v2

    const/16 v2, 0x3d

    const-string v1, "\u0007[\u007fs,"

    const/16 v0, 0x3c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3c
    aput-object v1, v3, v2

    const/16 v2, 0x3e

    const-string v1, "\u0007B@"

    const/16 v0, 0x3d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3d
    aput-object v1, v3, v2

    const/16 v2, 0x3f

    const-string v1, "\te>k(\u001fxx/+\u000fyfd*\td~g1\r"

    const/16 v0, 0x3e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3e
    aput-object v1, v3, v2

    const/16 v2, 0x40

    const-string v1, "\u001a~ci,\u0003fu"

    const/16 v0, 0x3f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3f
    aput-object v1, v3, v2

    const/16 v2, 0x41

    const-string v1, "\u0019nbw1\tnOb7\u0004eub=\u001e"

    const/16 v0, 0x40

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_40
    aput-object v1, v3, v2

    const/16 v2, 0x42

    const-string v1, "\u0006hdh5\u000f"

    const/16 v0, 0x41

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_41
    aput-object v1, v3, v2

    const/16 v2, 0x43

    const-string v1, "\u0000{er05xyr\u0007\u0018nsd1\u001cnb^+\u001eyyo?"

    const/16 v0, 0x42

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_42
    aput-object v1, v3, v2

    const/16 v2, 0x44

    const-string v1, "\u0006dwh65yuq7\u0018\u007fOu1\u0007n"

    const/16 v0, 0x43

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_43
    aput-object v1, v3, v2

    const/16 v2, 0x45

    const-string v1, "\u0018nwh+\u001enb^<\u000f}yb=5fqb"

    const/16 v0, 0x44

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_44
    aput-object v1, v3, v2

    const/16 v2, 0x46

    const-string v1, "\te>k(\u001fxx/9\u0004obn1\u000e%QQ\u0008!NI"

    const/16 v0, 0x45

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_45
    aput-object v1, v3, v2

    const/16 v2, 0x47

    const-string v1, "\u0000{er05yuf1\u0019\u007fus\u0007\tdtd"

    const/16 v0, 0x46

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_46
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    return-void

    :pswitch_47
    const/16 v9, 0x6a

    goto/16 :goto_2

    :pswitch_48
    const/16 v9, 0xb

    goto/16 :goto_2

    :pswitch_49
    const/16 v9, 0x10

    goto/16 :goto_2

    :pswitch_4a
    const/4 v9, 0x1

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
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
    .end packed-switch
.end method

.method public static A()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/jpush/android/e;->e:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x22

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/jpush/android/helpers/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static B()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/jpush/android/e;->e:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x19

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/jpush/android/helpers/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static C()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/jpush/android/e;->e:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x2a

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/jpush/android/helpers/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static D()J
    .locals 4

    sget-object v0, Lcn/jpush/android/e;->e:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/jpush/android/helpers/b;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static E()J
    .locals 4

    sget-object v0, Lcn/jpush/android/e;->e:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/jpush/android/helpers/b;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static F()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x25

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/jpush/android/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static G()Z
    .locals 4

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/jpush/android/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-static {v1, v2}, Lcn/jpush/android/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    const-string v3, ""

    invoke-static {v2, v3}, Lcn/jpush/android/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jpush/android/util/z;->c()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static H()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/jpush/android/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static I()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/jpush/android/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcn/jpush/android/service/a;
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/service/a;->b:Lcn/jpush/android/service/a;

    invoke-virtual {v1}, Lcn/jpush/android/service/a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcn/jpush/android/helpers/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/service/a;->valueOf(Ljava/lang/String;)Lcn/jpush/android/service/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)V
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x1e

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcn/jpush/android/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(J)V
    .locals 4

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x15

    aget-object v0, v0, v1

    invoke-static {v0, p0, p1}, Lcn/jpush/android/a;->a(Ljava/lang/String;J)V

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x14

    aget-object v0, v0, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcn/jpush/android/a;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public static a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/a;->a(Ljava/lang/Long;)V

    invoke-static {p2}, Lcn/jpush/android/a;->q(Ljava/lang/String;)V

    invoke-static {p3}, Lcn/jpush/android/a;->r(Ljava/lang/String;)V

    invoke-static {p4}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Lcn/jpush/android/a;->g(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0, p5}, Lcn/jpush/android/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x1d

    aget-object v0, v0, v1

    invoke-static {p0, v0, p1}, Lcn/jpush/android/helpers/b;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcn/jpush/android/service/a;)V
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcn/jpush/android/service/a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcn/jpush/android/helpers/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-static {p0, v0, p1}, Lcn/jpush/android/helpers/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcn/jpush/android/helpers/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-static {p0, v0, p1}, Lcn/jpush/android/helpers/b;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private static a(Ljava/lang/Long;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcn/jpush/android/e;->g:J

    sget-object v0, Lcn/jpush/android/e;->e:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x1c

    aget-object v1, v1, v2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcn/jpush/android/helpers/b;->a(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x1f

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcn/jpush/android/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Z)V
    .locals 3

    sget-object v0, Lcn/jpush/android/e;->e:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x28

    aget-object v1, v1, v2

    invoke-static {v0, v1, p0}, Lcn/jpush/android/helpers/b;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a()Z
    .locals 7

    const/16 v6, 0x2b

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v6

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcn/jpush/android/a;->b(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v4, 0x5265c00

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-static {v0, v2, v3}, Lcn/jpush/android/a;->a(Ljava/lang/String;J)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/jpush/android/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-static {v1, v2}, Lcn/jpush/android/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jpush/android/util/z;->c()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcn/jpush/android/util/z;->c()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 4

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x1d

    aget-object v0, v0, v1

    const/4 v1, 0x5

    invoke-static {p0, v0, v1}, Lcn/jpush/android/helpers/b;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v3, 0x27

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    return v0
.end method

.method public static b(I)V
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x26

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcn/jpush/android/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public static b(J)V
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    invoke-static {v0, p0, p1}, Lcn/jpush/android/a;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x23

    aget-object v0, v0, v1

    invoke-static {p0, v0, p1}, Lcn/jpush/android/helpers/b;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-static {p0, v0, p1}, Lcn/jpush/android/helpers/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x18

    aget-object v0, v0, v1

    invoke-static {p0, v0, p1}, Lcn/jpush/android/helpers/b;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static b()Z
    .locals 7

    const/16 v6, 0x2d

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v6

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcn/jpush/android/a;->b(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v4, 0x36ee80

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-static {v0, v2, v3}, Lcn/jpush/android/a;->a(Ljava/lang/String;J)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 4

    const/16 v3, 0xd

    const/4 v0, 0x1

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    aget-object v1, v1, v3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/jpush/android/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v1, p0}, Lcn/jpush/android/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/jpush/android/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-static {v1, v2}, Lcn/jpush/android/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcn/jpush/android/util/z;->c()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcn/jpush/android/util/z;->c()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x23

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/jpush/android/helpers/b;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static c(I)V
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x3a

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcn/jpush/android/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public static c(J)V
    .locals 4

    sget-object v0, Lcn/jpush/android/e;->e:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    invoke-static {v0, v1, p0, p1}, Lcn/jpush/android/helpers/b;->a(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static c(Landroid/content/Context;I)V
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x47

    aget-object v0, v0, v1

    invoke-static {p0, v0, p1}, Lcn/jpush/android/helpers/b;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x17

    aget-object v0, v0, v1

    invoke-static {p0, v0, p1}, Lcn/jpush/android/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x21

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcn/jpush/android/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized c()Z
    .locals 8

    const-class v1, Lcn/jpush/android/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x1b

    aget-object v0, v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcn/jpush/android/a;->b(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v6, 0x5265c00

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x1b

    aget-object v0, v0, v2

    invoke-static {v0, v4, v5}, Lcn/jpush/android/a;->a(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static d()J
    .locals 4

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x1b

    aget-object v0, v0, v1

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcn/jpush/android/a;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d(J)V
    .locals 4

    sget-object v0, Lcn/jpush/android/e;->e:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {v0, v1, p0, p1}, Lcn/jpush/android/helpers/b;->a(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x1a

    aget-object v0, v0, v1

    invoke-static {p0, v0, p1}, Lcn/jpush/android/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x32

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcn/jpush/android/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/jpush/android/helpers/b;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x1f

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/jpush/android/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcn/jpush/android/helpers/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcn/jpush/android/helpers/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcn/jpush/android/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static f()I
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x1e

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/jpush/android/a;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcn/jpush/android/helpers/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcn/jpush/android/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcn/jpush/android/e;->e:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v0, v1, p0}, Lcn/jpush/android/helpers/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static g()Z
    .locals 6

    const/4 v0, 0x1

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcn/jpush/android/a;->b(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0x2bf20

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x18

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcn/jpush/android/helpers/b;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x17

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcn/jpush/android/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h()V
    .locals 4

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcn/jpush/android/a;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public static h(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcn/jpush/android/e;->e:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x22

    aget-object v1, v1, v2

    invoke-static {v0, v1, p0}, Lcn/jpush/android/helpers/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i()I
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x26

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/jpush/android/a;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x1a

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcn/jpush/android/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcn/jpush/android/e;->e:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x19

    aget-object v1, v1, v2

    invoke-static {v0, v1, p0}, Lcn/jpush/android/helpers/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static j()J
    .locals 6

    const-wide/16 v4, 0x0

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x14

    aget-object v0, v0, v1

    invoke-static {v0, v4, v5}, Lcn/jpush/android/a;->b(Ljava/lang/String;J)J

    move-result-wide v0

    sget-object v2, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v3, 0x15

    aget-object v2, v2, v3

    invoke-static {v2, v4, v5}, Lcn/jpush/android/a;->b(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v2, v0

    add-long/2addr v0, v4

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static j(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcn/jpush/android/e;->e:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x2a

    aget-object v1, v1, v2

    invoke-static {v0, v1, p0}, Lcn/jpush/android/helpers/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcn/jpush/android/helpers/b;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized k()J
    .locals 10

    const-wide/16 v8, 0x2

    const-class v2, Lcn/jpush/android/a;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x29

    aget-object v3, v0, v1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x7fff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v4, 0x2

    rem-long v4, v0, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    :cond_0
    invoke-static {v3, v0, v1}, Lcn/jpush/android/a;->b(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v4, 0x7fff

    rem-long/2addr v0, v4

    sget-object v3, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v4, 0x29

    aget-object v3, v3, v4

    add-long v4, v0, v8

    invoke-static {v3, v4, v5}, Lcn/jpush/android/a;->a(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v0, v8

    monitor-exit v2

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static k(Landroid/content/Context;)V
    .locals 10

    const/16 v9, 0x1a

    const/16 v8, 0x17

    const/16 v5, 0x15

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    invoke-static {p0}, Lcn/jpush/android/a;->l(Landroid/content/Context;)V

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x3f

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v2, v0, v2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v3, 0x41

    aget-object v0, v0, v3

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    sget-object v0, Lcn/jpush/android/service/a;->a:Lcn/jpush/android/service/a;

    invoke-virtual {v0}, Lcn/jpush/android/service/a;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0, v2, v0}, Lcn/jpush/android/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x2e

    aget-object v0, v0, v2

    sget-object v2, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v3, 0x36

    aget-object v2, v2, v3

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcn/jpush/android/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x12

    aget-object v0, v0, v2

    sget-object v2, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v3, 0x39

    aget-object v2, v2, v3

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcn/jpush/android/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    sget-object v2, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v3, 0x34

    aget-object v2, v2, v3

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcn/jpush/android/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    sget-object v2, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v3, 0x45

    aget-object v2, v2, v3

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcn/jpush/android/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    sget-object v2, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v3, 0x31

    aget-object v2, v2, v3

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcn/jpush/android/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v0, v0, v2

    sget-object v2, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v3, 0x43

    aget-object v2, v2, v3

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcn/jpush/android/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x21

    aget-object v0, v0, v2

    sget-object v2, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v3, 0x3e

    aget-object v2, v2, v3

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcn/jpush/android/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x32

    aget-object v0, v0, v2

    sget-object v2, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v3, 0x38

    aget-object v2, v2, v3

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcn/jpush/android/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x1f

    aget-object v0, v0, v2

    sget-object v2, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v3, 0x37

    aget-object v2, v2, v3

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcn/jpush/android/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v8

    sget-object v2, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v8

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcn/jpush/android/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v9

    sget-object v2, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v9

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcn/jpush/android/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x3a

    aget-object v0, v0, v2

    sget-object v2, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v3, 0x3d

    aget-object v2, v2, v3

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0, v0, v2}, Lcn/jpush/android/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x1e

    aget-object v0, v0, v2

    sget-object v2, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v3, 0x35

    aget-object v2, v2, v3

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0, v0, v2}, Lcn/jpush/android/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x14

    aget-object v0, v0, v2

    sget-object v2, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v3, 0x42

    aget-object v2, v2, v3

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {p0, v0, v2, v3}, Lcn/jpush/android/a;->a(Landroid/content/Context;Ljava/lang/String;J)V

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x2b

    aget-object v0, v0, v2

    sget-object v2, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v3, 0x2f

    aget-object v2, v2, v3

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {p0, v0, v2, v3}, Lcn/jpush/android/a;->a(Landroid/content/Context;Ljava/lang/String;J)V

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v5

    sget-object v2, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {p0, v0, v2, v3}, Lcn/jpush/android/a;->a(Landroid/content/Context;Ljava/lang/String;J)V

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x2d

    aget-object v0, v0, v2

    sget-object v2, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v3, 0x44

    aget-object v2, v2, v3

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {p0, v0, v2, v3}, Lcn/jpush/android/a;->a(Landroid/content/Context;Ljava/lang/String;J)V

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x30

    aget-object v0, v0, v2

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/a;->r(Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x46

    aget-object v0, v0, v2

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/a;->h(Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x3b

    aget-object v0, v0, v2

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/a;->g(Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x3c

    aget-object v0, v0, v2

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-static {p0, v2, v0}, Lcn/jpush/android/helpers/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x40

    aget-object v0, v0, v2

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-static {p0, v2, v0}, Lcn/jpush/android/helpers/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x33

    aget-object v0, v0, v2

    const/4 v2, 0x5

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v2, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v3, 0x1d

    aget-object v2, v2, v3

    invoke-static {p0, v2, v0}, Lcn/jpush/android/helpers/b;->a(Landroid/content/Context;Ljava/lang/String;I)V

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x23

    aget-object v0, v0, v2

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x23

    aget-object v1, v1, v2

    invoke-static {p0, v1, v0}, Lcn/jpush/android/helpers/b;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_0
    sget-object v0, Lcn/jpush/android/service/a;->b:Lcn/jpush/android/service/a;

    invoke-virtual {v0}, Lcn/jpush/android/service/a;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static k(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x25

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcn/jpush/android/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static l(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcn/jpush/android/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static l()Z
    .locals 3

    sget-object v0, Lcn/jpush/android/e;->e:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x28

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/jpush/android/helpers/b;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static m()V
    .locals 4

    const/16 v3, 0x24

    sget-object v0, Lcn/jpush/android/e;->e:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    aget-object v1, v1, v3

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcn/jpush/android/helpers/b;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcn/jpush/android/e;->e:Landroid/content/Context;

    sget-object v2, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v3

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0}, Lcn/jpush/android/helpers/b;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static m(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcn/jpush/android/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static n()I
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x2c

    aget-object v0, v0, v1

    const/16 v1, 0x122

    invoke-static {v0, v1}, Lcn/jpush/android/a;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static n(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcn/jpush/android/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static o()V
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x2c

    aget-object v0, v0, v1

    const v1, 0x15180

    invoke-static {v0, v1}, Lcn/jpush/android/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public static o(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcn/jpush/android/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static p()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x21

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x20

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static q()I
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x3a

    aget-object v0, v0, v1

    const/16 v1, 0x1b58

    invoke-static {v0, v1}, Lcn/jpush/android/a;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static q(Ljava/lang/String;)V
    .locals 3

    sput-object p0, Lcn/jpush/android/e;->h:Ljava/lang/String;

    sget-object v0, Lcn/jpush/android/e;->e:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-static {v0, v1, p0}, Lcn/jpush/android/helpers/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static r()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/jpush/android/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static r(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcn/jpush/android/e;->e:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-static {v0, v1, p0}, Lcn/jpush/android/helpers/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static s()J
    .locals 4

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcn/jpush/android/a;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static t()J
    .locals 6

    const-wide/16 v4, 0x0

    sget-wide v0, Lcn/jpush/android/e;->g:J

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    sget-object v0, Lcn/jpush/android/e;->e:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v2, 0x1c

    aget-object v1, v1, v2

    invoke-static {v0, v1, v4, v5}, Lcn/jpush/android/helpers/b;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcn/jpush/android/e;->g:J

    :cond_0
    return-wide v0
.end method

.method public static u()Z
    .locals 6

    invoke-static {}, Lcn/jpush/android/a;->t()J

    move-result-wide v0

    invoke-static {}, Lcn/jpush/android/a;->x()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    invoke-static {v2}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static v()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/a;->a(Ljava/lang/Long;)V

    const-string v0, ""

    invoke-static {v0}, Lcn/jpush/android/a;->q(Ljava/lang/String;)V

    const-string v0, ""

    invoke-static {v0}, Lcn/jpush/android/a;->r(Ljava/lang/String;)V

    const-string v0, ""

    invoke-static {v0}, Lcn/jpush/android/a;->g(Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcn/jpush/android/a;->p(Ljava/lang/String;)V

    return-void
.end method

.method public static w()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/jpush/android/e;->h:Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcn/jpush/android/e;->e:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/jpush/android/helpers/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/e;->h:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static x()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/jpush/android/e;->e:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/jpush/android/helpers/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static y()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/jpush/android/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static z()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/jpush/android/e;->e:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/jpush/android/helpers/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
