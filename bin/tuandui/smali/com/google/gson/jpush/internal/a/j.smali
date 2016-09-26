.class public final Lcom/google/gson/jpush/internal/a/j;
.super Lcom/google/gson/jpush/b/d;


# static fields
.field private static final a:Ljava/io/Writer;

.field private static final b:Lcom/google/gson/jpush/ac;

.field private static final z:[Ljava/lang/String;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/jpush/w;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lcom/google/gson/jpush/w;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/String;

    const-string v4, "Z\n.\u001f\nv6\u00133Ct*A\u001fK^y\u0000?N00\u000f7C~0\u00158OccA"

    const/4 v0, -0x1

    move-object v7, v5

    move-object v8, v5

    move v5, v1

    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v9, v4

    if-gt v9, v2, :cond_2

    move v10, v1

    :cond_0
    move-object v11, v4

    move v12, v10

    move v15, v9

    move-object v9, v4

    move v4, v15

    :goto_1
    aget-char v14, v9, v10

    rem-int/lit8 v13, v12, 0x5

    packed-switch v13, :pswitch_data_0

    const/16 v13, 0x2a

    :goto_2
    xor-int/2addr v13, v14

    int-to-char v13, v13

    aput-char v13, v9, v10

    add-int/lit8 v10, v12, 0x1

    if-nez v4, :cond_1

    move-object v9, v11

    move v12, v10

    move v10, v4

    goto :goto_1

    :cond_1
    move v9, v4

    move-object v4, v11

    :goto_3
    if-gt v9, v10, :cond_0

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    packed-switch v0, :pswitch_data_1

    aput-object v4, v7, v5

    const-string v0, "Y7\u0002>G`5\u0004%O0=\u000e2_}<\u000f%"

    move-object v4, v0

    move v5, v2

    move-object v7, v8

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v4, v7, v5

    const-string v0, "U!\u00114Id<\u0005qE~<A\u001by_\u0017A4Fu4\u0004?^0;\u0014%\ng8\u0012q"

    move-object v4, v0

    move v5, v3

    move-object v7, v8

    move v0, v2

    goto :goto_0

    :pswitch_1
    aput-object v4, v7, v5

    const-string v0, "s5\u000e\"Ot"

    move-object v4, v0

    move v5, v6

    move-object v7, v8

    move v0, v3

    goto :goto_0

    :pswitch_2
    aput-object v4, v7, v5

    sput-object v8, Lcom/google/gson/jpush/internal/a/j;->z:[Ljava/lang/String;

    new-instance v0, Lcom/google/gson/jpush/internal/a/k;

    invoke-direct {v0}, Lcom/google/gson/jpush/internal/a/k;-><init>()V

    sput-object v0, Lcom/google/gson/jpush/internal/a/j;->a:Ljava/io/Writer;

    new-instance v0, Lcom/google/gson/jpush/ac;

    sget-object v1, Lcom/google/gson/jpush/internal/a/j;->z:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-direct {v0, v1}, Lcom/google/gson/jpush/ac;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gson/jpush/internal/a/j;->b:Lcom/google/gson/jpush/ac;

    return-void

    :pswitch_3
    const/16 v13, 0x10

    goto :goto_2

    :pswitch_4
    const/16 v13, 0x59

    goto :goto_2

    :pswitch_5
    const/16 v13, 0x61

    goto :goto_2

    :pswitch_6
    const/16 v13, 0x51

    goto :goto_2

    :cond_2
    move v10, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/google/gson/jpush/internal/a/j;->a:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/b/d;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/jpush/internal/a/j;->c:Ljava/util/List;

    sget-object v0, Lcom/google/gson/jpush/y;->a:Lcom/google/gson/jpush/y;

    iput-object v0, p0, Lcom/google/gson/jpush/internal/a/j;->e:Lcom/google/gson/jpush/w;

    return-void
.end method

.method private a(Lcom/google/gson/jpush/w;)V
    .locals 2

    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/j;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/google/gson/jpush/y;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/jpush/internal/a/j;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/google/gson/jpush/internal/a/j;->j()Lcom/google/gson/jpush/w;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/z;

    iget-object v1, p0, Lcom/google/gson/jpush/internal/a/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/jpush/z;->a(Ljava/lang/String;Lcom/google/gson/jpush/w;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/jpush/internal/a/j;->d:Ljava/lang/String;

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/google/gson/jpush/internal/a/j;->e:Lcom/google/gson/jpush/w;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/google/gson/jpush/internal/a/j;->j()Lcom/google/gson/jpush/w;

    move-result-object v0

    instance-of v1, v0, Lcom/google/gson/jpush/t;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/google/gson/jpush/t;

    invoke-virtual {v0, p1}, Lcom/google/gson/jpush/t;->a(Lcom/google/gson/jpush/w;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private j()Lcom/google/gson/jpush/w;
    .locals 2

    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/j;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/google/gson/jpush/internal/a/j;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/w;

    return-object v0
.end method


# virtual methods
.method public final a(J)Lcom/google/gson/jpush/b/d;
    .locals 3

    new-instance v0, Lcom/google/gson/jpush/ac;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/jpush/ac;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/internal/a/j;->a(Lcom/google/gson/jpush/w;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Number;)Lcom/google/gson/jpush/b/d;
    .locals 4

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/jpush/internal/a/j;->f()Lcom/google/gson/jpush/b/d;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/jpush/internal/a/j;->g()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/gson/jpush/internal/a/j;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/google/gson/jpush/ac;

    invoke-direct {v0, p1}, Lcom/google/gson/jpush/ac;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/internal/a/j;->a(Lcom/google/gson/jpush/w;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/gson/jpush/b/d;
    .locals 1

    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/j;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/google/gson/jpush/internal/a/j;->j()Lcom/google/gson/jpush/w;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/jpush/z;

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/google/gson/jpush/internal/a/j;->d:Ljava/lang/String;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final a(Z)Lcom/google/gson/jpush/b/d;
    .locals 2

    new-instance v0, Lcom/google/gson/jpush/ac;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/jpush/ac;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/internal/a/j;->a(Lcom/google/gson/jpush/w;)V

    return-object p0
.end method

.method public final a()Lcom/google/gson/jpush/w;
    .locals 4

    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/gson/jpush/internal/a/j;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/gson/jpush/internal/a/j;->c:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/j;->e:Lcom/google/gson/jpush/w;

    return-object v0
.end method

.method public final b()Lcom/google/gson/jpush/b/d;
    .locals 2

    new-instance v0, Lcom/google/gson/jpush/t;

    invoke-direct {v0}, Lcom/google/gson/jpush/t;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/internal/a/j;->a(Lcom/google/gson/jpush/w;)V

    iget-object v1, p0, Lcom/google/gson/jpush/internal/a/j;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/gson/jpush/b/d;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/jpush/internal/a/j;->f()Lcom/google/gson/jpush/b/d;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/gson/jpush/ac;

    invoke-direct {v0, p1}, Lcom/google/gson/jpush/ac;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/internal/a/j;->a(Lcom/google/gson/jpush/w;)V

    goto :goto_0
.end method

.method public final c()Lcom/google/gson/jpush/b/d;
    .locals 2

    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/j;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/google/gson/jpush/internal/a/j;->j()Lcom/google/gson/jpush/w;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/jpush/t;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/j;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/google/gson/jpush/internal/a/j;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    sget-object v1, Lcom/google/gson/jpush/internal/a/j;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/j;->c:Ljava/util/List;

    sget-object v1, Lcom/google/gson/jpush/internal/a/j;->b:Lcom/google/gson/jpush/ac;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d()Lcom/google/gson/jpush/b/d;
    .locals 2

    new-instance v0, Lcom/google/gson/jpush/z;

    invoke-direct {v0}, Lcom/google/gson/jpush/z;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/internal/a/j;->a(Lcom/google/gson/jpush/w;)V

    iget-object v1, p0, Lcom/google/gson/jpush/internal/a/j;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final e()Lcom/google/gson/jpush/b/d;
    .locals 2

    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/j;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/google/gson/jpush/internal/a/j;->j()Lcom/google/gson/jpush/w;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/jpush/z;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/j;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/google/gson/jpush/internal/a/j;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final f()Lcom/google/gson/jpush/b/d;
    .locals 1

    sget-object v0, Lcom/google/gson/jpush/y;->a:Lcom/google/gson/jpush/y;

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/internal/a/j;->a(Lcom/google/gson/jpush/w;)V

    return-object p0
.end method

.method public final flush()V
    .locals 0

    return-void
.end method
