.class final Lcom/google/gson/jpush/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/gson/jpush/am;


# instance fields
.field private final a:Lcom/google/gson/jpush/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/jpush/a/a",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/gson/jpush/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/jpush/ae",
            "<*>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/gson/jpush/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/jpush/v",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/google/gson/jpush/a/a;ZLjava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/gson/jpush/a/a",
            "<*>;Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/google/gson/jpush/ae;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/gson/jpush/ae;

    :goto_0
    iput-object v0, p0, Lcom/google/gson/jpush/ak;->d:Lcom/google/gson/jpush/ae;

    instance-of v0, p1, Lcom/google/gson/jpush/v;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/gson/jpush/v;

    :goto_1
    iput-object p1, p0, Lcom/google/gson/jpush/ak;->e:Lcom/google/gson/jpush/v;

    iget-object v0, p0, Lcom/google/gson/jpush/ak;->d:Lcom/google/gson/jpush/ae;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/jpush/ak;->e:Lcom/google/gson/jpush/v;

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/google/gson/jpush/internal/a;->a(Z)V

    iput-object p2, p0, Lcom/google/gson/jpush/ak;->a:Lcom/google/gson/jpush/a/a;

    iput-boolean p3, p0, Lcom/google/gson/jpush/ak;->b:Z

    iput-object p4, p0, Lcom/google/gson/jpush/ak;->c:Ljava/lang/Class;

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object p1, v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/google/gson/jpush/a/a;ZLjava/lang/Class;B)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/gson/jpush/ak;-><init>(Ljava/lang/Object;Lcom/google/gson/jpush/a/a;ZLjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/jpush/k;Lcom/google/gson/jpush/a/a;)Lcom/google/gson/jpush/al;
    .locals 7
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

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/gson/jpush/ak;->a:Lcom/google/gson/jpush/a/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/gson/jpush/ak;->a:Lcom/google/gson/jpush/a/a;

    invoke-virtual {v0, p2}, Lcom/google/gson/jpush/a/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/gson/jpush/ak;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/gson/jpush/ak;->a:Lcom/google/gson/jpush/a/a;

    invoke-virtual {v0}, Lcom/google/gson/jpush/a/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/gson/jpush/a/a;->a()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/gson/jpush/aj;

    iget-object v1, p0, Lcom/google/gson/jpush/ak;->d:Lcom/google/gson/jpush/ae;

    iget-object v2, p0, Lcom/google/gson/jpush/ak;->e:Lcom/google/gson/jpush/v;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/gson/jpush/aj;-><init>(Lcom/google/gson/jpush/ae;Lcom/google/gson/jpush/v;Lcom/google/gson/jpush/k;Lcom/google/gson/jpush/a/a;Lcom/google/gson/jpush/am;B)V

    :goto_1
    return-object v0

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/gson/jpush/ak;->c:Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/google/gson/jpush/a/a;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
