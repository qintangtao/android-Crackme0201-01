.class public final Lcn/jpush/android/service/n;
.super Landroid/os/HandlerThread;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcn/jpush/android/service/p;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcn/jpush/android/service/p;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcn/jpush/android/service/p;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Landroid/os/Handler;

.field private f:Landroid/os/Handler;

.field private g:Z

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x20

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "U\u0018=exH\u0018)[gD\u00083`"

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

    const/16 v9, 0x14

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

    const-string v1, "U\u0018=exH\u0018)[qS\u000b5vwN\u001d?"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "H\u0014\u0005p}L\u001c5q`"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "B\u0017tndT\n2*uO\u001d(k}EW3j`D\u0017.*@`>\u0005EXh8\t[@h4\u001fKAu"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "H\u0014\u0005gyE"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "B\u0017tndT\n2*}LW;jpS\u00163`:@\u001a.m{OW\u0013IKs<\tT[o*\u001f"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "`\u001a.m{OYw${O07P}L\u001c5q`u\u0016\u0008awD\u0010,af\rY3iWL\u001d`"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "S\u0010>"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "`\u001a.m{OYw${O+?uaD\n.P}L\u001c5q`\u0001Tz"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "\rY.lfD\u0018>Mp\u001b"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "\rY.myD\u0016/p."

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "s\u001c+qqR\r3jsu\u0011(auE"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "`\u001a.m{OYw$gD\u0017>VqP\u000c?w`h\u0017.afO\u00186$9\u0001\u001a5jzD\u001a.m{OC"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "s\u001c+qqR\r3jsu\u0011(auEY)puS\r?`4\u000cY.lfD\u0018>Mp\u001b"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "`\u001a.m{OYw$fD\n.kfD*?j`p\u000c?qq\u0001TzwqO\r\u000bqqT\u001c\tmnDC"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "`\u001a.m{OYw${O=3wwN\u00174awU\u001c>"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "`\u001a.m{OYw$dS\u00104pFD\u0008/agU\u00104cW@\u001a2a4\u000cY)mnDC"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "\u0001Tz"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, "`\u001a.m{OYw$dS\u00104pFD\u0008/agU\u00104cET\u001c/a4\u000cY)mnDC"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_11
    aput-object v1, v3, v2

    const/16 v2, 0x13

    const-string v1, "\rY)mp\u001b"

    const/16 v0, 0x12

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_12
    aput-object v1, v3, v2

    const/16 v2, 0x14

    const-string v1, "\rY0q}EC"

    const/16 v0, 0x13

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_13
    aput-object v1, v3, v2

    const/16 v2, 0x15

    const-string v1, "s\u001c+qqR\rztuS\u00187w4\u000cY9ip\u001b"

    const/16 v0, 0x14

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_14
    aput-object v1, v3, v2

    const/16 v2, 0x16

    const-string v1, "I\u001c;v`C\u001c;p4\u000cY<huFC"

    const/16 v0, 0x15

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_15
    aput-object v1, v3, v2

    const/16 v2, 0x17

    const-string v1, "`\u001a.m{OYw$gD\u0017>G{L\u0014;jpv\u0010.lXN\u001e=aph\u0017"

    const/16 v0, 0x16

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_16
    aput-object v1, v3, v2

    const/16 v2, 0x18

    const-string v1, "`\u001a.m{OYw${O55csD\u001d\u0013j"

    const/16 v0, 0x17

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_17
    aput-object v1, v3, v2

    const/16 v2, 0x19

    const-string v1, "`\u001a.m{OYw${O*?j`u\u00107a{T\rz)4"

    const/16 v0, 0x18

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_18
    aput-object v1, v3, v2

    const/16 v2, 0x1a

    const-string v1, "s\u001c.vm\u0001\r5$gD\u0017>$fD\u0008/agUYw$"

    const/16 v0, 0x19

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_19
    aput-object v1, v3, v2

    const/16 v2, 0x1b

    const-string v1, "`\u001a.m{OYw$dS\u00104pGD\u0017.UaD\u000c?$9\u0001\n3~q\u001b"

    const/16 v0, 0x1a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1a
    aput-object v1, v3, v2

    const/16 v2, 0x1c

    const-string v1, "`\u001a.m{OYw$fD\n?jps\u001c+qqR\r3jsp\u000c?qq\u0001Tzw}[\u001c`"

    const/16 v0, 0x1b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1b
    aput-object v1, v3, v2

    const/16 v2, 0x1d

    const-string v1, "`\u001a.m{OYw$|@\u0017>hqs\u001c)t{O\n?$9\u0001\u001a5jzD\u001a.m{OC"

    const/16 v0, 0x1c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1c
    aput-object v1, v3, v2

    const/16 v2, 0x1e

    const-string v1, "`\u001a.m{OYw$qO\u001d\tazU-3iqN\u000c.$9\u0001\u000b3`."

    const/16 v0, 0x1d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1d
    aput-object v1, v3, v2

    const/16 v2, 0x1f

    const-string v1, "\rY(agQ\u00164wq\u001b"

    const/16 v0, 0x1e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1e
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    return-void

    :pswitch_1f
    const/16 v9, 0x21

    goto/16 :goto_2

    :pswitch_20
    const/16 v9, 0x79

    goto/16 :goto_2

    :pswitch_21
    const/16 v9, 0x5a

    goto/16 :goto_2

    :pswitch_22
    const/4 v9, 0x4

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
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
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/service/n;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/service/n;->b:Ljava/util/Deque;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/service/n;->c:Ljava/util/Deque;

    iput-boolean v2, p0, Lcn/jpush/android/service/n;->g:Z

    iput v2, p0, Lcn/jpush/android/service/n;->h:I

    iput-object p1, p0, Lcn/jpush/android/service/n;->d:Landroid/content/Context;

    iput-object p2, p0, Lcn/jpush/android/service/n;->f:Landroid/os/Handler;

    invoke-virtual {p0}, Lcn/jpush/android/service/n;->start()V

    new-instance v0, Lcn/jpush/android/service/o;

    invoke-virtual {p0}, Lcn/jpush/android/service/n;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcn/jpush/android/service/o;-><init>(Landroid/os/Looper;Lcn/jpush/android/service/n;)V

    iput-object v0, p0, Lcn/jpush/android/service/n;->e:Landroid/os/Handler;

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/Long;)Lcn/jpush/android/service/p;
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/jpush/android/service/n;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/service/p;

    iget-object v3, v0, Lcn/jpush/android/service/p;->a:Lcn/jpush/b/a/a/g;

    invoke-virtual {v3}, Lcn/jpush/b/a/a/g;->e()Lcn/jpush/b/a/a/e;

    move-result-object v3

    invoke-virtual {v3}, Lcn/jpush/b/a/a/e;->a()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-nez v3, :cond_1

    iget-object v1, p0, Lcn/jpush/android/service/n;->c:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcn/jpush/android/service/n;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/service/n;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcn/jpush/android/service/n;JLjava/lang/Object;)V
    .locals 5

    check-cast p3, Lcn/jpush/b/a/a/h;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/16 v2, 0x1d

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/16 v2, 0x1f

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcn/jpush/b/a/a/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    sget-object v0, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jpush/android/util/z;->d()V

    :cond_0
    invoke-virtual {p3}, Lcn/jpush/b/a/a/h;->e()Lcn/jpush/b/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/b/a/a/e;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/jpush/android/service/n;->a(Ljava/lang/Long;)Lcn/jpush/android/service/p;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lcn/jpush/android/util/z;->d()V

    :goto_0
    iget-object v1, p0, Lcn/jpush/android/service/n;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/service/p;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcn/jpush/android/service/n;->d(Lcn/jpush/android/service/p;)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, v1, Lcn/jpush/android/service/p;->a:Lcn/jpush/b/a/a/g;

    invoke-virtual {v0}, Lcn/jpush/b/a/a/g;->e()Lcn/jpush/b/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/b/a/a/e;->a()Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/16 v3, 0x1e

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    iget-object v1, p0, Lcn/jpush/android/service/n;->e:Landroid/os/Handler;

    const/16 v2, 0x1cec

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcn/jpush/android/util/z;->d()V

    goto :goto_1
.end method

.method static synthetic a(Lcn/jpush/android/service/n;Lcn/jpush/android/service/p;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/16 v2, 0x19

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/jpush/android/service/p;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    iget-object v0, p1, Lcn/jpush/android/service/p;->a:Lcn/jpush/b/a/a/g;

    invoke-virtual {v0}, Lcn/jpush/b/a/a/g;->e()Lcn/jpush/b/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/b/a/a/e;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/jpush/android/service/n;->a(Ljava/lang/Long;)Lcn/jpush/android/service/p;

    iget v0, p1, Lcn/jpush/android/service/p;->b:I

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcn/jpush/android/service/n;->g:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/16 v2, 0x1a

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/jpush/android/service/p;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    invoke-virtual {p1}, Lcn/jpush/android/service/p;->a()V

    invoke-direct {p0, p1}, Lcn/jpush/android/service/n;->b(Lcn/jpush/android/service/p;)V

    :goto_0
    iget v0, p1, Lcn/jpush/android/service/p;->c:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcn/jpush/android/service/n;->f:Landroid/os/Handler;

    const/16 v1, 0x3ed

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    iget-object v0, p0, Lcn/jpush/android/service/n;->b:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->offerFirst(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcn/jpush/android/service/n;->a(Lcn/jpush/android/service/p;)V

    goto :goto_1
.end method

.method static synthetic a(Lcn/jpush/android/service/n;Lcn/jpush/b/a/a/g;I)V
    .locals 6

    sget-object v0, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/16 v3, 0xc

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/jpush/b/a/a/g;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    invoke-virtual {p1}, Lcn/jpush/b/a/a/g;->e()Lcn/jpush/b/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/b/a/a/e;->a()Ljava/lang/Long;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcn/jpush/b/a/a/g;->d()I

    move-result v0

    const/16 v3, 0x64

    if-ne v0, v3, :cond_3

    move-object v0, p1

    check-cast v0, Lcn/jpush/b/a/a/b;

    invoke-virtual {v0}, Lcn/jpush/b/a/a/b;->a()Lcn/jpush/b/a/b/p;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/b/a/b/p;->b()I

    move-result v0

    invoke-static {v0}, Lcn/jpush/android/helpers/h;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Lcn/jpush/android/service/p;

    invoke-direct {v1, p1, p2}, Lcn/jpush/android/service/p;-><init>(Lcn/jpush/b/a/a/g;I)V

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/service/n;->a:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/16 v0, 0x2710

    if-le p2, v0, :cond_1

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    iget-object v0, v1, Lcn/jpush/android/service/p;->a:Lcn/jpush/b/a/a/g;

    invoke-virtual {v0}, Lcn/jpush/b/a/a/g;->e()Lcn/jpush/b/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/b/a/a/e;->a()Ljava/lang/Long;

    move-result-object v0

    iget-object v2, p0, Lcn/jpush/android/service/n;->e:Landroid/os/Handler;

    const/16 v3, 0x1ceb

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcn/jpush/android/service/n;->e:Landroid/os/Handler;

    iget v3, v1, Lcn/jpush/android/service/p;->b:I

    int-to-long v4, v3

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    sget-object v0, Lcn/jpush/android/service/k;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcn/jpush/android/service/n;->g:Z

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcn/jpush/android/service/p;->a()V

    invoke-direct {p0, v1}, Lcn/jpush/android/service/n;->b(Lcn/jpush/android/service/p;)V

    :goto_1
    return-void

    :cond_2
    invoke-static {}, Lcn/jpush/android/util/z;->c()V

    iget-object v0, p0, Lcn/jpush/android/service/n;->b:Ljava/util/Deque;

    invoke-interface {v0, v1}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private a(Lcn/jpush/android/service/p;)V
    .locals 7

    const/4 v6, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/jpush/android/service/p;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    iget-object v0, p1, Lcn/jpush/android/service/p;->a:Lcn/jpush/b/a/a/g;

    invoke-virtual {v0}, Lcn/jpush/b/a/a/g;->d()I

    move-result v0

    iget-object v1, p1, Lcn/jpush/android/service/p;->a:Lcn/jpush/b/a/a/g;

    invoke-virtual {v1}, Lcn/jpush/b/a/a/g;->e()Lcn/jpush/b/a/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jpush/b/a/a/e;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1}, Lcn/jpush/android/service/n;->d(Lcn/jpush/android/service/p;)V

    sparse-switch v0, :sswitch_data_0

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v0, p1, Lcn/jpush/android/service/p;->a:Lcn/jpush/b/a/a/g;

    check-cast v0, Lcn/jpush/b/a/a/b;

    invoke-virtual {v0}, Lcn/jpush/b/a/a/b;->a()Lcn/jpush/b/a/b/p;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/b/a/b/p;->b()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    packed-switch v0, :pswitch_data_0

    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v4, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v4, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object v2, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcn/jpush/android/service/n;->d:Landroid/content/Context;

    sget-object v2, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-static {v0, v2, v1}, Lcn/jpush/android/util/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_0
    sget-object v1, Lcn/jpush/android/e;->e:Landroid/content/Context;

    invoke-static {v1}, Lcn/jpush/android/helpers/h;->c(Landroid/content/Context;)V

    goto :goto_1

    :sswitch_2
    iget-object v0, p1, Lcn/jpush/android/service/p;->a:Lcn/jpush/b/a/a/g;

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcn/jpush/android/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    aget-object v2, v2, v6

    sget v3, Lcn/jpush/android/api/d;->b:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v2, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcn/jpush/b/a/a/g;->e()Lcn/jpush/b/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/b/a/a/e;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcn/jpush/android/service/n;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xa -> :sswitch_2
        0x64 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcn/jpush/android/service/n;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/16 v2, 0x1c

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jpush/android/service/n;->b:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    invoke-direct {p0}, Lcn/jpush/android/service/n;->c()V

    invoke-direct {p0}, Lcn/jpush/android/service/n;->d()V

    :goto_0
    iget-object v0, p0, Lcn/jpush/android/service/n;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/service/p;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcn/jpush/android/service/p;->a:Lcn/jpush/b/a/a/g;

    invoke-virtual {v1}, Lcn/jpush/b/a/a/g;->d()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcn/jpush/android/service/n;->b:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/jpush/android/service/n;->a:Ljava/util/Map;

    iget-object v0, v0, Lcn/jpush/android/service/p;->a:Lcn/jpush/b/a/a/g;

    invoke-virtual {v0}, Lcn/jpush/b/a/a/g;->e()Lcn/jpush/b/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/b/a/a/e;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/jpush/android/service/p;->a()V

    invoke-direct {p0, v0}, Lcn/jpush/android/service/n;->b(Lcn/jpush/android/service/p;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic b(Lcn/jpush/android/service/n;Lcn/jpush/android/service/p;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/jpush/android/service/n;->a(Lcn/jpush/android/service/p;)V

    return-void
.end method

.method private b(Lcn/jpush/android/service/p;)V
    .locals 11

    const/4 v9, 0x0

    const/16 v3, 0xb

    sget-object v0, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    sget-object v1, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/16 v2, 0x17

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p1}, Lcn/jpush/android/service/p;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p1, Lcn/jpush/android/service/p;->a:Lcn/jpush/b/a/a/g;

    invoke-virtual {v8}, Lcn/jpush/b/a/a/g;->e()Lcn/jpush/b/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/b/a/a/e;->a()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8}, Lcn/jpush/b/a/a/g;->d()I

    move-result v0

    invoke-static {}, Lcn/jpush/android/a;->t()J

    move-result-wide v5

    sget-object v1, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    aget-object v1, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/16 v4, 0x15

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/16 v4, 0x13

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/jpush/android/service/n;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/16 v4, 0x14

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch v0, :sswitch_data_0

    move v0, v9

    invoke-static {}, Lcn/jpush/android/util/z;->d()V

    :goto_0
    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcn/jpush/android/service/n;->c(Lcn/jpush/android/service/p;)V

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    iget-object v0, p0, Lcn/jpush/android/service/n;->e:Landroid/os/Handler;

    const/16 v1, 0x1cec

    invoke-static {v0, v1, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/android/service/n;->e:Landroid/os/Handler;

    const-wide/16 v2, 0x2648

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1
    return-void

    :sswitch_0
    invoke-static {}, Lcn/jpush/android/helpers/ConnectingHelper;->getIMLoginFlag()S

    move-result v7

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    sget-object v0, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v4, p0, Lcn/jpush/android/service/n;->h:I

    invoke-static/range {v0 .. v7}, Lcn/jpush/android/service/PushProtocol;->HbJPush(JJIJS)I

    move v0, v9

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v4, p0, Lcn/jpush/android/service/n;->h:I

    sget-object v7, Lcn/jpush/android/e;->f:Ljava/lang/String;

    check-cast v8, Lcn/jpush/b/a/a/l;

    invoke-virtual {v8}, Lcn/jpush/b/a/a/l;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcn/jpush/android/service/PushProtocol;->TagAlias(JJIJLjava/lang/String;Ljava/lang/String;)I

    move v0, v9

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcn/jpush/android/service/n;->h:I

    invoke-virtual {v8, v0}, Lcn/jpush/b/a/a/g;->d(I)V

    invoke-virtual {v8, v5, v6}, Lcn/jpush/b/a/a/g;->b(J)V

    sget-object v0, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {v8}, Lcn/jpush/b/a/a/g;->f()[B

    move-result-object v2

    invoke-static {v0, v1, v2, v9}, Lcn/jpush/android/service/PushProtocol;->IMProtocol(J[BI)I

    check-cast v8, Lcn/jpush/b/a/a/b;

    invoke-virtual {v8}, Lcn/jpush/b/a/a/b;->a()Lcn/jpush/b/a/b/p;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/b/a/b/p;->b()I

    move-result v0

    invoke-static {v0}, Lcn/jpush/android/helpers/h;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    goto :goto_1

    :cond_1
    move v0, v9

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xa -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method

.method private c()V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/jpush/android/service/n;->b:Ljava/util/Deque;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/service/n;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    move v1, v0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/16 v4, 0x12

    aget-object v3, v3, v4

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    iget-object v0, p0, Lcn/jpush/android/service/n;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/service/p;

    add-int/lit8 v2, v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/16 v6, 0x11

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcn/jpush/android/service/p;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private declared-synchronized c(Lcn/jpush/android/service/p;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    iget-object v0, p1, Lcn/jpush/android/service/p;->a:Lcn/jpush/b/a/a/g;

    invoke-virtual {v0}, Lcn/jpush/b/a/a/g;->e()Lcn/jpush/b/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/b/a/a/e;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcn/jpush/android/service/n;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/service/p;

    iget-object v0, v0, Lcn/jpush/android/service/p;->a:Lcn/jpush/b/a/a/g;

    invoke-virtual {v0}, Lcn/jpush/b/a/a/g;->e()Lcn/jpush/b/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/b/a/a/e;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcn/jpush/android/service/n;->c:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/jpush/android/service/n;->c:Ljava/util/Deque;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/service/n;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/16 v3, 0x1b

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d()V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/jpush/android/service/n;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/service/n;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    move v1, v0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/16 v4, 0x10

    aget-object v3, v3, v4

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    iget-object v0, p0, Lcn/jpush/android/service/n;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/service/p;

    add-int/lit8 v2, v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/16 v6, 0x11

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcn/jpush/android/service/p;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private d(Lcn/jpush/android/service/p;)V
    .locals 3

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    iget-object v0, p1, Lcn/jpush/android/service/p;->a:Lcn/jpush/b/a/a/g;

    invoke-virtual {v0}, Lcn/jpush/b/a/a/g;->e()Lcn/jpush/b/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/b/a/a/e;->a()Ljava/lang/Long;

    move-result-object v1

    iget-object v0, p0, Lcn/jpush/android/service/n;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/service/p;

    if-nez v0, :cond_0

    invoke-static {}, Lcn/jpush/android/util/z;->d()V

    :cond_0
    iget-object v0, p0, Lcn/jpush/android/service/n;->b:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/jpush/android/service/n;->e:Landroid/os/Handler;

    const/16 v2, 0x1ceb

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    sget-object v0, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jpush/android/service/n;->g:Z

    invoke-static {}, Lcn/jpush/android/a;->i()I

    move-result v0

    iput v0, p0, Lcn/jpush/android/service/n;->h:I

    iget-object v0, p0, Lcn/jpush/android/service/n;->e:Landroid/os/Handler;

    const/16 v1, 0x1ced

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final a(JLjava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcn/jpush/android/service/n;->e:Landroid/os/Handler;

    const/16 v1, 0x1cea

    invoke-static {v0, v1, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcn/jpush/android/helpers/ConnectingHelper;->sendConnectionToHandler(Landroid/os/Message;J)V

    return-void
.end method

.method public final a(Lcn/jpush/b/a/a/g;I)V
    .locals 3

    iget-object v0, p0, Lcn/jpush/android/service/n;->e:Landroid/os/Handler;

    const/16 v1, 0x1ce9

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final b()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/service/k;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput v3, p0, Lcn/jpush/android/service/n;->h:I

    iput-boolean v3, p0, Lcn/jpush/android/service/n;->g:Z

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jpush/android/service/n;->c:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    iget-object v0, p0, Lcn/jpush/android/service/n;->e:Landroid/os/Handler;

    const/16 v1, 0x1cec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :goto_0
    iget-object v0, p0, Lcn/jpush/android/service/n;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/service/p;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/jpush/android/service/n;->b:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->offerFirst(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcn/jpush/android/service/n;->c()V

    invoke-direct {p0}, Lcn/jpush/android/service/n;->d()V

    return-void
.end method

.method public final run()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/n;->z:[Ljava/lang/String;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    return-void
.end method
