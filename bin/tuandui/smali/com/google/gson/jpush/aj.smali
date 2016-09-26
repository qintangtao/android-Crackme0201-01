.class final Lcom/google/gson/jpush/aj;
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
.field private final a:Lcom/google/gson/jpush/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/jpush/ae",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/gson/jpush/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/jpush/v",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/gson/jpush/k;

.field private final d:Lcom/google/gson/jpush/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/jpush/a/a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/gson/jpush/am;

.field private f:Lcom/google/gson/jpush/al;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/jpush/al",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/gson/jpush/ae;Lcom/google/gson/jpush/v;Lcom/google/gson/jpush/k;Lcom/google/gson/jpush/a/a;Lcom/google/gson/jpush/am;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/jpush/ae",
            "<TT;>;",
            "Lcom/google/gson/jpush/v",
            "<TT;>;",
            "Lcom/google/gson/jpush/k;",
            "Lcom/google/gson/jpush/a/a",
            "<TT;>;",
            "Lcom/google/gson/jpush/am;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/gson/jpush/al;-><init>()V

    iput-object p1, p0, Lcom/google/gson/jpush/aj;->a:Lcom/google/gson/jpush/ae;

    iput-object p2, p0, Lcom/google/gson/jpush/aj;->b:Lcom/google/gson/jpush/v;

    iput-object p3, p0, Lcom/google/gson/jpush/aj;->c:Lcom/google/gson/jpush/k;

    iput-object p4, p0, Lcom/google/gson/jpush/aj;->d:Lcom/google/gson/jpush/a/a;

    iput-object p5, p0, Lcom/google/gson/jpush/aj;->e:Lcom/google/gson/jpush/am;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gson/jpush/ae;Lcom/google/gson/jpush/v;Lcom/google/gson/jpush/k;Lcom/google/gson/jpush/a/a;Lcom/google/gson/jpush/am;B)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/gson/jpush/aj;-><init>(Lcom/google/gson/jpush/ae;Lcom/google/gson/jpush/v;Lcom/google/gson/jpush/k;Lcom/google/gson/jpush/a/a;Lcom/google/gson/jpush/am;)V

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

    iget-object v0, p0, Lcom/google/gson/jpush/aj;->f:Lcom/google/gson/jpush/al;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/jpush/aj;->c:Lcom/google/gson/jpush/k;

    iget-object v1, p0, Lcom/google/gson/jpush/aj;->e:Lcom/google/gson/jpush/am;

    iget-object v2, p0, Lcom/google/gson/jpush/aj;->d:Lcom/google/gson/jpush/a/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/jpush/k;->a(Lcom/google/gson/jpush/am;Lcom/google/gson/jpush/a/a;)Lcom/google/gson/jpush/al;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/jpush/aj;->f:Lcom/google/gson/jpush/al;

    goto :goto_0
.end method

.method public static a(Lcom/google/gson/jpush/a/a;Ljava/lang/Object;)Lcom/google/gson/jpush/am;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/jpush/a/a",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/jpush/am;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Lcom/google/gson/jpush/ak;

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/gson/jpush/ak;-><init>(Ljava/lang/Object;Lcom/google/gson/jpush/a/a;ZLjava/lang/Class;B)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/gson/jpush/b/a;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/jpush/b/a;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/jpush/aj;->b:Lcom/google/gson/jpush/v;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/gson/jpush/aj;->a()Lcom/google/gson/jpush/al;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/jpush/al;->a(Lcom/google/gson/jpush/b/a;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/gson/jpush/internal/ag;->a(Lcom/google/gson/jpush/b/a;)Lcom/google/gson/jpush/w;

    move-result-object v0

    instance-of v1, v0, Lcom/google/gson/jpush/y;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/gson/jpush/aj;->b:Lcom/google/gson/jpush/v;

    iget-object v2, p0, Lcom/google/gson/jpush/aj;->d:Lcom/google/gson/jpush/a/a;

    invoke-virtual {v2}, Lcom/google/gson/jpush/a/a;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gson/jpush/aj;->c:Lcom/google/gson/jpush/k;

    iget-object v3, v3, Lcom/google/gson/jpush/k;->a:Lcom/google/gson/jpush/u;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/gson/jpush/v;->a(Lcom/google/gson/jpush/w;Ljava/lang/reflect/Type;Lcom/google/gson/jpush/u;)Ljava/lang/Object;

    move-result-object v0

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

    iget-object v0, p0, Lcom/google/gson/jpush/aj;->a:Lcom/google/gson/jpush/ae;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/gson/jpush/aj;->a()Lcom/google/gson/jpush/al;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/jpush/al;->a(Lcom/google/gson/jpush/b/d;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/d;->f()Lcom/google/gson/jpush/b/d;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/gson/jpush/aj;->a:Lcom/google/gson/jpush/ae;

    iget-object v1, p0, Lcom/google/gson/jpush/aj;->d:Lcom/google/gson/jpush/a/a;

    invoke-virtual {v1}, Lcom/google/gson/jpush/a/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/jpush/aj;->c:Lcom/google/gson/jpush/k;

    iget-object v2, v2, Lcom/google/gson/jpush/k;->b:Lcom/google/gson/jpush/ad;

    invoke-interface {v0, p2, v1, v2}, Lcom/google/gson/jpush/ae;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/jpush/ad;)Lcom/google/gson/jpush/w;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/gson/jpush/internal/ag;->a(Lcom/google/gson/jpush/w;Lcom/google/gson/jpush/b/d;)V

    goto :goto_0
.end method
