.class public final Lcn/jpush/a/a/y;
.super Lcom/google/protobuf/jpush/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/jpush/i",
        "<",
        "Lcn/jpush/a/a/x;",
        "Lcn/jpush/a/a/y;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
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

    iput-object v0, p0, Lcn/jpush/a/a/y;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic b()Lcn/jpush/a/a/y;
    .locals 1

    new-instance v0, Lcn/jpush/a/a/y;

    invoke-direct {v0}, Lcn/jpush/a/a/y;-><init>()V

    return-object v0
.end method

.method private c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/y;
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
    invoke-direct {p0}, Lcn/jpush/a/a/y;->f()V

    iget-object v0, p0, Lcn/jpush/a/a/y;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/jpush/d;->c(I)I

    move-result v0

    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->g()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->c()I

    move-result v1

    invoke-direct {p0}, Lcn/jpush/a/a/y;->f()V

    iget-object v2, p0, Lcn/jpush/a/a/y;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/protobuf/jpush/d;->d(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method private e()Lcn/jpush/a/a/y;
    .locals 2

    new-instance v0, Lcn/jpush/a/a/y;

    invoke-direct {v0}, Lcn/jpush/a/a/y;-><init>()V

    invoke-virtual {p0}, Lcn/jpush/a/a/y;->a()Lcn/jpush/a/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jpush/a/a/y;->a(Lcn/jpush/a/a/x;)Lcn/jpush/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/y;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/jpush/a/a/y;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcn/jpush/a/a/y;->b:Ljava/util/List;

    iget v0, p0, Lcn/jpush/a/a/y;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jpush/a/a/y;->a:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lcn/jpush/a/a/x;
    .locals 3

    new-instance v0, Lcn/jpush/a/a/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/jpush/a/a/x;-><init>(Lcn/jpush/a/a/y;B)V

    iget v1, p0, Lcn/jpush/a/a/y;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcn/jpush/a/a/y;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcn/jpush/a/a/y;->b:Ljava/util/List;

    iget v1, p0, Lcn/jpush/a/a/y;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcn/jpush/a/a/y;->a:I

    :cond_0
    iget-object v1, p0, Lcn/jpush/a/a/y;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcn/jpush/a/a/x;->a(Lcn/jpush/a/a/x;Ljava/util/List;)Ljava/util/List;

    return-object v0
.end method

.method public final a(Lcn/jpush/a/a/x;)Lcn/jpush/a/a/y;
    .locals 2

    invoke-static {}, Lcn/jpush/a/a/x;->a()Lcn/jpush/a/a/x;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-static {p1}, Lcn/jpush/a/a/x;->b(Lcn/jpush/a/a/x;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/jpush/a/a/y;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcn/jpush/a/a/x;->b(Lcn/jpush/a/a/x;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/a/a/y;->b:Ljava/util/List;

    iget v0, p0, Lcn/jpush/a/a/y;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcn/jpush/a/a/y;->a:I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcn/jpush/a/a/y;->f()V

    iget-object v0, p0, Lcn/jpush/a/a/y;->b:Ljava/util/List;

    invoke-static {p1}, Lcn/jpush/a/a/x;->b(Lcn/jpush/a/a/x;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/b;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/jpush/a/a/y;->c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/l;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/jpush/a/a/y;->c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/google/protobuf/jpush/i;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/y;->e()Lcn/jpush/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/y;->e()Lcn/jpush/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/protobuf/jpush/b;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/y;->e()Lcn/jpush/a/a/y;

    move-result-object v0

    return-object v0
.end method
