.class final Lcom/google/gson/jpush/internal/a/ao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/gson/jpush/am;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/jpush/k;Lcom/google/gson/jpush/a/a;)Lcom/google/gson/jpush/al;
    .locals 2
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

    const-class v1, Ljava/sql/Timestamp;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/google/gson/jpush/k;->a(Ljava/lang/Class;)Lcom/google/gson/jpush/al;

    move-result-object v1

    new-instance v0, Lcom/google/gson/jpush/internal/a/ap;

    invoke-direct {v0, p0, v1}, Lcom/google/gson/jpush/internal/a/ap;-><init>(Lcom/google/gson/jpush/internal/a/ao;Lcom/google/gson/jpush/al;)V

    goto :goto_0
.end method
