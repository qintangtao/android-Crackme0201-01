.class final Lcom/google/gson/jpush/internal/a/as;
.super Lcom/google/gson/jpush/al;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/jpush/al",
        "<",
        "Lcom/google/gson/jpush/w;",
        ">;"
    }
.end annotation


# static fields
.field private static final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "?\u0001+\u0014s\u0012I*X`\u000e\u0007*\u001d7"

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

    const/16 v5, 0x17

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

    sput-object v0, Lcom/google/gson/jpush/internal/a/as;->z:Ljava/lang/String;

    return-void

    :pswitch_0
    const/16 v5, 0x7c

    goto :goto_1

    :pswitch_1
    const/16 v5, 0x6e

    goto :goto_1

    :pswitch_2
    const/16 v5, 0x5e

    goto :goto_1

    :pswitch_3
    const/16 v5, 0x78

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

.method private a(Lcom/google/gson/jpush/b/d;Lcom/google/gson/jpush/w;)V
    .locals 3

    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/google/gson/jpush/y;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/d;->f()Lcom/google/gson/jpush/b/d;

    :goto_0
    return-void

    :cond_1
    instance-of v0, p2, Lcom/google/gson/jpush/ac;

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/google/gson/jpush/w;->j()Lcom/google/gson/jpush/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/jpush/ac;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/gson/jpush/ac;->b()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/jpush/b/d;->a(Ljava/lang/Number;)Lcom/google/gson/jpush/b/d;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/gson/jpush/ac;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/gson/jpush/ac;->g()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/gson/jpush/b/d;->a(Z)Lcom/google/gson/jpush/b/d;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/google/gson/jpush/ac;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/jpush/b/d;->b(Ljava/lang/String;)Lcom/google/gson/jpush/b/d;

    goto :goto_0

    :cond_4
    instance-of v0, p2, Lcom/google/gson/jpush/t;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/d;->b()Lcom/google/gson/jpush/b/d;

    invoke-virtual {p2}, Lcom/google/gson/jpush/w;->i()Lcom/google/gson/jpush/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/jpush/t;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/w;

    invoke-direct {p0, p1, v0}, Lcom/google/gson/jpush/internal/a/as;->a(Lcom/google/gson/jpush/b/d;Lcom/google/gson/jpush/w;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/d;->c()Lcom/google/gson/jpush/b/d;

    goto :goto_0

    :cond_6
    instance-of v0, p2, Lcom/google/gson/jpush/z;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/d;->d()Lcom/google/gson/jpush/b/d;

    invoke-virtual {p2}, Lcom/google/gson/jpush/w;->h()Lcom/google/gson/jpush/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/jpush/z;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/jpush/b/d;->a(Ljava/lang/String;)Lcom/google/gson/jpush/b/d;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/w;

    invoke-direct {p0, p1, v0}, Lcom/google/gson/jpush/internal/a/as;->a(Lcom/google/gson/jpush/b/d;Lcom/google/gson/jpush/w;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/d;->e()Lcom/google/gson/jpush/b/d;

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/gson/jpush/internal/a/as;->z:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Lcom/google/gson/jpush/b/a;)Lcom/google/gson/jpush/w;
    .locals 3

    sget-object v0, Lcom/google/gson/jpush/internal/a/az;->a:[I

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/jpush/b/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/gson/jpush/ac;

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/jpush/ac;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/google/gson/jpush/ac;

    new-instance v2, Lcom/google/gson/jpush/internal/v;

    invoke-direct {v2, v1}, Lcom/google/gson/jpush/internal/v;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/google/gson/jpush/ac;-><init>(Ljava/lang/Number;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/google/gson/jpush/ac;

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/jpush/ac;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->j()V

    sget-object v0, Lcom/google/gson/jpush/y;->a:Lcom/google/gson/jpush/y;

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/google/gson/jpush/t;

    invoke-direct {v0}, Lcom/google/gson/jpush/t;-><init>()V

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->a()V

    :goto_1
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/gson/jpush/internal/a/as;->b(Lcom/google/gson/jpush/b/a;)Lcom/google/gson/jpush/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/jpush/t;->a(Lcom/google/gson/jpush/w;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->b()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/google/gson/jpush/z;

    invoke-direct {v0}, Lcom/google/gson/jpush/z;-><init>()V

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->c()V

    :goto_2
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/google/gson/jpush/internal/a/as;->b(Lcom/google/gson/jpush/b/a;)Lcom/google/gson/jpush/w;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/jpush/z;->a(Ljava/lang/String;Lcom/google/gson/jpush/w;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->d()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final synthetic a(Lcom/google/gson/jpush/b/a;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/gson/jpush/internal/a/as;->b(Lcom/google/gson/jpush/b/a;)Lcom/google/gson/jpush/w;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/google/gson/jpush/b/d;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/gson/jpush/w;

    invoke-direct {p0, p1, p2}, Lcom/google/gson/jpush/internal/a/as;->a(Lcom/google/gson/jpush/b/d;Lcom/google/gson/jpush/w;)V

    return-void
.end method
