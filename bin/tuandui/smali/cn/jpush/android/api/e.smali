.class public Lcn/jpush/android/api/e;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Z

.field private static c:Lcn/jpush/android/api/e;

.field private static final z:[Ljava/lang/String;


# instance fields
.field private d:Ljava/util/concurrent/ExecutorService;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/jpush/android/api/a;",
            ">;"
        }
    .end annotation
.end field

.field private h:J

.field private i:J

.field private j:J

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:J

.field private q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lorg/json/JSONObject;

.field private s:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x18

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "#D&\u0008"

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

    const-string v1, "3L?\u0008"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "\ru\'\u001e\u0001\u0014d"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "(K\u0000\u0008\u001a2H7"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "\ru\'\u001e\u0001\u000eK&\u0008\u001b!D1\u0008G(K\u0000\u0008\u001a2H7E@gH\'\u001e\u001dgG7M\n&I>\u0008\rgD4\u0019\u000c5\u00051\u000c\u0005+@6M#\u0017P!\u0005 )Q7\u001f\u000f&F7C\u0006)u3\u0018\u001a\"\r{M\u0008)Ar\'92V:$\u00073@ \u000b\u0008$@|\u0002\u0007\u0015@!\u0018\u0004\"\u0005!\u0005\u00062I6M\u0007(Qr\u000f\u000cgF3\u0001\u0005\"Ar\u0000\u00065@r\u0019\u0000*@r\u0004\u0007gI3\u001e\u001dgd1\u0019\u00001L&\u0014I(Wr+\u001b&B?\u0008\u00073\u0005r"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "\ru\'\u001e\u0001\u000eK&\u0008\u001b!D1\u0008G(K\u0000\u0008\u001a2H7E@gH\'\u001e\u001dgG7M\n&I>\u0008\rgD4\u0019\u000c5\u00051\u000c\u0005+@6M#\u0017P!\u0005 )Q7\u001f\u000f&F7C\u0006)u3\u0018\u001a\"\r{M\u0000)\u0005>\u000c\u001a3\u0005\u0013\u000e\u001d.S;\u0019\u0010gJ M/5D5\u0000\u000c)Q"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "(K\u0002\u000c\u001c4@"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "\ru\'\u001e\u0001\u000eK&\u0008\u001b!D1\u0008G(K\u0002\u000c\u001c4@zDI*P!\u0019I%@r\u000e\u0008+I7\tI&C&\u0008\u001bgF3\u0001\u0005\"Ar\'92V:$\u00073@ \u000b\u0008$@|\u0002\u0007\u0015@!\u0018\u0004\"\r{M\u0008)Ar\'92V:$\u00073@ \u000b\u0008$@|\u0002\u0007\u0017D\'\u001e\u000cgV:\u0002\u001c+Ar\u0003\u00063\u00050\u0008I$D>\u0001\u000c#\u0005?\u0002\u001b\"\u0005&\u0004\u0004\"\u0005;\u0003I3M;\u001eI\u0006F&\u0004\u001f.Q+M\u00065\u0005\u0014\u001f\u0008 H7\u0003\u001dg\u001er"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "4@!\u001e\u0000(K\r\u0004\r"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "+D!\u001967D\'\u001e\u000c"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "3\\\"\u0008"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, ".Q;\u0000\u000c"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "&F&\u0004\u001f\"z&\u0008\u001b*L<\u000c\u001d\""

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "-U\'\u001e\u0001\u0018V&\u000c\u001d\u0018F3\u000e\u0001\"\u000b8\u001e\u0006)"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "&F&\u0004\u001f.Q;\u0008\u001a"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "#P \u000c\u001d.J<"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "$P 2\u001a\"V!\u0004\u0006)z!\u0019\u00085Q"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "$P 2\u001a\"@!\u0004\u0006)z7\u0003\r"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, "2Q4@Q"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_11
    aput-object v1, v3, v2

    const/16 v2, 0x13

    const-string v1, "&F&\u0004\u001f\"z>\u000c\u001c)F:"

    const/16 v0, 0x12

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_12
    aput-object v1, v3, v2

    const/16 v2, 0x14

    const-string v1, "\ru\'\u001e\u0001\u0014d|\u0002\u0007\u0015@!\u0018\u0004\"\r\u0011\u0002\u00073@*\u0019@gH\'\u001e\u001dgG7M\u0000)S=\u0006\u000c#\u0005;\u0003I\u0006F&\u0004\u001f.Q+C\u0006)w7\u001e\u001c*@zD"

    const/16 v0, 0x13

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_13
    aput-object v1, v3, v2

    const/16 v2, 0x15

    const-string v1, "\u0004J<\u0019\u000c?Qr\u001e\u0001(P>\tI%@r\u000c\u0007gd1\u0019\u00001L&\u0014I(Kr\u0019\u0001.Vr\u0000\u000c3M=\tI}\u0005"

    const/16 v0, 0x14

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_14
    aput-object v1, v3, v2

    const/16 v2, 0x16

    const-string v1, "7D5\u0008I)D?\u0008I#L6\u0003N3\u0005?\u000c\u001d$Mr\u0019\u0001\"\u0005>\u000c\u001a3\u0005=\u0003\u000cgU3\u001e\u001a\"Ar\u000f\u0010gJ<?\u000c4P?\u0008"

    const/16 v0, 0x15

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_15
    aput-object v1, v3, v2

    const/16 v2, 0x17

    const-string v1, "\ru\'\u001e\u0001\u000eK&\u0008\u001b!D1\u0008G(K\u0002\u000c\u001c4@zDI*P!\u0019I%@r\u000e\u0008+I7\tI&C&\u0008\u001bgF3\u0001\u0005\"Ar\'92V:$\u00073@ \u000b\u0008$@|\u0002\u0007\u0015@!\u0018\u0004\"\r{M\u0000)\u0005&\u0005\u00004\u0005\u0013\u000e\u001d.S;\u0019\u0010gJ M/5D5\u0000\u000c)Q"

    const/16 v0, 0x16

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_16
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcn/jpush/android/api/e;->c:Lcn/jpush/android/api/e;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/api/e;->a:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/api/e;->b:Z

    return-void

    :pswitch_17
    const/16 v9, 0x47

    goto/16 :goto_2

    :pswitch_18
    const/16 v9, 0x25

    goto/16 :goto_2

    :pswitch_19
    const/16 v9, 0x52

    goto/16 :goto_2

    :pswitch_1a
    const/16 v9, 0x6d

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
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
    .end packed-switch
.end method

.method private constructor <init>()V
    .locals 7

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/api/e;->d:Ljava/util/concurrent/ExecutorService;

    iput-object v2, p0, Lcn/jpush/android/api/e;->e:Ljava/lang/String;

    iput-object v2, p0, Lcn/jpush/android/api/e;->f:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/api/e;->g:Ljava/util/ArrayList;

    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcn/jpush/android/api/e;->h:J

    iput-wide v4, p0, Lcn/jpush/android/api/e;->i:J

    iput-wide v4, p0, Lcn/jpush/android/api/e;->j:J

    iput-boolean v6, p0, Lcn/jpush/android/api/e;->k:Z

    iput-boolean v3, p0, Lcn/jpush/android/api/e;->l:Z

    iput-boolean v3, p0, Lcn/jpush/android/api/e;->m:Z

    iput-boolean v6, p0, Lcn/jpush/android/api/e;->n:Z

    iput-boolean v3, p0, Lcn/jpush/android/api/e;->o:Z

    iput-wide v4, p0, Lcn/jpush/android/api/e;->p:J

    iput-object v2, p0, Lcn/jpush/android/api/e;->q:Ljava/lang/ref/WeakReference;

    iput-object v2, p0, Lcn/jpush/android/api/e;->r:Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/api/e;->s:Ljava/lang/Object;

    return-void
.end method

.method private a(Landroid/content/Context;J)Lorg/json/JSONObject;
    .locals 8

    const/4 v0, 0x0

    const/16 v6, 0x8

    invoke-static {}, Lcn/jpush/android/util/ag;->a()Lcn/jpush/android/util/ag;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/16 v3, 0x10

    aget-object v2, v2, v3

    iget-wide v4, p0, Lcn/jpush/android/api/e;->i:J

    invoke-virtual {v1, p1, v2, v4, v5}, Lcn/jpush/android/util/ag;->b(Landroid/content/Context;Ljava/lang/String;J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcn/jpush/android/util/a;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {p1}, Lcn/jpush/android/util/a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jpush/android/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/jpush/android/api/e;->f:Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/ag;->a()Lcn/jpush/android/util/ag;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    aget-object v2, v2, v6

    iget-object v3, p0, Lcn/jpush/android/api/e;->f:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Lcn/jpush/android/util/ag;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {}, Lcn/jpush/android/a;->u()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcn/jpush/android/util/z;->d()V

    :goto_0
    return-object v0

    :cond_2
    invoke-static {v1}, Lcn/jpush/android/api/e;->a(Lorg/json/JSONObject;)V

    sget-object v2, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-static {}, Lcn/jpush/android/a;->j()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v2, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    iget-object v3, p0, Lcn/jpush/android/api/e;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    sget-object v3, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/16 v4, 0x13

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcn/jpush/android/api/e;Landroid/content/Context;)V
    .locals 12

    const-wide/16 v10, 0x3e8

    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcn/jpush/android/a;->u()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcn/jpush/android/util/z;->d()V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcn/jpush/android/api/e;->l:Z

    if-eqz v2, :cond_5

    iput-boolean v0, p0, Lcn/jpush/android/api/e;->l:Z

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    invoke-static {}, Lcn/jpush/android/util/ag;->a()Lcn/jpush/android/util/ag;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v2, p1, v3, v8, v9}, Lcn/jpush/android/util/ag;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    iget-wide v4, p0, Lcn/jpush/android/api/e;->i:J

    sub-long/2addr v4, v2

    cmp-long v2, v2, v8

    if-eqz v2, :cond_6

    iget-wide v2, p0, Lcn/jpush/android/api/e;->h:J

    mul-long/2addr v2, v10

    cmp-long v2, v4, v2

    if-gtz v2, :cond_6

    :cond_1
    :goto_1
    iput-boolean v0, p0, Lcn/jpush/android/api/e;->k:Z

    iget-boolean v0, p0, Lcn/jpush/android/api/e;->k:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-wide v2, p0, Lcn/jpush/android/api/e;->i:J

    invoke-direct {p0, p1, v2, v3}, Lcn/jpush/android/api/e;->a(Landroid/content/Context;J)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    iget-object v1, p0, Lcn/jpush/android/api/e;->s:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcn/jpush/android/api/e;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-lez v3, :cond_3

    :try_start_1
    sget-object v3, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    sget-object v4, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/16 v5, 0xc

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v3, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/16 v4, 0xb

    aget-object v3, v3, v4

    invoke-static {}, Lcn/jpush/android/a;->j()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    sget-object v3, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/16 v4, 0xd

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcn/jpush/android/util/ac;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcn/jpush/android/api/e;->r:Lorg/json/JSONObject;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcn/jpush/android/api/e;->g:Ljava/util/ArrayList;

    :cond_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_4
    invoke-static {p1, v0}, Lcn/jpush/android/util/ac;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    goto/16 :goto_0

    :cond_5
    iget-wide v2, p0, Lcn/jpush/android/api/e;->i:J

    iget-wide v4, p0, Lcn/jpush/android/api/e;->j:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcn/jpush/android/api/e;->h:J

    mul-long/2addr v4, v10

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    :cond_6
    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_7
    invoke-static {}, Lcn/jpush/android/util/ag;->a()Lcn/jpush/android/util/ag;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v0, p1, v1, v6}, Lcn/jpush/android/util/ag;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/api/e;->f:Ljava/lang/String;

    goto/16 :goto_0

    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method private static a(Lorg/json/JSONObject;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcn/jpush/android/util/j;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    sget-object v2, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v1, v3

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    move v2, v0

    :goto_0
    :try_start_0
    array-length v1, v3

    if-ge v2, v1, :cond_2

    aget-object v1, v3, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Landroid/app/Activity;

    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v1

    :cond_2
    return v0
.end method

.method public static b()Lcn/jpush/android/api/e;
    .locals 2

    sget-object v0, Lcn/jpush/android/api/e;->c:Lcn/jpush/android/api/e;

    if-nez v0, :cond_0

    const-class v1, Lcn/jpush/android/api/e;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcn/jpush/android/api/e;

    invoke-direct {v0}, Lcn/jpush/android/api/e;-><init>()V

    sput-object v0, Lcn/jpush/android/api/e;->c:Lcn/jpush/android/api/e;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    sget-object v0, Lcn/jpush/android/api/e;->c:Lcn/jpush/android/api/e;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcn/jpush/android/api/e;Landroid/content/Context;)V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    iget-object v3, p0, Lcn/jpush/android/api/e;->s:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcn/jpush/android/util/ag;->a()Lcn/jpush/android/util/ag;

    move-result-object v0

    sget-object v2, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v2, v2, v4

    iget-wide v4, p0, Lcn/jpush/android/api/e;->j:J

    invoke-virtual {v0, p1, v2, v4, v5}, Lcn/jpush/android/util/ag;->b(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {}, Lcn/jpush/android/util/ag;->a()Lcn/jpush/android/util/ag;

    move-result-object v0

    sget-object v2, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/16 v4, 0x11

    aget-object v2, v2, v4

    iget-wide v4, p0, Lcn/jpush/android/api/e;->j:J

    invoke-virtual {v0, p1, v2, v4, v5}, Lcn/jpush/android/util/ag;->b(Landroid/content/Context;Ljava/lang/String;J)V

    iget-boolean v0, p0, Lcn/jpush/android/api/e;->m:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jpush/android/api/e;->m:Z

    iget-boolean v0, p0, Lcn/jpush/android/api/e;->k:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcn/jpush/android/api/e;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcn/jpush/android/api/e;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v2, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/16 v4, 0xe

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ge v2, v0, :cond_1

    :try_start_1
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    new-instance v8, Lcn/jpush/android/api/a;

    invoke-direct {v8, v0, v6, v7}, Lcn/jpush/android/api/a;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/z;->e()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcn/jpush/android/api/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/api/e;->g:Ljava/util/ArrayList;

    iget-object v0, p0, Lcn/jpush/android/api/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-direct {p0, p1}, Lcn/jpush/android/api/e;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_a

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v0

    :goto_2
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    :goto_3
    iget-object v0, p0, Lcn/jpush/android/api/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcn/jpush/android/api/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/api/a;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v6, v0, Lcn/jpush/android/api/a;->a:Ljava/lang/String;

    iget-wide v8, v0, Lcn/jpush/android/api/a;->b:J

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_3
    :try_start_5
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    if-lez v0, :cond_4

    :try_start_6
    sget-object v0, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_4
    :goto_5
    :try_start_7
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v0

    if-lez v0, :cond_7

    :try_start_8
    invoke-static {}, Lcn/jpush/android/util/ag;->a()Lcn/jpush/android/util/ag;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/16 v4, 0x10

    aget-object v1, v1, v4

    const-wide/16 v4, 0x0

    invoke-virtual {v0, p1, v1, v4, v5}, Lcn/jpush/android/util/ag;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v0, 0xa

    cmp-long v6, v4, v10

    if-nez v6, :cond_9

    iget-wide v4, p0, Lcn/jpush/android/api/e;->j:J

    iget-wide v6, p0, Lcn/jpush/android/api/e;->p:J

    sub-long/2addr v4, v6

    cmp-long v6, v4, v10

    if-lez v6, :cond_5

    const-wide/16 v0, 0x3e8

    div-long v0, v4, v0

    :cond_5
    invoke-static {}, Lcn/jpush/android/util/ag;->a()Lcn/jpush/android/util/ag;

    move-result-object v4

    sget-object v5, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/16 v6, 0x10

    aget-object v5, v5, v6

    iget-wide v6, p0, Lcn/jpush/android/api/e;->p:J

    invoke-virtual {v4, p1, v5, v6, v7}, Lcn/jpush/android/util/ag;->b(Landroid/content/Context;Ljava/lang/String;J)V

    :goto_6
    sget-object v4, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/16 v5, 0xf

    aget-object v4, v4, v5

    invoke-virtual {v2, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v0, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-static {}, Lcn/jpush/android/a;->j()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v0, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    iget-object v1, p0, Lcn/jpush/android/api/e;->f:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v2}, Lcn/jpush/android/api/e;->a(Lorg/json/JSONObject;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_7
    :try_start_9
    iput-object v2, p0, Lcn/jpush/android/api/e;->r:Lorg/json/JSONObject;

    iget-object v0, p0, Lcn/jpush/android/api/e;->r:Lorg/json/JSONObject;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v0, :cond_6

    :try_start_a
    iget-object v0, p0, Lcn/jpush/android/api/e;->r:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/16 v4, 0x12

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    invoke-static {p1, v0}, Lcn/jpush/android/util/ac;->a(Landroid/content/Context;I)V
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_6
    :goto_8
    :try_start_b
    sget-object v0, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-static {p1, v0, v2}, Lcn/jpush/android/util/ac;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z

    :cond_7
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_8
    return-void

    :cond_9
    :try_start_c
    iget-wide v0, p0, Lcn/jpush/android/api/e;->j:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    goto/16 :goto_5

    :catch_4
    move-exception v0

    goto/16 :goto_4

    :cond_a
    move-object v2, v0

    goto/16 :goto_2
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcn/jpush/android/api/e;->o:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcn/jpush/android/util/z;->c()V

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Lcn/jpush/android/util/z;->c()V

    goto :goto_0

    :cond_1
    instance-of v1, p1, Landroid/app/Application;

    if-eqz v1, :cond_2

    sget-object v1, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/16 v4, 0x15

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/util/z;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lcn/jpush/android/api/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/SecurityException;

    sget-object v1, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lcn/jpush/android/api/e;->r:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    sget-object v0, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcn/jpush/android/util/ac;->a(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/api/e;->r:Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcn/jpush/android/api/e;->r:Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    iput-wide p1, p0, Lcn/jpush/android/api/e;->h:J

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-direct {p0, p1, v0}, Lcn/jpush/android/api/e;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-boolean v2, Lcn/jpush/android/api/e;->a:Z

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/TabActivity;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jpush/android/api/e;->n:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcn/jpush/android/api/e;->n:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Lcn/jpush/android/api/e;->n:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/android/api/e;->i:J

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/api/e;->e:Ljava/lang/String;

    :try_start_1
    iget-object v0, p0, Lcn/jpush/android/api/e;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/jpush/android/api/h;

    invoke-direct {v1, p0, p1}, Lcn/jpush/android/api/h;-><init>(Lcn/jpush/android/api/e;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcn/jpush/android/api/e;->n:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jpush/android/api/e;->n:Z

    iput-object p2, p0, Lcn/jpush/android/api/e;->e:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/android/api/e;->i:J

    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/api/e;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/jpush/android/api/f;

    invoke-direct {v1, p0, p1}, Lcn/jpush/android/api/f;-><init>(Lcn/jpush/android/api/e;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/jpush/android/api/e;->o:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcn/jpush/android/api/e;->o:Z

    return v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x1

    sget-object v0, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-direct {p0, p1, v0}, Lcn/jpush/android/api/e;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-boolean v2, Lcn/jpush/android/api/e;->b:Z

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/TabActivity;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jpush/android/api/e;->n:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcn/jpush/android/api/e;->n:Z

    if-nez v0, :cond_2

    sget-object v0, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jpush/android/api/e;->n:Z

    iget-object v0, p0, Lcn/jpush/android/api/e;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/jpush/android/api/e;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/android/api/e;->j:J

    iget-wide v0, p0, Lcn/jpush/android/api/e;->j:J

    iget-wide v2, p0, Lcn/jpush/android/api/e;->i:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    new-instance v2, Lcn/jpush/android/api/a;

    iget-object v3, p0, Lcn/jpush/android/api/e;->e:Ljava/lang/String;

    invoke-direct {v2, v3, v0, v1}, Lcn/jpush/android/api/a;-><init>(Ljava/lang/String;J)V

    iget-object v0, p0, Lcn/jpush/android/api/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v0, p0, Lcn/jpush/android/api/e;->i:J

    iput-wide v0, p0, Lcn/jpush/android/api/e;->p:J

    :try_start_1
    iget-object v0, p0, Lcn/jpush/android/api/e;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/jpush/android/api/i;

    invoke-direct {v1, p0, p1}, Lcn/jpush/android/api/i;-><init>(Lcn/jpush/android/api/e;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcn/jpush/android/util/z;->c()V

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x2

    iget-boolean v0, p0, Lcn/jpush/android/api/e;->n:Z

    if-nez v0, :cond_0

    sget-object v0, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/16 v2, 0x17

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jpush/android/api/e;->n:Z

    iget-object v0, p0, Lcn/jpush/android/api/e;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/api/e;->e:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/android/api/e;->j:J

    iget-wide v0, p0, Lcn/jpush/android/api/e;->j:J

    iget-wide v2, p0, Lcn/jpush/android/api/e;->i:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    new-instance v2, Lcn/jpush/android/api/a;

    iget-object v3, p0, Lcn/jpush/android/api/e;->e:Ljava/lang/String;

    invoke-direct {v2, v3, v0, v1}, Lcn/jpush/android/api/a;-><init>(Ljava/lang/String;J)V

    iget-object v0, p0, Lcn/jpush/android/api/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/api/e;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/jpush/android/api/g;

    invoke-direct {v1, p0, p1}, Lcn/jpush/android/api/g;-><init>(Lcn/jpush/android/api/e;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/api/e;->z:[Ljava/lang/String;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/api/e;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/jpush/android/api/e;->n:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/android/api/e;->j:J

    iget-wide v0, p0, Lcn/jpush/android/api/e;->j:J

    iget-wide v2, p0, Lcn/jpush/android/api/e;->i:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    new-instance v2, Lcn/jpush/android/api/a;

    iget-object v3, p0, Lcn/jpush/android/api/e;->e:Ljava/lang/String;

    invoke-direct {v2, v3, v0, v1}, Lcn/jpush/android/api/a;-><init>(Ljava/lang/String;J)V

    iget-object v0, p0, Lcn/jpush/android/api/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcn/jpush/android/api/e;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/jpush/android/api/j;

    invoke-direct {v1, p0, p1}, Lcn/jpush/android/api/j;-><init>(Lcn/jpush/android/api/e;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
