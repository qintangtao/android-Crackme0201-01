.class public final Lcom/google/gson/jpush/internal/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/gson/jpush/am;


# instance fields
.field private final a:Lcom/google/gson/jpush/internal/f;


# direct methods
.method public constructor <init>(Lcom/google/gson/jpush/internal/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/jpush/internal/a/c;->a:Lcom/google/gson/jpush/internal/f;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/jpush/k;Lcom/google/gson/jpush/a/a;)Lcom/google/gson/jpush/al;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/jpush/k;",
            "Lcom/google/gson/jpush/a/a",
            "<TT;>;)",
            "Lcom/google/gson/jpush/al",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/gson/jpush/a/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/gson/jpush/a/a;->a()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lcom/google/gson/jpush/internal/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/gson/jpush/a/a;->a(Ljava/lang/reflect/Type;)Lcom/google/gson/jpush/a/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/jpush/k;->a(Lcom/google/gson/jpush/a/a;)Lcom/google/gson/jpush/al;

    move-result-object v2

    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/c;->a:Lcom/google/gson/jpush/internal/f;

    invoke-virtual {v0, p2}, Lcom/google/gson/jpush/internal/f;->a(Lcom/google/gson/jpush/a/a;)Lcom/google/gson/jpush/internal/ae;

    move-result-object v3

    new-instance v0, Lcom/google/gson/jpush/internal/a/d;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/gson/jpush/internal/a/d;-><init>(Lcom/google/gson/jpush/k;Ljava/lang/reflect/Type;Lcom/google/gson/jpush/al;Lcom/google/gson/jpush/internal/ae;)V

    goto :goto_0
.end method
