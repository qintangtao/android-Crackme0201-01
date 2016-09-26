.class public final Lcn/jpush/a/a/ae;
.super Lcom/google/protobuf/jpush/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/jpush/i",
        "<",
        "Lcn/jpush/a/a/ad;",
        "Lcn/jpush/a/a/ae;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:J

.field private e:Lcom/google/protobuf/jpush/c;

.field private f:Lcn/jpush/a/a/x;

.field private g:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/jpush/i;-><init>()V

    sget-object v0, Lcom/google/protobuf/jpush/c;->a:Lcom/google/protobuf/jpush/c;

    iput-object v0, p0, Lcn/jpush/a/a/ae;->e:Lcom/google/protobuf/jpush/c;

    invoke-static {}, Lcn/jpush/a/a/x;->a()Lcn/jpush/a/a/x;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/a/a/ae;->f:Lcn/jpush/a/a/x;

    return-void
.end method

.method private c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/ae;
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
    iget v0, p0, Lcn/jpush/a/a/ae;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jpush/a/a/ae;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->c()I

    move-result v0

    iput v0, p0, Lcn/jpush/a/a/ae;->b:I

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcn/jpush/a/a/ae;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/jpush/a/a/ae;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->c()I

    move-result v0

    iput v0, p0, Lcn/jpush/a/a/ae;->c:I

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcn/jpush/a/a/ae;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcn/jpush/a/a/ae;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/a/a/ae;->d:J

    goto :goto_0

    :sswitch_4
    iget v0, p0, Lcn/jpush/a/a/ae;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcn/jpush/a/a/ae;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->d()Lcom/google/protobuf/jpush/c;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/a/a/ae;->e:Lcom/google/protobuf/jpush/c;

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcn/jpush/a/a/x;->b()Lcn/jpush/a/a/y;

    move-result-object v1

    iget v0, p0, Lcn/jpush/a/a/ae;->a:I

    and-int/lit8 v0, v0, 0x10

    const/16 v2, 0x10

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jpush/a/a/ae;->f:Lcn/jpush/a/a/x;

    invoke-virtual {v1, v0}, Lcn/jpush/a/a/y;->a(Lcn/jpush/a/a/x;)Lcn/jpush/a/a/y;

    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/jpush/d;->a(Lcom/google/protobuf/jpush/l;Lcom/google/protobuf/jpush/g;)V

    invoke-virtual {v1}, Lcn/jpush/a/a/y;->a()Lcn/jpush/a/a/x;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lcn/jpush/a/a/ae;->f:Lcn/jpush/a/a/x;

    iget v0, p0, Lcn/jpush/a/a/ae;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcn/jpush/a/a/ae;->a:I

    goto :goto_0

    :sswitch_6
    iget v0, p0, Lcn/jpush/a/a/ae;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcn/jpush/a/a/ae;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->c()I

    move-result v0

    iput v0, p0, Lcn/jpush/a/a/ae;->g:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method static synthetic e()Lcn/jpush/a/a/ae;
    .locals 1

    new-instance v0, Lcn/jpush/a/a/ae;

    invoke-direct {v0}, Lcn/jpush/a/a/ae;-><init>()V

    return-object v0
.end method

.method private f()Lcn/jpush/a/a/ae;
    .locals 2

    new-instance v0, Lcn/jpush/a/a/ae;

    invoke-direct {v0}, Lcn/jpush/a/a/ae;-><init>()V

    invoke-virtual {p0}, Lcn/jpush/a/a/ae;->b()Lcn/jpush/a/a/ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jpush/a/a/ae;->a(Lcn/jpush/a/a/ad;)Lcn/jpush/a/a/ae;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcn/jpush/a/a/ad;
    .locals 2

    invoke-virtual {p0}, Lcn/jpush/a/a/ae;->b()Lcn/jpush/a/a/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/a/a/ad;->o()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/protobuf/jpush/m;

    invoke-direct {v0}, Lcom/google/protobuf/jpush/m;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public final a(I)Lcn/jpush/a/a/ae;
    .locals 1

    iget v0, p0, Lcn/jpush/a/a/ae;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jpush/a/a/ae;->a:I

    iput p1, p0, Lcn/jpush/a/a/ae;->b:I

    return-object p0
.end method

.method public final a(J)Lcn/jpush/a/a/ae;
    .locals 1

    iget v0, p0, Lcn/jpush/a/a/ae;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcn/jpush/a/a/ae;->a:I

    iput-wide p1, p0, Lcn/jpush/a/a/ae;->d:J

    return-object p0
.end method

.method public final a(Lcn/jpush/a/a/ad;)Lcn/jpush/a/a/ae;
    .locals 3

    invoke-static {}, Lcn/jpush/a/a/ad;->a()Lcn/jpush/a/a/ad;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcn/jpush/a/a/ad;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcn/jpush/a/a/ad;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/jpush/a/a/ae;->a(I)Lcn/jpush/a/a/ae;

    :cond_2
    invoke-virtual {p1}, Lcn/jpush/a/a/ad;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcn/jpush/a/a/ad;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/jpush/a/a/ae;->b(I)Lcn/jpush/a/a/ae;

    :cond_3
    invoke-virtual {p1}, Lcn/jpush/a/a/ad;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcn/jpush/a/a/ad;->h()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcn/jpush/a/a/ae;->a(J)Lcn/jpush/a/a/ae;

    :cond_4
    invoke-virtual {p1}, Lcn/jpush/a/a/ad;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcn/jpush/a/a/ad;->j()Lcom/google/protobuf/jpush/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/jpush/a/a/ae;->a(Lcom/google/protobuf/jpush/c;)Lcn/jpush/a/a/ae;

    :cond_5
    invoke-virtual {p1}, Lcn/jpush/a/a/ad;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcn/jpush/a/a/ad;->l()Lcn/jpush/a/a/x;

    move-result-object v0

    iget v1, p0, Lcn/jpush/a/a/ae;->a:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcn/jpush/a/a/ae;->f:Lcn/jpush/a/a/x;

    invoke-static {}, Lcn/jpush/a/a/x;->a()Lcn/jpush/a/a/x;

    move-result-object v2

    if-eq v1, v2, :cond_7

    iget-object v1, p0, Lcn/jpush/a/a/ae;->f:Lcn/jpush/a/a/x;

    invoke-static {v1}, Lcn/jpush/a/a/x;->a(Lcn/jpush/a/a/x;)Lcn/jpush/a/a/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/jpush/a/a/y;->a(Lcn/jpush/a/a/x;)Lcn/jpush/a/a/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/a/a/y;->a()Lcn/jpush/a/a/x;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/a/a/ae;->f:Lcn/jpush/a/a/x;

    :goto_1
    iget v0, p0, Lcn/jpush/a/a/ae;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcn/jpush/a/a/ae;->a:I

    :cond_6
    invoke-virtual {p1}, Lcn/jpush/a/a/ad;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/jpush/a/a/ad;->n()I

    move-result v0

    iget v1, p0, Lcn/jpush/a/a/ae;->a:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcn/jpush/a/a/ae;->a:I

    iput v0, p0, Lcn/jpush/a/a/ae;->g:I

    goto :goto_0

    :cond_7
    iput-object v0, p0, Lcn/jpush/a/a/ae;->f:Lcn/jpush/a/a/x;

    goto :goto_1
.end method

.method public final a(Lcom/google/protobuf/jpush/c;)Lcn/jpush/a/a/ae;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcn/jpush/a/a/ae;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcn/jpush/a/a/ae;->a:I

    iput-object p1, p0, Lcn/jpush/a/a/ae;->e:Lcom/google/protobuf/jpush/c;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/b;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/jpush/a/a/ae;->c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcn/jpush/a/a/ad;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcn/jpush/a/a/ad;

    invoke-direct {v2, p0, v1}, Lcn/jpush/a/a/ad;-><init>(Lcn/jpush/a/a/ae;B)V

    iget v3, p0, Lcn/jpush/a/a/ae;->a:I

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_5

    :goto_0
    iget v1, p0, Lcn/jpush/a/a/ae;->b:I

    invoke-static {v2, v1}, Lcn/jpush/a/a/ad;->a(Lcn/jpush/a/a/ad;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcn/jpush/a/a/ae;->c:I

    invoke-static {v2, v1}, Lcn/jpush/a/a/ad;->b(Lcn/jpush/a/a/ad;I)I

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-wide v4, p0, Lcn/jpush/a/a/ae;->d:J

    invoke-static {v2, v4, v5}, Lcn/jpush/a/a/ad;->a(Lcn/jpush/a/a/ad;J)J

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-object v1, p0, Lcn/jpush/a/a/ae;->e:Lcom/google/protobuf/jpush/c;

    invoke-static {v2, v1}, Lcn/jpush/a/a/ad;->a(Lcn/jpush/a/a/ad;Lcom/google/protobuf/jpush/c;)Lcom/google/protobuf/jpush/c;

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v1, p0, Lcn/jpush/a/a/ae;->f:Lcn/jpush/a/a/x;

    invoke-static {v2, v1}, Lcn/jpush/a/a/ad;->a(Lcn/jpush/a/a/ad;Lcn/jpush/a/a/x;)Lcn/jpush/a/a/x;

    and-int/lit8 v1, v3, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget v1, p0, Lcn/jpush/a/a/ae;->g:I

    invoke-static {v2, v1}, Lcn/jpush/a/a/ad;->c(Lcn/jpush/a/a/ad;I)I

    invoke-static {v2, v0}, Lcn/jpush/a/a/ad;->d(Lcn/jpush/a/a/ad;I)I

    return-object v2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public final b(I)Lcn/jpush/a/a/ae;
    .locals 1

    iget v0, p0, Lcn/jpush/a/a/ae;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/jpush/a/a/ae;->a:I

    iput p1, p0, Lcn/jpush/a/a/ae;->c:I

    return-object p0
.end method

.method public final synthetic b(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/l;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/jpush/a/a/ae;->c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/google/protobuf/jpush/i;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/ae;->f()Lcn/jpush/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/ae;->f()Lcn/jpush/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/protobuf/jpush/b;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/ae;->f()Lcn/jpush/a/a/ae;

    move-result-object v0

    return-object v0
.end method
