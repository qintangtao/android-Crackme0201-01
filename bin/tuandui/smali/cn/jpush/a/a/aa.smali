.class public final Lcn/jpush/a/a/aa;
.super Lcom/google/protobuf/jpush/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/jpush/i",
        "<",
        "Lcn/jpush/a/a/z;",
        "Lcn/jpush/a/a/aa;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcn/jpush/a/a/ad;

.field private c:Lcn/jpush/a/a/ab;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/jpush/i;-><init>()V

    invoke-static {}, Lcn/jpush/a/a/ad;->a()Lcn/jpush/a/a/ad;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/a/a/aa;->b:Lcn/jpush/a/a/ad;

    invoke-static {}, Lcn/jpush/a/a/ab;->a()Lcn/jpush/a/a/ab;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/a/a/aa;->c:Lcn/jpush/a/a/ab;

    return-void
.end method

.method static synthetic a(Lcn/jpush/a/a/aa;)Lcn/jpush/a/a/z;
    .locals 2

    invoke-direct {p0}, Lcn/jpush/a/a/aa;->f()Lcn/jpush/a/a/z;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/a/a/z;->g()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/protobuf/jpush/m;

    invoke-direct {v0}, Lcom/google/protobuf/jpush/m;-><init>()V

    new-instance v1, Lcom/google/protobuf/jpush/j;

    invoke-virtual {v0}, Lcom/google/protobuf/jpush/m;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/protobuf/jpush/j;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method static synthetic b()Lcn/jpush/a/a/aa;
    .locals 1

    new-instance v0, Lcn/jpush/a/a/aa;

    invoke-direct {v0}, Lcn/jpush/a/a/aa;-><init>()V

    return-object v0
.end method

.method private c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/aa;
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

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
    invoke-static {}, Lcn/jpush/a/a/ad;->p()Lcn/jpush/a/a/ae;

    move-result-object v3

    iget v0, p0, Lcn/jpush/a/a/aa;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jpush/a/a/aa;->b:Lcn/jpush/a/a/ad;

    invoke-virtual {v3, v0}, Lcn/jpush/a/a/ae;->a(Lcn/jpush/a/a/ad;)Lcn/jpush/a/a/ae;

    :cond_1
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/jpush/d;->a(Lcom/google/protobuf/jpush/l;Lcom/google/protobuf/jpush/g;)V

    invoke-virtual {v3}, Lcn/jpush/a/a/ae;->b()Lcn/jpush/a/a/ad;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/jpush/a/a/aa;->a(Lcn/jpush/a/a/ad;)Lcn/jpush/a/a/aa;

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :sswitch_2
    invoke-static {}, Lcn/jpush/a/a/ab;->ad()Lcn/jpush/a/a/ac;

    move-result-object v3

    iget v0, p0, Lcn/jpush/a/a/aa;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    move v0, v1

    :goto_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/jpush/a/a/aa;->c:Lcn/jpush/a/a/ab;

    invoke-virtual {v3, v0}, Lcn/jpush/a/a/ac;->a(Lcn/jpush/a/a/ab;)Lcn/jpush/a/a/ac;

    :cond_3
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/jpush/d;->a(Lcom/google/protobuf/jpush/l;Lcom/google/protobuf/jpush/g;)V

    invoke-virtual {v3}, Lcn/jpush/a/a/ac;->b()Lcn/jpush/a/a/ab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/jpush/a/a/aa;->a(Lcn/jpush/a/a/ab;)Lcn/jpush/a/a/aa;

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method private e()Lcn/jpush/a/a/aa;
    .locals 5

    new-instance v0, Lcn/jpush/a/a/aa;

    invoke-direct {v0}, Lcn/jpush/a/a/aa;-><init>()V

    invoke-direct {p0}, Lcn/jpush/a/a/aa;->f()Lcn/jpush/a/a/z;

    move-result-object v1

    invoke-static {}, Lcn/jpush/a/a/z;->a()Lcn/jpush/a/a/z;

    move-result-object v2

    if-eq v1, v2, :cond_1

    invoke-virtual {v1}, Lcn/jpush/a/a/z;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcn/jpush/a/a/z;->d()Lcn/jpush/a/a/ad;

    move-result-object v2

    iget v3, v0, Lcn/jpush/a/a/aa;->a:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, v0, Lcn/jpush/a/a/aa;->b:Lcn/jpush/a/a/ad;

    invoke-static {}, Lcn/jpush/a/a/ad;->a()Lcn/jpush/a/a/ad;

    move-result-object v4

    if-eq v3, v4, :cond_2

    iget-object v3, v0, Lcn/jpush/a/a/aa;->b:Lcn/jpush/a/a/ad;

    invoke-static {v3}, Lcn/jpush/a/a/ad;->a(Lcn/jpush/a/a/ad;)Lcn/jpush/a/a/ae;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/jpush/a/a/ae;->a(Lcn/jpush/a/a/ad;)Lcn/jpush/a/a/ae;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jpush/a/a/ae;->b()Lcn/jpush/a/a/ad;

    move-result-object v2

    iput-object v2, v0, Lcn/jpush/a/a/aa;->b:Lcn/jpush/a/a/ad;

    :goto_0
    iget v2, v0, Lcn/jpush/a/a/aa;->a:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcn/jpush/a/a/aa;->a:I

    :cond_0
    invoke-virtual {v1}, Lcn/jpush/a/a/z;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcn/jpush/a/a/z;->f()Lcn/jpush/a/a/ab;

    move-result-object v1

    iget v2, v0, Lcn/jpush/a/a/aa;->a:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object v2, v0, Lcn/jpush/a/a/aa;->c:Lcn/jpush/a/a/ab;

    invoke-static {}, Lcn/jpush/a/a/ab;->a()Lcn/jpush/a/a/ab;

    move-result-object v3

    if-eq v2, v3, :cond_3

    iget-object v2, v0, Lcn/jpush/a/a/aa;->c:Lcn/jpush/a/a/ab;

    invoke-static {v2}, Lcn/jpush/a/a/ab;->a(Lcn/jpush/a/a/ab;)Lcn/jpush/a/a/ac;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/jpush/a/a/ac;->a(Lcn/jpush/a/a/ab;)Lcn/jpush/a/a/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jpush/a/a/ac;->b()Lcn/jpush/a/a/ab;

    move-result-object v1

    iput-object v1, v0, Lcn/jpush/a/a/aa;->c:Lcn/jpush/a/a/ab;

    :goto_1
    iget v1, v0, Lcn/jpush/a/a/aa;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcn/jpush/a/a/aa;->a:I

    :cond_1
    return-object v0

    :cond_2
    iput-object v2, v0, Lcn/jpush/a/a/aa;->b:Lcn/jpush/a/a/ad;

    goto :goto_0

    :cond_3
    iput-object v1, v0, Lcn/jpush/a/a/aa;->c:Lcn/jpush/a/a/ab;

    goto :goto_1
.end method

.method private f()Lcn/jpush/a/a/z;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcn/jpush/a/a/z;

    invoke-direct {v2, p0, v1}, Lcn/jpush/a/a/z;-><init>(Lcn/jpush/a/a/aa;B)V

    iget v3, p0, Lcn/jpush/a/a/aa;->a:I

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_1

    :goto_0
    iget-object v1, p0, Lcn/jpush/a/a/aa;->b:Lcn/jpush/a/a/ad;

    invoke-static {v2, v1}, Lcn/jpush/a/a/z;->a(Lcn/jpush/a/a/z;Lcn/jpush/a/a/ad;)Lcn/jpush/a/a/ad;

    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcn/jpush/a/a/aa;->c:Lcn/jpush/a/a/ab;

    invoke-static {v2, v1}, Lcn/jpush/a/a/z;->a(Lcn/jpush/a/a/z;Lcn/jpush/a/a/ab;)Lcn/jpush/a/a/ab;

    invoke-static {v2, v0}, Lcn/jpush/a/a/z;->a(Lcn/jpush/a/a/z;I)I

    return-object v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcn/jpush/a/a/ab;)Lcn/jpush/a/a/aa;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcn/jpush/a/a/aa;->c:Lcn/jpush/a/a/ab;

    iget v0, p0, Lcn/jpush/a/a/aa;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/jpush/a/a/aa;->a:I

    return-object p0
.end method

.method public final a(Lcn/jpush/a/a/ad;)Lcn/jpush/a/a/aa;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcn/jpush/a/a/aa;->b:Lcn/jpush/a/a/ad;

    iget v0, p0, Lcn/jpush/a/a/aa;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jpush/a/a/aa;->a:I

    return-object p0
.end method

.method public final a()Lcn/jpush/a/a/z;
    .locals 2

    invoke-direct {p0}, Lcn/jpush/a/a/aa;->f()Lcn/jpush/a/a/z;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/a/a/z;->g()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/protobuf/jpush/m;

    invoke-direct {v0}, Lcom/google/protobuf/jpush/m;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public final synthetic a(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/b;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/jpush/a/a/aa;->c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/aa;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/l;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/jpush/a/a/aa;->c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/aa;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/google/protobuf/jpush/i;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/aa;->e()Lcn/jpush/a/a/aa;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/aa;->e()Lcn/jpush/a/a/aa;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/protobuf/jpush/b;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/aa;->e()Lcn/jpush/a/a/aa;

    move-result-object v0

    return-object v0
.end method
