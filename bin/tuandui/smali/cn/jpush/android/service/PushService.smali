.class public Lcn/jpush/android/service/PushService;
.super Landroid/app/Service;


# static fields
.field public static a:J

.field public static b:Ljava/lang/String;

.field public static c:Z

.field public static d:Z

.field private static final z:[Ljava/lang/String;


# instance fields
.field private e:Z

.field private f:Lcn/jpush/android/service/n;

.field private g:Ljava/util/concurrent/ExecutorService;

.field private h:Lcn/jpush/android/service/k;

.field private i:Lcn/jpush/android/service/m;

.field private j:Z

.field private k:I

.field private l:I

.field private m:J

.field private n:Lcn/jpush/android/c;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x48

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "*?UY\u0016\u0005|\u000c\u0010\u0016\u0005\u0010NW\u001e\u000e8h^YF|B_\u0017\u00059BD\u0010\u00042\u001b"

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

    const/16 v9, 0x79

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

    const-string v1, ";)RX*\u000e.WY\u001a\u000e"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "*?UY\u0016\u0005|\u000c\u0010\u0016\u0005\u0018HC\u001a\u00042OU\u001a\u001f9E\u0010TK?N^\u0017\u000e?UY\u0016\u0005f"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "\"/\u0001S\u0016\u00052DS\r\u00022F\u0010\u0017\u0004+\u000f\u0010>\u0002*D\u0010\u000c\u001b|U_Y\u00199RD\u0018\u0019(\u000f"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "*?UY\u0016\u0005|\u000c\u0010\u000b\u000e/UQ\u000b\u001f\u0008IU\u0017#9@B\r\t9@D"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "*0SU\u0018\u000f%\u0001\\\u0016\u000c;DTY\u00022\u000f\u0010>\u0002*D\u0010\u000c\u001b|U_Y\u00199RD\u0018\u0019(\u000f"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "*?UY\u0016\u0005|\u000c\u0010\u0016\u0005\u0014DQ\u000b\u001f>DQ\r8)BS\u001c\u000e8\u0001\u001dY\u00083O^\u001c\u0008(H_\u0017Q"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "\u00053UY\u001f\u0002?@D\u0010\u00042~R\u000c\u00028MU\u000b"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "\u00082\u000fZ\t\u001e/I\u001e\u0018\u00058S_\u0010\u000frH^\r\u000e2U\u001e4>\u0010uy&;\u000ens<8\u000f"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "\u0019(B"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "\u00082\u000fZ\t\u001e/I\u001e\u0018\u00058S_\u0010\u000frH^\r\u000e2U\u001e+.\u001bhc-.\u000e"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "\u00082\u000fZ\t\u001e/I\u001e\u0018\u00058S_\u0010\u000frH^\r\u000e2U\u001e,8\u0019so>9\u0013t~="

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "\u00073BQ\u001542ND\u0010\r5BQ\r\u00023O"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "\u00042rD\u0018\u0019(b_\u0014\u0006=OTYF|H^\r\u000e2U\n"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "\u00082\u000fZ\t\u001e/I\u001e\u0018\u00058S_\u0010\u000frH^\r\u000e2U\u001e+.\u000fu\u007f+.\u000ctc1"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "\u0019(Bo\u001d\u000e0@I"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "\u00199Q_\u000b\u001f"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "\n0HQ\n"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, "\u00042rD\u0018\u0019(b_\u0014\u0006=OTYF|O_\rK*@\\\u0010\u000f|k`\u000c\u00184\u0001B\u000c\u00052H^\u001eKq\u0001c\u0011\u0004)MTY\u00053U\u0010\u001b\u000e|IU\u000b\u000er"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_11
    aput-object v1, v3, v2

    const/16 v2, 0x13

    const-string v1, "G|Q[\u001eQ"

    const/16 v0, 0x12

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_12
    aput-object v1, v3, v2

    const/16 v2, 0x14

    const-string v1, "\u0018(N@&\u001f4SU\u0018\u000f"

    const/16 v0, 0x13

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_13
    aput-object v1, v3, v2

    const/16 v2, 0x15

    const-string v1, "\u00082\u000fZ\t\u001e/I\u001e\u0018\u00058S_\u0010\u000frH^\r\u000e2U\u001e+.\u000cnb-"

    const/16 v0, 0x14

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_14
    aput-object v1, v3, v2

    const/16 v2, 0x16

    const-string v1, "G|B_\u0017\u00059BD\u0010\u00042\u001b"

    const/16 v0, 0x15

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_15
    aput-object v1, v3, v2

    const/16 v2, 0x17

    const-string v1, "89SF\u0010\u00089\u0001R\u000c\u00058MUYF|"

    const/16 v0, 0x16

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_16
    aput-object v1, v3, v2

    const/16 v2, 0x18

    const-string v1, "\u001b)RX&\u0018(N@\t\u000e8"

    const/16 v0, 0x17

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_17
    aput-object v1, v3, v2

    const/16 v2, 0x19

    const-string v1, "\u00083O^\u001c\u0008(H_\u0017F/UQ\r\u000e"

    const/16 v0, 0x18

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_18
    aput-object v1, v3, v2

    const/16 v2, 0x1a

    const-string v1, "\u00189Po\u0010\u000f"

    const/16 v0, 0x19

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_19
    aput-object v1, v3, v2

    const/16 v2, 0x1b

    const-string v1, "\u00073BQ\u001542ND\u0010\r5BQ\r\u00023Oo\u0010\u000f"

    const/16 v0, 0x1a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1a
    aput-object v1, v3, v2

    const/16 v2, 0x1c

    const-string v1, "\u001e/DB&\u000c.NE\u0017\u000f"

    const/16 v0, 0x1b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1b
    aput-object v1, v3, v2

    const/16 v2, 0x1d

    const-string v1, "\u00082\u000fZ\t\u001e/I\u001e\u0018\u00058S_\u0010\u000frH^\r\u000e2U\u001e:$\u0012ou:?\u0015wy-2\u0003bx8%\u001bd"

    const/16 v0, 0x1c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1c
    aput-object v1, v3, v2

    const/16 v2, 0x1e

    const-string v1, "\u00053UY\u001f\u0002?@D\u0010\u00042~]\u0018\u00132T]"

    const/16 v0, 0x1d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1d
    aput-object v1, v3, v2

    const/16 v2, 0x1f

    const-string v1, "\n?UY\u0016\u0005|UI\t\u000ef"

    const/16 v0, 0x1e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1e
    aput-object v1, v3, v2

    const/16 v2, 0x20

    const-string v1, "\u00082\u000fZ\t\u001e/I\u001e\u0018\u00058S_\u0010\u000frH^\r\u000e2U\u001e8\'\u0015`c&?\u001dfc"

    const/16 v0, 0x1f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1f
    aput-object v1, v3, v2

    const/16 v2, 0x21

    const-string v1, "\n,Q"

    const/16 v0, 0x20

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_20
    aput-object v1, v3, v2

    const/16 v2, 0x22

    const-string v1, "\u00021~S\u0014\u000f"

    const/16 v0, 0x21

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_21
    aput-object v1, v3, v2

    const/16 v2, 0x23

    const-string v1, "\u00053UY\u001f\u0002?@D\u0010\u00042~R\u000c\u00028MU\u000b45E"

    const/16 v0, 0x22

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_22
    aput-object v1, v3, v2

    const/16 v2, 0x24

    const-string v1, "\u001f=FQ\u0015\u0002=R\u0010\u001c\u0013?D@\r\u00023O\n"

    const/16 v0, 0x23

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_23
    aput-object v1, v3, v2

    const/16 v2, 0x25

    const-string v1, "\u00082\u000fZ\t\u001e/I\u001e\u0018\u00058S_\u0010\u000frH^\r\u000e2U\u001e0%\u0015u"

    const/16 v0, 0x24

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_24
    aput-object v1, v3, v2

    const/16 v2, 0x26

    const-string v1, "\u00021~B\u001c\u001a)DC\r46R_\u0017"

    const/16 v0, 0x25

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_25
    aput-object v1, v3, v2

    const/16 v2, 0x27

    const-string v1, "\u00082\u000fZ\t\u001e/I\u001e\u0018\u00058S_\u0010\u000frH^\r\u000e2U\u001e*?\u0013q`,8\u0014"

    const/16 v0, 0x26

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_26
    aput-object v1, v3, v2

    const/16 v2, 0x28

    const-string v1, "\u000e2@R\u0015\u000e\u0003QE\n\u0003\u0003UY\u0014\u000e"

    const/16 v0, 0x27

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_27
    aput-object v1, v3, v2

    const/16 v2, 0x29

    const-string v1, "\u0006)MD\u00104(X@\u001c"

    const/16 v0, 0x28

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_28
    aput-object v1, v3, v2

    const/16 v2, 0x2a

    const-string v1, ">2DH\t\u000e?UU\u001dKq\u0001Y\u0015\u00079FQ\u0015K\u0015l\u0010\u000b\u000e-TU\n\u001fr"

    const/16 v0, 0x29

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_29
    aput-object v1, v3, v2

    const/16 v2, 0x2b

    const-string v1, "\u00082\u000fZ\t\u001e/I\u001e\u0018\u00058S_\u0010\u000frH^\r\u000e2U\u001e+?\u001f"

    const/16 v0, 0x2a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2a
    aput-object v1, v3, v2

    const/16 v2, 0x2c

    const-string v1, ">2IQ\u0017\u000f0DTY\u00189SF\u0010\u00089\u0001Q\u001a\u001f5N^YF|"

    const/16 v0, 0x2b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2b
    aput-object v1, v3, v2

    const/16 v2, 0x2d

    const-string v1, "\u00082\u000fZ\t\u001e/I\u001e\u0010\u0006r@^\u001d\u00193HTW\n?UY\u0016\u0005rh}&9\u0019pe<8\u0008"

    const/16 v0, 0x2c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2c
    aput-object v1, v3, v2

    const/16 v2, 0x2e

    const-string v1, "\u00185MU\u0017\u00089~@\u000c\u00184~D\u0010\u00069"

    const/16 v0, 0x2d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2d
    aput-object v1, v3, v2

    const/16 v2, 0x2f

    const-string v1, "*?UY\u0016\u0005|\u000c\u0010\u0011\n2E\\\u001c89SF\u0010\u00089`S\r\u00023O\u0010TK=BD\u0010\u00042\u001b"

    const/16 v0, 0x2e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2e
    aput-object v1, v3, v2

    const/16 v2, 0x30

    const-string v1, "\u001f=FC"

    const/16 v0, 0x2f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2f
    aput-object v1, v3, v2

    const/16 v2, 0x31

    const-string v1, "\u0003=OT\u0015\u000e\u000fU_\t;)RXY\n,Q\u001cY\u00189OT\u001c\u0019|DB\u000b\u0004.\u001b\u0010\\\u0018|\u0004C"

    const/16 v0, 0x30

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_30
    aput-object v1, v3, v2

    const/16 v2, 0x32

    const-string v1, "*?UY\u0016\u0005f\u0001X\u0018\u00058MU*\u001f3Q`\u000c\u00184\u0001\u001dY\n,Q{\u001c\u0012f"

    const/16 v0, 0x31

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_31
    aput-object v1, v3, v2

    const/16 v2, 0x33

    const-string v1, "*?UY\u0016\u0005|\u000c\u0010\u000b\u000e/UQ\u000b\u001f\u0012DD\u000e\u0004.JY\u0017\u000c\u001fMY\u001c\u0005(\r\u0010\t\u00028\u001b"

    const/16 v0, 0x32

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_32
    aput-object v1, v3, v2

    const/16 v2, 0x34

    const-string v1, "%3\u0001^\u001c\u001f+NB\u0012K?N^\u0017\u000e?UY\u0016\u0005r\u0001w\u0010\u001d9\u0001E\tK(N\u0010\n\u001f=SDY\u00083O^\u001c\u0008(H_\u0017K(IB\u001c\n8\u000f"

    const/16 v0, 0x33

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_33
    aput-object v1, v3, v2

    const/16 v2, 0x35

    const-string v1, "G|SU\n\u001b\u001fNT\u001cQ"

    const/16 v0, 0x34

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_34
    aput-object v1, v3, v2

    const/16 v2, 0x36

    const-string v1, "\u00042m_\u001e\u00022gQ\u0010\u00079E\u0010TK?N^\u0017\u000e?UY\u0016\u0005f"

    const/16 v0, 0x35

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_35
    aput-object v1, v3, v2

    const/16 v2, 0x37

    const-string v1, "\u00042eU\n\u001f.NIYF|QB\u0016\u00089RC0\u000ff"

    const/16 v0, 0x36

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_36
    aput-object v1, v3, v2

    const/16 v2, 0x38

    const-string v1, "*?UY\u0016\u0005|\u000c\u0010\u0016\u0005\u0014DQ\u000b\u001f>DQ\r?5LU\u0016\u001e(\u0001\u001dY\u001f5LU\u0016\u001e(uY\u0014\u000e/\u001b"

    const/16 v0, 0x37

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_37
    aput-object v1, v3, v2

    const/16 v2, 0x39

    const-string v1, "Va\u001c\rDVa\u001c\rDVa\u001c\rDVa\u001c\rDVa\u001c\rDVa\u001c\rDVa\u001c\rDVa\u001c\rDVa\u001c\rDVa\u001c\rDVa\u001c\rDVa\u001c\rD"

    const/16 v0, 0x38

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_38
    aput-object v1, v3, v2

    const/16 v2, 0x3a

    const-string v1, "\"/\u0001S\u0016\u00052DS\r\u00022F\u0010\u0017\u0004+\u000f\u0010>\u0002*D\u0010\u000c\u001b|U_Y\u00199UB\u0000E"

    const/16 v0, 0x39

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_39
    aput-object v1, v3, v2

    const/16 v2, 0x3b

    const-string v1, "*0SU\u0018\u000f%\u0001\\\u0016\u000c;DTY\u00022\u000f\u0010>\u0002*D\u0010\u000c\u001b|U_Y\u00199UB\u0000E"

    const/16 v0, 0x3a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3a
    aput-object v1, v3, v2

    const/16 v2, 0x3c

    const-string v1, "G|G\\\u0018\u000cf"

    const/16 v0, 0x3b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3b
    aput-object v1, v3, v2

    const/16 v2, 0x3d

    const-string v1, "\u00039@B\r\t9@DYF|KE\u0010\u000ff"

    const/16 v0, 0x3c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3c
    aput-object v1, v3, v2

    const/16 v2, 0x3e

    const-string v1, "89OTY\u00039@B\rK>DQ\r"

    const/16 v0, 0x3d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3d
    aput-object v1, v3, v2

    const/16 v2, 0x3f

    const-string v1, "\u0005)M\\"

    const/16 v0, 0x3e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3e
    aput-object v1, v3, v2

    const/16 v2, 0x40

    const-string v1, "<9\u0001V\u0016\u001e2E\u0010\r\u00039\u0001Q\t\u001b\u0017DIY\u0002/\u0001S\u0011\n2FU\u001dE|vY\u0015\u0007|SUT\u00199FY\n\u001f9S\u001e"

    const/16 v0, 0x3f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3f
    aput-object v1, v3, v2

    const/16 v2, 0x41

    const-string v1, "89SF\u0010\u00089\u0001]\u0018\u00022\u0001D\u0011\u00199@TYF|UX\u000b\u000e=Ey\u001dQ"

    const/16 v0, 0x40

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_40
    aput-object v1, v3, v2

    const/16 v2, 0x42

    const-string v1, "\n0@B\u0014"

    const/16 v0, 0x41

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_41
    aput-object v1, v3, v2

    const/16 v2, 0x43

    const-string v1, "89SF\u0010\u00089iU\u0015\u001b9S"

    const/16 v0, 0x42

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_42
    aput-object v1, v3, v2

    const/16 v2, 0x44

    const-string v1, "!\u000cTC\u0011K.T^\u0017\u00022F\u0010\u001a\u00039B[\u001c\u000f|GQ\u0010\u00079E\u0011"

    const/16 v0, 0x43

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_43
    aput-object v1, v3, v2

    const/16 v2, 0x45

    const-string v1, "*?UY\u0016\u0005f\u0001Y\u0017\u0002(\u0001`\u000c\u00184rU\u000b\u001d5BU"

    const/16 v0, 0x44

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_44
    aput-object v1, v3, v2

    const/16 v2, 0x46

    const-string v1, "\u00042eY\n\u00083O^\u001c\u0008(DTY\n2E\u0010\u000b\u000e(SIY\u00199RD\u0018\u0019(\u0001S\u0016\u00052\u0001\u001dY\u000f9MQ\u0000Q"

    const/16 v0, 0x45

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_45
    aput-object v1, v3, v2

    const/16 v2, 0x47

    const-string v1, "*?UY\u0016\u0005|\u000c\u0010\u000b\u000e(SI:\u00042OU\u001a\u001f|\u000c\u0010\u001d\u0002/B_\u0017\u00059BD\u001c\u000f\u0008H]\u001c\u0018f"

    const/16 v0, 0x46

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_46
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const-string v0, "\n0M"

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

    const/16 v5, 0x79

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

    :pswitch_47
    const/16 v9, 0x6b

    goto/16 :goto_2

    :pswitch_48
    const/16 v9, 0x5c

    goto/16 :goto_2

    :pswitch_49
    const/16 v9, 0x21

    goto/16 :goto_2

    :pswitch_4a
    const/16 v9, 0x30

    goto/16 :goto_2

    :pswitch_4b
    const/16 v5, 0x6b

    goto :goto_4

    :pswitch_4c
    const/16 v5, 0x5c

    goto :goto_4

    :pswitch_4d
    const/16 v5, 0x21

    goto :goto_4

    :pswitch_4e
    const/16 v5, 0x30

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

    sput-object v0, Lcn/jpush/android/service/PushService;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/service/PushService;->c:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/service/PushService;->d:Z

    return-void

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

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jpush/android/service/PushService;->e:Z

    iput-boolean v1, p0, Lcn/jpush/android/service/PushService;->j:Z

    iput v1, p0, Lcn/jpush/android/service/PushService;->k:I

    iput v1, p0, Lcn/jpush/android/service/PushService;->l:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/jpush/android/service/PushService;->m:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->n:Lcn/jpush/android/c;

    return-void
.end method

.method static synthetic a(Lcn/jpush/android/service/PushService;)Lcn/jpush/android/service/n;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->f:Lcn/jpush/android/service/n;

    return-object v0
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    sget-object v1, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    sget-object v1, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcn/jpush/android/service/PushService;->j:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->d()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    sget-object v1, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Lcn/jpush/android/service/m;->removeMessages(I)V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Lcn/jpush/android/service/m;->removeMessages(I)V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->b()V

    goto :goto_0
.end method

.method private a(J)V
    .locals 3

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/jpush/android/service/l;

    invoke-direct {v1, p0, p1, p2}, Lcn/jpush/android/service/l;-><init>(Lcn/jpush/android/service/PushService;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcn/jpush/android/service/PushService;J)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcn/jpush/android/service/PushService;->j:Z

    iput v3, p0, Lcn/jpush/android/service/PushService;->k:I

    iput v3, p0, Lcn/jpush/android/service/PushService;->l:I

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/a;->a:Lcn/jpush/android/service/a;

    invoke-static {v0, v1}, Lcn/jpush/android/helpers/ConnectingHelper;->sendConnectionChanged(Landroid/content/Context;Lcn/jpush/android/service/a;)V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    const/16 v1, 0x3ed

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lcn/jpush/android/service/m;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->f:Lcn/jpush/android/service/n;

    invoke-virtual {v0}, Lcn/jpush/android/service/n;->a()V

    return-void
.end method

.method static synthetic a(Lcn/jpush/android/service/PushService;JI)V
    .locals 5

    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v3, 0x36

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v3, 0x35

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/jpush/android/service/PushService;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-static {p1}, Lcn/jpush/android/service/PushService;->a(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method static synthetic a(Lcn/jpush/android/service/PushService;Z)V
    .locals 9

    const/16 v8, 0x3fe

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/jpush/android/service/PushService;->m:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    :cond_0
    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v2, 0x3e

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Lcn/jpush/android/service/m;->removeMessages(I)V

    sget-object v0, Lcn/jpush/android/service/k;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcn/jpush/android/service/PushService;->j:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcn/jpush/android/a;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Lcn/jpush/android/a;->i()I

    move-result v4

    invoke-static {}, Lcn/jpush/android/a;->t()J

    move-result-wide v5

    invoke-static {}, Lcn/jpush/android/helpers/ConnectingHelper;->getIMLoginFlag()S

    move-result v7

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v3, 0x3d

    aget-object v1, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v3, 0x3c

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    sget-object v0, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static/range {v0 .. v7}, Lcn/jpush/android/service/PushProtocol;->HbJPush(JJIJS)I

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    invoke-virtual {v0, v8}, Lcn/jpush/android/service/m;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v8, v2, v3}, Lcn/jpush/android/service/m;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x3ed

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v2, 0x32

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    invoke-static {p1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v1, 0x31

    aget-object v0, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/z;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    invoke-virtual {v0, v3}, Lcn/jpush/android/service/m;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    invoke-virtual {v0, v3}, Lcn/jpush/android/service/m;->removeMessages(I)V

    :cond_1
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/a;->b:Lcn/jpush/android/service/a;

    invoke-static {v0, v1}, Lcn/jpush/android/helpers/ConnectingHelper;->sendConnectionChanged(Landroid/content/Context;Lcn/jpush/android/service/a;)V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->h:Lcn/jpush/android/service/k;

    if-nez v0, :cond_2

    invoke-static {}, Lcn/jpush/android/util/z;->d()V

    :goto_0
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->f:Lcn/jpush/android/service/n;

    invoke-virtual {v0}, Lcn/jpush/android/service/n;->b()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->stopSelf()V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->h:Lcn/jpush/android/service/k;

    invoke-virtual {v0}, Lcn/jpush/android/service/k;->a()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    invoke-virtual {v0, v3}, Lcn/jpush/android/service/m;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    invoke-virtual {v0, v3}, Lcn/jpush/android/service/m;->removeMessages(I)V

    :cond_4
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/a;->b:Lcn/jpush/android/service/a;

    invoke-static {v0, v1}, Lcn/jpush/android/helpers/ConnectingHelper;->sendConnectionChanged(Landroid/content/Context;Lcn/jpush/android/service/a;)V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->h:Lcn/jpush/android/service/k;

    if-nez v0, :cond_5

    invoke-static {}, Lcn/jpush/android/util/z;->d()V

    :goto_2
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->f:Lcn/jpush/android/service/n;

    invoke-virtual {v0}, Lcn/jpush/android/service/n;->b()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->stopSelf()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->h:Lcn/jpush/android/service/k;

    invoke-virtual {v0}, Lcn/jpush/android/service/k;->a()V

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    invoke-virtual {v0, v3}, Lcn/jpush/android/service/m;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    invoke-virtual {v0, v3}, Lcn/jpush/android/service/m;->removeMessages(I)V

    :cond_6
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/a;->b:Lcn/jpush/android/service/a;

    invoke-static {v0, v1}, Lcn/jpush/android/helpers/ConnectingHelper;->sendConnectionChanged(Landroid/content/Context;Lcn/jpush/android/service/a;)V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->h:Lcn/jpush/android/service/k;

    if-nez v0, :cond_7

    invoke-static {}, Lcn/jpush/android/util/z;->d()V

    :goto_3
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->f:Lcn/jpush/android/service/n;

    invoke-virtual {v0}, Lcn/jpush/android/service/n;->b()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->stopSelf()V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->h:Lcn/jpush/android/service/k;

    invoke-virtual {v0}, Lcn/jpush/android/service/k;->a()V

    goto :goto_3

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    invoke-virtual {v1, v3}, Lcn/jpush/android/service/m;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    invoke-virtual {v1, v3}, Lcn/jpush/android/service/m;->removeMessages(I)V

    :cond_8
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/service/a;->b:Lcn/jpush/android/service/a;

    invoke-static {v1, v2}, Lcn/jpush/android/helpers/ConnectingHelper;->sendConnectionChanged(Landroid/content/Context;Lcn/jpush/android/service/a;)V

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->h:Lcn/jpush/android/service/k;

    if-nez v1, :cond_9

    invoke-static {}, Lcn/jpush/android/util/z;->d()V

    :goto_4
    iget-object v1, p0, Lcn/jpush/android/service/PushService;->f:Lcn/jpush/android/service/n;

    invoke-virtual {v1}, Lcn/jpush/android/service/n;->b()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->stopSelf()V

    throw v0

    :cond_9
    iget-object v1, p0, Lcn/jpush/android/service/PushService;->h:Lcn/jpush/android/service/k;

    invoke-virtual {v1}, Lcn/jpush/android/service/k;->a()V

    goto :goto_4
.end method

.method private static a(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const-wide/16 v0, 0x64

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const-wide/16 v0, 0x64

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/jpush/android/util/z;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1
.end method

.method private declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v3, 0x33

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v2, 0x34

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->g:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->g:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Lcn/jpush/android/service/PushService;->a(Ljava/util/concurrent/ExecutorService;)V

    :cond_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcn/jpush/android/service/k;

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcn/jpush/android/service/k;-><init>(Landroid/content/Context;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->h:Lcn/jpush/android/service/k;

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->g:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->h:Lcn/jpush/android/service/k;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcn/jpush/android/service/PushService;)V
    .locals 0

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->a()V

    return-void
.end method

.method static synthetic b(Lcn/jpush/android/service/PushService;J)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    aget-object v2, v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/jpush/android/a;->c(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    sget-object v2, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->f:Lcn/jpush/android/service/n;

    invoke-virtual {v0}, Lcn/jpush/android/service/n;->b()V

    iput-boolean v1, p0, Lcn/jpush/android/service/PushService;->j:Z

    iput v1, p0, Lcn/jpush/android/service/PushService;->l:I

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/a;->b:Lcn/jpush/android/service/a;

    invoke-static {v0, v1}, Lcn/jpush/android/helpers/ConnectingHelper;->sendConnectionChanged(Landroid/content/Context;Lcn/jpush/android/service/a;)V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->g:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Lcn/jpush/android/service/PushService;->a(Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->c()V

    :cond_2
    iget v0, p0, Lcn/jpush/android/service/PushService;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jpush/android/service/PushService;->k:I

    goto :goto_1
.end method

.method static synthetic c(Lcn/jpush/android/service/PushService;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->g:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private c()V
    .locals 8

    const/16 v7, 0x3f3

    const/4 v6, 0x1

    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    aget-object v0, v0, v6

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v3, 0x47

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/jpush/android/service/PushService;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/a;->f(Landroid/content/Context;)I

    move-result v1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget v0, p0, Lcn/jpush/android/service/PushService;->k:I

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    invoke-static {}, Lcn/jpush/android/a;->n()I

    move-result v2

    mul-int/lit16 v3, v2, 0x3e8

    div-int/lit8 v3, v3, 0x2

    if-le v0, v3, :cond_0

    mul-int/lit16 v0, v2, 0x3e8

    div-int/lit8 v0, v0, 0x2

    :cond_0
    iget v2, p0, Lcn/jpush/android/service/PushService;->k:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    if-ne v1, v6, :cond_3

    :cond_1
    iget-object v1, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    invoke-virtual {v1, v7}, Lcn/jpush/android/service/m;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    aget-object v1, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v4, 0x46

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    int-to-long v2, v0

    invoke-virtual {v1, v7, v2, v3}, Lcn/jpush/android/service/m;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    goto :goto_0
.end method

.method static synthetic c(Lcn/jpush/android/service/PushService;J)V
    .locals 7

    const/16 v5, 0x3fe

    const/4 v4, 0x1

    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    invoke-virtual {v0, v5}, Lcn/jpush/android/service/m;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    invoke-virtual {v0, v5}, Lcn/jpush/android/service/m;->removeMessages(I)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/android/service/PushService;->m:J

    const/4 v0, 0x0

    iput v0, p0, Lcn/jpush/android/service/PushService;->l:I

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/service/h;->a(Landroid/content/Context;)Lcn/jpush/android/service/h;

    move-result-object v0

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jpush/android/service/h;->d(Landroid/content/Context;)V

    invoke-static {}, Lcn/jpush/android/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/l;->b(Landroid/content/Context;)V

    :cond_3
    invoke-static {}, Lcn/jpush/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/r;->a(Landroid/content/Context;)V

    :cond_4
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/a;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcn/jpush/android/a;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->b:Ljava/lang/String;

    sget-boolean v2, Lcn/jpush/android/service/PushService;->d:Z

    sget-boolean v3, Lcn/jpush/android/service/PushService;->c:Z

    invoke-static {v0, v4, v1, v2, v3}, Lcn/jpush/android/helpers/g;->a(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    :cond_5
    sget-boolean v0, Lcn/jpush/android/e;->m:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xe10

    invoke-direct {p0, v0, v1}, Lcn/jpush/android/service/PushService;->a(J)V

    goto :goto_0
.end method

.method static synthetic d(Lcn/jpush/android/service/PushService;)V
    .locals 6

    const/16 v5, 0x3ed

    const/4 v4, 0x1

    iget v0, p0, Lcn/jpush/android/service/PushService;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jpush/android/service/PushService;->l:I

    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v3, 0x38

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/jpush/android/service/PushService;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    sget-object v1, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v2, 0x39

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    sget-object v1, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v2, 0x3a

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v5, v2, v3}, Lcn/jpush/android/service/m;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcn/jpush/android/service/PushService;->j:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->d()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    sget-object v1, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v2, 0x3b

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v5, v2, v3}, Lcn/jpush/android/service/m;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->h:Lcn/jpush/android/service/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->h:Lcn/jpush/android/service/k;

    invoke-virtual {v0}, Lcn/jpush/android/service/k;->a()V

    :cond_2
    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->c()V

    goto :goto_0
.end method

.method private d()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcn/jpush/android/service/PushService;->l:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Z
    .locals 4

    sget-object v0, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/jpush/android/service/PushService;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->n:Lcn/jpush/android/c;

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcn/jpush/android/util/z;->c()V

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v3, 0x41

    aget-object v2, v2, v3

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    sput-boolean v4, Lcn/jpush/android/e;->l:Z

    new-instance v0, Lcn/jpush/android/helpers/c;

    invoke-direct {v0, p0}, Lcn/jpush/android/helpers/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->n:Lcn/jpush/android/c;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    sput-wide v2, Lcn/jpush/android/service/PushService;->a:J

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcn/jpush/android/service/ServiceInterface;->b(Landroid/content/Context;Z)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcn/jpush/android/service/m;

    invoke-direct {v0, p0}, Lcn/jpush/android/service/m;-><init>(Lcn/jpush/android/service/PushService;)V

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v3, 0x45

    aget-object v2, v2, v3

    invoke-static {v0, v2}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/a;->o(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/jpush/android/service/PushService;->e:Z

    iget-boolean v0, p0, Lcn/jpush/android/service/PushService;->e:Z

    if-nez v0, :cond_2

    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v3, 0x44

    aget-object v2, v2, v3

    invoke-static {v0, v2}, Lcn/jpush/android/util/z;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    invoke-static {}, Lcn/jpush/android/a;->n()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    new-instance v0, Landroid/content/Intent;

    const-class v6, Lcn/jpush/android/service/AlarmReceiver;

    invoke-direct {v0, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v7, 0x42

    aget-object v0, v0, v7

    invoke-virtual {p0, v0}, Lcn/jpush/android/service/PushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    sget-boolean v0, Lcn/jpush/android/e;->m:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcn/jpush/android/service/PushService;->a(J)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Lcn/jpush/android/service/n;

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    invoke-direct {v0, v2, v3}, Lcn/jpush/android/service/n;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->f:Lcn/jpush/android/service/n;

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcn/jpush/android/a;->y()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v4, 0x3f

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/a;->s(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    sget-object v3, Lcn/jpush/android/e;->f:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v3, 0x43

    aget-object v2, v2, v3

    sget-object v3, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v4, 0x40

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jpush/android/a;->v()V

    invoke-static {v0}, Lcn/jpush/android/util/ac;->a(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v2, 0x37

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/e;->l:Z

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/jpush/android/service/m;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/a;->p(Landroid/content/Context;)V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->f:Lcn/jpush/android/service/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->f:Lcn/jpush/android/service/n;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_4

    invoke-virtual {v0}, Lcn/jpush/android/service/n;->quitSafely()Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->h:Lcn/jpush/android/service/k;

    if-eqz v0, :cond_2

    sget-object v0, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->h:Lcn/jpush/android/service/k;

    invoke-virtual {v0}, Lcn/jpush/android/service/k;->a()V

    :cond_2
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->g:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->g:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Lcn/jpush/android/service/PushService;->a(Ljava/util/concurrent/ExecutorService;)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v0}, Lcn/jpush/android/service/n;->quit()Z

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 12

    const/16 v11, 0x3ec

    const/16 v10, 0x3ed

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    aget-object v0, v0, v7

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v3, 0xd

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v3, 0x13

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v3, 0x16

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcn/jpush/android/service/PushService;->e:Z

    if-nez v0, :cond_1

    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    aget-object v0, v0, v7

    sget-object v1, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    const/16 v1, 0x3eb

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcn/jpush/android/service/m;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return v7

    :cond_1
    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v4, 0x17

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    :cond_3
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    aget-object v2, v2, v7

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v5, 0x2f

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v3, 0x2d

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v2, 0x26

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v3, 0x22

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v0, :cond_4

    if-nez v1, :cond_5

    :cond_4
    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    aget-object v0, v0, v7

    sget-object v1, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v2, 0x2a

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {v0, v1}, Lcn/jpush/b/a/b/q;->a(Ljava/lang/String;I)Lcn/jpush/b/a/b/q;

    move-result-object v0

    sget-object v2, Lcn/jpush/android/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcn/jpush/b/a/b/q;->a(Ljava/lang/String;)Lcn/jpush/b/a/a/b;

    move-result-object v2

    const v0, 0xea60

    const/4 v3, 0x3

    if-eq v1, v3, :cond_6

    const/4 v3, 0x4

    if-ne v1, v3, :cond_7

    :cond_6
    const v0, 0x493e0

    :cond_7
    if-ne v1, v7, :cond_8

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/jpush/android/service/ServiceInterface;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lcn/jpush/android/a;->a(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcn/jpush/android/a;->b(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->b()V

    :cond_8
    :goto_1
    iget-object v1, p0, Lcn/jpush/android/service/PushService;->f:Lcn/jpush/android/service/n;

    invoke-virtual {v1, v2, v0}, Lcn/jpush/android/service/n;->a(Lcn/jpush/b/a/a/g;I)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcn/jpush/android/a;->a(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_a
    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v3, 0x2b

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {p0}, Lcn/jpush/android/util/a;->k(Landroid/content/Context;)V

    sget-object v0, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v2, v8

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->a()V

    :cond_b
    :goto_2
    invoke-static {}, Lcn/jpush/android/util/a;->b()V

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    if-nez v0, :cond_d

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    invoke-virtual {v0, v10}, Lcn/jpush/android/service/m;->removeMessages(I)V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    invoke-virtual {v0, v11}, Lcn/jpush/android/service/m;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    invoke-virtual {v0, v10}, Lcn/jpush/android/service/m;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_d
    iget-object v1, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    invoke-virtual {v1, v10}, Lcn/jpush/android/service/m;->removeMessages(I)V

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    invoke-virtual {v1, v11}, Lcn/jpush/android/service/m;->removeMessages(I)V

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    int-to-long v2, v0

    invoke-virtual {v1, v11, v2, v3}, Lcn/jpush/android/service/m;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    :cond_e
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    invoke-virtual {v0, v10}, Lcn/jpush/android/service/m;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_f
    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v3, 0x1d

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {p0}, Lcn/jpush/android/util/a;->k(Landroid/content/Context;)V

    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v2, 0x19

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    sget-object v1, Lcn/jpush/android/service/a;->a:Lcn/jpush/android/service/a;

    invoke-virtual {v1}, Lcn/jpush/android/service/a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    sget-object v0, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->a()V

    :goto_3
    invoke-static {}, Lcn/jpush/android/util/a;->b()V

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->i:Lcn/jpush/android/service/m;

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Lcn/jpush/android/service/m;->sendEmptyMessage(I)Z

    goto :goto_3

    :cond_11
    sget-object v1, Lcn/jpush/android/service/a;->b:Lcn/jpush/android/service/a;

    invoke-virtual {v1}, Lcn/jpush/android/service/a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_12
    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    goto :goto_3

    :cond_13
    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v3, 0x25

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcn/jpush/android/a;->b(Landroid/content/Context;I)V

    sget-object v0, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->b()V

    goto/16 :goto_0

    :cond_14
    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    goto/16 :goto_0

    :cond_15
    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v3, 0x27

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcn/jpush/android/a;->b(Landroid/content/Context;I)V

    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v2, 0x21

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/e;->f:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcn/jpush/android/service/PushService;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v3, 0x15

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_17
    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v2, 0x1c

    aget-object v0, v0, v2

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    goto/16 :goto_0

    :cond_18
    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v3, 0x20

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    sget-object v0, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v2, v8

    if-nez v0, :cond_19

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->b()V

    :cond_19
    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v2, 0x11

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v3, 0x30

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v4, 0x1a

    aget-object v3, v3, v4

    invoke-virtual {v1, v3, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    if-nez v0, :cond_1a

    if-eqz v2, :cond_0

    :cond_1a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz v0, :cond_1b

    :try_start_0
    sget-object v3, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v6, 0x11

    aget-object v3, v3, v6

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1b
    if-eqz v2, :cond_1c

    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v3, 0x30

    aget-object v0, v0, v3

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1c
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcn/jpush/b/a/a/l;

    sget-object v2, Lcn/jpush/android/e;->f:Ljava/lang/String;

    invoke-direct {v1, v4, v5, v2, v0}, Lcn/jpush/b/a/a/l;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->f:Lcn/jpush/android/service/n;

    const/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2}, Lcn/jpush/android/service/n;->a(Lcn/jpush/b/a/a/g;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v3, 0x24

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->d()V

    goto/16 :goto_0

    :cond_1d
    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcn/jpush/android/a;->b(Landroid/content/Context;I)V

    sget-object v0, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-nez v0, :cond_1e

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->b()V

    goto/16 :goto_0

    :cond_1e
    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    goto/16 :goto_0

    :cond_1f
    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v3, 0x14

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v2, 0x29

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v4, 0x1f

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v2, 0x23

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcn/jpush/android/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v2, 0x1e

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/jpush/android/a;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    :pswitch_2
    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v2, 0x28

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/jpush/android/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v2, 0x2e

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/jpush/android/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v2, 0x18

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/jpush/android/a;->a(Landroid/content/Context;Z)V

    goto/16 :goto_0

    :pswitch_5
    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/data/JPushLocalNotification;

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/jpush/android/service/h;->a(Landroid/content/Context;)Lcn/jpush/android/service/h;

    move-result-object v1

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcn/jpush/android/service/h;->a(Landroid/content/Context;Lcn/jpush/android/data/JPushLocalNotification;)Z

    goto/16 :goto_0

    :pswitch_6
    sget-object v0, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v2, 0x1b

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/jpush/android/service/h;->a(Landroid/content/Context;)Lcn/jpush/android/service/h;

    move-result-object v2

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcn/jpush/android/service/h;->a(Landroid/content/Context;J)Z

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/service/h;->a(Landroid/content/Context;)Lcn/jpush/android/service/h;

    move-result-object v0

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jpush/android/service/h;->b(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->z:[Ljava/lang/String;

    const/16 v3, 0x2c

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->d()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    invoke-static {}, Lcn/jpush/android/util/z;->e()V

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
