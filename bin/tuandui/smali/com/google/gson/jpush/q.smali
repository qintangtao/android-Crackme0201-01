.class final Lcom/google/gson/jpush/q;
.super Lcom/google/gson/jpush/al;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/jpush/al",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/gson/jpush/al;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/jpush/al",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/gson/jpush/al;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/jpush/b/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/jpush/b/a;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/jpush/q;->a:Lcom/google/gson/jpush/al;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/jpush/q;->a:Lcom/google/gson/jpush/al;

    invoke-virtual {v0, p1}, Lcom/google/gson/jpush/al;->a(Lcom/google/gson/jpush/b/a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/gson/jpush/al;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/jpush/al",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/jpush/q;->a:Lcom/google/gson/jpush/al;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/gson/jpush/q;->a:Lcom/google/gson/jpush/al;

    return-void
.end method

.method public final a(Lcom/google/gson/jpush/b/d;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/jpush/b/d;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/jpush/q;->a:Lcom/google/gson/jpush/al;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/jpush/q;->a:Lcom/google/gson/jpush/al;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/jpush/al;->a(Lcom/google/gson/jpush/b/d;Ljava/lang/Object;)V

    return-void
.end method
