.class final Lcom/google/gson/jpush/internal/z;
.super Lcom/google/gson/jpush/internal/ac;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/jpush/internal/w",
        "<TK;TV;>.com/google/gson/jpush/internal/ac<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/jpush/internal/y;


# direct methods
.method constructor <init>(Lcom/google/gson/jpush/internal/y;)V
    .locals 2

    iput-object p1, p0, Lcom/google/gson/jpush/internal/z;->a:Lcom/google/gson/jpush/internal/y;

    iget-object v0, p1, Lcom/google/gson/jpush/internal/y;->a:Lcom/google/gson/jpush/internal/w;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/gson/jpush/internal/ac;-><init>(Lcom/google/gson/jpush/internal/w;B)V

    return-void
.end method


# virtual methods
.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/gson/jpush/internal/z;->a()Lcom/google/gson/jpush/internal/ad;

    move-result-object v0

    return-object v0
.end method
