.class public abstract Lcn/jpush/b/a/b/q;
.super Ljava/lang/Object;


# static fields
.field protected static f:Lcom/google/gson/jpush/k;

.field private static final z:Ljava/lang/String;


# instance fields
.field protected g:J
    .annotation runtime Lcom/google/gson/jpush/annotations/a;
    .end annotation
.end field

.field protected h:J
    .annotation runtime Lcom/google/gson/jpush/annotations/a;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "2@\u0019^\u0019\u0003B\u0014[W\u0004A\u001cR\u0016\tJQ\u0012W"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_2

    :cond_0
    move-object v3, v0

    move v4, v2

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_0
    aget-char v6, v1, v2

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_0

    const/16 v5, 0x77

    :goto_1
    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v2

    add-int/lit8 v2, v4, 0x1

    if-nez v0, :cond_1

    move-object v1, v3

    move v4, v2

    move v2, v0

    goto :goto_0

    :cond_1
    move v1, v0

    move-object v0, v3

    :cond_2
    if-gt v1, v2, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jpush/b/a/b/q;->z:Ljava/lang/String;

    new-instance v0, Lcom/google/gson/jpush/r;

    invoke-direct {v0}, Lcom/google/gson/jpush/r;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/jpush/r;->a()Lcom/google/gson/jpush/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/jpush/r;->b()Lcom/google/gson/jpush/k;

    move-result-object v0

    sput-object v0, Lcn/jpush/b/a/b/q;->f:Lcom/google/gson/jpush/k;

    return-void

    :pswitch_0
    const/16 v5, 0x67

    goto :goto_1

    :pswitch_1
    const/16 v5, 0x2e

    goto :goto_1

    :pswitch_2
    const/16 v5, 0x71

    goto :goto_1

    :pswitch_3
    const/16 v5, 0x3f

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcn/jpush/b/a/b/q;->g:J

    iput-wide v0, p0, Lcn/jpush/b/a/b/q;->h:J

    return-void
.end method

.method public static a(Ljava/lang/String;I)Lcn/jpush/b/a/b/q;
    .locals 3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/b/a/b/q;->z:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    const-class v0, Lcn/jpush/b/a/b/r;

    :goto_1
    sget-object v1, Lcn/jpush/b/a/b/q;->f:Lcom/google/gson/jpush/k;

    invoke-virtual {v1, p0, v0}, Lcom/google/gson/jpush/k;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/b/a/b/q;

    goto :goto_0

    :pswitch_2
    const-class v0, Lcn/jpush/b/a/b/s;

    goto :goto_1

    :pswitch_3
    const-class v0, Lcn/jpush/b/a/b/v;

    goto :goto_1

    :pswitch_4
    const-class v0, Lcn/jpush/b/a/b/o;

    goto :goto_1

    :pswitch_5
    const-class v0, Lcn/jpush/b/a/b/b;

    goto :goto_1

    :pswitch_6
    const-class v0, Lcn/jpush/b/a/b/i;

    goto :goto_1

    :pswitch_7
    const-class v0, Lcn/jpush/b/a/b/x;

    goto :goto_1

    :pswitch_8
    const-class v0, Lcn/jpush/b/a/b/g;

    goto :goto_1

    :pswitch_9
    const-class v0, Lcn/jpush/b/a/b/n;

    goto :goto_1

    :pswitch_a
    const-class v0, Lcn/jpush/b/a/b/c;

    goto :goto_1

    :pswitch_b
    const-class v0, Lcn/jpush/b/a/b/j;

    goto :goto_1

    :pswitch_c
    const-class v0, Lcn/jpush/b/a/b/w;

    goto :goto_1

    :pswitch_d
    const-class v0, Lcn/jpush/b/a/b/a;

    goto :goto_1

    :pswitch_e
    const-class v0, Lcn/jpush/b/a/b/h;

    goto :goto_1

    :pswitch_f
    const-class v0, Lcn/jpush/b/a/b/u;

    goto :goto_1

    :pswitch_10
    const-class v0, Lcn/jpush/b/a/b/f;

    goto :goto_1

    :pswitch_11
    const-class v0, Lcn/jpush/b/a/b/m;

    goto :goto_1

    :pswitch_12
    const-class v0, Lcn/jpush/b/a/b/e;

    goto :goto_1

    :pswitch_13
    const-class v0, Lcn/jpush/b/a/b/l;

    goto :goto_1

    :pswitch_14
    const-class v0, Lcn/jpush/b/a/b/d;

    goto :goto_1

    :pswitch_15
    const-class v0, Lcn/jpush/b/a/b/k;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcn/jpush/b/a/a/b;
    .locals 6

    new-instance v0, Lcn/jpush/b/a/a/b;

    iget-wide v2, p0, Lcn/jpush/b/a/b/q;->g:J

    iget-wide v4, p0, Lcn/jpush/b/a/b/q;->h:J

    invoke-virtual {p0, v4, v5, p1}, Lcn/jpush/b/a/b/q;->a(JLjava/lang/String;)Lcn/jpush/b/a/b/p;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcn/jpush/b/a/a/b;-><init>(JLcn/jpush/b/a/b/p;)V

    return-object v0
.end method

.method abstract a(JLjava/lang/String;)Lcn/jpush/b/a/b/p;
.end method
