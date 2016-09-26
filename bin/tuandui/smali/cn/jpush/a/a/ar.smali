.class public final Lcn/jpush/a/a/ar;
.super Lcom/google/protobuf/jpush/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/jpush/i",
        "<",
        "Lcn/jpush/a/a/aq;",
        "Lcn/jpush/a/a/ar;",
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
            "Lcn/jpush/a/a/ao;",
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

    iput-object v0, p0, Lcn/jpush/a/a/ar;->b:Ljava/util/List;

    return-void
.end method

.method private c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/ar;
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
    invoke-static {}, Lcn/jpush/a/a/ao;->r()Lcn/jpush/a/a/ap;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/jpush/d;->a(Lcom/google/protobuf/jpush/l;Lcom/google/protobuf/jpush/g;)V

    invoke-virtual {v0}, Lcn/jpush/a/a/ap;->b()Lcn/jpush/a/a/ao;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/jpush/a/a/ar;->a(Lcn/jpush/a/a/ao;)Lcn/jpush/a/a/ar;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic e()Lcn/jpush/a/a/ar;
    .locals 1

    new-instance v0, Lcn/jpush/a/a/ar;

    invoke-direct {v0}, Lcn/jpush/a/a/ar;-><init>()V

    return-object v0
.end method

.method private f()Lcn/jpush/a/a/ar;
    .locals 2

    new-instance v0, Lcn/jpush/a/a/ar;

    invoke-direct {v0}, Lcn/jpush/a/a/ar;-><init>()V

    invoke-virtual {p0}, Lcn/jpush/a/a/ar;->b()Lcn/jpush/a/a/aq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jpush/a/a/ar;->a(Lcn/jpush/a/a/aq;)Lcn/jpush/a/a/ar;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/ar;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/jpush/a/a/ar;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcn/jpush/a/a/ar;->b:Ljava/util/List;

    iget v0, p0, Lcn/jpush/a/a/ar;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jpush/a/a/ar;->a:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lcn/jpush/a/a/aq;
    .locals 2

    invoke-virtual {p0}, Lcn/jpush/a/a/ar;->b()Lcn/jpush/a/a/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/a/a/aq;->d()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/protobuf/jpush/m;

    invoke-direct {v0}, Lcom/google/protobuf/jpush/m;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public final a(Lcn/jpush/a/a/ao;)Lcn/jpush/a/a/ar;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcn/jpush/a/a/ar;->g()V

    iget-object v0, p0, Lcn/jpush/a/a/ar;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a(Lcn/jpush/a/a/aq;)Lcn/jpush/a/a/ar;
    .locals 2

    invoke-static {}, Lcn/jpush/a/a/aq;->a()Lcn/jpush/a/a/aq;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-static {p1}, Lcn/jpush/a/a/aq;->b(Lcn/jpush/a/a/aq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/jpush/a/a/ar;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcn/jpush/a/a/aq;->b(Lcn/jpush/a/a/aq;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/a/a/ar;->b:Ljava/util/List;

    iget v0, p0, Lcn/jpush/a/a/ar;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcn/jpush/a/a/ar;->a:I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcn/jpush/a/a/ar;->g()V

    iget-object v0, p0, Lcn/jpush/a/a/ar;->b:Ljava/util/List;

    invoke-static {p1}, Lcn/jpush/a/a/aq;->b(Lcn/jpush/a/a/aq;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/b;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/jpush/a/a/ar;->c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/ar;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcn/jpush/a/a/aq;
    .locals 3

    new-instance v0, Lcn/jpush/a/a/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/jpush/a/a/aq;-><init>(Lcn/jpush/a/a/ar;B)V

    iget v1, p0, Lcn/jpush/a/a/ar;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcn/jpush/a/a/ar;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcn/jpush/a/a/ar;->b:Ljava/util/List;

    iget v1, p0, Lcn/jpush/a/a/ar;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcn/jpush/a/a/ar;->a:I

    :cond_0
    iget-object v1, p0, Lcn/jpush/a/a/ar;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcn/jpush/a/a/aq;->a(Lcn/jpush/a/a/aq;Ljava/util/List;)Ljava/util/List;

    return-object v0
.end method

.method public final synthetic b(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/l;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/jpush/a/a/ar;->c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/ar;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/google/protobuf/jpush/i;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/ar;->f()Lcn/jpush/a/a/ar;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/ar;->f()Lcn/jpush/a/a/ar;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/protobuf/jpush/b;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/ar;->f()Lcn/jpush/a/a/ar;

    move-result-object v0

    return-object v0
.end method
