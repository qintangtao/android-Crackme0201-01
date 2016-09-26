.class final Lcom/google/gson/jpush/internal/a/m;
.super Lcom/google/gson/jpush/al;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/jpush/al",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field final synthetic a:Lcom/google/gson/jpush/internal/a/l;

.field private final b:Lcom/google/gson/jpush/al;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/jpush/al",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/gson/jpush/al;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/jpush/al",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/gson/jpush/internal/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/jpush/internal/ae",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v2, "Z/\u00023`];\u0006:)U?\u000be)"

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

    const/16 v11, 0x9

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

    const-string v0, "P/\u001e3"

    move-object v2, v0

    move v3, v4

    move-object v5, v6

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v2, v5, v3

    sput-object v6, Lcom/google/gson/jpush/internal/a/m;->z:[Ljava/lang/String;

    return-void

    :pswitch_1
    const/16 v11, 0x3e

    goto :goto_2

    :pswitch_2
    const/16 v11, 0x5a

    goto :goto_2

    :pswitch_3
    const/16 v11, 0x72

    goto :goto_2

    :pswitch_4
    const/16 v11, 0x5f

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

.method public constructor <init>(Lcom/google/gson/jpush/internal/a/l;Lcom/google/gson/jpush/k;Ljava/lang/reflect/Type;Lcom/google/gson/jpush/al;Ljava/lang/reflect/Type;Lcom/google/gson/jpush/al;Lcom/google/gson/jpush/internal/ae;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/jpush/k;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/jpush/al",
            "<TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/jpush/al",
            "<TV;>;",
            "Lcom/google/gson/jpush/internal/ae",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/gson/jpush/internal/a/m;->a:Lcom/google/gson/jpush/internal/a/l;

    invoke-direct {p0}, Lcom/google/gson/jpush/al;-><init>()V

    new-instance v0, Lcom/google/gson/jpush/internal/a/y;

    invoke-direct {v0, p2, p4, p3}, Lcom/google/gson/jpush/internal/a/y;-><init>(Lcom/google/gson/jpush/k;Lcom/google/gson/jpush/al;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/gson/jpush/internal/a/m;->b:Lcom/google/gson/jpush/al;

    new-instance v0, Lcom/google/gson/jpush/internal/a/y;

    invoke-direct {v0, p2, p6, p5}, Lcom/google/gson/jpush/internal/a/y;-><init>(Lcom/google/gson/jpush/k;Lcom/google/gson/jpush/al;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/gson/jpush/internal/a/m;->c:Lcom/google/gson/jpush/al;

    iput-object p7, p0, Lcom/google/gson/jpush/internal/a/m;->d:Lcom/google/gson/jpush/internal/ae;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/gson/jpush/b/a;)Ljava/lang/Object;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v1

    sget-object v0, Lcom/google/gson/jpush/b/c;->i:Lcom/google/gson/jpush/b/c;

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->j()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/m;->d:Lcom/google/gson/jpush/internal/ae;

    invoke-interface {v0}, Lcom/google/gson/jpush/internal/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v2, Lcom/google/gson/jpush/b/c;->a:Lcom/google/gson/jpush/b/c;

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->a()V

    :goto_1
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->a()V

    iget-object v1, p0, Lcom/google/gson/jpush/internal/a/m;->b:Lcom/google/gson/jpush/al;

    invoke-virtual {v1, p1}, Lcom/google/gson/jpush/al;->a(Lcom/google/gson/jpush/b/a;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/jpush/internal/a/m;->c:Lcom/google/gson/jpush/al;

    invoke-virtual {v2, p1}, Lcom/google/gson/jpush/al;->a(Lcom/google/gson/jpush/b/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/google/gson/jpush/af;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/google/gson/jpush/internal/a/m;->z:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/jpush/af;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->b()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->b()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->c()V

    :cond_4
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/google/gson/jpush/internal/u;->a:Lcom/google/gson/jpush/internal/u;

    invoke-virtual {v1, p1}, Lcom/google/gson/jpush/internal/u;->a(Lcom/google/gson/jpush/b/a;)V

    iget-object v1, p0, Lcom/google/gson/jpush/internal/a/m;->b:Lcom/google/gson/jpush/al;

    invoke-virtual {v1, p1}, Lcom/google/gson/jpush/al;->a(Lcom/google/gson/jpush/b/a;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/jpush/internal/a/m;->c:Lcom/google/gson/jpush/al;

    invoke-virtual {v2, p1}, Lcom/google/gson/jpush/al;->a(Lcom/google/gson/jpush/b/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v0, Lcom/google/gson/jpush/af;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/google/gson/jpush/internal/a/m;->z:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/jpush/af;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->d()V

    goto/16 :goto_0
.end method

.method public final synthetic a(Lcom/google/gson/jpush/b/d;Ljava/lang/Object;)V
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/d;->f()Lcom/google/gson/jpush/b/d;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/m;->a:Lcom/google/gson/jpush/internal/a/l;

    invoke-static {v0}, Lcom/google/gson/jpush/internal/a/l;->a(Lcom/google/gson/jpush/internal/a/l;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/d;->d()Lcom/google/gson/jpush/b/d;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/gson/jpush/b/d;->a(Ljava/lang/String;)Lcom/google/gson/jpush/b/d;

    iget-object v2, p0, Lcom/google/gson/jpush/internal/a/m;->c:Lcom/google/gson/jpush/al;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/google/gson/jpush/al;->a(Lcom/google/gson/jpush/b/d;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/d;->e()Lcom/google/gson/jpush/b/d;

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v7, p0, Lcom/google/gson/jpush/internal/a/m;->b:Lcom/google/gson/jpush/al;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/gson/jpush/al;->a(Ljava/lang/Object;)Lcom/google/gson/jpush/w;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of v0, v7, Lcom/google/gson/jpush/t;

    if-nez v0, :cond_3

    instance-of v0, v7, Lcom/google/gson/jpush/z;

    if-eqz v0, :cond_4

    :cond_3
    move v0, v3

    :goto_3
    or-int/2addr v0, v1

    move v1, v0

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/d;->b()Lcom/google/gson/jpush/b/d;

    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/d;->b()Lcom/google/gson/jpush/b/d;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/w;

    invoke-static {v0, p1}, Lcom/google/gson/jpush/internal/ag;->a(Lcom/google/gson/jpush/w;Lcom/google/gson/jpush/b/d;)V

    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/m;->c:Lcom/google/gson/jpush/al;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/jpush/al;->a(Lcom/google/gson/jpush/b/d;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/d;->c()Lcom/google/gson/jpush/b/d;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/d;->c()Lcom/google/gson/jpush/b/d;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/d;->d()Lcom/google/gson/jpush/b/d;

    :goto_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_d

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/w;

    instance-of v1, v0, Lcom/google/gson/jpush/ac;

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/google/gson/jpush/w;->j()Lcom/google/gson/jpush/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/jpush/ac;->k()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/google/gson/jpush/ac;->b()Ljava/lang/Number;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {p1, v0}, Lcom/google/gson/jpush/b/d;->a(Ljava/lang/String;)Lcom/google/gson/jpush/b/d;

    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/m;->c:Lcom/google/gson/jpush/al;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/jpush/al;->a(Lcom/google/gson/jpush/b/d;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, Lcom/google/gson/jpush/ac;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/google/gson/jpush/ac;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Lcom/google/gson/jpush/ac;->l()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/google/gson/jpush/ac;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    instance-of v0, v0, Lcom/google/gson/jpush/y;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/google/gson/jpush/internal/a/m;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_d
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/d;->e()Lcom/google/gson/jpush/b/d;

    goto/16 :goto_0
.end method
