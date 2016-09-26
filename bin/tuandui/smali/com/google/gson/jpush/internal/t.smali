.class final Lcom/google/gson/jpush/internal/t;
.super Lcom/google/gson/jpush/al;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/jpush/al",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/google/gson/jpush/k;

.field final synthetic d:Lcom/google/gson/jpush/a/a;

.field final synthetic e:Lcom/google/gson/jpush/internal/s;

.field private f:Lcom/google/gson/jpush/al;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/jpush/al",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/gson/jpush/internal/s;ZZLcom/google/gson/jpush/k;Lcom/google/gson/jpush/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/gson/jpush/internal/t;->e:Lcom/google/gson/jpush/internal/s;

    iput-boolean p2, p0, Lcom/google/gson/jpush/internal/t;->a:Z

    iput-boolean p3, p0, Lcom/google/gson/jpush/internal/t;->b:Z

    iput-object p4, p0, Lcom/google/gson/jpush/internal/t;->c:Lcom/google/gson/jpush/k;

    iput-object p5, p0, Lcom/google/gson/jpush/internal/t;->d:Lcom/google/gson/jpush/a/a;

    invoke-direct {p0}, Lcom/google/gson/jpush/al;-><init>()V

    return-void
.end method

.method private a()Lcom/google/gson/jpush/al;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/jpush/al",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/jpush/internal/t;->f:Lcom/google/gson/jpush/al;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/jpush/internal/t;->c:Lcom/google/gson/jpush/k;

    iget-object v1, p0, Lcom/google/gson/jpush/internal/t;->e:Lcom/google/gson/jpush/internal/s;

    iget-object v2, p0, Lcom/google/gson/jpush/internal/t;->d:Lcom/google/gson/jpush/a/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/jpush/k;->a(Lcom/google/gson/jpush/am;Lcom/google/gson/jpush/a/a;)Lcom/google/gson/jpush/al;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/jpush/internal/t;->f:Lcom/google/gson/jpush/al;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/gson/jpush/b/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/jpush/b/a;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/gson/jpush/internal/t;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->n()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/gson/jpush/internal/t;->a()Lcom/google/gson/jpush/al;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/jpush/al;->a(Lcom/google/gson/jpush/b/a;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/google/gson/jpush/b/d;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/jpush/b/d;",
            "TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/gson/jpush/internal/t;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/d;->f()Lcom/google/gson/jpush/b/d;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/gson/jpush/internal/t;->a()Lcom/google/gson/jpush/al;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/jpush/al;->a(Lcom/google/gson/jpush/b/d;Ljava/lang/Object;)V

    goto :goto_0
.end method
