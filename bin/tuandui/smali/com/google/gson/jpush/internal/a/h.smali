.class public final Lcom/google/gson/jpush/internal/a/h;
.super Lcom/google/gson/jpush/b/a;


# static fields
.field private static final a:Ljava/io/Reader;

.field private static final b:Ljava/lang/Object;

.field private static final z:[Ljava/lang/String;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/String;

    const-string v4, "C)(9,\u0014*.m"

    const/4 v0, -0x1

    move-object v6, v5

    move-object v7, v5

    move v5, v1

    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v8, v4

    if-gt v8, v2, :cond_2

    move v9, v1

    :cond_0
    move-object v10, v4

    move v11, v9

    move v14, v8

    move-object v8, v4

    move v4, v14

    :goto_1
    aget-char v13, v8, v9

    rem-int/lit8 v12, v11, 0x5

    packed-switch v12, :pswitch_data_0

    const/16 v12, 0xc

    :goto_2
    xor-int/2addr v12, v13

    int-to-char v12, v12

    aput-char v12, v8, v9

    add-int/lit8 v9, v11, 0x1

    if-nez v4, :cond_1

    move-object v8, v10

    move v11, v9

    move v9, v4

    goto :goto_1

    :cond_1
    move v8, v4

    move-object v4, v10

    :goto_3
    if-gt v8, v9, :cond_0

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    packed-switch v0, :pswitch_data_1

    aput-object v4, v6, v5

    const-string v0, "&3-(o\u0017.9m"

    move-object v4, v0

    move v5, v2

    move-object v6, v7

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v4, v6, v5

    const-string v0, ")82#^\u0006*9(~C\".mo\u000f$.(h"

    move-object v4, v0

    move v5, v3

    move-object v6, v7

    move v0, v2

    goto :goto_0

    :pswitch_1
    aput-object v4, v6, v5

    const/4 v4, 0x3

    const-string v0, ")\u0018\u0012\u0003,\u0005$//e\u00078}\u0003m-k<#hC\"3+e\r\")$i\u0010q}"

    move v5, v4

    move-object v6, v7

    move-object v4, v0

    move v0, v3

    goto :goto_0

    :pswitch_2
    aput-object v4, v6, v5

    sput-object v7, Lcom/google/gson/jpush/internal/a/h;->z:[Ljava/lang/String;

    new-instance v0, Lcom/google/gson/jpush/internal/a/i;

    invoke-direct {v0}, Lcom/google/gson/jpush/internal/a/i;-><init>()V

    sput-object v0, Lcom/google/gson/jpush/internal/a/h;->a:Ljava/io/Reader;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/gson/jpush/internal/a/h;->b:Ljava/lang/Object;

    return-void

    :pswitch_3
    const/16 v12, 0x63

    goto :goto_2

    :pswitch_4
    const/16 v12, 0x4b

    goto :goto_2

    :pswitch_5
    const/16 v12, 0x5d

    goto :goto_2

    :pswitch_6
    const/16 v12, 0x4d

    goto :goto_2

    :cond_2
    move v9, v1

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

.method private a(Lcom/google/gson/jpush/b/c;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/gson/jpush/internal/a/h;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v0

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/gson/jpush/internal/a/h;->z:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/internal/a/h;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/jpush/internal/a/h;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private r()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/h;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/google/gson/jpush/internal/a/h;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private s()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/h;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/google/gson/jpush/internal/a/h;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    sget-object v0, Lcom/google/gson/jpush/b/c;->a:Lcom/google/gson/jpush/b/c;

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/internal/a/h;->a(Lcom/google/gson/jpush/b/c;)V

    invoke-direct {p0}, Lcom/google/gson/jpush/internal/a/h;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/t;

    iget-object v1, p0, Lcom/google/gson/jpush/internal/a/h;->c:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/gson/jpush/t;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 1

    sget-object v0, Lcom/google/gson/jpush/b/c;->b:Lcom/google/gson/jpush/b/c;

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/internal/a/h;->a(Lcom/google/gson/jpush/b/c;)V

    invoke-direct {p0}, Lcom/google/gson/jpush/internal/a/h;->s()Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/gson/jpush/internal/a/h;->s()Ljava/lang/Object;

    return-void
.end method

.method public final c()V
    .locals 2

    sget-object v0, Lcom/google/gson/jpush/b/c;->c:Lcom/google/gson/jpush/b/c;

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/internal/a/h;->a(Lcom/google/gson/jpush/b/c;)V

    invoke-direct {p0}, Lcom/google/gson/jpush/internal/a/h;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/z;

    iget-object v1, p0, Lcom/google/gson/jpush/internal/a/h;->c:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/gson/jpush/z;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/h;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/h;->c:Ljava/util/List;

    sget-object v1, Lcom/google/gson/jpush/internal/a/h;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d()V
    .locals 1

    sget-object v0, Lcom/google/gson/jpush/b/c;->d:Lcom/google/gson/jpush/b/c;

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/internal/a/h;->a(Lcom/google/gson/jpush/b/c;)V

    invoke-direct {p0}, Lcom/google/gson/jpush/internal/a/h;->s()Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/gson/jpush/internal/a/h;->s()Ljava/lang/Object;

    return-void
.end method

.method public final e()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/gson/jpush/internal/a/h;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v0

    sget-object v1, Lcom/google/gson/jpush/b/c;->d:Lcom/google/gson/jpush/b/c;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/gson/jpush/b/c;->b:Lcom/google/gson/jpush/b/c;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Lcom/google/gson/jpush/b/c;
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/h;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/gson/jpush/b/c;->j:Lcom/google/gson/jpush/b/c;

    :goto_1
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/gson/jpush/internal/a/h;->r()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/gson/jpush/internal/a/h;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/google/gson/jpush/internal/a/h;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/google/gson/jpush/z;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    sget-object v0, Lcom/google/gson/jpush/b/c;->e:Lcom/google/gson/jpush/b/c;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/gson/jpush/internal/a/h;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    sget-object v0, Lcom/google/gson/jpush/b/c;->d:Lcom/google/gson/jpush/b/c;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/google/gson/jpush/b/c;->b:Lcom/google/gson/jpush/b/c;

    goto :goto_1

    :cond_4
    instance-of v1, v0, Lcom/google/gson/jpush/z;

    if-eqz v1, :cond_5

    sget-object v0, Lcom/google/gson/jpush/b/c;->c:Lcom/google/gson/jpush/b/c;

    goto :goto_1

    :cond_5
    instance-of v1, v0, Lcom/google/gson/jpush/t;

    if-eqz v1, :cond_6

    sget-object v0, Lcom/google/gson/jpush/b/c;->a:Lcom/google/gson/jpush/b/c;

    goto :goto_1

    :cond_6
    instance-of v1, v0, Lcom/google/gson/jpush/ac;

    if-eqz v1, :cond_a

    check-cast v0, Lcom/google/gson/jpush/ac;

    invoke-virtual {v0}, Lcom/google/gson/jpush/ac;->l()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Lcom/google/gson/jpush/b/c;->f:Lcom/google/gson/jpush/b/c;

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lcom/google/gson/jpush/ac;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v0, Lcom/google/gson/jpush/b/c;->h:Lcom/google/gson/jpush/b/c;

    goto :goto_1

    :cond_8
    invoke-virtual {v0}, Lcom/google/gson/jpush/ac;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/gson/jpush/b/c;->g:Lcom/google/gson/jpush/b/c;

    goto :goto_1

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a
    instance-of v1, v0, Lcom/google/gson/jpush/y;

    if-eqz v1, :cond_b

    sget-object v0, Lcom/google/gson/jpush/b/c;->i:Lcom/google/gson/jpush/b/c;

    goto :goto_1

    :cond_b
    sget-object v1, Lcom/google/gson/jpush/internal/a/h;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/google/gson/jpush/internal/a/h;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final g()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/google/gson/jpush/b/c;->e:Lcom/google/gson/jpush/b/c;

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/internal/a/h;->a(Lcom/google/gson/jpush/b/c;)V

    invoke-direct {p0}, Lcom/google/gson/jpush/internal/a/h;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/gson/jpush/internal/a/h;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/google/gson/jpush/internal/a/h;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v0

    sget-object v1, Lcom/google/gson/jpush/b/c;->f:Lcom/google/gson/jpush/b/c;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/gson/jpush/b/c;->g:Lcom/google/gson/jpush/b/c;

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/google/gson/jpush/internal/a/h;->z:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/google/gson/jpush/b/c;->f:Lcom/google/gson/jpush/b/c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/gson/jpush/internal/a/h;->z:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0}, Lcom/google/gson/jpush/internal/a/h;->s()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/ac;

    invoke-virtual {v0}, Lcom/google/gson/jpush/ac;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Z
    .locals 1

    sget-object v0, Lcom/google/gson/jpush/b/c;->h:Lcom/google/gson/jpush/b/c;

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/internal/a/h;->a(Lcom/google/gson/jpush/b/c;)V

    invoke-direct {p0}, Lcom/google/gson/jpush/internal/a/h;->s()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/ac;

    invoke-virtual {v0}, Lcom/google/gson/jpush/ac;->g()Z

    move-result v0

    return v0
.end method

.method public final j()V
    .locals 1

    sget-object v0, Lcom/google/gson/jpush/b/c;->i:Lcom/google/gson/jpush/b/c;

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/internal/a/h;->a(Lcom/google/gson/jpush/b/c;)V

    invoke-direct {p0}, Lcom/google/gson/jpush/internal/a/h;->s()Ljava/lang/Object;

    return-void
.end method

.method public final k()D
    .locals 6

    invoke-virtual {p0}, Lcom/google/gson/jpush/internal/a/h;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v0

    sget-object v1, Lcom/google/gson/jpush/b/c;->g:Lcom/google/gson/jpush/b/c;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/gson/jpush/b/c;->f:Lcom/google/gson/jpush/b/c;

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/google/gson/jpush/internal/a/h;->z:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/google/gson/jpush/b/c;->g:Lcom/google/gson/jpush/b/c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/gson/jpush/internal/a/h;->z:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0}, Lcom/google/gson/jpush/internal/a/h;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/ac;

    invoke-virtual {v0}, Lcom/google/gson/jpush/ac;->d()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/gson/jpush/internal/a/h;->p()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/google/gson/jpush/internal/a/h;->z:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-direct {p0}, Lcom/google/gson/jpush/internal/a/h;->s()Ljava/lang/Object;

    return-wide v0
.end method

.method public final l()J
    .locals 5

    invoke-virtual {p0}, Lcom/google/gson/jpush/internal/a/h;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v0

    sget-object v1, Lcom/google/gson/jpush/b/c;->g:Lcom/google/gson/jpush/b/c;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/gson/jpush/b/c;->f:Lcom/google/gson/jpush/b/c;

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/google/gson/jpush/internal/a/h;->z:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/google/gson/jpush/b/c;->g:Lcom/google/gson/jpush/b/c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/gson/jpush/internal/a/h;->z:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0}, Lcom/google/gson/jpush/internal/a/h;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/ac;

    invoke-virtual {v0}, Lcom/google/gson/jpush/ac;->e()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/google/gson/jpush/internal/a/h;->s()Ljava/lang/Object;

    return-wide v0
.end method

.method public final m()I
    .locals 5

    invoke-virtual {p0}, Lcom/google/gson/jpush/internal/a/h;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v0

    sget-object v1, Lcom/google/gson/jpush/b/c;->g:Lcom/google/gson/jpush/b/c;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/gson/jpush/b/c;->f:Lcom/google/gson/jpush/b/c;

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/google/gson/jpush/internal/a/h;->z:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/google/gson/jpush/b/c;->g:Lcom/google/gson/jpush/b/c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/gson/jpush/internal/a/h;->z:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0}, Lcom/google/gson/jpush/internal/a/h;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/ac;

    invoke-virtual {v0}, Lcom/google/gson/jpush/ac;->f()I

    move-result v0

    invoke-direct {p0}, Lcom/google/gson/jpush/internal/a/h;->s()Ljava/lang/Object;

    return v0
.end method

.method public final n()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/gson/jpush/internal/a/h;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v0

    sget-object v1, Lcom/google/gson/jpush/b/c;->e:Lcom/google/gson/jpush/b/c;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/jpush/internal/a/h;->g()Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/gson/jpush/internal/a/h;->s()Ljava/lang/Object;

    goto :goto_0
.end method

.method public final o()V
    .locals 3

    sget-object v0, Lcom/google/gson/jpush/b/c;->e:Lcom/google/gson/jpush/b/c;

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/internal/a/h;->a(Lcom/google/gson/jpush/b/c;)V

    invoke-direct {p0}, Lcom/google/gson/jpush/internal/a/h;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/gson/jpush/internal/a/h;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/gson/jpush/internal/a/h;->c:Ljava/util/List;

    new-instance v2, Lcom/google/gson/jpush/ac;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/google/gson/jpush/ac;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
