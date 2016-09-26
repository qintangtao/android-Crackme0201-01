.class final Lcom/google/gson/jpush/internal/a/ak;
.super Lcom/google/gson/jpush/al;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/jpush/al",
        "<",
        "Ljava/net/URI;",
        ">;"
    }
.end annotation


# static fields
.field private static final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "\u0005Z2%"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_2

    :cond_0
    move-object v3, v0

    move v4, v2

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_0
    aget-char v6, v1, v2

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_0

    const/16 v5, 0x50

    :goto_1
    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v2

    add-int/lit8 v2, v4, 0x1

    if-nez v0, :cond_1

    move-object v1, v3

    move v4, v2

    move v2, v0

    goto :goto_0

    :cond_1
    move v1, v0

    move-object v0, v3

    :cond_2
    if-gt v1, v2, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/gson/jpush/internal/a/ak;->z:Ljava/lang/String;

    return-void

    :pswitch_0
    const/16 v5, 0x6b

    goto :goto_1

    :pswitch_1
    const/16 v5, 0x2f

    goto :goto_1

    :pswitch_2
    const/16 v5, 0x5e

    goto :goto_1

    :pswitch_3
    const/16 v5, 0x49

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/gson/jpush/al;-><init>()V

    return-void
.end method

.method private static b(Lcom/google/gson/jpush/b/a;)Ljava/net/URI;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/c;->i:Lcom/google/gson/jpush/b/c;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->j()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->h()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/internal/a/ak;->z:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/gson/jpush/x;

    invoke-direct {v1, v0}, Lcom/google/gson/jpush/x;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final synthetic a(Lcom/google/gson/jpush/b/a;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/google/gson/jpush/internal/a/ak;->b(Lcom/google/gson/jpush/b/a;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/google/gson/jpush/b/d;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Ljava/net/URI;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/gson/jpush/b/d;->b(Ljava/lang/String;)Lcom/google/gson/jpush/b/d;

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
