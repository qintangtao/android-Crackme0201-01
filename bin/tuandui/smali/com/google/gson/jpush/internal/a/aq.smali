.class final Lcom/google/gson/jpush/internal/a/aq;
.super Lcom/google/gson/jpush/al;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/jpush/al",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "\u001b\u000cD@"

    const/4 v0, -0x1

    move-object v4, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gt v5, v7, :cond_2

    :cond_0
    move-object v7, v1

    move v8, v6

    move v11, v5

    move-object v5, v1

    move v1, v11

    :goto_1
    aget-char v10, v5, v6

    rem-int/lit8 v9, v8, 0x5

    packed-switch v9, :pswitch_data_0

    const/16 v9, 0x3c

    :goto_2
    xor-int/2addr v9, v10

    int-to-char v9, v9

    aput-char v9, v5, v6

    add-int/lit8 v6, v8, 0x1

    if-nez v1, :cond_1

    move-object v5, v7

    move v8, v6

    move v6, v1

    goto :goto_1

    :cond_1
    move v5, v1

    move-object v1, v7

    :cond_2
    if-gt v5, v6, :cond_0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_1

    aput-object v1, v3, v2

    const/4 v2, 0x1

    const-string v1, "\u0011\u000cF]R\u0006"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "\u000f\u0000KGH\u0007"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "\n\u0006P@s\u0004-DK"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "\u000f\u0006KFT"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "\u0006\u0008\\}Z/\u0006KFT"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    sput-object v4, Lcom/google/gson/jpush/internal/a/aq;->z:[Ljava/lang/String;

    return-void

    :pswitch_5
    const/16 v9, 0x62

    goto :goto_2

    :pswitch_6
    const/16 v9, 0x69

    goto :goto_2

    :pswitch_7
    const/16 v9, 0x25

    goto :goto_2

    :pswitch_8
    const/16 v9, 0x32

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/gson/jpush/al;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/gson/jpush/b/a;)Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/b/c;->i:Lcom/google/gson/jpush/b/c;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->j()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->c()V

    move v6, v0

    move v5, v0

    move v4, v0

    move v3, v0

    move v2, v0

    move v1, v0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v7

    sget-object v8, Lcom/google/gson/jpush/b/c;->d:Lcom/google/gson/jpush/b/c;

    if-eq v7, v8, :cond_7

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->m()I

    move-result v7

    sget-object v9, Lcom/google/gson/jpush/internal/a/aq;->z:[Ljava/lang/String;

    aget-object v9, v9, v0

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v1, v7

    goto :goto_1

    :cond_2
    sget-object v9, Lcom/google/gson/jpush/internal/a/aq;->z:[Ljava/lang/String;

    const/4 v10, 0x4

    aget-object v9, v9, v10

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v2, v7

    goto :goto_1

    :cond_3
    sget-object v9, Lcom/google/gson/jpush/internal/a/aq;->z:[Ljava/lang/String;

    const/4 v10, 0x5

    aget-object v9, v9, v10

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v3, v7

    goto :goto_1

    :cond_4
    sget-object v9, Lcom/google/gson/jpush/internal/a/aq;->z:[Ljava/lang/String;

    const/4 v10, 0x3

    aget-object v9, v9, v10

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v4, v7

    goto :goto_1

    :cond_5
    sget-object v9, Lcom/google/gson/jpush/internal/a/aq;->z:[Ljava/lang/String;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v5, v7

    goto :goto_1

    :cond_6
    sget-object v9, Lcom/google/gson/jpush/internal/a/aq;->z:[Ljava/lang/String;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v6, v7

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->d()V

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/gson/jpush/b/d;Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v2, 0x1

    check-cast p2, Ljava/util/Calendar;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/d;->f()Lcom/google/gson/jpush/b/d;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/d;->d()Lcom/google/gson/jpush/b/d;

    sget-object v0, Lcom/google/gson/jpush/internal/a/aq;->z:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/google/gson/jpush/b/d;->a(Ljava/lang/String;)Lcom/google/gson/jpush/b/d;

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/jpush/b/d;->a(J)Lcom/google/gson/jpush/b/d;

    sget-object v0, Lcom/google/gson/jpush/internal/a/aq;->z:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/google/gson/jpush/b/d;->a(Ljava/lang/String;)Lcom/google/gson/jpush/b/d;

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/jpush/b/d;->a(J)Lcom/google/gson/jpush/b/d;

    sget-object v0, Lcom/google/gson/jpush/internal/a/aq;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {p1, v0}, Lcom/google/gson/jpush/b/d;->a(Ljava/lang/String;)Lcom/google/gson/jpush/b/d;

    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/jpush/b/d;->a(J)Lcom/google/gson/jpush/b/d;

    sget-object v0, Lcom/google/gson/jpush/internal/a/aq;->z:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/google/gson/jpush/b/d;->a(Ljava/lang/String;)Lcom/google/gson/jpush/b/d;

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/jpush/b/d;->a(J)Lcom/google/gson/jpush/b/d;

    sget-object v0, Lcom/google/gson/jpush/internal/a/aq;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Lcom/google/gson/jpush/b/d;->a(Ljava/lang/String;)Lcom/google/gson/jpush/b/d;

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/jpush/b/d;->a(J)Lcom/google/gson/jpush/b/d;

    sget-object v0, Lcom/google/gson/jpush/internal/a/aq;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Lcom/google/gson/jpush/b/d;->a(Ljava/lang/String;)Lcom/google/gson/jpush/b/d;

    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/jpush/b/d;->a(J)Lcom/google/gson/jpush/b/d;

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/d;->e()Lcom/google/gson/jpush/b/d;

    goto :goto_0
.end method
