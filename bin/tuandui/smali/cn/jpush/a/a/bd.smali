.class public final Lcn/jpush/a/a/bd;
.super Lcom/google/protobuf/jpush/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/jpush/i",
        "<",
        "Lcn/jpush/a/a/bc;",
        "Lcn/jpush/a/a/bd;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:J

.field private c:I

.field private d:J

.field private e:J

.field private f:Lcom/google/protobuf/jpush/c;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/jpush/i;-><init>()V

    sget-object v0, Lcom/google/protobuf/jpush/c;->a:Lcom/google/protobuf/jpush/c;

    iput-object v0, p0, Lcn/jpush/a/a/bd;->f:Lcom/google/protobuf/jpush/c;

    return-void
.end method

.method static synthetic b()Lcn/jpush/a/a/bd;
    .locals 1

    new-instance v0, Lcn/jpush/a/a/bd;

    invoke-direct {v0}, Lcn/jpush/a/a/bd;-><init>()V

    return-object v0
.end method

.method private c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/bd;
    .locals 2

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
    iget v0, p0, Lcn/jpush/a/a/bd;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jpush/a/a/bd;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/a/a/bd;->b:J

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcn/jpush/a/a/bd;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/jpush/a/a/bd;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->c()I

    move-result v0

    iput v0, p0, Lcn/jpush/a/a/bd;->c:I

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcn/jpush/a/a/bd;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcn/jpush/a/a/bd;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/a/a/bd;->d:J

    goto :goto_0

    :sswitch_4
    iget v0, p0, Lcn/jpush/a/a/bd;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcn/jpush/a/a/bd;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/a/a/bd;->e:J

    goto :goto_0

    :sswitch_5
    iget v0, p0, Lcn/jpush/a/a/bd;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcn/jpush/a/a/bd;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->d()Lcom/google/protobuf/jpush/c;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/a/a/bd;->f:Lcom/google/protobuf/jpush/c;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method private e()Lcn/jpush/a/a/bd;
    .locals 2

    new-instance v0, Lcn/jpush/a/a/bd;

    invoke-direct {v0}, Lcn/jpush/a/a/bd;-><init>()V

    invoke-virtual {p0}, Lcn/jpush/a/a/bd;->a()Lcn/jpush/a/a/bc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jpush/a/a/bd;->a(Lcn/jpush/a/a/bc;)Lcn/jpush/a/a/bd;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcn/jpush/a/a/bc;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcn/jpush/a/a/bc;

    invoke-direct {v2, p0, v1}, Lcn/jpush/a/a/bc;-><init>(Lcn/jpush/a/a/bd;B)V

    iget v3, p0, Lcn/jpush/a/a/bd;->a:I

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_4

    :goto_0
    iget-wide v4, p0, Lcn/jpush/a/a/bd;->b:J

    invoke-static {v2, v4, v5}, Lcn/jpush/a/a/bc;->a(Lcn/jpush/a/a/bc;J)J

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcn/jpush/a/a/bd;->c:I

    invoke-static {v2, v1}, Lcn/jpush/a/a/bc;->a(Lcn/jpush/a/a/bc;I)I

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-wide v4, p0, Lcn/jpush/a/a/bd;->d:J

    invoke-static {v2, v4, v5}, Lcn/jpush/a/a/bc;->b(Lcn/jpush/a/a/bc;J)J

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-wide v4, p0, Lcn/jpush/a/a/bd;->e:J

    invoke-static {v2, v4, v5}, Lcn/jpush/a/a/bc;->c(Lcn/jpush/a/a/bc;J)J

    and-int/lit8 v1, v3, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v1, p0, Lcn/jpush/a/a/bd;->f:Lcom/google/protobuf/jpush/c;

    invoke-static {v2, v1}, Lcn/jpush/a/a/bc;->a(Lcn/jpush/a/a/bc;Lcom/google/protobuf/jpush/c;)Lcom/google/protobuf/jpush/c;

    invoke-static {v2, v0}, Lcn/jpush/a/a/bc;->b(Lcn/jpush/a/a/bc;I)I

    return-object v2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final a(Lcn/jpush/a/a/bc;)Lcn/jpush/a/a/bd;
    .locals 3

    invoke-static {}, Lcn/jpush/a/a/bc;->a()Lcn/jpush/a/a/bc;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcn/jpush/a/a/bc;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcn/jpush/a/a/bc;->d()J

    move-result-wide v0

    iget v2, p0, Lcn/jpush/a/a/bd;->a:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/jpush/a/a/bd;->a:I

    iput-wide v0, p0, Lcn/jpush/a/a/bd;->b:J

    :cond_2
    invoke-virtual {p1}, Lcn/jpush/a/a/bc;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcn/jpush/a/a/bc;->f()I

    move-result v0

    iget v1, p0, Lcn/jpush/a/a/bd;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcn/jpush/a/a/bd;->a:I

    iput v0, p0, Lcn/jpush/a/a/bd;->c:I

    :cond_3
    invoke-virtual {p1}, Lcn/jpush/a/a/bc;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcn/jpush/a/a/bc;->h()J

    move-result-wide v0

    iget v2, p0, Lcn/jpush/a/a/bd;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcn/jpush/a/a/bd;->a:I

    iput-wide v0, p0, Lcn/jpush/a/a/bd;->d:J

    :cond_4
    invoke-virtual {p1}, Lcn/jpush/a/a/bc;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcn/jpush/a/a/bc;->j()J

    move-result-wide v0

    iget v2, p0, Lcn/jpush/a/a/bd;->a:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcn/jpush/a/a/bd;->a:I

    iput-wide v0, p0, Lcn/jpush/a/a/bd;->e:J

    :cond_5
    invoke-virtual {p1}, Lcn/jpush/a/a/bc;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/jpush/a/a/bc;->l()Lcom/google/protobuf/jpush/c;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_6
    iget v1, p0, Lcn/jpush/a/a/bd;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcn/jpush/a/a/bd;->a:I

    iput-object v0, p0, Lcn/jpush/a/a/bd;->f:Lcom/google/protobuf/jpush/c;

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/b;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/jpush/a/a/bd;->c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/bd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/l;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/jpush/a/a/bd;->c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/bd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/google/protobuf/jpush/i;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/bd;->e()Lcn/jpush/a/a/bd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/bd;->e()Lcn/jpush/a/a/bd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/protobuf/jpush/b;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/bd;->e()Lcn/jpush/a/a/bd;

    move-result-object v0

    return-object v0
.end method
