.class public final Lcom/google/gson/jpush/internal/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/jpush/s",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/jpush/s",
            "<*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/jpush/internal/f;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/Class;)Lcom/google/gson/jpush/internal/ae;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lcom/google/gson/jpush/internal/ae",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_0
    new-instance v0, Lcom/google/gson/jpush/internal/l;

    invoke-direct {v0, p0, v1}, Lcom/google/gson/jpush/internal/l;-><init>(Lcom/google/gson/jpush/internal/f;Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/gson/jpush/a/a;)Lcom/google/gson/jpush/internal/ae;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/jpush/a/a",
            "<TT;>;)",
            "Lcom/google/gson/jpush/internal/ae",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/gson/jpush/a/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/gson/jpush/a/a;->a()Ljava/lang/Class;

    move-result-object v2

    iget-object v0, p0, Lcom/google/gson/jpush/internal/f;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/s;

    if-eqz v0, :cond_1

    new-instance v2, Lcom/google/gson/jpush/internal/g;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/gson/jpush/internal/g;-><init>(Lcom/google/gson/jpush/internal/f;Lcom/google/gson/jpush/s;Ljava/lang/reflect/Type;)V

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/gson/jpush/internal/f;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/s;

    if-eqz v0, :cond_2

    new-instance v2, Lcom/google/gson/jpush/internal/k;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/gson/jpush/internal/k;-><init>(Lcom/google/gson/jpush/internal/f;Lcom/google/gson/jpush/s;Ljava/lang/reflect/Type;)V

    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/google/gson/jpush/internal/f;->a(Ljava/lang/Class;)Lcom/google/gson/jpush/internal/ae;

    move-result-object v0

    if-nez v0, :cond_0

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-class v0, Ljava/util/SortedSet;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/gson/jpush/internal/m;

    invoke-direct {v0, p0}, Lcom/google/gson/jpush/internal/m;-><init>(Lcom/google/gson/jpush/internal/f;)V

    :goto_1
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/gson/jpush/internal/j;

    invoke-direct {v0, p0, v2, v1}, Lcom/google/gson/jpush/internal/j;-><init>(Lcom/google/gson/jpush/internal/f;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    goto :goto_0

    :cond_3
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/gson/jpush/internal/n;

    invoke-direct {v0, p0, v1}, Lcom/google/gson/jpush/internal/n;-><init>(Lcom/google/gson/jpush/internal/f;Ljava/lang/reflect/Type;)V

    goto :goto_1

    :cond_4
    const-class v0, Ljava/util/Set;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/google/gson/jpush/internal/o;

    invoke-direct {v0, p0}, Lcom/google/gson/jpush/internal/o;-><init>(Lcom/google/gson/jpush/internal/f;)V

    goto :goto_1

    :cond_5
    const-class v0, Ljava/util/Queue;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/google/gson/jpush/internal/p;

    invoke-direct {v0, p0}, Lcom/google/gson/jpush/internal/p;-><init>(Lcom/google/gson/jpush/internal/f;)V

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/google/gson/jpush/internal/q;

    invoke-direct {v0, p0}, Lcom/google/gson/jpush/internal/q;-><init>(Lcom/google/gson/jpush/internal/f;)V

    goto :goto_1

    :cond_7
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-class v0, Ljava/util/SortedMap;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/google/gson/jpush/internal/r;

    invoke-direct {v0, p0}, Lcom/google/gson/jpush/internal/r;-><init>(Lcom/google/gson/jpush/internal/f;)V

    goto :goto_1

    :cond_8
    instance-of v0, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_9

    const-class v3, Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-static {v0}, Lcom/google/gson/jpush/a/a;->a(Ljava/lang/reflect/Type;)Lcom/google/gson/jpush/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/jpush/a/a;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lcom/google/gson/jpush/internal/h;

    invoke-direct {v0, p0}, Lcom/google/gson/jpush/internal/h;-><init>(Lcom/google/gson/jpush/internal/f;)V

    goto :goto_1

    :cond_9
    new-instance v0, Lcom/google/gson/jpush/internal/i;

    invoke-direct {v0, p0}, Lcom/google/gson/jpush/internal/i;-><init>(Lcom/google/gson/jpush/internal/f;)V

    goto :goto_1

    :cond_a
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/gson/jpush/internal/f;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
