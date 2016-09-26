.class final Lcom/google/gson/jpush/internal/r;
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
.field final synthetic a:Lcom/google/gson/jpush/internal/f;


# direct methods
.method constructor <init>(Lcom/google/gson/jpush/internal/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/gson/jpush/internal/r;->a:Lcom/google/gson/jpush/internal/f;

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

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0
.end method
