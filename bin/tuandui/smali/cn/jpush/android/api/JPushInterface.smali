.class public Lcn/jpush/android/api/JPushInterface;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_ACTIVITY_OPENDED:Ljava/lang/String;

.field public static final ACTION_CONNECTION_CHANGE:Ljava/lang/String;

.field public static final ACTION_MESSAGE_RECEIVED:Ljava/lang/String;

.field public static final ACTION_NOTIFICATION_OPENED:Ljava/lang/String;

.field public static final ACTION_NOTIFICATION_RECEIVED:Ljava/lang/String;

.field public static final ACTION_NOTIFICATION_RECEIVED_PROXY:Ljava/lang/String;

.field public static final ACTION_REGISTRATION_ID:Ljava/lang/String;

.field public static final ACTION_RESTOREPUSH:Ljava/lang/String;

.field public static final ACTION_RICHPUSH_CALLBACK:Ljava/lang/String;

.field public static final ACTION_STATUS:Ljava/lang/String;

.field public static final ACTION_STOPPUSH:Ljava/lang/String;

.field public static final EXTRA_ACTIVITY_PARAM:Ljava/lang/String;

.field public static final EXTRA_ALERT:Ljava/lang/String;

.field public static final EXTRA_APP_KEY:Ljava/lang/String;

.field public static final EXTRA_CONNECTION_CHANGE:Ljava/lang/String;

.field public static final EXTRA_CONTENT_TYPE:Ljava/lang/String;

.field public static final EXTRA_EXTRA:Ljava/lang/String;

.field public static final EXTRA_MESSAGE:Ljava/lang/String;

.field public static final EXTRA_MSG_ID:Ljava/lang/String;

.field public static final EXTRA_NOTIFICATION_DEVELOPER_ARG0:Ljava/lang/String;

.field public static final EXTRA_NOTIFICATION_ID:Ljava/lang/String;

.field public static final EXTRA_NOTIFICATION_TITLE:Ljava/lang/String;

.field public static final EXTRA_NOTI_TYPE:Ljava/lang/String;

.field public static final EXTRA_PUSH_ID:Ljava/lang/String;

.field public static final EXTRA_REGISTRATION_ID:Ljava/lang/String;

.field public static final EXTRA_RICHPUSH_FILE_PATH:Ljava/lang/String;

.field public static final EXTRA_RICHPUSH_FILE_TYPE:Ljava/lang/String;

.field public static final EXTRA_RICHPUSH_HTML_PATH:Ljava/lang/String;

.field public static final EXTRA_RICHPUSH_HTML_RES:Ljava/lang/String;

.field public static final EXTRA_STATUS:Ljava/lang/String;

.field public static final EXTRA_TITLE:Ljava/lang/String;

.field private static final a:Ljava/lang/Integer;

.field private static b:Lcn/jpush/android/api/e;

.field private static c:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x41

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "wA0Cma\\v\u0007|zKlFtp\u0001wGiqAj\u0007PQ|MhZQpLl^QfHlY"

    const/16 v0, 0x40

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

    const/16 v9, 0x1d

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

    :pswitch_0
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->ACTION_MESSAGE_RECEIVED:Ljava/lang/String;

    const-string v1, "wA0Cma\\v\u0007|zKlFtp\u0001SzZKfZ"

    const/16 v0, 0x41

    goto :goto_0

    :pswitch_1
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_MSG_ID:Ljava/lang/String;

    const-string v1, "wA0Cma\\v\u0007|zKlFtp\u0001_yM_jG"

    const/16 v0, 0x42

    goto :goto_0

    :pswitch_2
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_APP_KEY:Ljava/lang/String;

    const-string v1, "wA0Cma\\v\u0007|zKlFtp\u0001SlNGnYl"

    const/16 v0, 0x43

    goto :goto_0

    :pswitch_3
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_MESSAGE:Ljava/lang/String;

    const-string v1, "wA0Cma\\v\u0007|zKlFtp\u0001wGiqAj\u0007\\W{WfSKn]}TBfJpB[\u007f[gYQk"

    const/16 v0, 0x44

    goto :goto_0

    :pswitch_4
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->ACTION_ACTIVITY_OPENDED:Ljava/lang/String;

    const-string v1, "wA0Cma\\v\u0007|zKlFtp\u0001wGiqAj\u0007N@nJ|N"

    const/16 v0, 0x45

    goto :goto_0

    :pswitch_5
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->ACTION_STATUS:Ljava/lang/String;

    const-string v1, "wA0Cma\\v\u0007|zKlFtp\u0001wGiqAj\u0007S[{WoTWnJ`RZpQyXZjZ"

    const/16 v0, 0x46

    goto :goto_0

    :pswitch_6
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->ACTION_NOTIFICATION_OPENED:Ljava/lang/String;

    const-string v1, "wA0Cma\\v\u0007|zKlFtp\u0001PfI]iWj\\@fQgBPjHlQ[\u007f[{BU}Y\u0019"

    const/16 v0, 0x47

    goto :goto_0

    :pswitch_7
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_NOTIFICATION_DEVELOPER_ARG0:Ljava/lang/String;

    const-string v1, "wA0Cma\\v\u0007|zKlFtp\u0001J`IXj"

    const/16 v0, 0x48

    goto :goto_0

    :pswitch_8
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_TITLE:Ljava/lang/String;

    const-string v1, "wA0Cma\\v\u0007|zKlFtp\u0001M}\\@zM"

    const/16 v0, 0x49

    goto :goto_0

    :pswitch_9
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_STATUS:Ljava/lang/String;

    const-string v1, "wA0Cma\\v\u0007|zKlFtp\u0001wGiqAj\u0007^[aPl^@fQg"

    const/16 v0, 0x4a

    goto :goto_0

    :pswitch_a
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->ACTION_CONNECTION_CHANGE:Ljava/lang/String;

    const-string v1, "wA0Cma\\v\u0007|zKlFtp\u0001wGiqAj\u0007S[{WoTWnJ`RZpLl^QfHlY"

    const/16 v0, 0x4b

    goto :goto_0

    :pswitch_b
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->ACTION_NOTIFICATION_RECEIVED:Ljava/lang/String;

    const-string v1, "wA0Cma\\v\u0007|zKlFtp\u0001LlZ]|J{\\@fQgB]k"

    const/16 v0, 0x4c

    goto :goto_0

    :pswitch_c
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_REGISTRATION_ID:Ljava/lang/String;

    const-string v1, "wA0Cma\\v\u0007|zKlFtp\u0001X`QQpNhI\\"

    const/16 v0, 0x4d

    goto :goto_0

    :pswitch_d
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_RICHPUSH_FILE_PATH:Ljava/lang/String;

    const-string v1, "wA0Cma\\v\u0007|zKlFtp\u0001N|N\\pWm"

    const/16 v0, 0x4e

    goto/16 :goto_0

    :pswitch_e
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_PUSH_ID:Ljava/lang/String;

    const-string v1, "wA0Cma\\v\u0007|zKlFtp\u0001[qIFn"

    const/16 v0, 0x4f

    goto/16 :goto_0

    :pswitch_f
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_EXTRA:Ljava/lang/String;

    const-string v1, "wA0Cma\\v\u0007|zKlFtp\u0001wGiqAj\u0007\\W{WfSK}WjUDzMaBWnRe_UlU"

    const/16 v0, 0x50

    goto/16 :goto_0

    :pswitch_10
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->ACTION_RICHPUSH_CALLBACK:Ljava/lang/String;

    const-string v1, "wA0Cma\\v\u0007|zKlFtp\u0001V}PXpNhI\\"

    const/16 v0, 0x51

    goto/16 :goto_0

    :pswitch_11
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_RICHPUSH_HTML_PATH:Ljava/lang/String;

    const-string v1, "wA0Cma\\v\u0007|zKlFtp\u0001wGiqAj\u0007OQ|JfOQ\u007fKzU"

    const/16 v0, 0x52

    goto/16 :goto_0

    :pswitch_12
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->ACTION_RESTOREPUSH:Ljava/lang/String;

    const-string v1, "wA0Cma\\v\u0007|zKlFtp\u0001wGiqAj\u0007N@`NyHGg"

    const/16 v0, 0x53

    goto/16 :goto_0

    :pswitch_13
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->ACTION_STOPPUSH:Ljava/lang/String;

    const-string v1, "wA0Cma\\v\u0007|zKlFtp\u0001wGiqAj\u0007S[{WoTWnJ`RZpLl^QfHlYK\u007fLfEM"

    const/16 v0, 0x54

    goto/16 :goto_0

    :pswitch_14
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->ACTION_NOTIFICATION_RECEIVED_PROXY:Ljava/lang/String;

    const-string v1, "wA0Cma\\v\u0007|zKlFtp\u0001_jI]yW}DK\u007f_{\\Y"

    const/16 v0, 0x55

    goto/16 :goto_0

    :pswitch_15
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_ACTIVITY_PARAM:Ljava/lang/String;

    const-string v1, "wA0Cma\\v\u0007|zKlFtp\u0001]fS@jP}B@vNl"

    const/16 v0, 0x56

    goto/16 :goto_0

    :pswitch_16
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_CONTENT_TYPE:Ljava/lang/String;

    const-string v1, "wA0Cma\\v\u0007|zKlFtp\u0001wGiqAj\u0007OQhWzIFnJ`RZ"

    const/16 v0, 0x57

    goto/16 :goto_0

    :pswitch_17
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->ACTION_REGISTRATION_ID:Ljava/lang/String;

    const-string v1, "wA0Cma\\v\u0007|zKlFtp\u0001]fSZj]}T[aAjUUaYl"

    const/16 v0, 0x58

    goto/16 :goto_0

    :pswitch_18
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_CONNECTION_CHANGE:Ljava/lang/String;

    const-string v1, "wA0Cma\\v\u0007|zKlFtp\u0001_eXF{"

    const/16 v0, 0x59

    goto/16 :goto_0

    :pswitch_19
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_ALERT:Ljava/lang/String;

    const-string v1, "wA0Cma\\v\u0007|zKlFtp\u0001PfI]iWj\\@fQgBW`P}XZ{A}T@c["

    const/16 v0, 0x5a

    goto/16 :goto_0

    :pswitch_1a
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_NOTIFICATION_TITLE:Ljava/lang/String;

    const-string v1, "wA0Cma\\v\u0007|zKlFtp\u0001V}PXpLlN"

    const/16 v0, 0x5b

    goto/16 :goto_0

    :pswitch_1b
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_RICHPUSH_HTML_RES:Ljava/lang/String;

    const-string v1, "wA0Cma\\v\u0007|zKlFtp\u0001PfI]iWj\\@fQgB@vNl"

    const/16 v0, 0x5c

    goto/16 :goto_0

    :pswitch_1c
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_NOTI_TYPE:Ljava/lang/String;

    const-string v1, "wA0Cma\\v\u0007|zKlFtp\u0001PfI]iWj\\@fQgB]k"

    const/16 v0, 0x5d

    goto/16 :goto_0

    :pswitch_1d
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_NOTIFICATION_ID:Ljava/lang/String;

    const-string v1, "wA0Cma\\v\u0007|zKlFtp\u0001X`QQpJpMQ"

    const/16 v0, 0x5e

    goto/16 :goto_0

    :pswitch_1e
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_RICHPUSH_FILE_TYPE:Ljava/lang/String;

    const-string v1, "qA\u007fKqqpn\\n|pj@pq"

    const/4 v0, -0x1

    goto/16 :goto_0

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

    const-string v1, "yZr]tK[gYx"

    const/4 v0, 0x0

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1f
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "uLj@rz\u0015mLiDZmAI}B{\t04LrFnqK"

    const/4 v0, 0x1

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_20
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "8\u000fn\\n|{wDx."

    const/4 v0, 0x2

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_21
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "^\u007fkZu]AjLorN}L"

    const/4 v0, 0x3

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_22
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "]AhHq}K>]tyJ>OrfB\u007f]=9\u000f"

    const/4 v0, 0x4

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_23
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "<t.\u0004+IT.\u0005*i\u0006A\u00015"

    const/4 v0, 0x5

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_24
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "UClL|pV>zx`\u007fkZu@FsL14Hw_x4Zn\t04"

    const/4 v0, 0x6

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_25
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "<t.\u0004$IS/r-9\u0016CU/O\u001f3\u001a@=s@\u0001F$\u0002\'ta%t.\u0004$IS,r-9\u001cC\u0000"

    const/4 v0, 0x7

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_26
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "wA0Cma\\v\u0007|zKlFtp\u0001wGiqAj\u0007PAcJ`BD}QjXG|"

    const/16 v0, 0x8

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_27
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "=S6"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_28
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "uLj@rz\u0015mLiDZmAI}B{\t04JpH\u007fxJz\u0013"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_29
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "=\u0006"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2a
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "9\u00065\u0001"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2b
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "ZzRe=dZmAS{[wOtwNj@rzmk@qpJl"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2c
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "}K>Zu{ZrM=vJ>E|fH{[=`G\u007fG=$"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2d
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "uLj@rz\u0015mLiDZmAS{[wOtwNj@rzmk@qpJl\t04Fz\u0013"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2e
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "uLj@rz\u0015lLnaB{yhgG"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2f
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, "uLj@rz\u0015m]rd\u007fkZu"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_30
    aput-object v1, v3, v2

    const/16 v2, 0x13

    const-string v1, "@G{\tqqAy]u4@x\tiuHm\tn|@kEy4M{\tqq\\m\ti|Np\t,$\u001f.\t\u007fm[{Z3"

    const/16 v0, 0x12

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_31
    aput-object v1, v3, v2

    const/16 v2, 0x14

    const-string v1, "ZzRe=uCwHn4NpM=`NyZ34hw_x4Zn\t|w[wFs:"

    const/16 v0, 0x13

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_32
    aput-object v1, v3, v2

    const/16 v2, 0x15

    const-string v1, "uLj@rz\u0015mLiUCwHnUAz}|s\\>\u0004=uCwHn."

    const/16 v0, 0x14

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_33
    aput-object v1, v3, v2

    const/16 v2, 0x16

    const-string v1, "\u68d4\u6d64\u522e\u5f7a\u5250\u6cb5\u6726\u7f4f\u7ef5\u301f\u6b70\u5287\u4f42\u5c2f\u5735\u671d\u7f7e\u7ec2\u65df\u81f7\u52bc\u7ec8\u7ef3\u624e\u8851\u3016"

    const/16 v0, 0x15

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_34
    aput-object v1, v3, v2

    const/16 v2, 0x17

    const-string v1, "]AhHq}K>Hq}Nm\u0013="

    const/16 v0, 0x16

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_35
    aput-object v1, v3, v2

    const/16 v2, 0x18

    const-string v1, "ZzRe=w@p]xl["

    const/16 v0, 0x17

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_36
    aput-object v1, v3, v2

    const/16 v2, 0x19

    const-string v1, "]AhHq}K>]|s\\2\tj}Cr\ts{[>Zx`\u000fjHzg\u000fjAtg\u000fj@pq\u0001"

    const/16 v0, 0x18

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_37
    aput-object v1, v3, v2

    const/16 v2, 0x1a

    const-string v1, "8\u000fi@qx\u000fpFi4\\{]=uCwHn4[v@n4[wDx:"

    const/16 v0, 0x19

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_38
    aput-object v1, v3, v2

    const/16 v2, 0x1b

    const-string v1, "8\u000fjHzg\u0015"

    const/16 v0, 0x1a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_39
    aput-object v1, v3, v2

    const/16 v2, 0x1c

    const-string v1, "]AhHq}K>]|s\u0015>"

    const/16 v0, 0x1b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3a
    aput-object v1, v3, v2

    const/16 v2, 0x1d

    const-string v1, "ZzRe=z@j@{}L\u007f]t{A"

    const/16 v0, 0x1c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3b
    aput-object v1, v3, v2

    const/16 v2, 0x1e

    const-string v1, "uLj@rz\u0015yLiDZmAS{[wOtwNj@rzmk@qpJl\t\'4"

    const/16 v0, 0x1d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3c
    aput-object v1, v3, v2

    const/16 v2, 0x1f

    const-string v1, "WZm]ryFdLy4Mk@qpJl\t{f@s\tnuY{M=d]{OxfJpJx4\u0002>"

    const/16 v0, 0x1e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3d
    aput-object v1, v3, v2

    const/16 v2, 0x20

    const-string v1, "sJj{xw@lMMa\\vgr`Fx@~u[wFsVZwEyq]>\u0004="

    const/16 v0, 0x1f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3e
    aput-object v1, v3, v2

    const/16 v2, 0x21

    const-string v1, "z@j@{}L\u007f]t{A"

    const/16 v0, 0x20

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3f
    aput-object v1, v3, v2

    const/16 v2, 0x22

    const-string v1, "]AhHq}K>Gr`Fx@~u[wFs]K2\tZ}Y{\thd\u000f\u007fJi}@p\u00073"

    const/16 v0, 0x21

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_40
    aput-object v1, v3, v2

    const/16 v2, 0x23

    const-string v1, "x@}HqKAq]trF}Hi}@pvtp"

    const/16 v0, 0x22

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_41
    aput-object v1, v3, v2

    const/16 v2, 0x24

    const-string v1, "@G{\tqqAyAi4@x\tiuHm\tpuV|L=y@lL=`G\u007fG=%\u001f.\u0007"

    const/16 v0, 0x23

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_42
    aput-object v1, v3, v2

    const/16 v2, 0x25

    const-string v1, "]AhHq}K>]|s\u000f$\t"

    const/16 v0, 0x24

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_43
    aput-object v1, v3, v2

    const/16 v2, 0x26

    const-string v1, "uLj@rz\u0015wGt`\u000f3\tnpDHLogFqG\'"

    const/16 v0, 0x25

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_44
    aput-object v1, v3, v2

    const/16 v2, 0x27

    const-string v1, "~_kZu&\u001e-"

    const/16 v0, 0x26

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_45
    aput-object v1, v3, v2

    const/16 v2, 0x28

    const-string v1, "8\u000f|\\txKWM\'&\u0016/"

    const/16 v0, 0x27

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_46
    aput-object v1, v3, v2

    const/16 v2, 0x29

    const-string v1, "GVm]xy\u0001rF|pcwKou]g\u0013\'~_kZu&\u001e-"

    const/16 v0, 0x28

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_47
    aput-object v1, v3, v2

    const/16 v2, 0x2a

    const-string v1, "GJj\tN}C{G~q\u000fN\\n|{wDx4i\u007f@qqK"

    const/16 v0, 0x29

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_48
    aput-object v1, v3, v2

    const/16 v2, 0x2b

    const-string v1, "4\u0015>"

    const/16 v0, 0x2a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_49
    aput-object v1, v3, v2

    const/16 v2, 0x2c

    const-string v1, "GJj\tN}C{G~q\u000fN\\n|{wDx4\u0002>"

    const/16 v0, 0x2b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4a
    aput-object v1, v3, v2

    const/16 v2, 0x2d

    const-string v1, "4\u00023\t"

    const/16 v0, 0x2c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4b
    aput-object v1, v3, v2

    const/16 v2, 0x2e

    const-string v1, "]AhHq}K>Y|fNsLiq]>OrfB\u007f]14\\jHo`gq\\o4NpM=qAzara]>Zu{ZrM=vJj^xqA>\u0019=j\u000f,\u001a14\\jHo`bwGn4NpM=qAzdtz\\>Zu{ZrM=vJj^xqA>\u0019=j\u000f+\u001034"

    const/16 v0, 0x2d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4c
    aput-object v1, v3, v2

    const/16 v2, 0x2f

    const-string v1, "FJsFkq\u000fjAx4\\wExzL{\ti}B{\u0008"

    const/16 v0, 0x2e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4d
    aput-object v1, v3, v2

    const/16 v2, 0x30

    const-string v1, "@G{\t\u007faFrMxf\u000fi@i|\u000fwM\'"

    const/16 v0, 0x2f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4e
    aput-object v1, v3, v2

    const/16 v2, 0x31

    const-string v1, "4G\u007fZ=z@j\t\u007fqJp\tnq[>@s4Vq\\o4NnY14ZmL=pJxHhx[>Kh}CzLo5"

    const/16 v0, 0x30

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4f
    aput-object v1, v3, v2

    const/16 v2, 0x32

    const-string v1, "$\u001e,\u001a)!\u0019A\u0019C&\u001c"

    const/16 v0, 0x31

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_50
    aput-object v1, v3, v2

    const/16 v2, 0x33

    const-string v1, "]AhHq}K>M|m\u000fxFoyNj\t04"

    const/16 v0, 0x32

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_51
    aput-object v1, v3, v2

    const/16 v2, 0x34

    const-string v1, "]AhHq}K>]tyJ>OrfB\u007f]=9\u000fm]|f[VFhf\u000fmAraCz\tqq\\m\ti|Np\txzKVFhf"

    const/16 v0, 0x33

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_52
    aput-object v1, v3, v2

    const/16 v2, 0x35

    const-string v1, "uAz[r}K0YxfBwZn}@p\u0007OQnZvM\\`PlBG{_}X"

    const/16 v0, 0x34

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_53
    aput-object v1, v3, v2

    const/16 v2, 0x36

    const-string v1, "fJo\\xg[NLoyFmZt{Am"

    const/16 v0, 0x35

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_54
    aput-object v1, v3, v2

    const/16 v2, 0x37

    const-string v1, "uAz[r}K0Fn:mk@qp\u0001HlOGfQg3GkUvTZ{\"\u001b."

    const/16 v0, 0x36

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_55
    aput-object v1, v3, v2

    const/16 v2, 0x38

    const-string v1, "uAz[r}K0YxfBwZn}@p\u0007JFfJlBQwJlOZnRvN@`LhZQ"

    const/16 v0, 0x37

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_56
    aput-object v1, v3, v2

    const/16 v2, 0x39

    const-string v1, "uAz[r}K0Hmd\u0001_Ji}Yw]d"

    const/16 v0, 0x38

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_57
    aput-object v1, v3, v2

    const/16 v2, 0x3a

    const-string v1, "uAz[r}K0YxfBwZn}@p\u0007\\Wl[zNKiWgXKcQj\\@fQg"

    const/16 v0, 0x39

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_58
    aput-object v1, v3, v2

    const/16 v2, 0x3b

    const-string v1, "gJmZx}@p\ti}B{Fh`\u000frHosJl\ti|Np\t,pNg"

    const/16 v0, 0x3a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_59
    aput-object v1, v3, v2

    const/16 v2, 0x3c

    const-string v1, "gJmZx}@p\ti}B{Fh`\u000frLng\u000fjA|z\u000f/\u0019n"

    const/16 v0, 0x3b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_5a
    aput-object v1, v3, v2

    const/16 v2, 0x3d

    const-string v1, "yNfghy\u000fmAraCz\t#4\u001f2\tZ}Y{\thd\u000f\u007fJi}@p\u00073"

    const/16 v0, 0x3c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_5b
    aput-object v1, v3, v2

    const/16 v2, 0x3e

    const-string v1, "uLj@rz\u0015mLiXNjLn`aq]trF}Hi}@pghyM{[=.\u000f"

    const/16 v0, 0x3d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_5c
    aput-object v1, v3, v2

    const/16 v2, 0x3f

    const-string v1, "x@}HqKAq]trF}Hi}@p"

    const/16 v0, 0x3e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_5d
    aput-object v1, v3, v2

    const/16 v2, 0x40

    const-string v1, "@G{\tpgHWM=}\\>Gr`\u000fhHq}K>\u0004="

    const/16 v0, 0x3f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_5e
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/api/JPushInterface;->a:Ljava/lang/Integer;

    invoke-static {}, Lcn/jpush/android/api/e;->b()Lcn/jpush/android/api/e;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/api/JPushInterface;->b:Lcn/jpush/android/api/e;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcn/jpush/android/api/JPushInterface;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void

    :pswitch_5f
    const/16 v9, 0x14

    goto/16 :goto_2

    :pswitch_60
    const/16 v9, 0x2f

    goto/16 :goto_2

    :pswitch_61
    const/16 v9, 0x1e

    goto/16 :goto_2

    :pswitch_62
    const/16 v9, 0x29

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
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
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcn/jpush/android/api/PushNotificationBuilder;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x20

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    sget-object v0, Lcn/jpush/android/e;->e:Landroid/content/Context;

    invoke-static {v0, p0}, Lcn/jpush/android/a;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x1f

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    invoke-static {v0}, Lcn/jpush/android/api/BasicPushNotificationBuilder;->a(Ljava/lang/String;)Lcn/jpush/android/api/PushNotificationBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcn/jpush/android/a;->l(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/jpush/android/api/TagAliasCallback;",
            "Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x4

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-boolean v1, Lcn/jpush/android/e;->a:Z

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcn/jpush/android/util/a;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v1, v1, v4

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x16

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_3

    invoke-static {p1}, Lcn/jpush/android/util/ab;->b(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v4, 0x17

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v4, 0x1a

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    invoke-interface {p3, v1, p1, p2}, Lcn/jpush/android/api/TagAliasCallback;->gotResult(ILjava/lang/String;Ljava/util/Set;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-nez p3, :cond_4

    if-nez p4, :cond_4

    invoke-static {p2}, Lcn/jpush/android/api/JPushInterface;->filterValidTags(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    :cond_4
    if-eqz p2, :cond_5

    invoke-static {p2}, Lcn/jpush/android/util/ab;->a(Ljava/util/Set;)I

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x19

    aget-object v2, v2, v3

    invoke-static {v0, v2}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    invoke-interface {p3, v1, p1, p2}, Lcn/jpush/android/api/TagAliasCallback;->gotResult(ILjava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    :cond_5
    invoke-static {p2}, Lcn/jpush/android/api/JPushInterface;->getStringTags(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_6

    if-nez v2, :cond_6

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    sget v0, Lcn/jpush/android/api/d;->a:I

    invoke-interface {p3, v0, p1, p2}, Lcn/jpush/android/api/TagAliasCallback;->gotResult(ILjava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_9

    const-string v1, ","

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x0

    :goto_1
    const/16 v3, 0x3e8

    if-gt v1, v3, :cond_7

    const/4 v0, 0x1

    :cond_7
    if-nez v0, :cond_9

    if-eqz p3, :cond_8

    sget v0, Lcn/jpush/android/api/d;->h:I

    invoke-interface {p3, v0, p1, p2}, Lcn/jpush/android/api/TagAliasCallback;->gotResult(ILjava/lang/String;Ljava/util/Set;)V

    :cond_8
    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v4, 0x15

    aget-object v3, v3, v4

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v4, 0x1b

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcn/jpush/android/api/b;

    invoke-direct {v0, p1, p2, p3}, Lcn/jpush/android/api/b;-><init>(Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;)V

    invoke-static {p0, p1, v2, v0}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/jpush/android/api/b;)V

    goto/16 :goto_0

    :cond_a
    move v1, v0

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x4

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    invoke-static {p0, p1}, Lcn/jpush/android/a;->b(Landroid/content/Context;Z)V

    if-nez p1, :cond_0

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0xd

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcn/jpush/android/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v1, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jpush/android/service/ServiceInterface;->b()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcn/jpush/android/e;->n:Z

    if-nez v0, :cond_3

    :cond_2
    invoke-static {p0, p2}, Lcn/jpush/android/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/jpush/android/service/PushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static a(I)Z
    .locals 5

    const/4 v0, 0x0

    if-gtz p0, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jpush/android/api/JPushInterface;->a(Ljava/lang/String;)Lcn/jpush/android/api/PushNotificationBuilder;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v4, 0x30

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v4, 0x31

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/util/z;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static addLocalNotification(Landroid/content/Context;Lcn/jpush/android/data/JPushLocalNotification;)V
    .locals 4

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    sget-boolean v0, Lcn/jpush/android/e;->n:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcn/jpush/android/service/h;->a(Landroid/content/Context;)Lcn/jpush/android/service/h;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/jpush/android/service/h;->a(Landroid/content/Context;Lcn/jpush/android/data/JPushLocalNotification;)Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/jpush/android/service/PushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x3f

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method static b(I)Lcn/jpush/android/api/PushNotificationBuilder;
    .locals 4

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x1e

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz p0, :cond_0

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jpush/android/api/JPushInterface;->a(Ljava/lang/String;)Lcn/jpush/android/api/PushNotificationBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    new-instance v0, Lcn/jpush/android/api/DefaultPushNotificationBuilder;

    invoke-direct {v0}, Lcn/jpush/android/api/DefaultPushNotificationBuilder;-><init>()V

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {}, Lcn/jpush/android/util/z;->g()V

    goto :goto_0
.end method

.method public static clearAllNotifications(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcn/jpush/android/service/ServiceInterface;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static clearLocalNotifications(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    sget-boolean v0, Lcn/jpush/android/e;->n:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcn/jpush/android/service/h;->a(Landroid/content/Context;)Lcn/jpush/android/service/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jpush/android/service/h;->b(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/jpush/android/service/PushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public static clearNotificationById(Landroid/content/Context;I)V
    .locals 3

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    if-gtz p1, :cond_0

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x22

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v1, 0x21

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public static filterValidTags(Ljava/util/Set;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x4

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Lcn/jpush/android/util/ab;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0x64

    if-lt v0, v1, :cond_3

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v8

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x24

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v2

    goto :goto_0

    :cond_2
    sget-object v4, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v4, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v7, 0x25

    aget-object v6, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/jpush/android/util/z;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    move-object p0, v2

    goto :goto_0
.end method

.method public static getConnectionState(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcn/jpush/android/a;->a(Landroid/content/Context;)Lcn/jpush/android/service/a;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/a;->a:Lcn/jpush/android/service/a;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRegistrationID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    invoke-static {}, Lcn/jpush/android/a;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringTags(Ljava/util/Set;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v2, ""

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v0}, Lcn/jpush/android/util/ab;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v2, :cond_3

    move-object v2, v0

    :goto_2
    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    move-object v1, v2

    :goto_3
    move-object v2, v1

    move v1, v0

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    sget-object v4, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v7, 0x1c

    aget-object v6, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/jpush/android/util/z;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    move-object v1, v2

    goto :goto_3
.end method

.method public static getUdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcn/jpush/android/util/a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x4

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v5

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x26

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/jpush/android/service/ServiceInterface;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x28

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v1, 0x27

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    sget-boolean v0, Lcn/jpush/android/e;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/jpush/android/util/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v5

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lcn/jpush/android/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v1, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v4, 0x29

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/util/z;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcn/jpush/android/a;->b(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcn/jpush/android/api/JPushInterface;->setLatestNotificationNumber(Landroid/content/Context;I)V

    :cond_2
    invoke-static {p0}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public static initCrashHandler(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    invoke-static {}, Lcn/jpush/android/api/c;->a()Lcn/jpush/android/api/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jpush/android/api/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static isPushStopped(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcn/jpush/android/service/ServiceInterface;->d(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static onFragmentPause(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->b:Lcn/jpush/android/api/e;

    invoke-virtual {v0, p0, p1}, Lcn/jpush/android/api/e;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static onFragmentResume(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->b:Lcn/jpush/android/api/e;

    invoke-virtual {v0, p0, p1}, Lcn/jpush/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static onKillProcess(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->b:Lcn/jpush/android/api/e;

    invoke-virtual {v0, p0}, Lcn/jpush/android/api/e;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->b:Lcn/jpush/android/api/e;

    invoke-virtual {v0, p0}, Lcn/jpush/android/api/e;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->b:Lcn/jpush/android/api/e;

    invoke-virtual {v0, p0}, Lcn/jpush/android/api/e;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static removeLocalNotification(Landroid/content/Context;J)V
    .locals 5

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    sget-boolean v0, Lcn/jpush/android/e;->n:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcn/jpush/android/service/h;->a(Landroid/content/Context;)Lcn/jpush/android/service/h;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcn/jpush/android/service/h;->a(Landroid/content/Context;J)Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/jpush/android/service/PushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x23

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public static reportNotificationOpened(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x40

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x404

    invoke-static {p1, v0, p0}, Lcn/jpush/android/helpers/g;->a(Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method

.method public static requestPermission(Landroid/content/Context;)V
    .locals 7

    const/16 v6, 0x38

    const/16 v5, 0x35

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v1, v1, v6

    aput-object v1, v0, v2

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x3a

    aget-object v1, v1, v2

    aput-object v1, v0, v3

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v1, v1, v5

    aput-object v1, v0, v4

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v1, v1, v6

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x3a

    aget-object v2, v2, v3

    sget-object v3, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-static {p0, v1}, Lcn/jpush/android/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-static {p0, v2}, Lcn/jpush/android/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-static {p0, v3}, Lcn/jpush/android/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x39

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x36

    aget-object v2, v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, [Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x37

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static resumePush(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    invoke-static {}, Lcn/jpush/android/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/jpush/android/service/ServiceInterface;->b(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static setAlias(Landroid/content/Context;Ljava/lang/String;Lcn/jpush/android/api/TagAliasCallback;)V
    .locals 1

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcn/jpush/android/api/JPushInterface;->setAliasAndTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;)V

    return-void
.end method

.method public static setAliasAndTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;Z)V

    return-void
.end method

.method public static setAliasAndTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/jpush/android/api/TagAliasCallback;",
            ")V"
        }
    .end annotation

    const/16 v8, 0xa

    const/4 v1, 0x1

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-ge v0, v8, :cond_1

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    move v0, v1

    :goto_0
    if-nez v0, :cond_4

    invoke-static {}, Lcn/jpush/android/util/z;->d()V

    if-eqz p3, :cond_0

    sget v0, Lcn/jpush/android/api/d;->k:I

    invoke-interface {p3, v0, p1, p2}, Lcn/jpush/android/api/TagAliasCallback;->gotResult(ILjava/lang/String;Ljava/util/Set;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v0, Lcn/jpush/android/api/JPushInterface;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->element()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x2710

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    :goto_2
    sget-object v0, Lcn/jpush/android/api/JPushInterface;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lt v0, v8, :cond_2

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    goto :goto_2

    :cond_2
    sget-object v0, Lcn/jpush/android/api/JPushInterface;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    invoke-static {p0, p1, p2, p3, v1}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;Z)V

    goto :goto_1
.end method

.method public static setDebugMode(Z)V
    .locals 0

    sput-boolean p0, Lcn/jpush/android/e;->a:Z

    return-void
.end method

.method public static setDefaultPushNotificationBuilder(Lcn/jpush/android/api/BasicPushNotificationBuilder;)V
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x1d

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcn/jpush/android/e;->e:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->a:Ljava/lang/Integer;

    invoke-static {v0, v1, p0}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;Ljava/lang/Integer;Lcn/jpush/android/api/BasicPushNotificationBuilder;)V

    return-void
.end method

.method public static setLatestNotificationNumber(Landroid/content/Context;I)V
    .locals 5

    const/4 v4, 0x4

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x3e

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz p1, :cond_0

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x3d

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcn/jpush/android/service/ServiceInterface;->d(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static setPushNotificationBuilder(Ljava/lang/Integer;Lcn/jpush/android/api/BasicPushNotificationBuilder;)V
    .locals 5

    const/4 v4, 0x4

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x10

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_1

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcn/jpush/android/e;->e:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;Ljava/lang/Integer;Lcn/jpush/android/api/BasicPushNotificationBuilder;)V

    goto :goto_0
.end method

.method public static setPushTime(Landroid/content/Context;Ljava/util/Set;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    const/16 v3, 0x32

    const/4 v6, 0x1

    const/4 v5, 0x4

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    sget-boolean v0, Lcn/jpush/android/e;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/jpush/android/util/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v5

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {p0, v6, v0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;ZLjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {p0, v0, v1}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    if-le p2, p3, :cond_4

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v5

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x34

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x6

    if-gt v3, v4, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_6

    :cond_5
    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v1, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v4, 0x33

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/util/z;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "^"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v6, v0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public static setSilenceTime(Landroid/content/Context;IIII)V
    .locals 5

    const/16 v2, 0x3b

    const/16 v4, 0x2b

    const/16 v0, 0x17

    const/4 v1, 0x4

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    if-gt p2, v2, :cond_0

    if-gt p4, v2, :cond_0

    if-gt p3, v0, :cond_0

    if-le p1, v0, :cond_1

    :cond_0
    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x2e

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-nez p4, :cond_2

    const-string v0, ""

    invoke-static {p0, v0}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x2f

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;IIII)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x2c

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x2d

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x2a

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setStatisticsEnable(Z)V
    .locals 1

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->b:Lcn/jpush/android/api/e;

    invoke-virtual {v0, p0}, Lcn/jpush/android/api/e;->a(Z)V

    return-void
.end method

.method public static setStatisticsSessionTimeout(J)V
    .locals 4

    const/4 v2, 0x4

    const-wide/16 v0, 0xa

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x3c

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-wide/32 v0, 0x15180

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x3b

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcn/jpush/android/api/JPushInterface;->b:Lcn/jpush/android/api/e;

    invoke-virtual {v0, p0, p1}, Lcn/jpush/android/api/e;->a(J)V

    goto :goto_0
.end method

.method public static setTags(Landroid/content/Context;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/jpush/android/api/TagAliasCallback;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcn/jpush/android/api/JPushInterface;->setAliasAndTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;)V

    return-void
.end method

.method public static stopPush(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    invoke-static {}, Lcn/jpush/android/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    invoke-static {p0, v3}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, v3}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method
