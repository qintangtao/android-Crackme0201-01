.class public final Lcom/google/gson/jpush/internal/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/gson/jpush/am;


# instance fields
.field private final a:Lcom/google/gson/jpush/internal/f;

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/google/gson/jpush/internal/f;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/jpush/internal/a/l;->a:Lcom/google/gson/jpush/internal/f;

    iput-boolean p2, p0, Lcom/google/gson/jpush/internal/a/l;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/google/gson/jpush/internal/a/l;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/gson/jpush/internal/a/l;->b:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/gson/jpush/k;Lcom/google/gson/jpush/a/a;)Lcom/google/gson/jpush/al;
    .locals 8
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

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/google/gson/jpush/a/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/gson/jpush/a/a;->a()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/gson/jpush/internal/b;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/gson/jpush/internal/b;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v0, v1, v3

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_1

    const-class v2, Ljava/lang/Boolean;

    if-ne v0, v2, :cond_2

    :cond_1
    sget-object v4, Lcom/google/gson/jpush/internal/a/z;->f:Lcom/google/gson/jpush/al;

    :goto_1
    aget-object v0, v1, v5

    invoke-static {v0}, Lcom/google/gson/jpush/a/a;->a(Ljava/lang/reflect/Type;)Lcom/google/gson/jpush/a/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/jpush/k;->a(Lcom/google/gson/jpush/a/a;)Lcom/google/gson/jpush/al;

    move-result-object v6

    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/l;->a:Lcom/google/gson/jpush/internal/f;

    invoke-virtual {v0, p2}, Lcom/google/gson/jpush/internal/f;->a(Lcom/google/gson/jpush/a/a;)Lcom/google/gson/jpush/internal/ae;

    move-result-object v7

    new-instance v0, Lcom/google/gson/jpush/internal/a/m;

    aget-object v3, v1, v3

    aget-object v5, v1, v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/gson/jpush/internal/a/m;-><init>(Lcom/google/gson/jpush/internal/a/l;Lcom/google/gson/jpush/k;Ljava/lang/reflect/Type;Lcom/google/gson/jpush/al;Ljava/lang/reflect/Type;Lcom/google/gson/jpush/al;Lcom/google/gson/jpush/internal/ae;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/google/gson/jpush/a/a;->a(Ljava/lang/reflect/Type;)Lcom/google/gson/jpush/a/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/jpush/k;->a(Lcom/google/gson/jpush/a/a;)Lcom/google/gson/jpush/al;

    move-result-object v4

    goto :goto_1
.end method
