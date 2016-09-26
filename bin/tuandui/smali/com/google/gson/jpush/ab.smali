.class public final Lcom/google/gson/jpush/ab;
.super Ljava/lang/Object;


# static fields
.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string v3, "WD|(;u\u0005e%,bL{#~[vZ\n~bJ`6=t\u001f5"

    const/4 v0, -0x1

    move-object v5, v4

    move-object v6, v4

    move v4, v1

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v7, v3

    if-gt v7, v2, :cond_2

    move v8, v1

    :cond_0
    move-object v9, v3

    move v10, v8

    move v13, v7

    move-object v7, v3

    move v3, v13

    :goto_1
    aget-char v12, v7, v8

    rem-int/lit8 v11, v10, 0x5

    packed-switch v11, :pswitch_data_0

    const/16 v11, 0x5e

    :goto_2
    xor-int/2addr v11, v12

    int-to-char v11, v11

    aput-char v11, v7, v8

    add-int/lit8 v8, v10, 0x1

    if-nez v3, :cond_1

    move-object v7, v9

    move v10, v8

    move v8, v3

    goto :goto_1

    :cond_1
    move v7, v3

    move-object v3, v9

    :goto_3
    if-gt v7, v8, :cond_0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    packed-switch v0, :pswitch_data_1

    aput-object v3, v5, v4

    const-string v0, "1Qzd\u0014bJ{"

    move-object v3, v0

    move v4, v2

    move-object v5, v6

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v3, v5, v4

    const/4 v3, 0x2

    const-string v0, "ULqd0~Q5\'1\u007fV`);1Q}!~tKa-,t\u0005q+=dHp**?"

    move v4, v3

    move-object v5, v6

    move-object v3, v0

    move v0, v2

    goto :goto_0

    :pswitch_1
    aput-object v3, v5, v4

    sput-object v6, Lcom/google/gson/jpush/ab;->z:[Ljava/lang/String;

    return-void

    :pswitch_2
    const/16 v11, 0x11

    goto :goto_2

    :pswitch_3
    const/16 v11, 0x25

    goto :goto_2

    :pswitch_4
    const/16 v11, 0x15

    goto :goto_2

    :pswitch_5
    const/16 v11, 0x44

    goto :goto_2

    :cond_2
    move v8, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/gson/jpush/b/a;)Lcom/google/gson/jpush/w;
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/gson/jpush/b/a;->p()Z

    move-result v1

    invoke-virtual {p0, v0}, Lcom/google/gson/jpush/b/a;->a(Z)V

    :try_start_0
    invoke-static {p0}, Lcom/google/gson/jpush/internal/ag;->a(Lcom/google/gson/jpush/b/a;)Lcom/google/gson/jpush/w;
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/google/gson/jpush/b/a;->a(Z)V

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Lcom/google/gson/jpush/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/google/gson/jpush/ab;->z:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/google/gson/jpush/ab;->z:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/google/gson/jpush/aa;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/google/gson/jpush/b/a;->a(Z)V

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v2, Lcom/google/gson/jpush/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/google/gson/jpush/ab;->z:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/google/gson/jpush/ab;->z:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/google/gson/jpush/aa;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private a(Ljava/io/Reader;)Lcom/google/gson/jpush/w;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/google/gson/jpush/b/a;

    invoke-direct {v0, p1}, Lcom/google/gson/jpush/b/a;-><init>(Ljava/io/Reader;)V

    invoke-static {v0}, Lcom/google/gson/jpush/ab;->a(Lcom/google/gson/jpush/b/a;)Lcom/google/gson/jpush/w;

    move-result-object v1

    instance-of v2, v1, Lcom/google/gson/jpush/y;

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/jpush/b/a;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v0

    sget-object v2, Lcom/google/gson/jpush/b/c;->j:Lcom/google/gson/jpush/b/c;

    if-eq v0, v2, :cond_0

    new-instance v0, Lcom/google/gson/jpush/af;

    sget-object v1, Lcom/google/gson/jpush/ab;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/google/gson/jpush/af;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/gson/jpush/b/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/gson/jpush/af;

    invoke-direct {v1, v0}, Lcom/google/gson/jpush/af;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/gson/jpush/x;

    invoke-direct {v1, v0}, Lcom/google/gson/jpush/x;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/google/gson/jpush/af;

    invoke-direct {v1, v0}, Lcom/google/gson/jpush/af;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/gson/jpush/w;
    .locals 1

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/ab;->a(Ljava/io/Reader;)Lcom/google/gson/jpush/w;

    move-result-object v0

    return-object v0
.end method
