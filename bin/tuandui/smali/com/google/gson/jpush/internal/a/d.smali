.class final Lcom/google/gson/jpush/internal/a/d;
.super Lcom/google/gson/jpush/al;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/jpush/al",
        "<",
        "Ljava/util/Collection",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/gson/jpush/al;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/jpush/al",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/gson/jpush/internal/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/jpush/internal/ae",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/jpush/k;Ljava/lang/reflect/Type;Lcom/google/gson/jpush/al;Lcom/google/gson/jpush/internal/ae;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/jpush/k;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/jpush/al",
            "<TE;>;",
            "Lcom/google/gson/jpush/internal/ae",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/gson/jpush/al;-><init>()V

    new-instance v0, Lcom/google/gson/jpush/internal/a/y;

    invoke-direct {v0, p1, p3, p2}, Lcom/google/gson/jpush/internal/a/y;-><init>(Lcom/google/gson/jpush/k;Lcom/google/gson/jpush/al;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/gson/jpush/internal/a/d;->a:Lcom/google/gson/jpush/al;

    iput-object p4, p0, Lcom/google/gson/jpush/internal/a/d;->b:Lcom/google/gson/jpush/internal/ae;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/gson/jpush/b/a;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v0

    sget-object v1, Lcom/google/gson/jpush/b/c;->i:Lcom/google/gson/jpush/b/c;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->j()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/d;->b:Lcom/google/gson/jpush/internal/ae;

    invoke-interface {v0}, Lcom/google/gson/jpush/internal/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->a()V

    :goto_1
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/gson/jpush/internal/a/d;->a:Lcom/google/gson/jpush/al;

    invoke-virtual {v1, p1}, Lcom/google/gson/jpush/al;->a(Lcom/google/gson/jpush/b/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->b()V

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/gson/jpush/b/d;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Ljava/util/Collection;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/d;->f()Lcom/google/gson/jpush/b/d;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/d;->b()Lcom/google/gson/jpush/b/d;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/jpush/internal/a/d;->a:Lcom/google/gson/jpush/al;

    invoke-virtual {v2, p1, v1}, Lcom/google/gson/jpush/al;->a(Lcom/google/gson/jpush/b/d;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/d;->c()Lcom/google/gson/jpush/b/d;

    goto :goto_0
.end method
