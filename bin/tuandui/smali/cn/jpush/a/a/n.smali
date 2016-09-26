.class public final Lcn/jpush/a/a/n;
.super Lcom/google/protobuf/jpush/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/jpush/i",
        "<",
        "Lcn/jpush/a/a/m;",
        "Lcn/jpush/a/a/n;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:J

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/jpush/i;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/a/a/n;->d:Ljava/util/List;

    return-void
.end method

.method private c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/n;
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
    iget v0, p0, Lcn/jpush/a/a/n;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jpush/a/a/n;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/a/a/n;->b:J

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcn/jpush/a/a/n;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/jpush/a/a/n;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->c()I

    move-result v0

    iput v0, p0, Lcn/jpush/a/a/n;->c:I

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcn/jpush/a/a/n;->g()V

    iget-object v0, p0, Lcn/jpush/a/a/n;->d:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_4
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

    invoke-direct {p0}, Lcn/jpush/a/a/n;->g()V

    iget-object v1, p0, Lcn/jpush/a/a/n;->d:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/protobuf/jpush/d;->d(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x1a -> :sswitch_4
    .end sparse-switch
.end method

.method static synthetic e()Lcn/jpush/a/a/n;
    .locals 1

    new-instance v0, Lcn/jpush/a/a/n;

    invoke-direct {v0}, Lcn/jpush/a/a/n;-><init>()V

    return-object v0
.end method

.method private f()Lcn/jpush/a/a/n;
    .locals 2

    new-instance v0, Lcn/jpush/a/a/n;

    invoke-direct {v0}, Lcn/jpush/a/a/n;-><init>()V

    invoke-virtual {p0}, Lcn/jpush/a/a/n;->b()Lcn/jpush/a/a/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jpush/a/a/n;->a(Lcn/jpush/a/a/m;)Lcn/jpush/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/n;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/jpush/a/a/n;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcn/jpush/a/a/n;->d:Ljava/util/List;

    iget v0, p0, Lcn/jpush/a/a/n;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcn/jpush/a/a/n;->a:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lcn/jpush/a/a/m;
    .locals 2

    invoke-virtual {p0}, Lcn/jpush/a/a/n;->b()Lcn/jpush/a/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/a/a/m;->g()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/protobuf/jpush/m;

    invoke-direct {v0}, Lcom/google/protobuf/jpush/m;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public final a(I)Lcn/jpush/a/a/n;
    .locals 1

    iget v0, p0, Lcn/jpush/a/a/n;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/jpush/a/a/n;->a:I

    iput p1, p0, Lcn/jpush/a/a/n;->c:I

    return-object p0
.end method

.method public final a(J)Lcn/jpush/a/a/n;
    .locals 1

    iget v0, p0, Lcn/jpush/a/a/n;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jpush/a/a/n;->a:I

    iput-wide p1, p0, Lcn/jpush/a/a/n;->b:J

    return-object p0
.end method

.method public final a(Lcn/jpush/a/a/m;)Lcn/jpush/a/a/n;
    .locals 2

    invoke-static {}, Lcn/jpush/a/a/m;->a()Lcn/jpush/a/a/m;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcn/jpush/a/a/m;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcn/jpush/a/a/m;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcn/jpush/a/a/n;->a(J)Lcn/jpush/a/a/n;

    :cond_2
    invoke-virtual {p1}, Lcn/jpush/a/a/m;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcn/jpush/a/a/m;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/jpush/a/a/n;->a(I)Lcn/jpush/a/a/n;

    :cond_3
    invoke-static {p1}, Lcn/jpush/a/a/m;->b(Lcn/jpush/a/a/m;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/jpush/a/a/n;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcn/jpush/a/a/m;->b(Lcn/jpush/a/a/m;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/a/a/n;->d:Ljava/util/List;

    iget v0, p0, Lcn/jpush/a/a/n;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcn/jpush/a/a/n;->a:I

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcn/jpush/a/a/n;->g()V

    iget-object v0, p0, Lcn/jpush/a/a/n;->d:Ljava/util/List;

    invoke-static {p1}, Lcn/jpush/a/a/m;->b(Lcn/jpush/a/a/m;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/Iterable;)Lcn/jpush/a/a/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcn/jpush/a/a/n;"
        }
    .end annotation

    invoke-direct {p0}, Lcn/jpush/a/a/n;->g()V

    iget-object v0, p0, Lcn/jpush/a/a/n;->d:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/jpush/i;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/b;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/jpush/a/a/n;->c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcn/jpush/a/a/m;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcn/jpush/a/a/m;

    invoke-direct {v2, p0, v1}, Lcn/jpush/a/a/m;-><init>(Lcn/jpush/a/a/n;B)V

    iget v3, p0, Lcn/jpush/a/a/n;->a:I

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    :goto_0
    iget-wide v4, p0, Lcn/jpush/a/a/n;->b:J

    invoke-static {v2, v4, v5}, Lcn/jpush/a/a/m;->a(Lcn/jpush/a/a/m;J)J

    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcn/jpush/a/a/n;->c:I

    invoke-static {v2, v1}, Lcn/jpush/a/a/m;->a(Lcn/jpush/a/a/m;I)I

    iget v1, p0, Lcn/jpush/a/a/n;->a:I

    and-int/lit8 v1, v1, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcn/jpush/a/a/n;->d:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcn/jpush/a/a/n;->d:Ljava/util/List;

    iget v1, p0, Lcn/jpush/a/a/n;->a:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcn/jpush/a/a/n;->a:I

    :cond_1
    iget-object v1, p0, Lcn/jpush/a/a/n;->d:Ljava/util/List;

    invoke-static {v2, v1}, Lcn/jpush/a/a/m;->a(Lcn/jpush/a/a/m;Ljava/util/List;)Ljava/util/List;

    invoke-static {v2, v0}, Lcn/jpush/a/a/m;->b(Lcn/jpush/a/a/m;I)I

    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final synthetic b(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/l;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/jpush/a/a/n;->c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/google/protobuf/jpush/i;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/n;->f()Lcn/jpush/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/n;->f()Lcn/jpush/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/protobuf/jpush/b;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/n;->f()Lcn/jpush/a/a/n;

    move-result-object v0

    return-object v0
.end method
