.class final Lcom/google/gson/jpush/internal/a/y;
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
.field private final a:Lcom/google/gson/jpush/k;

.field private final b:Lcom/google/gson/jpush/al;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/jpush/al",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/google/gson/jpush/k;Lcom/google/gson/jpush/al;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/jpush/k;",
            "Lcom/google/gson/jpush/al",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/gson/jpush/al;-><init>()V

    iput-object p1, p0, Lcom/google/gson/jpush/internal/a/y;->a:Lcom/google/gson/jpush/k;

    iput-object p2, p0, Lcom/google/gson/jpush/internal/a/y;->b:Lcom/google/gson/jpush/al;

    iput-object p3, p0, Lcom/google/gson/jpush/internal/a/y;->c:Ljava/lang/reflect/Type;

    return-void
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

    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/y;->b:Lcom/google/gson/jpush/al;

    invoke-virtual {v0, p1}, Lcom/google/gson/jpush/al;->a(Lcom/google/gson/jpush/b/a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    iget-object v1, p0, Lcom/google/gson/jpush/internal/a/y;->b:Lcom/google/gson/jpush/al;

    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/y;->c:Ljava/lang/reflect/Type;

    if-eqz p2, :cond_1

    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    instance-of v2, v0, Ljava/lang/reflect/TypeVariable;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Lcom/google/gson/jpush/internal/a/y;->c:Ljava/lang/reflect/Type;

    if-eq v0, v2, :cond_3

    iget-object v1, p0, Lcom/google/gson/jpush/internal/a/y;->a:Lcom/google/gson/jpush/k;

    invoke-static {v0}, Lcom/google/gson/jpush/a/a;->a(Ljava/lang/reflect/Type;)Lcom/google/gson/jpush/a/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/gson/jpush/k;->a(Lcom/google/gson/jpush/a/a;)Lcom/google/gson/jpush/al;

    move-result-object v0

    instance-of v1, v0, Lcom/google/gson/jpush/internal/a/s;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/gson/jpush/internal/a/y;->b:Lcom/google/gson/jpush/al;

    instance-of v1, v1, Lcom/google/gson/jpush/internal/a/s;

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/y;->b:Lcom/google/gson/jpush/al;

    :cond_2
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/jpush/al;->a(Lcom/google/gson/jpush/b/d;Ljava/lang/Object;)V

    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
