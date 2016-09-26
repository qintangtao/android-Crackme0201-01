.class public final Lcom/google/gson/jpush/internal/a/s;
.super Lcom/google/gson/jpush/al;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/jpush/al",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/gson/jpush/internal/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/jpush/internal/ae",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gson/jpush/internal/a/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/gson/jpush/internal/ae;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/jpush/internal/ae",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gson/jpush/internal/a/t;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/gson/jpush/al;-><init>()V

    iput-object p1, p0, Lcom/google/gson/jpush/internal/a/s;->a:Lcom/google/gson/jpush/internal/ae;

    iput-object p2, p0, Lcom/google/gson/jpush/internal/a/s;->b:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gson/jpush/internal/ae;Ljava/util/Map;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/gson/jpush/internal/a/s;-><init>(Lcom/google/gson/jpush/internal/ae;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/jpush/b/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/jpush/b/a;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v0

    sget-object v1, Lcom/google/gson/jpush/b/c;->i:Lcom/google/gson/jpush/b/c;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->j()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/s;->a:Lcom/google/gson/jpush/internal/ae;

    invoke-interface {v0}, Lcom/google/gson/jpush/internal/ae;->a()Ljava/lang/Object;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->c()V

    :goto_1
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/gson/jpush/internal/a/s;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/internal/a/t;

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/google/gson/jpush/internal/a/t;->i:Z

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->n()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/gson/jpush/af;

    invoke-direct {v1, v0}, Lcom/google/gson/jpush/af;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/jpush/internal/a/t;->a(Lcom/google/gson/jpush/b/a;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_3
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->d()V

    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/google/gson/jpush/b/d;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/jpush/b/d;",
            "TT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/d;->f()Lcom/google/gson/jpush/b/d;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/d;->d()Lcom/google/gson/jpush/b/d;

    :try_start_0
    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/s;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/internal/a/t;

    invoke-virtual {v0, p2}, Lcom/google/gson/jpush/internal/a/t;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/gson/jpush/internal/a/t;->g:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/google/gson/jpush/b/d;->a(Ljava/lang/String;)Lcom/google/gson/jpush/b/d;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/jpush/internal/a/t;->a(Lcom/google/gson/jpush/b/d;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/d;->e()Lcom/google/gson/jpush/b/d;

    goto :goto_0
.end method
