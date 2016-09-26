.class public final Lcom/google/gson/jpush/internal/ag;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/gson/jpush/b/a;)Lcom/google/gson/jpush/w;
    .locals 2

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->f()Lcom/google/gson/jpush/b/c;

    const/4 v1, 0x0

    sget-object v0, Lcom/google/gson/jpush/internal/a/z;->P:Lcom/google/gson/jpush/al;

    invoke-virtual {v0, p0}, Lcom/google/gson/jpush/al;->a(Lcom/google/gson/jpush/b/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/w;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/jpush/b/e; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    if-eqz v1, :cond_0

    sget-object v0, Lcom/google/gson/jpush/y;->a:Lcom/google/gson/jpush/y;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/gson/jpush/af;

    invoke-direct {v1, v0}, Lcom/google/gson/jpush/af;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/gson/jpush/af;

    invoke-direct {v1, v0}, Lcom/google/gson/jpush/af;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/google/gson/jpush/x;

    invoke-direct {v1, v0}, Lcom/google/gson/jpush/x;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/google/gson/jpush/af;

    invoke-direct {v1, v0}, Lcom/google/gson/jpush/af;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 2

    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/Writer;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/gson/jpush/internal/ah;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/gson/jpush/internal/ah;-><init>(Ljava/lang/Appendable;B)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static a(Lcom/google/gson/jpush/w;Lcom/google/gson/jpush/b/d;)V
    .locals 1

    sget-object v0, Lcom/google/gson/jpush/internal/a/z;->P:Lcom/google/gson/jpush/al;

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/jpush/al;->a(Lcom/google/gson/jpush/b/d;Ljava/lang/Object;)V

    return-void
.end method
