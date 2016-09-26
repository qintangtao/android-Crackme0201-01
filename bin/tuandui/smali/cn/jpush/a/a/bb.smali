.class public final Lcn/jpush/a/a/bb;
.super Lcom/google/protobuf/jpush/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/jpush/i",
        "<",
        "Lcn/jpush/a/a/ba;",
        "Lcn/jpush/a/a/bb;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:J

.field private c:I

.field private d:J

.field private e:J

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/protobuf/jpush/c;

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/jpush/i;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/a/a/bb;->f:Ljava/util/List;

    sget-object v0, Lcom/google/protobuf/jpush/c;->a:Lcom/google/protobuf/jpush/c;

    iput-object v0, p0, Lcn/jpush/a/a/bb;->g:Lcom/google/protobuf/jpush/c;

    return-void
.end method

.method private c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/bb;
    .locals 4

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/jpush/d;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget v0, p0, Lcn/jpush/a/a/bb;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jpush/a/a/bb;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/a/a/bb;->b:J

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcn/jpush/a/a/bb;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/jpush/a/a/bb;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->c()I

    move-result v0

    iput v0, p0, Lcn/jpush/a/a/bb;->c:I

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcn/jpush/a/a/bb;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcn/jpush/a/a/bb;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/a/a/bb;->d:J

    goto :goto_0

    :sswitch_4
    iget v0, p0, Lcn/jpush/a/a/bb;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcn/jpush/a/a/bb;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/a/a/bb;->e:J

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcn/jpush/a/a/bb;->g()V

    iget-object v0, p0, Lcn/jpush/a/a/bb;->f:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/jpush/d;->c(I)I

    move-result v0

    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->g()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->b()J

    move-result-wide v2

    invoke-direct {p0}, Lcn/jpush/a/a/bb;->g()V

    iget-object v1, p0, Lcn/jpush/a/a/bb;->f:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/protobuf/jpush/d;->d(I)V

    goto :goto_0

    :sswitch_7
    iget v0, p0, Lcn/jpush/a/a/bb;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcn/jpush/a/a/bb;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->d()Lcom/google/protobuf/jpush/c;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/a/a/bb;->g:Lcom/google/protobuf/jpush/c;

    goto/16 :goto_0

    :sswitch_8
    iget v0, p0, Lcn/jpush/a/a/bb;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcn/jpush/a/a/bb;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->e()I

    move-result v0

    iput v0, p0, Lcn/jpush/a/a/bb;->h:I

    goto/16 :goto_0

    :sswitch_9
    iget v0, p0, Lcn/jpush/a/a/bb;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcn/jpush/a/a/bb;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->c()I

    move-result v0

    iput v0, p0, Lcn/jpush/a/a/bb;->i:I

    goto/16 :goto_0

    :sswitch_a
    iget v0, p0, Lcn/jpush/a/a/bb;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcn/jpush/a/a/bb;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->c()I

    move-result v0

    iput v0, p0, Lcn/jpush/a/a/bb;->j:I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x2a -> :sswitch_6
        0x32 -> :sswitch_7
        0x38 -> :sswitch_8
        0x40 -> :sswitch_9
        0x48 -> :sswitch_a
    .end sparse-switch
.end method

.method static synthetic e()Lcn/jpush/a/a/bb;
    .locals 1

    new-instance v0, Lcn/jpush/a/a/bb;

    invoke-direct {v0}, Lcn/jpush/a/a/bb;-><init>()V

    return-object v0
.end method

.method private f()Lcn/jpush/a/a/bb;
    .locals 2

    new-instance v0, Lcn/jpush/a/a/bb;

    invoke-direct {v0}, Lcn/jpush/a/a/bb;-><init>()V

    invoke-virtual {p0}, Lcn/jpush/a/a/bb;->b()Lcn/jpush/a/a/ba;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jpush/a/a/bb;->a(Lcn/jpush/a/a/ba;)Lcn/jpush/a/a/bb;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/bb;->a:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/jpush/a/a/bb;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcn/jpush/a/a/bb;->f:Ljava/util/List;

    iget v0, p0, Lcn/jpush/a/a/bb;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcn/jpush/a/a/bb;->a:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lcn/jpush/a/a/ba;
    .locals 2

    invoke-virtual {p0}, Lcn/jpush/a/a/bb;->b()Lcn/jpush/a/a/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/a/a/ba;->s()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/protobuf/jpush/m;

    invoke-direct {v0}, Lcom/google/protobuf/jpush/m;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public final a(I)Lcn/jpush/a/a/bb;
    .locals 1

    iget v0, p0, Lcn/jpush/a/a/bb;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/jpush/a/a/bb;->a:I

    iput p1, p0, Lcn/jpush/a/a/bb;->c:I

    return-object p0
.end method

.method public final a(J)Lcn/jpush/a/a/bb;
    .locals 1

    iget v0, p0, Lcn/jpush/a/a/bb;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jpush/a/a/bb;->a:I

    iput-wide p1, p0, Lcn/jpush/a/a/bb;->b:J

    return-object p0
.end method

.method public final a(Lcn/jpush/a/a/ba;)Lcn/jpush/a/a/bb;
    .locals 2

    invoke-static {}, Lcn/jpush/a/a/ba;->a()Lcn/jpush/a/a/ba;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcn/jpush/a/a/ba;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcn/jpush/a/a/ba;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcn/jpush/a/a/bb;->a(J)Lcn/jpush/a/a/bb;

    :cond_2
    invoke-virtual {p1}, Lcn/jpush/a/a/ba;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcn/jpush/a/a/ba;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/jpush/a/a/bb;->a(I)Lcn/jpush/a/a/bb;

    :cond_3
    invoke-virtual {p1}, Lcn/jpush/a/a/ba;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcn/jpush/a/a/ba;->h()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcn/jpush/a/a/bb;->b(J)Lcn/jpush/a/a/bb;

    :cond_4
    invoke-virtual {p1}, Lcn/jpush/a/a/ba;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcn/jpush/a/a/ba;->j()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcn/jpush/a/a/bb;->c(J)Lcn/jpush/a/a/bb;

    :cond_5
    invoke-static {p1}, Lcn/jpush/a/a/ba;->b(Lcn/jpush/a/a/ba;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcn/jpush/a/a/bb;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcn/jpush/a/a/ba;->b(Lcn/jpush/a/a/ba;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/a/a/bb;->f:Ljava/util/List;

    iget v0, p0, Lcn/jpush/a/a/bb;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcn/jpush/a/a/bb;->a:I

    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcn/jpush/a/a/ba;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcn/jpush/a/a/ba;->l()Lcom/google/protobuf/jpush/c;

    move-result-object v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_7
    invoke-direct {p0}, Lcn/jpush/a/a/bb;->g()V

    iget-object v0, p0, Lcn/jpush/a/a/bb;->f:Ljava/util/List;

    invoke-static {p1}, Lcn/jpush/a/a/ba;->b(Lcn/jpush/a/a/ba;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_8
    iget v1, p0, Lcn/jpush/a/a/bb;->a:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcn/jpush/a/a/bb;->a:I

    iput-object v0, p0, Lcn/jpush/a/a/bb;->g:Lcom/google/protobuf/jpush/c;

    :cond_9
    invoke-virtual {p1}, Lcn/jpush/a/a/ba;->m()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcn/jpush/a/a/ba;->n()I

    move-result v0

    iget v1, p0, Lcn/jpush/a/a/bb;->a:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcn/jpush/a/a/bb;->a:I

    iput v0, p0, Lcn/jpush/a/a/bb;->h:I

    :cond_a
    invoke-virtual {p1}, Lcn/jpush/a/a/ba;->o()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcn/jpush/a/a/ba;->p()I

    move-result v0

    iget v1, p0, Lcn/jpush/a/a/bb;->a:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcn/jpush/a/a/bb;->a:I

    iput v0, p0, Lcn/jpush/a/a/bb;->i:I

    :cond_b
    invoke-virtual {p1}, Lcn/jpush/a/a/ba;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/jpush/a/a/ba;->r()I

    move-result v0

    iget v1, p0, Lcn/jpush/a/a/bb;->a:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcn/jpush/a/a/bb;->a:I

    iput v0, p0, Lcn/jpush/a/a/bb;->j:I

    goto/16 :goto_0
.end method

.method public final synthetic a(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/b;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/jpush/a/a/bb;->c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/bb;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcn/jpush/a/a/ba;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcn/jpush/a/a/ba;

    invoke-direct {v2, p0, v1}, Lcn/jpush/a/a/ba;-><init>(Lcn/jpush/a/a/bb;B)V

    iget v3, p0, Lcn/jpush/a/a/bb;->a:I

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_8

    :goto_0
    iget-wide v4, p0, Lcn/jpush/a/a/bb;->b:J

    invoke-static {v2, v4, v5}, Lcn/jpush/a/a/ba;->a(Lcn/jpush/a/a/ba;J)J

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcn/jpush/a/a/bb;->c:I

    invoke-static {v2, v1}, Lcn/jpush/a/a/ba;->a(Lcn/jpush/a/a/ba;I)I

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-wide v4, p0, Lcn/jpush/a/a/bb;->d:J

    invoke-static {v2, v4, v5}, Lcn/jpush/a/a/ba;->b(Lcn/jpush/a/a/ba;J)J

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-wide v4, p0, Lcn/jpush/a/a/bb;->e:J

    invoke-static {v2, v4, v5}, Lcn/jpush/a/a/ba;->c(Lcn/jpush/a/a/ba;J)J

    iget v1, p0, Lcn/jpush/a/a/bb;->a:I

    and-int/lit8 v1, v1, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcn/jpush/a/a/bb;->f:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcn/jpush/a/a/bb;->f:Ljava/util/List;

    iget v1, p0, Lcn/jpush/a/a/bb;->a:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcn/jpush/a/a/bb;->a:I

    :cond_3
    iget-object v1, p0, Lcn/jpush/a/a/bb;->f:Ljava/util/List;

    invoke-static {v2, v1}, Lcn/jpush/a/a/ba;->a(Lcn/jpush/a/a/ba;Ljava/util/List;)Ljava/util/List;

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x10

    :cond_4
    iget-object v1, p0, Lcn/jpush/a/a/bb;->g:Lcom/google/protobuf/jpush/c;

    invoke-static {v2, v1}, Lcn/jpush/a/a/ba;->a(Lcn/jpush/a/a/ba;Lcom/google/protobuf/jpush/c;)Lcom/google/protobuf/jpush/c;

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x20

    :cond_5
    iget v1, p0, Lcn/jpush/a/a/bb;->h:I

    invoke-static {v2, v1}, Lcn/jpush/a/a/ba;->b(Lcn/jpush/a/a/ba;I)I

    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    or-int/lit8 v0, v0, 0x40

    :cond_6
    iget v1, p0, Lcn/jpush/a/a/bb;->i:I

    invoke-static {v2, v1}, Lcn/jpush/a/a/ba;->c(Lcn/jpush/a/a/ba;I)I

    and-int/lit16 v1, v3, 0x100

    const/16 v3, 0x100

    if-ne v1, v3, :cond_7

    or-int/lit16 v0, v0, 0x80

    :cond_7
    iget v1, p0, Lcn/jpush/a/a/bb;->j:I

    invoke-static {v2, v1}, Lcn/jpush/a/a/ba;->d(Lcn/jpush/a/a/ba;I)I

    invoke-static {v2, v0}, Lcn/jpush/a/a/ba;->e(Lcn/jpush/a/a/ba;I)I

    return-object v2

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method public final b(J)Lcn/jpush/a/a/bb;
    .locals 1

    iget v0, p0, Lcn/jpush/a/a/bb;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcn/jpush/a/a/bb;->a:I

    iput-wide p1, p0, Lcn/jpush/a/a/bb;->d:J

    return-object p0
.end method

.method public final synthetic b(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/l;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/jpush/a/a/bb;->c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/bb;

    move-result-object v0

    return-object v0
.end method

.method public final c(J)Lcn/jpush/a/a/bb;
    .locals 1

    iget v0, p0, Lcn/jpush/a/a/bb;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcn/jpush/a/a/bb;->a:I

    iput-wide p1, p0, Lcn/jpush/a/a/bb;->e:J

    return-object p0
.end method

.method public final synthetic c()Lcom/google/protobuf/jpush/i;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/bb;->f()Lcn/jpush/a/a/bb;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/bb;->f()Lcn/jpush/a/a/bb;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/protobuf/jpush/b;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/bb;->f()Lcn/jpush/a/a/bb;

    move-result-object v0

    return-object v0
.end method
