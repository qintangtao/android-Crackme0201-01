.class final Lcom/google/gson/jpush/internal/a/ae;
.super Lcom/google/gson/jpush/al;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/jpush/al",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/gson/jpush/al;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/gson/jpush/b/a;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v0

    sget-object v1, Lcom/google/gson/jpush/b/c;->i:Lcom/google/gson/jpush/b/c;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->j()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/google/gson/jpush/b/c;->h:Lcom/google/gson/jpush/b/c;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/gson/jpush/b/d;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/gson/jpush/b/d;->b(Ljava/lang/String;)Lcom/google/gson/jpush/b/d;

    return-void
.end method
