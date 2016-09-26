.class final Lcom/google/gson/jpush/internal/a/bd;
.super Lcom/google/gson/jpush/al;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/jpush/al",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/gson/jpush/al;-><init>()V

    return-void
.end method

.method private static b(Lcom/google/gson/jpush/b/a;)Ljava/lang/Number;
    .locals 2

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v0

    sget-object v1, Lcom/google/gson/jpush/b/c;->i:Lcom/google/gson/jpush/b/c;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->j()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/gson/jpush/af;

    invoke-direct {v1, v0}, Lcom/google/gson/jpush/af;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final synthetic a(Lcom/google/gson/jpush/b/a;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/google/gson/jpush/internal/a/bd;->b(Lcom/google/gson/jpush/b/a;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/google/gson/jpush/b/d;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p1, p2}, Lcom/google/gson/jpush/b/d;->a(Ljava/lang/Number;)Lcom/google/gson/jpush/b/d;

    return-void
.end method
