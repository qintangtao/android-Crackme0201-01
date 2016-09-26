.class public final Lcn/jpush/android/service/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static a:Ljava/util/concurrent/atomic/AtomicLong;

.field public static b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final z:[Ljava/lang/String;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/os/Handler;

.field private e:Z

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x14

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "Bw,@\u001d~27SOS~7F\n0x6\\Os}6[\nsf1Z\u00010?x"

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

    const/16 v9, 0x6f

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

    const-string v1, "Qq,\\\u0000~2u\u0015\u000c|}+P,\u007f|6P\u000cd{7[O=2;Z\u0001~w;A\u0006\u007f|b"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "^w,B\u0000by1[\u0008S~1P\u0001d"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "Qq,\\\u0000~2u\u0015\u001bbk\u000bA\u0000`2u\u0015\u000c\u007f|6P\u000cd{7[U"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "E|3[\u0000g|xt\u000c{2*P\u001eew+AO=2;X\u000b*"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "Qq,\\\u0000~2u\u0015\u0000~^7R\u0008uv\u0011[O=2;Z\u0001~w;A\u0006\u007f|b"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "R`=T\u00040`=V\nyd1[\u00080p!\u0015\u0018q|,f\u001b\u007fbx\u0018Os}6[\nsf1Z\u0001*"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "Qq,\\\u0000~2u\u0015\u001duq=\\\u0019uv\u001bZ\u0002}s6QO=2;X\u000b*"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "Qq,\\\u0000~2u\u0015\u0000~^7R\u0006~T9\\\u0003uvx\u0018Obw+E,\u007fv=\u000f"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "}Q7[\u0001uq,\\\u0000~21FObw+P\u001b0f7\u0015_0e0P\u00010|=A\u0018\u007f`3\u0015\u0003ya,P\u0001y|?\u001bOR`=T\u00040|7BA"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "Bw;P\u0006fw<\u0015\nb`7GObw+E\u0000~a=\u0015B0q7Q\n*"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "Bw;P\u0006fw<\u0015\rif=FO=24P\u0001*"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "Uj;P\u001fd{7[Obw;P\u0006fw<\u001bO^}/\u0015\rbw9^O=2*P\u001b*"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "^w,B\u0000byxY\u0006cf=[\u0006~uv\u001bA"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "Rw?\\\u00010f7\u0015\u001de|x\\\u00010Q7[\u0001uq,\\\u0001wF0G\nqvx\u0018Oyvb"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "E|0T\u0001t~=QObw+E\u0000~a=\u0015\u000c\u007f\u007f5T\u0001t2u\u0015"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "<2(^\u0008*"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "S`=T\u001buvxV\u0000~|=V\u001by}6\u0015B0"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, "<2=G\u001d\u007f`b"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_11
    aput-object v1, v3, v2

    const/16 v2, 0x13

    const-string v1, "<2;Z\u0001~w;A\u0006\u007f|b"

    const/16 v0, 0x12

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_12
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcn/jpush/android/service/k;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void

    :pswitch_13
    const/16 v9, 0x10

    goto/16 :goto_2

    :pswitch_14
    const/16 v9, 0x12

    goto/16 :goto_2

    :pswitch_15
    const/16 v9, 0x58

    goto/16 :goto_2

    :pswitch_16
    const/16 v9, 0x35

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
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
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcn/jpush/android/service/k;->f:Z

    iput-object p1, p0, Lcn/jpush/android/service/k;->c:Landroid/content/Context;

    iput-object p2, p0, Lcn/jpush/android/service/k;->d:Landroid/os/Handler;

    iput-boolean v0, p0, Lcn/jpush/android/service/k;->e:Z

    return-void
.end method

.method private b()V
    .locals 4

    const/4 v1, 0x2

    const/4 v3, 0x1

    sget-object v0, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    sget-object v2, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcn/jpush/android/service/k;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v1, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcn/jpush/android/service/PushProtocol;->Close(J)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    sget-object v0, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/service/k;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcn/jpush/android/service/k;->d:Landroid/os/Handler;

    const/16 v1, 0x1c85

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcn/jpush/android/helpers/ConnectingHelper;->sendConnectionToHandler(Landroid/os/Message;J)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/z;->h()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 4

    sget-object v0, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jpush/android/service/k;->f:Z

    sget-object v0, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/jpush/android/service/PushProtocol;->Stop(J)I

    return-void
.end method

.method public final run()V
    .locals 13

    const v12, 0x15180

    const/4 v2, 0x1

    const/16 v11, 0xa

    const/4 v3, 0x0

    const/4 v10, 0x2

    sget-object v0, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    aget-object v0, v0, v10

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    const/16 v5, 0xe

    aget-object v4, v4, v5

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lcn/jpush/android/service/PushProtocol;->InitConn()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    const/16 v4, 0x11

    aget-object v1, v1, v4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    iget-object v0, p0, Lcn/jpush/android/service/k;->c:Landroid/content/Context;

    invoke-static {v0}, Lcn/jpush/android/helpers/ConnectingHelper;->sendSis(Landroid/content/Context;)Lcn/jpush/android/service/SisInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/jpush/android/service/SisInfo;->configure()V

    :cond_0
    iget-object v1, p0, Lcn/jpush/android/service/k;->c:Landroid/content/Context;

    sget-object v4, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-static {v1, v4, v5, v0}, Lcn/jpush/android/helpers/ConnectingHelper;->openConnection(Landroid/content/Context;JLcn/jpush/android/service/SisInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcn/jpush/android/service/k;->b()V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcn/jpush/android/a;->u()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/jpush/android/service/k;->c:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget-boolean v1, p0, Lcn/jpush/android/service/k;->e:Z

    invoke-static {v0, v4, v5, v1}, Lcn/jpush/android/helpers/ConnectingHelper;->register(Landroid/content/Context;JZ)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcn/jpush/android/a;->n()I

    move-result v0

    if-ne v12, v0, :cond_2

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    iget-object v0, p0, Lcn/jpush/android/service/k;->d:Landroid/os/Handler;

    const/16 v1, 0x3e9

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    invoke-direct {p0}, Lcn/jpush/android/service/k;->b()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcn/jpush/android/service/k;->c:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcn/jpush/android/helpers/ConnectingHelper;->login(Landroid/content/Context;J)I

    move-result v0

    if-gez v0, :cond_4

    invoke-direct {p0}, Lcn/jpush/android/service/k;->b()V

    goto :goto_0

    :cond_4
    if-lez v0, :cond_5

    sget-object v1, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    iget-object v0, p0, Lcn/jpush/android/service/k;->d:Landroid/os/Handler;

    const/16 v1, 0x1c8a

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcn/jpush/android/helpers/ConnectingHelper;->sendConnectionToHandler(Landroid/os/Message;J)V

    invoke-direct {p0}, Lcn/jpush/android/service/k;->b()V

    goto :goto_0

    :cond_5
    const-wide/16 v0, 0x0

    sget-object v4, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_6

    sget-object v0, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    sget-object v4, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    aget-object v4, v4, v10

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/jpush/android/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcn/jpush/android/service/k;->d:Landroid/os/Handler;

    const/16 v5, 0x1c88

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcn/jpush/android/helpers/ConnectingHelper;->sendConnectionToHandler(Landroid/os/Message;J)V

    const/16 v0, 0x2000

    new-array v4, v0, [B

    :goto_2
    iget-boolean v0, p0, Lcn/jpush/android/service/k;->f:Z

    if-nez v0, :cond_12

    sget-object v0, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    aget-object v0, v0, v10

    sget-object v1, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    const/16 v5, 0xd

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1, v4, v12}, Lcn/jpush/android/service/PushProtocol;->RecvPush(J[BI)I

    move-result v0

    sget-object v1, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    aget-object v1, v1, v10

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    const/16 v7, 0xb

    aget-object v6, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    const/16 v7, 0x13

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    const/16 v7, 0x10

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcn/jpush/android/e;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    sget-object v1, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-nez v1, :cond_7

    sget-object v0, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    aget-object v0, v0, v10

    sget-object v1, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcn/jpush/android/util/z;->d()V

    goto/16 :goto_0

    :cond_7
    if-lez v0, :cond_10

    iget-object v5, p0, Lcn/jpush/android/service/k;->c:Landroid/content/Context;

    new-array v6, v0, [B

    invoke-static {v4, v3, v6, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6}, Lcn/jpush/b/a/a/d;->a([B)Lcn/jpush/b/a/a/h;

    move-result-object v1

    if-nez v1, :cond_8

    invoke-static {}, Lcn/jpush/android/util/z;->e()V

    goto/16 :goto_2

    :cond_8
    sget-object v0, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    aget-object v0, v0, v10

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    const/4 v9, 0x7

    aget-object v8, v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/jpush/b/a/a/h;->d()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    aget-object v0, v0, v10

    invoke-virtual {v1}, Lcn/jpush/b/a/a/h;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcn/jpush/android/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/jpush/b/a/a/h;->d()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_9
    :goto_3
    move v0, v3

    :goto_4
    if-nez v0, :cond_a

    iget-object v0, p0, Lcn/jpush/android/service/k;->d:Landroid/os/Handler;

    const/16 v7, 0x1c86

    invoke-static {v0, v7, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget-object v7, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    invoke-static {v0, v8, v9}, Lcn/jpush/android/helpers/ConnectingHelper;->sendConnectionToHandler(Landroid/os/Message;J)V

    :cond_a
    iget v0, v1, Lcn/jpush/b/a/a/h;->g:I

    if-eqz v0, :cond_d

    sget-object v0, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    aget-object v0, v0, v10

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    aget-object v6, v6, v11

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcn/jpush/b/a/a/h;->g:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    const/16 v7, 0x12

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, v1, Lcn/jpush/b/a/a/h;->h:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_0
    move v0, v2

    goto :goto_4

    :sswitch_1
    move-object v0, v1

    check-cast v0, Lcn/jpush/b/a/a/c;

    invoke-virtual {v0}, Lcn/jpush/b/a/a/c;->a()Lcn/jpush/b/a/b/p;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {}, Lcn/jpush/android/util/z;->e()V

    goto :goto_3

    :cond_b
    invoke-virtual {v0}, Lcn/jpush/b/a/b/p;->b()I

    move-result v0

    invoke-static {v0}, Lcn/jpush/android/helpers/h;->a(I)Z

    move-result v0

    goto :goto_4

    :sswitch_2
    move-object v0, v1

    check-cast v0, Lcn/jpush/b/a/a/a;

    invoke-virtual {v0}, Lcn/jpush/b/a/a/a;->a()I

    move-result v7

    if-eq v7, v11, :cond_c

    invoke-virtual {v0}, Lcn/jpush/b/a/a/a;->a()I

    move-result v0

    if-ne v0, v10, :cond_9

    :cond_c
    move v0, v2

    goto :goto_4

    :cond_d
    invoke-virtual {v1}, Lcn/jpush/b/a/a/h;->d()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    const/16 v6, 0xf

    aget-object v5, v5, v6

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/jpush/b/a/a/h;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->d()V

    goto/16 :goto_2

    :sswitch_3
    iget-object v0, p0, Lcn/jpush/android/service/k;->d:Landroid/os/Handler;

    sget-object v6, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    invoke-static {v5, v0, v6, v7, v1}, Lcn/jpush/android/helpers/f;->a(Landroid/content/Context;Landroid/os/Handler;JLcn/jpush/b/a/a/h;)V

    goto/16 :goto_2

    :sswitch_4
    sget-object v0, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    check-cast v1, Lcn/jpush/b/a/a/a;

    invoke-virtual {v1}, Lcn/jpush/b/a/a/a;->a()I

    move-result v0

    if-ne v0, v10, :cond_e

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    iget-object v0, p0, Lcn/jpush/android/service/k;->d:Landroid/os/Handler;

    const/16 v1, 0x1c87

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcn/jpush/android/helpers/ConnectingHelper;->sendConnectionToHandler(Landroid/os/Message;J)V

    goto/16 :goto_2

    :cond_e
    if-ne v0, v11, :cond_f

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    goto/16 :goto_2

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->d()V

    goto/16 :goto_2

    :sswitch_5
    iget-object v0, p0, Lcn/jpush/android/service/k;->c:Landroid/content/Context;

    iget-object v5, p0, Lcn/jpush/android/service/k;->d:Landroid/os/Handler;

    invoke-static {v0, v5, v1, v6}, Lcn/jpush/b/a/b/t;->a(Landroid/content/Context;Landroid/os/Handler;Lcn/jpush/b/a/a/h;[B)V

    goto/16 :goto_2

    :sswitch_6
    invoke-static {}, Lcn/jpush/android/util/z;->d()V

    goto/16 :goto_2

    :cond_10
    const/16 v1, -0x3e2

    if-ne v0, v1, :cond_11

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    goto/16 :goto_2

    :cond_11
    sget-object v1, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    aget-object v1, v1, v10

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    const/16 v4, 0xc

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    iget-boolean v0, p0, Lcn/jpush/android/service/k;->f:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    aget-object v0, v0, v10

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/jpush/android/service/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    invoke-direct {p0}, Lcn/jpush/android/service/k;->b()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x13 -> :sswitch_2
        0x64 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_3
        0xa -> :sswitch_6
        0x13 -> :sswitch_4
        0x64 -> :sswitch_5
    .end sparse-switch
.end method
