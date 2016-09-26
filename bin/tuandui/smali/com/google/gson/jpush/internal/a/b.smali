.class final Lcom/google/gson/jpush/internal/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/gson/jpush/am;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/jpush/k;Lcom/google/gson/jpush/a/a;)Lcom/google/gson/jpush/al;
    .locals 3
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

    move-result-object v1

    instance-of v0, v1, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_1

    instance-of v0, v1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v1}, Lcom/google/gson/jpush/internal/b;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/gson/jpush/a/a;->a(Ljava/lang/reflect/Type;)Lcom/google/gson/jpush/a/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/jpush/k;->a(Lcom/google/gson/jpush/a/a;)Lcom/google/gson/jpush/al;

    move-result-object v2

    new-instance v0, Lcom/google/gson/jpush/internal/a/a;

    invoke-static {v1}, Lcom/google/gson/jpush/internal/b;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v2, v1}, Lcom/google/gson/jpush/internal/a/a;-><init>(Lcom/google/gson/jpush/k;Lcom/google/gson/jpush/al;Ljava/lang/Class;)V

    goto :goto_0
.end method
