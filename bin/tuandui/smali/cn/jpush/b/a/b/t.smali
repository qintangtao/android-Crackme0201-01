.class public final Lcn/jpush/b/a/b/t;
.super Ljava/lang/Object;


# static fields
.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x9

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "\"dP\u0007\u001c\u0012k\u0011!4\u0002iX\u00054\u0005,\u001cS<\u0012kx\u0017k"

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

    const/16 v9, 0x51

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

    const-string v1, " oE\u001a>\u000f,\u001cS\"\u0004bU09\u0000x|\u000062u_\u0010\u0013\u0000oZS|A~X\u0017k"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "\u0008an\u00014\u0012|^\u001d\"\u0004"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "M,T\u00054\u000fxx\u0017k"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "\u0002b\u001f\u0019!\u0014\u007fY]8\u000c\"P\u001d5\u0013cX\u0017\u007f\u0000oE\u001a>\u000f\"x>\u000e3Ib#\u001e/_t"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "(ac\u0016\"\u0011c_\u00004)i]\u00034\u0013"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "M,C\u001a5["

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, " oE\u001a>\u000f,\u001cS9\u0000bU\u001f4(ac\u0016\"\u0011c_\u00004A!\u0011\u001a<\"aUI"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, " oE\u001a>\u000f,\u001cS\"\u0004bU6\'\u0004bE10\u0002g\u0011^q\u0013eUI"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/b/a/b/t;->z:[Ljava/lang/String;

    return-void

    :pswitch_8
    const/16 v9, 0x61

    goto :goto_2

    :pswitch_9
    const/16 v9, 0xc

    goto :goto_2

    :pswitch_a
    const/16 v9, 0x31

    goto :goto_2

    :pswitch_b
    const/16 v9, 0x73

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
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
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Landroid/os/Handler;Lcn/jpush/b/a/a/h;[B)V
    .locals 9

    const/4 v8, 0x0

    check-cast p2, Lcn/jpush/b/a/a/c;

    invoke-virtual {p2}, Lcn/jpush/b/a/a/c;->a()Lcn/jpush/b/a/b/p;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcn/jpush/android/util/z;->e()V

    :goto_0
    return-void

    :cond_0
    iget v0, v1, Lcn/jpush/b/a/b/p;->a:I

    invoke-virtual {p2}, Lcn/jpush/b/a/a/c;->e()Lcn/jpush/b/a/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jpush/b/a/a/e;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Lcn/jpush/b/a/b/t;->z:[Ljava/lang/String;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcn/jpush/b/a/b/t;->z:[Ljava/lang/String;

    const/4 v7, 0x7

    aget-object v6, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcn/jpush/b/a/b/t;->z:[Ljava/lang/String;

    const/4 v7, 0x6

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch v0, :sswitch_data_0

    :goto_1
    sget-object v0, Lcn/jpush/b/a/b/t;->z:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/b/a/b/t;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {p0, v0, v1, p3}, Lcn/jpush/android/util/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_0

    :sswitch_0
    iget-object v0, v1, Lcn/jpush/b/a/b/p;->f:Lcn/jpush/a/a/af;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/jpush/a/a/af;->d()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcn/jpush/android/a;->a(Z)V

    invoke-static {}, Lcn/jpush/android/a;->m()V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    invoke-static {v8}, Lcn/jpush/android/a;->a(Z)V

    goto :goto_1

    :sswitch_1
    iget-object v0, v1, Lcn/jpush/b/a/b/p;->f:Lcn/jpush/a/a/af;

    invoke-virtual {v0}, Lcn/jpush/a/a/af;->d()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    invoke-static {v8}, Lcn/jpush/android/a;->a(Z)V

    invoke-static {p0}, Lcn/jpush/android/helpers/h;->c(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcn/jpush/android/util/z;->e()V

    goto :goto_1

    :sswitch_2
    iget-object v0, v1, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    check-cast v0, Lcn/jpush/a/a/ba;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/b/a/b/t;->z:[Ljava/lang/String;

    const/16 v6, 0x8

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcn/jpush/b/a/b/t;->z:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcn/jpush/a/a/ba;->d()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    invoke-static {}, Lcn/jpush/a/a/ba;->t()Lcn/jpush/a/a/bb;

    move-result-object v4

    invoke-virtual {v0}, Lcn/jpush/a/a/ba;->d()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcn/jpush/a/a/bb;->a(J)Lcn/jpush/a/a/bb;

    move-result-object v4

    invoke-virtual {v0}, Lcn/jpush/a/a/ba;->f()I

    move-result v5

    invoke-virtual {v4, v5}, Lcn/jpush/a/a/bb;->a(I)Lcn/jpush/a/a/bb;

    move-result-object v4

    invoke-virtual {v0}, Lcn/jpush/a/a/ba;->h()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcn/jpush/a/a/bb;->b(J)Lcn/jpush/a/a/bb;

    move-result-object v4

    invoke-virtual {v0}, Lcn/jpush/a/a/ba;->j()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcn/jpush/a/a/bb;->c(J)Lcn/jpush/a/a/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/a/a/bb;->a()Lcn/jpush/a/a/ba;

    move-result-object v0

    iput-object v0, v1, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    new-instance v0, Lcn/jpush/b/a/a/b;

    invoke-direct {v0, v2, v3, v1}, Lcn/jpush/b/a/a/b;-><init>(JLcn/jpush/b/a/b/p;)V

    const/16 v1, 0x1d4d

    invoke-static {p1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :sswitch_3
    invoke-static {p1, v2, v3, v1}, Lcn/jpush/b/a/b/t;->a(Landroid/os/Handler;JLcn/jpush/b/a/b/p;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xd -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method private static a(Landroid/os/Handler;JLcn/jpush/b/a/b/p;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/b/a/b/t;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    iget-object v0, p3, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    check-cast v0, Lcn/jpush/a/a/aq;

    invoke-static {}, Lcn/jpush/a/a/aq;->e()Lcn/jpush/a/a/ar;

    move-result-object v1

    invoke-virtual {v0}, Lcn/jpush/a/a/aq;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/a/a/ao;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/b/a/b/t;->z:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/jpush/a/a/ao;->h()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    invoke-static {}, Lcn/jpush/a/a/ao;->r()Lcn/jpush/a/a/ap;

    move-result-object v3

    invoke-virtual {v0}, Lcn/jpush/a/a/ao;->h()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcn/jpush/a/a/ap;->c(J)Lcn/jpush/a/a/ap;

    move-result-object v3

    invoke-virtual {v0}, Lcn/jpush/a/a/ao;->j()I

    move-result v4

    invoke-virtual {v3, v4}, Lcn/jpush/a/a/ap;->a(I)Lcn/jpush/a/a/ap;

    move-result-object v3

    invoke-virtual {v0}, Lcn/jpush/a/a/ao;->d()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcn/jpush/a/a/ap;->a(J)Lcn/jpush/a/a/ap;

    move-result-object v3

    invoke-virtual {v0}, Lcn/jpush/a/a/ao;->f()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcn/jpush/a/a/ap;->b(J)Lcn/jpush/a/a/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/a/a/ap;->a()Lcn/jpush/a/a/ao;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/jpush/a/a/ar;->a(Lcn/jpush/a/a/ao;)Lcn/jpush/a/a/ar;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcn/jpush/a/a/ar;->a()Lcn/jpush/a/a/aq;

    move-result-object v0

    iput-object v0, p3, Lcn/jpush/b/a/b/p;->e:Ljava/lang/Object;

    new-instance v0, Lcn/jpush/b/a/a/b;

    invoke-direct {v0, p1, p2, p3}, Lcn/jpush/b/a/a/b;-><init>(JLcn/jpush/b/a/b/p;)V

    const/16 v1, 0x1d4e

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
