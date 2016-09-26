.class public Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static a:Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;

.field private static c:Ljava/lang/Object;

.field private static final z:[Ljava/lang/String;


# instance fields
.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcn/jpush/android/api/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0xf

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "74~nlx%nh{(4\u007fdp"

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

    const-string v1, "\n%unw.%d+p746y{?)e\u007f{*%r\'>;!xeq,`ujr4`cel=\'\u007fxj=2Dn}=)`nl"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "\u000b%d}w;%_ej=2pj}="

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, ";.8an-3~%\u007f6$ddw<n\u007fej=.b%J\u0019\u0007IJR\u0011\u0001ET]\u0019\u000cZI_\u001b\u000b"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, ";.8an-3~%\u007f6$ddw<n\u007fej=.b%J\u0019\u0007IJR\u0011\u0001ETJ\u0011\rSDK\u000c"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "+%b_\u007f?\u0001xo_4)wx>=z"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, ",!qjr1!eTm=1\u007fo"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "\u000b%bJr1!eJp<\u0014wlmx4\u007ff{75b+l1$,"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "R#wgr\u001a!u`09,\u007fjmb"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "x2\u007fo$"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "x4wl_4)wx]9,zi\u007f;+e+$"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "+\u0014wlmb"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "\u000b%bJr1!eJp<\u0014wlmx&\u007few+(61>=2ddl\u001b/rn$"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, ",!qjr1!eT{*2yy}7$s"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, ",!qjr1!e+}9,zi\u007f;+6bmx.cgrc`dbze"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->z:[Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->c:Ljava/lang/Object;

    return-void

    :pswitch_e
    const/16 v9, 0x58

    goto/16 :goto_2

    :pswitch_f
    const/16 v9, 0x40

    goto/16 :goto_2

    :pswitch_10
    const/16 v9, 0x16

    goto/16 :goto_2

    :pswitch_11
    const/16 v9, 0xb

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
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
    .end packed-switch
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private a(J)Lcn/jpush/android/api/b;
    .locals 3

    iget-object v0, p0, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/api/b;

    return-object v0
.end method

.method public static a()Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;
    .locals 2

    sget-object v1, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->a:Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;

    if-nez v0, :cond_0

    new-instance v0, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;

    invoke-direct {v0}, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;-><init>()V

    sput-object v0, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->a:Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->a:Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(J)V
    .locals 3

    iget-object v0, p0, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private declared-synchronized b(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    invoke-static {}, Lcn/jpush/android/util/z;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v1, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    sget-object v2, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->z:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v1, v2, v0}, Lcn/jpush/android/util/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    sget-object v1, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    sget-object v2, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v1, v2, v0}, Lcn/jpush/android/util/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcn/jpush/android/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    sget-object v1, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->z:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->e()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Long;Lcn/jpush/android/api/b;)V
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-wide/16 v4, -0x1

    const/16 v7, 0xe

    const/16 v6, 0x9

    if-nez p2, :cond_0

    invoke-static {}, Lcn/jpush/android/util/z;->e()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->z:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    sget-object v2, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->z:[Ljava/lang/String;

    const/16 v3, 0xd

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    cmp-long v3, v0, v4

    if-nez v3, :cond_1

    invoke-static {}, Lcn/jpush/android/util/z;->e()V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->z:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->z:[Ljava/lang/String;

    const/16 v5, 0xa

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->e()V

    sget-object v3, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->z:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->z:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    invoke-direct {p0, v0, v1}, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->a(J)Lcn/jpush/android/api/b;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, v2, Lcn/jpush/android/api/b;->c:Lcn/jpush/android/api/TagAliasCallback;

    invoke-direct {p0, v0, v1}, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->b(J)V

    if-eqz v3, :cond_2

    sget v0, Lcn/jpush/android/api/d;->b:I

    iget-object v1, v2, Lcn/jpush/android/api/b;->a:Ljava/lang/String;

    iget-object v2, v2, Lcn/jpush/android/api/b;->b:Ljava/util/Set;

    invoke-interface {v3, v0, v1, v2}, Lcn/jpush/android/api/TagAliasCallback;->gotResult(ILjava/lang/String;Ljava/util/Set;)V

    :cond_2
    :goto_1
    invoke-static {}, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->a()Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;

    move-result-object v0

    invoke-direct {v0, p1}, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->b(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->z:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->d()V

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->z:[Ljava/lang/String;

    const/16 v5, 0xc

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->z:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    invoke-direct {p0, v0, v1}, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->a(J)Lcn/jpush/android/api/b;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v4, v3, Lcn/jpush/android/api/b;->c:Lcn/jpush/android/api/TagAliasCallback;

    invoke-direct {p0, v0, v1}, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->b(J)V

    if-nez v2, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v5, v3, Lcn/jpush/android/api/b;->b:Ljava/util/Set;

    invoke-static {v5}, Lcn/jpush/android/api/JPushInterface;->getStringTags(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->z:[Ljava/lang/String;

    const/16 v8, 0xb

    aget-object v7, v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->z:[Ljava/lang/String;

    const/16 v8, 0x8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcn/jpush/android/api/b;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    if-eqz v5, :cond_5

    invoke-static {v5}, Lcn/jpush/android/a;->j(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcn/jpush/android/a;->d(J)V

    :cond_5
    iget-object v5, v3, Lcn/jpush/android/api/b;->a:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, v3, Lcn/jpush/android/api/b;->a:Ljava/lang/String;

    invoke-static {v5}, Lcn/jpush/android/a;->i(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcn/jpush/android/a;->c(J)V

    :cond_6
    if-eqz v4, :cond_2

    iget-object v0, v3, Lcn/jpush/android/api/b;->a:Ljava/lang/String;

    iget-object v1, v3, Lcn/jpush/android/api/b;->b:Ljava/util/Set;

    invoke-interface {v4, v2, v0, v1}, Lcn/jpush/android/api/TagAliasCallback;->gotResult(ILjava/lang/String;Ljava/util/Set;)V

    goto/16 :goto_1

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/ServiceInterface$TagAliasOperator;->z:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->d()V

    goto/16 :goto_1
.end method
