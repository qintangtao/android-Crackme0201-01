.class public final Lcom/google/gson/jpush/internal/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/gson/jpush/am;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final a:Lcom/google/gson/jpush/internal/s;


# instance fields
.field private b:D

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/jpush/b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/jpush/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/jpush/internal/s;

    invoke-direct {v0}, Lcom/google/gson/jpush/internal/s;-><init>()V

    sput-object v0, Lcom/google/gson/jpush/internal/s;->a:Lcom/google/gson/jpush/internal/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/gson/jpush/internal/s;->b:D

    const/16 v0, 0x88

    iput v0, p0, Lcom/google/gson/jpush/internal/s;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/jpush/internal/s;->d:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/jpush/internal/s;->f:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/jpush/internal/s;->g:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/google/gson/jpush/annotations/d;Lcom/google/gson/jpush/annotations/Until;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/gson/jpush/annotations/d;->a()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/gson/jpush/internal/s;->b:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/google/gson/jpush/annotations/Until;->value()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/gson/jpush/internal/s;->b:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    :goto_2
    return v0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private static a(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

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

.method private b()Lcom/google/gson/jpush/internal/s;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/internal/s;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private b(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/google/gson/jpush/k;Lcom/google/gson/jpush/a/a;)Lcom/google/gson/jpush/al;
    .locals 6
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

    invoke-virtual {p2}, Lcom/google/gson/jpush/a/a;->a()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/gson/jpush/internal/s;->a(Ljava/lang/Class;Z)Z

    move-result v3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/gson/jpush/internal/s;->a(Ljava/lang/Class;Z)Z

    move-result v2

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/gson/jpush/internal/t;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/gson/jpush/internal/t;-><init>(Lcom/google/gson/jpush/internal/s;ZZLcom/google/gson/jpush/k;Lcom/google/gson/jpush/a/a;)V

    goto :goto_0
.end method

.method public final a()Lcom/google/gson/jpush/internal/s;
    .locals 2

    invoke-direct {p0}, Lcom/google/gson/jpush/internal/s;->b()Lcom/google/gson/jpush/internal/s;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/gson/jpush/internal/s;->e:Z

    return-object v0
.end method

.method public final a(Ljava/lang/Class;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)Z"
        }
    .end annotation

    const/4 v2, 0x1

    iget-wide v0, p0, Lcom/google/gson/jpush/internal/s;->b:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_0

    const-class v0, Lcom/google/gson/jpush/annotations/d;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/annotations/d;

    const-class v1, Lcom/google/gson/jpush/annotations/Until;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/gson/jpush/annotations/Until;

    invoke-direct {p0, v0, v1}, Lcom/google/gson/jpush/internal/s;->a(Lcom/google/gson/jpush/annotations/d;Lcom/google/gson/jpush/annotations/Until;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/gson/jpush/internal/s;->d:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/gson/jpush/internal/s;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/google/gson/jpush/internal/s;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/google/gson/jpush/internal/s;->f:Ljava/util/List;

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/b;

    invoke-interface {v0}, Lcom/google/gson/jpush/b;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/gson/jpush/internal/s;->g:Ljava/util/List;

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/reflect/Field;Z)Z
    .locals 6

    const/4 v2, 0x1

    iget v0, p0, Lcom/google/gson/jpush/internal/s;->c:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/google/gson/jpush/internal/s;->b:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_1

    const-class v0, Lcom/google/gson/jpush/annotations/d;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/annotations/d;

    const-class v1, Lcom/google/gson/jpush/annotations/Until;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/gson/jpush/annotations/Until;

    invoke-direct {p0, v0, v1}, Lcom/google/gson/jpush/internal/s;->a(Lcom/google/gson/jpush/annotations/d;Lcom/google/gson/jpush/annotations/Until;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/gson/jpush/internal/s;->e:Z

    if-eqz v0, :cond_5

    const-class v0, Lcom/google/gson/jpush/annotations/a;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/annotations/a;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_4

    invoke-interface {v0}, Lcom/google/gson/jpush/annotations/a;->a()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Lcom/google/gson/jpush/annotations/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_5
    iget-boolean v0, p0, Lcom/google/gson/jpush/internal/s;->d:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/internal/s;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gson/jpush/internal/s;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/google/gson/jpush/internal/s;->f:Ljava/util/List;

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Lcom/google/gson/jpush/c;

    invoke-direct {v1, p1}, Lcom/google/gson/jpush/c;-><init>(Ljava/lang/reflect/Field;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/b;

    invoke-interface {v0}, Lcom/google/gson/jpush/b;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/google/gson/jpush/internal/s;->g:Ljava/util/List;

    goto :goto_1

    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method protected final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/gson/jpush/internal/s;->b()Lcom/google/gson/jpush/internal/s;

    move-result-object v0

    return-object v0
.end method
