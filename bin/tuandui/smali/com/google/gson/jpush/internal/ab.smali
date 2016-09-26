.class final Lcom/google/gson/jpush/internal/ab;
.super Lcom/google/gson/jpush/internal/ac;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/jpush/internal/w",
        "<TK;TV;>.com/google/gson/jpush/internal/ac<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/jpush/internal/aa;


# direct methods
.method constructor <init>(Lcom/google/gson/jpush/internal/aa;)V
    .locals 2

    iput-object p1, p0, Lcom/google/gson/jpush/internal/ab;->a:Lcom/google/gson/jpush/internal/aa;

    iget-object v0, p1, Lcom/google/gson/jpush/internal/aa;->a:Lcom/google/gson/jpush/internal/w;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/gson/jpush/internal/ac;-><init>(Lcom/google/gson/jpush/internal/w;B)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/gson/jpush/internal/ab;->a()Lcom/google/gson/jpush/internal/ad;

    move-result-object v0

    iget-object v0, v0, Lcom/google/gson/jpush/internal/ad;->f:Ljava/lang/Object;

    return-object v0
.end method
