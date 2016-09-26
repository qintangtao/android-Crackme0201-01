.class final Lcom/google/gson/jpush/internal/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/gson/jpush/internal/ae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/jpush/internal/ae",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/jpush/s;

.field final synthetic b:Ljava/lang/reflect/Type;

.field final synthetic c:Lcom/google/gson/jpush/internal/f;


# direct methods
.method constructor <init>(Lcom/google/gson/jpush/internal/f;Lcom/google/gson/jpush/s;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lcom/google/gson/jpush/internal/g;->c:Lcom/google/gson/jpush/internal/f;

    iput-object p2, p0, Lcom/google/gson/jpush/internal/g;->a:Lcom/google/gson/jpush/s;

    iput-object p3, p0, Lcom/google/gson/jpush/internal/g;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/jpush/internal/g;->a:Lcom/google/gson/jpush/s;

    invoke-interface {v0}, Lcom/google/gson/jpush/s;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
