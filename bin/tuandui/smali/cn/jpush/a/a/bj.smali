.class public final Lcn/jpush/a/a/bj;
.super Lcom/google/protobuf/jpush/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/jpush/i",
        "<",
        "Lcn/jpush/a/a/bi;",
        "Lcn/jpush/a/a/bj;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:J

.field private c:Lcn/jpush/a/a/bg;

.field private d:J


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/jpush/i;-><init>()V

    invoke-static {}, Lcn/jpush/a/a/bg;->a()Lcn/jpush/a/a/bg;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/a/a/bj;->c:Lcn/jpush/a/a/bg;

    return-void
.end method

.method private c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/bj;
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
    iget v0, p0, Lcn/jpush/a/a/bj;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jpush/a/a/bj;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/a/a/bj;->b:J

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcn/jpush/a/a/bg;->j()Lcn/jpush/a/a/bh;

    move-result-object v1

    iget v0, p0, Lcn/jpush/a/a/bj;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jpush/a/a/bj;->c:Lcn/jpush/a/a/bg;

    invoke-virtual {v1, v0}, Lcn/jpush/a/a/bh;->a(Lcn/jpush/a/a/bg;)Lcn/jpush/a/a/bh;

    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/jpush/d;->a(Lcom/google/protobuf/jpush/l;Lcom/google/protobuf/jpush/g;)V

    invoke-virtual {v1}, Lcn/jpush/a/a/bh;->b()Lcn/jpush/a/a/bg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/jpush/a/a/bj;->a(Lcn/jpush/a/a/bg;)Lcn/jpush/a/a/bj;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    iget v0, p0, Lcn/jpush/a/a/bj;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcn/jpush/a/a/bj;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/a/a/bj;->d:J

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method static synthetic e()Lcn/jpush/a/a/bj;
    .locals 1

    new-instance v0, Lcn/jpush/a/a/bj;

    invoke-direct {v0}, Lcn/jpush/a/a/bj;-><init>()V

    return-object v0
.end method

.method private f()Lcn/jpush/a/a/bj;
    .locals 2

    new-instance v0, Lcn/jpush/a/a/bj;

    invoke-direct {v0}, Lcn/jpush/a/a/bj;-><init>()V

    invoke-virtual {p0}, Lcn/jpush/a/a/bj;->b()Lcn/jpush/a/a/bi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jpush/a/a/bj;->a(Lcn/jpush/a/a/bi;)Lcn/jpush/a/a/bj;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcn/jpush/a/a/bi;
    .locals 2

    invoke-virtual {p0}, Lcn/jpush/a/a/bj;->b()Lcn/jpush/a/a/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/a/a/bi;->i()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/protobuf/jpush/m;

    invoke-direct {v0}, Lcom/google/protobuf/jpush/m;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public final a(J)Lcn/jpush/a/a/bj;
    .locals 1

    iget v0, p0, Lcn/jpush/a/a/bj;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jpush/a/a/bj;->a:I

    iput-wide p1, p0, Lcn/jpush/a/a/bj;->b:J

    return-object p0
.end method

.method public final a(Lcn/jpush/a/a/bg;)Lcn/jpush/a/a/bj;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcn/jpush/a/a/bj;->c:Lcn/jpush/a/a/bg;

    iget v0, p0, Lcn/jpush/a/a/bj;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/jpush/a/a/bj;->a:I

    return-object p0
.end method

.method public final a(Lcn/jpush/a/a/bi;)Lcn/jpush/a/a/bj;
    .locals 3

    invoke-static {}, Lcn/jpush/a/a/bi;->a()Lcn/jpush/a/a/bi;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcn/jpush/a/a/bi;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcn/jpush/a/a/bi;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcn/jpush/a/a/bj;->a(J)Lcn/jpush/a/a/bj;

    :cond_2
    invoke-virtual {p1}, Lcn/jpush/a/a/bi;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcn/jpush/a/a/bi;->f()Lcn/jpush/a/a/bg;

    move-result-object v0

    iget v1, p0, Lcn/jpush/a/a/bj;->a:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcn/jpush/a/a/bj;->c:Lcn/jpush/a/a/bg;

    invoke-static {}, Lcn/jpush/a/a/bg;->a()Lcn/jpush/a/a/bg;

    move-result-object v2

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcn/jpush/a/a/bj;->c:Lcn/jpush/a/a/bg;

    invoke-static {v1}, Lcn/jpush/a/a/bg;->a(Lcn/jpush/a/a/bg;)Lcn/jpush/a/a/bh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/jpush/a/a/bh;->a(Lcn/jpush/a/a/bg;)Lcn/jpush/a/a/bh;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/a/a/bh;->b()Lcn/jpush/a/a/bg;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/a/a/bj;->c:Lcn/jpush/a/a/bg;

    :goto_1
    iget v0, p0, Lcn/jpush/a/a/bj;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/jpush/a/a/bj;->a:I

    :cond_3
    invoke-virtual {p1}, Lcn/jpush/a/a/bi;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/jpush/a/a/bi;->h()J

    move-result-wide v0

    iget v2, p0, Lcn/jpush/a/a/bj;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcn/jpush/a/a/bj;->a:I

    iput-wide v0, p0, Lcn/jpush/a/a/bj;->d:J

    goto :goto_0

    :cond_4
    iput-object v0, p0, Lcn/jpush/a/a/bj;->c:Lcn/jpush/a/a/bg;

    goto :goto_1
.end method

.method public final synthetic a(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/b;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/jpush/a/a/bj;->c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/bj;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcn/jpush/a/a/bi;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcn/jpush/a/a/bi;

    invoke-direct {v2, p0, v1}, Lcn/jpush/a/a/bi;-><init>(Lcn/jpush/a/a/bj;B)V

    iget v3, p0, Lcn/jpush/a/a/bj;->a:I

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    :goto_0
    iget-wide v4, p0, Lcn/jpush/a/a/bj;->b:J

    invoke-static {v2, v4, v5}, Lcn/jpush/a/a/bi;->a(Lcn/jpush/a/a/bi;J)J

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcn/jpush/a/a/bj;->c:Lcn/jpush/a/a/bg;

    invoke-static {v2, v1}, Lcn/jpush/a/a/bi;->a(Lcn/jpush/a/a/bi;Lcn/jpush/a/a/bg;)Lcn/jpush/a/a/bg;

    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-wide v4, p0, Lcn/jpush/a/a/bj;->d:J

    invoke-static {v2, v4, v5}, Lcn/jpush/a/a/bi;->b(Lcn/jpush/a/a/bi;J)J

    invoke-static {v2, v0}, Lcn/jpush/a/a/bi;->a(Lcn/jpush/a/a/bi;I)I

    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final synthetic b(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/l;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/jpush/a/a/bj;->c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/bj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/google/protobuf/jpush/i;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/bj;->f()Lcn/jpush/a/a/bj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/bj;->f()Lcn/jpush/a/a/bj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/protobuf/jpush/b;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/bj;->f()Lcn/jpush/a/a/bj;

    move-result-object v0

    return-object v0
.end method
