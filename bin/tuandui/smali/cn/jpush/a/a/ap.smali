.class public final Lcn/jpush/a/a/ap;
.super Lcom/google/protobuf/jpush/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/jpush/i",
        "<",
        "Lcn/jpush/a/a/ao;",
        "Lcn/jpush/a/a/ap;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private d:J

.field private e:I

.field private f:Lcn/jpush/a/a/bg;

.field private g:I

.field private h:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/jpush/i;-><init>()V

    invoke-static {}, Lcn/jpush/a/a/bg;->a()Lcn/jpush/a/a/bg;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/a/a/ap;->f:Lcn/jpush/a/a/bg;

    return-void
.end method

.method private c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/ap;
    .locals 3

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
    iget v0, p0, Lcn/jpush/a/a/ap;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jpush/a/a/ap;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/a/a/ap;->b:J

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcn/jpush/a/a/ap;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/jpush/a/a/ap;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/a/a/ap;->c:J

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcn/jpush/a/a/ap;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcn/jpush/a/a/ap;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/a/a/ap;->d:J

    goto :goto_0

    :sswitch_4
    iget v0, p0, Lcn/jpush/a/a/ap;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcn/jpush/a/a/ap;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->c()I

    move-result v0

    iput v0, p0, Lcn/jpush/a/a/ap;->e:I

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcn/jpush/a/a/bg;->j()Lcn/jpush/a/a/bh;

    move-result-object v1

    iget v0, p0, Lcn/jpush/a/a/ap;->a:I

    and-int/lit8 v0, v0, 0x10

    const/16 v2, 0x10

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jpush/a/a/ap;->f:Lcn/jpush/a/a/bg;

    invoke-virtual {v1, v0}, Lcn/jpush/a/a/bh;->a(Lcn/jpush/a/a/bg;)Lcn/jpush/a/a/bh;

    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/jpush/d;->a(Lcom/google/protobuf/jpush/l;Lcom/google/protobuf/jpush/g;)V

    invoke-virtual {v1}, Lcn/jpush/a/a/bh;->b()Lcn/jpush/a/a/bg;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lcn/jpush/a/a/ap;->f:Lcn/jpush/a/a/bg;

    iget v0, p0, Lcn/jpush/a/a/ap;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcn/jpush/a/a/ap;->a:I

    goto :goto_0

    :sswitch_6
    iget v0, p0, Lcn/jpush/a/a/ap;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcn/jpush/a/a/ap;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->e()I

    move-result v0

    iput v0, p0, Lcn/jpush/a/a/ap;->g:I

    goto :goto_0

    :sswitch_7
    iget v0, p0, Lcn/jpush/a/a/ap;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcn/jpush/a/a/ap;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->c()I

    move-result v0

    iput v0, p0, Lcn/jpush/a/a/ap;->h:I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method static synthetic e()Lcn/jpush/a/a/ap;
    .locals 1

    new-instance v0, Lcn/jpush/a/a/ap;

    invoke-direct {v0}, Lcn/jpush/a/a/ap;-><init>()V

    return-object v0
.end method

.method private f()Lcn/jpush/a/a/ap;
    .locals 5

    new-instance v0, Lcn/jpush/a/a/ap;

    invoke-direct {v0}, Lcn/jpush/a/a/ap;-><init>()V

    invoke-virtual {p0}, Lcn/jpush/a/a/ap;->b()Lcn/jpush/a/a/ao;

    move-result-object v1

    invoke-static {}, Lcn/jpush/a/a/ao;->a()Lcn/jpush/a/a/ao;

    move-result-object v2

    if-eq v1, v2, :cond_6

    invoke-virtual {v1}, Lcn/jpush/a/a/ao;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcn/jpush/a/a/ao;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/jpush/a/a/ap;->a(J)Lcn/jpush/a/a/ap;

    :cond_0
    invoke-virtual {v1}, Lcn/jpush/a/a/ao;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcn/jpush/a/a/ao;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/jpush/a/a/ap;->b(J)Lcn/jpush/a/a/ap;

    :cond_1
    invoke-virtual {v1}, Lcn/jpush/a/a/ao;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcn/jpush/a/a/ao;->h()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/jpush/a/a/ap;->c(J)Lcn/jpush/a/a/ap;

    :cond_2
    invoke-virtual {v1}, Lcn/jpush/a/a/ao;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcn/jpush/a/a/ao;->j()I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/jpush/a/a/ap;->a(I)Lcn/jpush/a/a/ap;

    :cond_3
    invoke-virtual {v1}, Lcn/jpush/a/a/ao;->k()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcn/jpush/a/a/ao;->l()Lcn/jpush/a/a/bg;

    move-result-object v2

    iget v3, v0, Lcn/jpush/a/a/ap;->a:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_7

    iget-object v3, v0, Lcn/jpush/a/a/ap;->f:Lcn/jpush/a/a/bg;

    invoke-static {}, Lcn/jpush/a/a/bg;->a()Lcn/jpush/a/a/bg;

    move-result-object v4

    if-eq v3, v4, :cond_7

    iget-object v3, v0, Lcn/jpush/a/a/ap;->f:Lcn/jpush/a/a/bg;

    invoke-static {v3}, Lcn/jpush/a/a/bg;->a(Lcn/jpush/a/a/bg;)Lcn/jpush/a/a/bh;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/jpush/a/a/bh;->a(Lcn/jpush/a/a/bg;)Lcn/jpush/a/a/bh;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jpush/a/a/bh;->b()Lcn/jpush/a/a/bg;

    move-result-object v2

    iput-object v2, v0, Lcn/jpush/a/a/ap;->f:Lcn/jpush/a/a/bg;

    :goto_0
    iget v2, v0, Lcn/jpush/a/a/ap;->a:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Lcn/jpush/a/a/ap;->a:I

    :cond_4
    invoke-virtual {v1}, Lcn/jpush/a/a/ao;->m()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcn/jpush/a/a/ao;->n()I

    move-result v2

    iget v3, v0, Lcn/jpush/a/a/ap;->a:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v0, Lcn/jpush/a/a/ap;->a:I

    iput v2, v0, Lcn/jpush/a/a/ap;->g:I

    :cond_5
    invoke-virtual {v1}, Lcn/jpush/a/a/ao;->o()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcn/jpush/a/a/ao;->p()I

    move-result v1

    iget v2, v0, Lcn/jpush/a/a/ap;->a:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v0, Lcn/jpush/a/a/ap;->a:I

    iput v1, v0, Lcn/jpush/a/a/ap;->h:I

    :cond_6
    return-object v0

    :cond_7
    iput-object v2, v0, Lcn/jpush/a/a/ap;->f:Lcn/jpush/a/a/bg;

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcn/jpush/a/a/ao;
    .locals 2

    invoke-virtual {p0}, Lcn/jpush/a/a/ap;->b()Lcn/jpush/a/a/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/a/a/ao;->q()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/protobuf/jpush/m;

    invoke-direct {v0}, Lcom/google/protobuf/jpush/m;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public final a(I)Lcn/jpush/a/a/ap;
    .locals 1

    iget v0, p0, Lcn/jpush/a/a/ap;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcn/jpush/a/a/ap;->a:I

    iput p1, p0, Lcn/jpush/a/a/ap;->e:I

    return-object p0
.end method

.method public final a(J)Lcn/jpush/a/a/ap;
    .locals 1

    iget v0, p0, Lcn/jpush/a/a/ap;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jpush/a/a/ap;->a:I

    iput-wide p1, p0, Lcn/jpush/a/a/ap;->b:J

    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/b;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/jpush/a/a/ap;->c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/ap;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcn/jpush/a/a/ao;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcn/jpush/a/a/ao;

    invoke-direct {v2, p0, v1}, Lcn/jpush/a/a/ao;-><init>(Lcn/jpush/a/a/ap;B)V

    iget v3, p0, Lcn/jpush/a/a/ap;->a:I

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_6

    :goto_0
    iget-wide v4, p0, Lcn/jpush/a/a/ap;->b:J

    invoke-static {v2, v4, v5}, Lcn/jpush/a/a/ao;->a(Lcn/jpush/a/a/ao;J)J

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-wide v4, p0, Lcn/jpush/a/a/ap;->c:J

    invoke-static {v2, v4, v5}, Lcn/jpush/a/a/ao;->b(Lcn/jpush/a/a/ao;J)J

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-wide v4, p0, Lcn/jpush/a/a/ap;->d:J

    invoke-static {v2, v4, v5}, Lcn/jpush/a/a/ao;->c(Lcn/jpush/a/a/ao;J)J

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget v1, p0, Lcn/jpush/a/a/ap;->e:I

    invoke-static {v2, v1}, Lcn/jpush/a/a/ao;->a(Lcn/jpush/a/a/ao;I)I

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v1, p0, Lcn/jpush/a/a/ap;->f:Lcn/jpush/a/a/bg;

    invoke-static {v2, v1}, Lcn/jpush/a/a/ao;->a(Lcn/jpush/a/a/ao;Lcn/jpush/a/a/bg;)Lcn/jpush/a/a/bg;

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget v1, p0, Lcn/jpush/a/a/ap;->g:I

    invoke-static {v2, v1}, Lcn/jpush/a/a/ao;->b(Lcn/jpush/a/a/ao;I)I

    and-int/lit8 v1, v3, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget v1, p0, Lcn/jpush/a/a/ap;->h:I

    invoke-static {v2, v1}, Lcn/jpush/a/a/ao;->c(Lcn/jpush/a/a/ao;I)I

    invoke-static {v2, v0}, Lcn/jpush/a/a/ao;->d(Lcn/jpush/a/a/ao;I)I

    return-object v2

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public final b(J)Lcn/jpush/a/a/ap;
    .locals 1

    iget v0, p0, Lcn/jpush/a/a/ap;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/jpush/a/a/ap;->a:I

    iput-wide p1, p0, Lcn/jpush/a/a/ap;->c:J

    return-object p0
.end method

.method public final synthetic b(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/l;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/jpush/a/a/ap;->c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/ap;

    move-result-object v0

    return-object v0
.end method

.method public final c(J)Lcn/jpush/a/a/ap;
    .locals 1

    iget v0, p0, Lcn/jpush/a/a/ap;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcn/jpush/a/a/ap;->a:I

    iput-wide p1, p0, Lcn/jpush/a/a/ap;->d:J

    return-object p0
.end method

.method public final synthetic c()Lcom/google/protobuf/jpush/i;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/ap;->f()Lcn/jpush/a/a/ap;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/ap;->f()Lcn/jpush/a/a/ap;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/protobuf/jpush/b;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/ap;->f()Lcn/jpush/a/a/ap;

    move-result-object v0

    return-object v0
.end method
