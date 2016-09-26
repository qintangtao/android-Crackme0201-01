.class final Lcom/google/gson/jpush/internal/a/ap;
.super Lcom/google/gson/jpush/al;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/jpush/al",
        "<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/jpush/al;

.field final synthetic b:Lcom/google/gson/jpush/internal/a/ao;


# direct methods
.method constructor <init>(Lcom/google/gson/jpush/internal/a/ao;Lcom/google/gson/jpush/al;)V
    .locals 0

    iput-object p1, p0, Lcom/google/gson/jpush/internal/a/ap;->b:Lcom/google/gson/jpush/internal/a/ao;

    iput-object p2, p0, Lcom/google/gson/jpush/internal/a/ap;->a:Lcom/google/gson/jpush/al;

    invoke-direct {p0}, Lcom/google/gson/jpush/al;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/gson/jpush/b/a;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/ap;->a:Lcom/google/gson/jpush/al;

    invoke-virtual {v0, p1}, Lcom/google/gson/jpush/al;->a(Lcom/google/gson/jpush/b/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic a(Lcom/google/gson/jpush/b/d;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Ljava/sql/Timestamp;

    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/ap;->a:Lcom/google/gson/jpush/al;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/jpush/al;->a(Lcom/google/gson/jpush/b/d;Ljava/lang/Object;)V

    return-void
.end method
