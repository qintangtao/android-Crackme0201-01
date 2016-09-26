.class final Lcom/google/gson/jpush/internal/a/r;
.super Lcom/google/gson/jpush/internal/a/t;


# instance fields
.field final a:Lcom/google/gson/jpush/al;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/jpush/al",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/gson/jpush/k;

.field final synthetic c:Ljava/lang/reflect/Field;

.field final synthetic d:Lcom/google/gson/jpush/a/a;

.field final synthetic e:Z

.field final synthetic f:Lcom/google/gson/jpush/internal/a/q;


# direct methods
.method constructor <init>(Lcom/google/gson/jpush/internal/a/q;Ljava/lang/String;ZZLcom/google/gson/jpush/k;Ljava/lang/reflect/Field;Lcom/google/gson/jpush/a/a;Z)V
    .locals 4

    iput-object p1, p0, Lcom/google/gson/jpush/internal/a/r;->f:Lcom/google/gson/jpush/internal/a/q;

    iput-object p5, p0, Lcom/google/gson/jpush/internal/a/r;->b:Lcom/google/gson/jpush/k;

    iput-object p6, p0, Lcom/google/gson/jpush/internal/a/r;->c:Ljava/lang/reflect/Field;

    iput-object p7, p0, Lcom/google/gson/jpush/internal/a/r;->d:Lcom/google/gson/jpush/a/a;

    iput-boolean p8, p0, Lcom/google/gson/jpush/internal/a/r;->e:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/google/gson/jpush/internal/a/t;-><init>(Ljava/lang/String;ZZ)V

    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/r;->f:Lcom/google/gson/jpush/internal/a/q;

    iget-object v1, p0, Lcom/google/gson/jpush/internal/a/r;->b:Lcom/google/gson/jpush/k;

    iget-object v2, p0, Lcom/google/gson/jpush/internal/a/r;->c:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lcom/google/gson/jpush/internal/a/r;->d:Lcom/google/gson/jpush/a/a;

    invoke-static {v0, v1, v2, v3}, Lcom/google/gson/jpush/internal/a/q;->a(Lcom/google/gson/jpush/internal/a/q;Lcom/google/gson/jpush/k;Ljava/lang/reflect/Field;Lcom/google/gson/jpush/a/a;)Lcom/google/gson/jpush/al;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/jpush/internal/a/r;->a:Lcom/google/gson/jpush/al;

    return-void
.end method


# virtual methods
.method final a(Lcom/google/gson/jpush/b/a;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/r;->a:Lcom/google/gson/jpush/al;

    invoke-virtual {v0, p1}, Lcom/google/gson/jpush/al;->a(Lcom/google/gson/jpush/b/a;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/google/gson/jpush/internal/a/r;->e:Z

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/gson/jpush/internal/a/r;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method final a(Lcom/google/gson/jpush/b/d;Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/r;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/google/gson/jpush/internal/a/y;

    iget-object v2, p0, Lcom/google/gson/jpush/internal/a/r;->b:Lcom/google/gson/jpush/k;

    iget-object v3, p0, Lcom/google/gson/jpush/internal/a/r;->a:Lcom/google/gson/jpush/al;

    iget-object v4, p0, Lcom/google/gson/jpush/internal/a/r;->d:Lcom/google/gson/jpush/a/a;

    invoke-virtual {v4}, Lcom/google/gson/jpush/a/a;->b()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/gson/jpush/internal/a/y;-><init>(Lcom/google/gson/jpush/k;Lcom/google/gson/jpush/al;Ljava/lang/reflect/Type;)V

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/jpush/al;->a(Lcom/google/gson/jpush/b/d;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/gson/jpush/internal/a/r;->h:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/gson/jpush/internal/a/r;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
