.class final Lcom/google/gson/jpush/internal/a/al;
.super Lcom/google/gson/jpush/al;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/jpush/al",
        "<",
        "Ljava/util/BitSet;",
        ">;"
    }
.end annotation


# static fields
.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v2, "R\tf2D-[Q%Fr\u0018`4XpA4?_c\u0008q)\u0016y\u000ey?Se[b<Zb\u001e4u\u0007;[$t\u001a7={(XsA4"

    const/4 v0, -0x1

    move-object v5, v3

    move-object v6, v3

    move v3, v1

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v7, v2

    if-gt v7, v4, :cond_2

    move v8, v1

    :cond_0
    move-object v9, v2

    move v10, v8

    move v13, v7

    move-object v7, v2

    move v2, v13

    :goto_1
    aget-char v12, v7, v8

    rem-int/lit8 v11, v10, 0x5

    packed-switch v11, :pswitch_data_0

    const/16 v11, 0x36

    :goto_2
    xor-int/2addr v11, v12

    int-to-char v11, v11

    aput-char v11, v7, v8

    add-int/lit8 v8, v10, 0x1

    if-nez v2, :cond_1

    move-object v7, v9

    move v10, v8

    move v8, v2

    goto :goto_1

    :cond_1
    move v7, v2

    move-object v2, v9

    :goto_3
    if-gt v7, v8, :cond_0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    packed-switch v0, :pswitch_data_1

    aput-object v2, v5, v3

    const-string v0, "^\u0015b<Z~\u001f4?_c\u0008q)\u0016a\u001ax(S7\u000fm-S-["

    move-object v2, v0

    move v3, v4

    move-object v5, v6

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v2, v5, v3

    sput-object v6, Lcom/google/gson/jpush/internal/a/al;->z:[Ljava/lang/String;

    return-void

    :pswitch_1
    const/16 v11, 0x17

    goto :goto_2

    :pswitch_2
    const/16 v11, 0x7b

    goto :goto_2

    :pswitch_3
    const/16 v11, 0x14

    goto :goto_2

    :pswitch_4
    const/16 v11, 0x5d

    goto :goto_2

    :cond_2
    move v8, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/gson/jpush/al;-><init>()V

    return-void
.end method

.method private static b(Lcom/google/gson/jpush/b/a;)Ljava/util/BitSet;
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v0

    sget-object v1, Lcom/google/gson/jpush/b/c;->i:Lcom/google/gson/jpush/b/c;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->j()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->a()V

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v0

    move v1, v2

    :goto_1
    sget-object v5, Lcom/google/gson/jpush/b/c;->b:Lcom/google/gson/jpush/b/c;

    if-eq v0, v5, :cond_4

    sget-object v5, Lcom/google/gson/jpush/internal/a/az;->a:[I

    invoke-virtual {v0}, Lcom/google/gson/jpush/b/c;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    new-instance v1, Lcom/google/gson/jpush/af;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/google/gson/jpush/internal/a/al;->z:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/gson/jpush/af;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->m()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->i()Z

    move-result v0

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->h()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_2

    :catch_0
    move-exception v1

    new-instance v1, Lcom/google/gson/jpush/af;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/google/gson/jpush/internal/a/al;->z:[Ljava/lang/String;

    aget-object v2, v4, v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/gson/jpush/af;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->b()V

    move-object v0, v4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final synthetic a(Lcom/google/gson/jpush/b/a;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/google/gson/jpush/internal/a/al;->b(Lcom/google/gson/jpush/b/a;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/google/gson/jpush/b/d;Ljava/lang/Object;)V
    .locals 4

    const/4 v1, 0x0

    check-cast p2, Ljava/util/BitSet;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/d;->f()Lcom/google/gson/jpush/b/d;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/d;->b()Lcom/google/gson/jpush/b/d;

    move v0, v1

    :goto_1
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_2
    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lcom/google/gson/jpush/b/d;->a(J)Lcom/google/gson/jpush/b/d;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/d;->c()Lcom/google/gson/jpush/b/d;

    goto :goto_0
.end method
