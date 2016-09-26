.class public final Lcom/google/gson/jpush/z;
.super Lcom/google/gson/jpush/w;


# instance fields
.field private final a:Lcom/google/gson/jpush/internal/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/jpush/internal/w",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gson/jpush/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/gson/jpush/w;-><init>()V

    new-instance v0, Lcom/google/gson/jpush/internal/w;

    invoke-direct {v0}, Lcom/google/gson/jpush/internal/w;-><init>()V

    iput-object v0, p0, Lcom/google/gson/jpush/z;->a:Lcom/google/gson/jpush/internal/w;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gson/jpush/w;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/jpush/z;->a:Lcom/google/gson/jpush/internal/w;

    invoke-virtual {v0}, Lcom/google/gson/jpush/internal/w;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/gson/jpush/w;)V
    .locals 1

    if-nez p2, :cond_0

    sget-object p2, Lcom/google/gson/jpush/y;->a:Lcom/google/gson/jpush/y;

    :cond_0
    iget-object v0, p0, Lcom/google/gson/jpush/z;->a:Lcom/google/gson/jpush/internal/w;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/jpush/internal/w;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/gson/jpush/z;->a:Lcom/google/gson/jpush/internal/w;

    invoke-virtual {v0, p1}, Lcom/google/gson/jpush/internal/w;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/gson/jpush/w;
    .locals 1

    iget-object v0, p0, Lcom/google/gson/jpush/z;->a:Lcom/google/gson/jpush/internal/w;

    invoke-virtual {v0, p1}, Lcom/google/gson/jpush/internal/w;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/w;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/gson/jpush/z;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/gson/jpush/z;

    iget-object v0, p1, Lcom/google/gson/jpush/z;->a:Lcom/google/gson/jpush/internal/w;

    iget-object v1, p0, Lcom/google/gson/jpush/z;->a:Lcom/google/gson/jpush/internal/w;

    invoke-virtual {v0, v1}, Lcom/google/gson/jpush/internal/w;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/gson/jpush/z;->a:Lcom/google/gson/jpush/internal/w;

    invoke-virtual {v0}, Lcom/google/gson/jpush/internal/w;->hashCode()I

    move-result v0

    return v0
.end method
