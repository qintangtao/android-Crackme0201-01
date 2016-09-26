.class abstract Lcom/google/gson/jpush/internal/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field b:Lcom/google/gson/jpush/internal/ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/jpush/internal/ad",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lcom/google/gson/jpush/internal/ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/jpush/internal/ad",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field d:I

.field final synthetic e:Lcom/google/gson/jpush/internal/w;


# direct methods
.method private constructor <init>(Lcom/google/gson/jpush/internal/w;)V
    .locals 1

    iput-object p1, p0, Lcom/google/gson/jpush/internal/ac;->e:Lcom/google/gson/jpush/internal/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/gson/jpush/internal/ac;->e:Lcom/google/gson/jpush/internal/w;

    iget-object v0, v0, Lcom/google/gson/jpush/internal/w;->e:Lcom/google/gson/jpush/internal/ad;

    iget-object v0, v0, Lcom/google/gson/jpush/internal/ad;->d:Lcom/google/gson/jpush/internal/ad;

    iput-object v0, p0, Lcom/google/gson/jpush/internal/ac;->b:Lcom/google/gson/jpush/internal/ad;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/jpush/internal/ac;->c:Lcom/google/gson/jpush/internal/ad;

    iget-object v0, p0, Lcom/google/gson/jpush/internal/ac;->e:Lcom/google/gson/jpush/internal/w;

    iget v0, v0, Lcom/google/gson/jpush/internal/w;->d:I

    iput v0, p0, Lcom/google/gson/jpush/internal/ac;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gson/jpush/internal/w;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/gson/jpush/internal/ac;-><init>(Lcom/google/gson/jpush/internal/w;)V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/gson/jpush/internal/ad;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/jpush/internal/ad",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/jpush/internal/ac;->b:Lcom/google/gson/jpush/internal/ad;

    iget-object v1, p0, Lcom/google/gson/jpush/internal/ac;->e:Lcom/google/gson/jpush/internal/w;

    iget-object v1, v1, Lcom/google/gson/jpush/internal/w;->e:Lcom/google/gson/jpush/internal/ad;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/google/gson/jpush/internal/ac;->e:Lcom/google/gson/jpush/internal/w;

    iget v1, v1, Lcom/google/gson/jpush/internal/w;->d:I

    iget v2, p0, Lcom/google/gson/jpush/internal/ac;->d:I

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    iget-object v1, v0, Lcom/google/gson/jpush/internal/ad;->d:Lcom/google/gson/jpush/internal/ad;

    iput-object v1, p0, Lcom/google/gson/jpush/internal/ac;->b:Lcom/google/gson/jpush/internal/ad;

    iput-object v0, p0, Lcom/google/gson/jpush/internal/ac;->c:Lcom/google/gson/jpush/internal/ad;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/google/gson/jpush/internal/ac;->b:Lcom/google/gson/jpush/internal/ad;

    iget-object v1, p0, Lcom/google/gson/jpush/internal/ac;->e:Lcom/google/gson/jpush/internal/w;

    iget-object v1, v1, Lcom/google/gson/jpush/internal/w;->e:Lcom/google/gson/jpush/internal/ad;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/google/gson/jpush/internal/ac;->c:Lcom/google/gson/jpush/internal/ad;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/jpush/internal/ac;->e:Lcom/google/gson/jpush/internal/w;

    iget-object v1, p0, Lcom/google/gson/jpush/internal/ac;->c:Lcom/google/gson/jpush/internal/ad;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/jpush/internal/w;->a(Lcom/google/gson/jpush/internal/ad;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/jpush/internal/ac;->c:Lcom/google/gson/jpush/internal/ad;

    iget-object v0, p0, Lcom/google/gson/jpush/internal/ac;->e:Lcom/google/gson/jpush/internal/w;

    iget v0, v0, Lcom/google/gson/jpush/internal/w;->d:I

    iput v0, p0, Lcom/google/gson/jpush/internal/ac;->d:I

    return-void
.end method
