.class public final Lcn/jpush/a/a/az;
.super Lcom/google/protobuf/jpush/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/jpush/i",
        "<",
        "Lcn/jpush/a/a/ay;",
        "Lcn/jpush/a/a/az;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:J

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/jpush/i;-><init>()V

    return-void
.end method

.method static synthetic b()Lcn/jpush/a/a/az;
    .locals 1

    new-instance v0, Lcn/jpush/a/a/az;

    invoke-direct {v0}, Lcn/jpush/a/a/az;-><init>()V

    return-object v0
.end method

.method private c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/az;
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
    iget v0, p0, Lcn/jpush/a/a/az;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jpush/a/a/az;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/a/a/az;->b:J

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcn/jpush/a/a/az;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/jpush/a/a/az;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->c()I

    move-result v0

    iput v0, p0, Lcn/jpush/a/a/az;->c:I

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcn/jpush/a/a/az;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcn/jpush/a/a/az;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->c()I

    move-result v0

    iput v0, p0, Lcn/jpush/a/a/az;->d:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method private e()Lcn/jpush/a/a/az;
    .locals 2

    new-instance v0, Lcn/jpush/a/a/az;

    invoke-direct {v0}, Lcn/jpush/a/a/az;-><init>()V

    invoke-virtual {p0}, Lcn/jpush/a/a/az;->a()Lcn/jpush/a/a/ay;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jpush/a/a/az;->a(Lcn/jpush/a/a/ay;)Lcn/jpush/a/a/az;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcn/jpush/a/a/ay;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcn/jpush/a/a/ay;

    invoke-direct {v2, p0, v1}, Lcn/jpush/a/a/ay;-><init>(Lcn/jpush/a/a/az;B)V

    iget v3, p0, Lcn/jpush/a/a/az;->a:I

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    :goto_0
    iget-wide v4, p0, Lcn/jpush/a/a/az;->b:J

    invoke-static {v2, v4, v5}, Lcn/jpush/a/a/ay;->a(Lcn/jpush/a/a/ay;J)J

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcn/jpush/a/a/az;->c:I

    invoke-static {v2, v1}, Lcn/jpush/a/a/ay;->a(Lcn/jpush/a/a/ay;I)I

    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget v1, p0, Lcn/jpush/a/a/az;->d:I

    invoke-static {v2, v1}, Lcn/jpush/a/a/ay;->b(Lcn/jpush/a/a/ay;I)I

    invoke-static {v2, v0}, Lcn/jpush/a/a/ay;->c(Lcn/jpush/a/a/ay;I)I

    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final a(Lcn/jpush/a/a/ay;)Lcn/jpush/a/a/az;
    .locals 3

    invoke-static {}, Lcn/jpush/a/a/ay;->a()Lcn/jpush/a/a/ay;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcn/jpush/a/a/ay;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcn/jpush/a/a/ay;->d()J

    move-result-wide v0

    iget v2, p0, Lcn/jpush/a/a/az;->a:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/jpush/a/a/az;->a:I

    iput-wide v0, p0, Lcn/jpush/a/a/az;->b:J

    :cond_2
    invoke-virtual {p1}, Lcn/jpush/a/a/ay;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcn/jpush/a/a/ay;->f()I

    move-result v0

    iget v1, p0, Lcn/jpush/a/a/az;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcn/jpush/a/a/az;->a:I

    iput v0, p0, Lcn/jpush/a/a/az;->c:I

    :cond_3
    invoke-virtual {p1}, Lcn/jpush/a/a/ay;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/jpush/a/a/ay;->h()I

    move-result v0

    iget v1, p0, Lcn/jpush/a/a/az;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcn/jpush/a/a/az;->a:I

    iput v0, p0, Lcn/jpush/a/a/az;->d:I

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/b;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/jpush/a/a/az;->c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/az;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/l;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/jpush/a/a/az;->c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/az;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/google/protobuf/jpush/i;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/az;->e()Lcn/jpush/a/a/az;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/az;->e()Lcn/jpush/a/a/az;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/protobuf/jpush/b;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/az;->e()Lcn/jpush/a/a/az;

    move-result-object v0

    return-object v0
.end method
