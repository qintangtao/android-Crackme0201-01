.class final Lcom/google/gson/jpush/internal/aa;
.super Ljava/util/AbstractSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/jpush/internal/w;


# direct methods
.method constructor <init>(Lcom/google/gson/jpush/internal/w;)V
    .locals 0

    iput-object p1, p0, Lcom/google/gson/jpush/internal/aa;->a:Lcom/google/gson/jpush/internal/w;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/gson/jpush/internal/aa;->a:Lcom/google/gson/jpush/internal/w;

    invoke-virtual {v0}, Lcom/google/gson/jpush/internal/w;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/gson/jpush/internal/aa;->a:Lcom/google/gson/jpush/internal/w;

    invoke-virtual {v0, p1}, Lcom/google/gson/jpush/internal/w;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/gson/jpush/internal/ab;

    invoke-direct {v0, p0}, Lcom/google/gson/jpush/internal/ab;-><init>(Lcom/google/gson/jpush/internal/aa;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/gson/jpush/internal/aa;->a:Lcom/google/gson/jpush/internal/w;

    invoke-virtual {v0, p1}, Lcom/google/gson/jpush/internal/w;->a(Ljava/lang/Object;)Lcom/google/gson/jpush/internal/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/gson/jpush/internal/aa;->a:Lcom/google/gson/jpush/internal/w;

    iget v0, v0, Lcom/google/gson/jpush/internal/w;->c:I

    return v0
.end method
