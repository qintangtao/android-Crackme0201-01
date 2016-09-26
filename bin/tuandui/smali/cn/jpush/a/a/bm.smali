.class public final Lcn/jpush/a/a/bm;
.super Lcom/google/protobuf/jpush/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/jpush/i",
        "<",
        "Lcn/jpush/a/a/bl;",
        "Lcn/jpush/a/a/bm;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/google/protobuf/jpush/c;

.field private c:Lcom/google/protobuf/jpush/c;

.field private d:I

.field private e:Lcom/google/protobuf/jpush/c;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/jpush/i;-><init>()V

    sget-object v0, Lcom/google/protobuf/jpush/c;->a:Lcom/google/protobuf/jpush/c;

    iput-object v0, p0, Lcn/jpush/a/a/bm;->b:Lcom/google/protobuf/jpush/c;

    sget-object v0, Lcom/google/protobuf/jpush/c;->a:Lcom/google/protobuf/jpush/c;

    iput-object v0, p0, Lcn/jpush/a/a/bm;->c:Lcom/google/protobuf/jpush/c;

    sget-object v0, Lcom/google/protobuf/jpush/c;->a:Lcom/google/protobuf/jpush/c;

    iput-object v0, p0, Lcn/jpush/a/a/bm;->e:Lcom/google/protobuf/jpush/c;

    return-void
.end method

.method private c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/bm;
    .locals 1

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
    iget v0, p0, Lcn/jpush/a/a/bm;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jpush/a/a/bm;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->d()Lcom/google/protobuf/jpush/c;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/a/a/bm;->b:Lcom/google/protobuf/jpush/c;

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcn/jpush/a/a/bm;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/jpush/a/a/bm;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->d()Lcom/google/protobuf/jpush/c;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/a/a/bm;->c:Lcom/google/protobuf/jpush/c;

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcn/jpush/a/a/bm;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcn/jpush/a/a/bm;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->c()I

    move-result v0

    iput v0, p0, Lcn/jpush/a/a/bm;->d:I

    goto :goto_0

    :sswitch_4
    iget v0, p0, Lcn/jpush/a/a/bm;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcn/jpush/a/a/bm;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->d()Lcom/google/protobuf/jpush/c;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/a/a/bm;->e:Lcom/google/protobuf/jpush/c;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method static synthetic e()Lcn/jpush/a/a/bm;
    .locals 1

    new-instance v0, Lcn/jpush/a/a/bm;

    invoke-direct {v0}, Lcn/jpush/a/a/bm;-><init>()V

    return-object v0
.end method

.method private f()Lcn/jpush/a/a/bm;
    .locals 2

    new-instance v0, Lcn/jpush/a/a/bm;

    invoke-direct {v0}, Lcn/jpush/a/a/bm;-><init>()V

    invoke-virtual {p0}, Lcn/jpush/a/a/bm;->b()Lcn/jpush/a/a/bl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jpush/a/a/bm;->a(Lcn/jpush/a/a/bl;)Lcn/jpush/a/a/bm;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcn/jpush/a/a/bl;
    .locals 2

    invoke-virtual {p0}, Lcn/jpush/a/a/bm;->b()Lcn/jpush/a/a/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/a/a/bl;->k()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/protobuf/jpush/m;

    invoke-direct {v0}, Lcom/google/protobuf/jpush/m;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public final a(I)Lcn/jpush/a/a/bm;
    .locals 1

    iget v0, p0, Lcn/jpush/a/a/bm;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcn/jpush/a/a/bm;->a:I

    iput p1, p0, Lcn/jpush/a/a/bm;->d:I

    return-object p0
.end method

.method public final a(Lcn/jpush/a/a/bl;)Lcn/jpush/a/a/bm;
    .locals 1

    invoke-static {}, Lcn/jpush/a/a/bl;->a()Lcn/jpush/a/a/bl;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcn/jpush/a/a/bl;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcn/jpush/a/a/bl;->d()Lcom/google/protobuf/jpush/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/jpush/a/a/bm;->a(Lcom/google/protobuf/jpush/c;)Lcn/jpush/a/a/bm;

    :cond_2
    invoke-virtual {p1}, Lcn/jpush/a/a/bl;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcn/jpush/a/a/bl;->f()Lcom/google/protobuf/jpush/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/jpush/a/a/bm;->b(Lcom/google/protobuf/jpush/c;)Lcn/jpush/a/a/bm;

    :cond_3
    invoke-virtual {p1}, Lcn/jpush/a/a/bl;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcn/jpush/a/a/bl;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/jpush/a/a/bm;->a(I)Lcn/jpush/a/a/bm;

    :cond_4
    invoke-virtual {p1}, Lcn/jpush/a/a/bl;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/jpush/a/a/bl;->j()Lcom/google/protobuf/jpush/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/jpush/a/a/bm;->c(Lcom/google/protobuf/jpush/c;)Lcn/jpush/a/a/bm;

    goto :goto_0
.end method

.method public final a(Lcom/google/protobuf/jpush/c;)Lcn/jpush/a/a/bm;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcn/jpush/a/a/bm;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jpush/a/a/bm;->a:I

    iput-object p1, p0, Lcn/jpush/a/a/bm;->b:Lcom/google/protobuf/jpush/c;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/b;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/jpush/a/a/bm;->c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/bm;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcn/jpush/a/a/bl;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcn/jpush/a/a/bl;

    invoke-direct {v2, p0, v1}, Lcn/jpush/a/a/bl;-><init>(Lcn/jpush/a/a/bm;B)V

    iget v3, p0, Lcn/jpush/a/a/bm;->a:I

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3

    :goto_0
    iget-object v1, p0, Lcn/jpush/a/a/bm;->b:Lcom/google/protobuf/jpush/c;

    invoke-static {v2, v1}, Lcn/jpush/a/a/bl;->a(Lcn/jpush/a/a/bl;Lcom/google/protobuf/jpush/c;)Lcom/google/protobuf/jpush/c;

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcn/jpush/a/a/bm;->c:Lcom/google/protobuf/jpush/c;

    invoke-static {v2, v1}, Lcn/jpush/a/a/bl;->b(Lcn/jpush/a/a/bl;Lcom/google/protobuf/jpush/c;)Lcom/google/protobuf/jpush/c;

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget v1, p0, Lcn/jpush/a/a/bm;->d:I

    invoke-static {v2, v1}, Lcn/jpush/a/a/bl;->a(Lcn/jpush/a/a/bl;I)I

    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-object v1, p0, Lcn/jpush/a/a/bm;->e:Lcom/google/protobuf/jpush/c;

    invoke-static {v2, v1}, Lcn/jpush/a/a/bl;->c(Lcn/jpush/a/a/bl;Lcom/google/protobuf/jpush/c;)Lcom/google/protobuf/jpush/c;

    invoke-static {v2, v0}, Lcn/jpush/a/a/bl;->b(Lcn/jpush/a/a/bl;I)I

    return-object v2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final b(Lcom/google/protobuf/jpush/c;)Lcn/jpush/a/a/bm;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcn/jpush/a/a/bm;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/jpush/a/a/bm;->a:I

    iput-object p1, p0, Lcn/jpush/a/a/bm;->c:Lcom/google/protobuf/jpush/c;

    return-object p0
.end method

.method public final synthetic b(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/l;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/jpush/a/a/bm;->c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/bm;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/google/protobuf/jpush/c;)Lcn/jpush/a/a/bm;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcn/jpush/a/a/bm;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcn/jpush/a/a/bm;->a:I

    iput-object p1, p0, Lcn/jpush/a/a/bm;->e:Lcom/google/protobuf/jpush/c;

    return-object p0
.end method

.method public final synthetic c()Lcom/google/protobuf/jpush/i;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/bm;->f()Lcn/jpush/a/a/bm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/bm;->f()Lcn/jpush/a/a/bm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/protobuf/jpush/b;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/bm;->f()Lcn/jpush/a/a/bm;

    move-result-object v0

    return-object v0
.end method
