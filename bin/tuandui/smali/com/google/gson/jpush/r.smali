.class public final Lcom/google/gson/jpush/r;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/gson/jpush/internal/s;

.field private b:Lcom/google/gson/jpush/ag;

.field private c:Lcom/google/gson/jpush/j;

.field private final d:Ljava/util/Map;
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

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/jpush/am;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/jpush/am;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/gson/jpush/internal/s;->a:Lcom/google/gson/jpush/internal/s;

    iput-object v0, p0, Lcom/google/gson/jpush/r;->a:Lcom/google/gson/jpush/internal/s;

    sget-object v0, Lcom/google/gson/jpush/ag;->a:Lcom/google/gson/jpush/ag;

    iput-object v0, p0, Lcom/google/gson/jpush/r;->b:Lcom/google/gson/jpush/ag;

    sget-object v0, Lcom/google/gson/jpush/d;->a:Lcom/google/gson/jpush/d;

    iput-object v0, p0, Lcom/google/gson/jpush/r;->c:Lcom/google/gson/jpush/j;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/jpush/r;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/jpush/r;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/jpush/r;->f:Ljava/util/List;

    iput v1, p0, Lcom/google/gson/jpush/r;->i:I

    iput v1, p0, Lcom/google/gson/jpush/r;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/jpush/r;->m:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/gson/jpush/r;
    .locals 1

    iget-object v0, p0, Lcom/google/gson/jpush/r;->a:Lcom/google/gson/jpush/internal/s;

    invoke-virtual {v0}, Lcom/google/gson/jpush/internal/s;->a()Lcom/google/gson/jpush/internal/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/jpush/r;->a:Lcom/google/gson/jpush/internal/s;

    return-object p0
.end method

.method public final b()Lcom/google/gson/jpush/k;
    .locals 12

    const/4 v5, 0x2

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/gson/jpush/r;->e:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v11}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/gson/jpush/r;->f:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/gson/jpush/r;->h:Ljava/lang/String;

    iget v2, p0, Lcom/google/gson/jpush/r;->i:I

    iget v3, p0, Lcom/google/gson/jpush/r;->j:I

    if-eqz v1, :cond_1

    const-string v0, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/gson/jpush/a;

    invoke-direct {v0, v1}, Lcom/google/gson/jpush/a;-><init>(Ljava/lang/String;)V

    :goto_0
    const-class v1, Ljava/util/Date;

    invoke-static {v1}, Lcom/google/gson/jpush/a/a;->a(Ljava/lang/Class;)Lcom/google/gson/jpush/a/a;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/gson/jpush/aj;->a(Lcom/google/gson/jpush/a/a;Ljava/lang/Object;)Lcom/google/gson/jpush/am;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/sql/Timestamp;

    invoke-static {v1}, Lcom/google/gson/jpush/a/a;->a(Ljava/lang/Class;)Lcom/google/gson/jpush/a/a;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/gson/jpush/aj;->a(Lcom/google/gson/jpush/a/a;Ljava/lang/Object;)Lcom/google/gson/jpush/am;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/sql/Date;

    invoke-static {v1}, Lcom/google/gson/jpush/a/a;->a(Ljava/lang/Class;)Lcom/google/gson/jpush/a/a;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/gson/jpush/aj;->a(Lcom/google/gson/jpush/a/a;Ljava/lang/Object;)Lcom/google/gson/jpush/am;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/google/gson/jpush/k;

    iget-object v1, p0, Lcom/google/gson/jpush/r;->a:Lcom/google/gson/jpush/internal/s;

    iget-object v2, p0, Lcom/google/gson/jpush/r;->c:Lcom/google/gson/jpush/j;

    iget-object v3, p0, Lcom/google/gson/jpush/r;->d:Ljava/util/Map;

    iget-boolean v4, p0, Lcom/google/gson/jpush/r;->g:Z

    iget-boolean v5, p0, Lcom/google/gson/jpush/r;->k:Z

    iget-boolean v6, p0, Lcom/google/gson/jpush/r;->o:Z

    iget-boolean v7, p0, Lcom/google/gson/jpush/r;->m:Z

    iget-boolean v8, p0, Lcom/google/gson/jpush/r;->n:Z

    iget-boolean v9, p0, Lcom/google/gson/jpush/r;->l:Z

    iget-object v10, p0, Lcom/google/gson/jpush/r;->b:Lcom/google/gson/jpush/ag;

    invoke-direct/range {v0 .. v11}, Lcom/google/gson/jpush/k;-><init>(Lcom/google/gson/jpush/internal/s;Lcom/google/gson/jpush/j;Ljava/util/Map;ZZZZZZLcom/google/gson/jpush/ag;Ljava/util/List;)V

    return-object v0

    :cond_1
    if-eq v2, v5, :cond_0

    if-eq v3, v5, :cond_0

    new-instance v0, Lcom/google/gson/jpush/a;

    invoke-direct {v0, v2, v3}, Lcom/google/gson/jpush/a;-><init>(II)V

    goto :goto_0
.end method
