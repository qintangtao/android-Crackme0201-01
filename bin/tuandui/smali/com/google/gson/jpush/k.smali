.class public final Lcom/google/gson/jpush/k;
.super Ljava/lang/Object;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field final a:Lcom/google/gson/jpush/u;

.field final b:Lcom/google/gson/jpush/ad;

.field private final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/gson/jpush/a/a",
            "<*>;",
            "Lcom/google/gson/jpush/q",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/gson/jpush/a/a",
            "<*>;",
            "Lcom/google/gson/jpush/al",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/jpush/am;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/gson/jpush/internal/f;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x9

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "K0`H\u0007e\u000cLsJd\r[&P`\u0010\u000fhHuCIsKm\u001a\u000feHo\u0010ZkBeM"

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

    const/16 v9, 0x27

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

    const-string v1, "!C"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "(>R!-"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "!\n\\&In\u0017\u000fg\u0007w\u0002CoC!\u0007@sEm\u0006\u000fpFm\u0016J&FrC_cU!)|Ii!\u0010_cDh\u0005FeFu\n@h\t!7@&Hw\u0006]tNe\u0006\u000frOh\u0010\u000fdBi\u0002YoHsO\u000fsTdChuHo!ZoKe\u0006](Td\u0011FgKh\u0019JUWd\u0000FgKG\u000f@gSh\rHVHh\r[PFm\u0016Ju\u000f(CBcSi\u000cK("

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "F0`H\u0007b\u0002AhHuC\\cUh\u0002Co]dC"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "F0`H\u0007b\u0002AhHuCGgIe\u000fJ&"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "-\nAuS`\rLcds\u0006NrHs\u0010\u0015"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "z\u0010JtN`\u000fF|BO\u0016CjT;"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "g\u0002LrHs\nJu\u001d"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    sput-object v4, Lcom/google/gson/jpush/k;->z:[Ljava/lang/String;

    return-void

    :pswitch_8
    const/4 v9, 0x1

    goto :goto_2

    :pswitch_9
    const/16 v9, 0x63

    goto :goto_2

    :pswitch_a
    const/16 v9, 0x2f

    goto :goto_2

    :pswitch_b
    const/4 v9, 0x6

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 12

    const/4 v4, 0x0

    sget-object v1, Lcom/google/gson/jpush/internal/s;->a:Lcom/google/gson/jpush/internal/s;

    sget-object v2, Lcom/google/gson/jpush/d;->a:Lcom/google/gson/jpush/d;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v7, 0x1

    sget-object v10, Lcom/google/gson/jpush/ag;->a:Lcom/google/gson/jpush/ag;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    invoke-direct/range {v0 .. v11}, Lcom/google/gson/jpush/k;-><init>(Lcom/google/gson/jpush/internal/s;Lcom/google/gson/jpush/j;Ljava/util/Map;ZZZZZZLcom/google/gson/jpush/ag;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/google/gson/jpush/internal/s;Lcom/google/gson/jpush/j;Ljava/util/Map;ZZZZZZLcom/google/gson/jpush/ag;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/jpush/internal/s;",
            "Lcom/google/gson/jpush/j;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/jpush/s",
            "<*>;>;ZZZZZZ",
            "Lcom/google/gson/jpush/ag;",
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/jpush/am;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/gson/jpush/k;->c:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/jpush/k;->d:Ljava/util/Map;

    new-instance v0, Lcom/google/gson/jpush/l;

    invoke-direct {v0, p0}, Lcom/google/gson/jpush/l;-><init>(Lcom/google/gson/jpush/k;)V

    iput-object v0, p0, Lcom/google/gson/jpush/k;->a:Lcom/google/gson/jpush/u;

    new-instance v0, Lcom/google/gson/jpush/m;

    invoke-direct {v0, p0}, Lcom/google/gson/jpush/m;-><init>(Lcom/google/gson/jpush/k;)V

    iput-object v0, p0, Lcom/google/gson/jpush/k;->b:Lcom/google/gson/jpush/ad;

    new-instance v0, Lcom/google/gson/jpush/internal/f;

    invoke-direct {v0, p3}, Lcom/google/gson/jpush/internal/f;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/gson/jpush/k;->f:Lcom/google/gson/jpush/internal/f;

    iput-boolean p4, p0, Lcom/google/gson/jpush/k;->g:Z

    iput-boolean p6, p0, Lcom/google/gson/jpush/k;->i:Z

    iput-boolean p7, p0, Lcom/google/gson/jpush/k;->h:Z

    iput-boolean p8, p0, Lcom/google/gson/jpush/k;->j:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/google/gson/jpush/internal/a/z;->Q:Lcom/google/gson/jpush/am;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/gson/jpush/internal/a/n;->a:Lcom/google/gson/jpush/am;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/google/gson/jpush/internal/a/z;->x:Lcom/google/gson/jpush/am;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/gson/jpush/internal/a/z;->m:Lcom/google/gson/jpush/am;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/gson/jpush/internal/a/z;->g:Lcom/google/gson/jpush/am;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/gson/jpush/internal/a/z;->i:Lcom/google/gson/jpush/am;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/gson/jpush/internal/a/z;->k:Lcom/google/gson/jpush/am;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Long;

    sget-object v0, Lcom/google/gson/jpush/ag;->a:Lcom/google/gson/jpush/ag;

    if-ne p10, v0, :cond_0

    sget-object v0, Lcom/google/gson/jpush/internal/a/z;->n:Lcom/google/gson/jpush/al;

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/google/gson/jpush/internal/a/z;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/jpush/al;)Lcom/google/gson/jpush/am;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Double;

    if-eqz p9, :cond_1

    sget-object v0, Lcom/google/gson/jpush/internal/a/z;->p:Lcom/google/gson/jpush/al;

    :goto_1
    invoke-static {v2, v3, v0}, Lcom/google/gson/jpush/internal/a/z;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/jpush/al;)Lcom/google/gson/jpush/am;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Float;

    if-eqz p9, :cond_2

    sget-object v0, Lcom/google/gson/jpush/internal/a/z;->o:Lcom/google/gson/jpush/al;

    :goto_2
    invoke-static {v2, v3, v0}, Lcom/google/gson/jpush/internal/a/z;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/jpush/al;)Lcom/google/gson/jpush/am;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/gson/jpush/internal/a/z;->r:Lcom/google/gson/jpush/am;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/gson/jpush/internal/a/z;->t:Lcom/google/gson/jpush/am;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/gson/jpush/internal/a/z;->z:Lcom/google/gson/jpush/am;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/gson/jpush/internal/a/z;->B:Lcom/google/gson/jpush/am;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v0, Ljava/math/BigDecimal;

    sget-object v2, Lcom/google/gson/jpush/internal/a/z;->v:Lcom/google/gson/jpush/al;

    invoke-static {v0, v2}, Lcom/google/gson/jpush/internal/a/z;->a(Ljava/lang/Class;Lcom/google/gson/jpush/al;)Lcom/google/gson/jpush/am;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v0, Ljava/math/BigInteger;

    sget-object v2, Lcom/google/gson/jpush/internal/a/z;->w:Lcom/google/gson/jpush/al;

    invoke-static {v0, v2}, Lcom/google/gson/jpush/internal/a/z;->a(Ljava/lang/Class;Lcom/google/gson/jpush/al;)Lcom/google/gson/jpush/am;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/gson/jpush/internal/a/z;->D:Lcom/google/gson/jpush/am;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/gson/jpush/internal/a/z;->F:Lcom/google/gson/jpush/am;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/gson/jpush/internal/a/z;->J:Lcom/google/gson/jpush/am;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/gson/jpush/internal/a/z;->O:Lcom/google/gson/jpush/am;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/gson/jpush/internal/a/z;->H:Lcom/google/gson/jpush/am;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/gson/jpush/internal/a/z;->d:Lcom/google/gson/jpush/am;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/gson/jpush/internal/a/e;->a:Lcom/google/gson/jpush/am;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/gson/jpush/internal/a/z;->M:Lcom/google/gson/jpush/am;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/gson/jpush/internal/a/w;->a:Lcom/google/gson/jpush/am;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/gson/jpush/internal/a/u;->a:Lcom/google/gson/jpush/am;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/gson/jpush/internal/a/z;->K:Lcom/google/gson/jpush/am;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/gson/jpush/internal/a/a;->a:Lcom/google/gson/jpush/am;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/gson/jpush/internal/a/z;->b:Lcom/google/gson/jpush/am;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/gson/jpush/internal/a/c;

    iget-object v2, p0, Lcom/google/gson/jpush/k;->f:Lcom/google/gson/jpush/internal/f;

    invoke-direct {v0, v2}, Lcom/google/gson/jpush/internal/a/c;-><init>(Lcom/google/gson/jpush/internal/f;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/gson/jpush/internal/a/l;

    iget-object v2, p0, Lcom/google/gson/jpush/k;->f:Lcom/google/gson/jpush/internal/f;

    invoke-direct {v0, v2, p5}, Lcom/google/gson/jpush/internal/a/l;-><init>(Lcom/google/gson/jpush/internal/f;Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/gson/jpush/internal/a/g;

    iget-object v2, p0, Lcom/google/gson/jpush/k;->f:Lcom/google/gson/jpush/internal/f;

    invoke-direct {v0, v2}, Lcom/google/gson/jpush/internal/a/g;-><init>(Lcom/google/gson/jpush/internal/f;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/gson/jpush/internal/a/z;->R:Lcom/google/gson/jpush/am;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/gson/jpush/internal/a/q;

    iget-object v2, p0, Lcom/google/gson/jpush/k;->f:Lcom/google/gson/jpush/internal/f;

    invoke-direct {v0, v2, p2, p1}, Lcom/google/gson/jpush/internal/a/q;-><init>(Lcom/google/gson/jpush/internal/f;Lcom/google/gson/jpush/j;Lcom/google/gson/jpush/internal/s;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/jpush/k;->e:Ljava/util/List;

    return-void

    :cond_0
    new-instance v0, Lcom/google/gson/jpush/p;

    invoke-direct {v0, p0}, Lcom/google/gson/jpush/p;-><init>(Lcom/google/gson/jpush/k;)V

    goto/16 :goto_0

    :cond_1
    new-instance v0, Lcom/google/gson/jpush/n;

    invoke-direct {v0, p0}, Lcom/google/gson/jpush/n;-><init>(Lcom/google/gson/jpush/k;)V

    goto/16 :goto_1

    :cond_2
    new-instance v0, Lcom/google/gson/jpush/o;

    invoke-direct {v0, p0}, Lcom/google/gson/jpush/o;-><init>(Lcom/google/gson/jpush/k;)V

    goto/16 :goto_2
.end method

.method private a(Ljava/io/Writer;)Lcom/google/gson/jpush/b/d;
    .locals 3

    iget-boolean v0, p0, Lcom/google/gson/jpush/k;->i:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/gson/jpush/k;->z:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/google/gson/jpush/b/d;

    invoke-direct {v0, p1}, Lcom/google/gson/jpush/b/d;-><init>(Ljava/io/Writer;)V

    iget-boolean v1, p0, Lcom/google/gson/jpush/k;->j:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/gson/jpush/k;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/gson/jpush/b/d;->c(Ljava/lang/String;)V

    :cond_1
    iget-boolean v1, p0, Lcom/google/gson/jpush/k;->g:Z

    invoke-virtual {v0, v1}, Lcom/google/gson/jpush/b/d;->d(Z)V

    return-object v0
.end method

.method private a(Lcom/google/gson/jpush/b/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/jpush/b/a;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->p()Z

    move-result v2

    invoke-virtual {p1, v1}, Lcom/google/gson/jpush/b/a;->a(Z)V

    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->f()Lcom/google/gson/jpush/b/c;

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/google/gson/jpush/a/a;->a(Ljava/lang/reflect/Type;)Lcom/google/gson/jpush/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/jpush/k;->a(Lcom/google/gson/jpush/a/a;)Lcom/google/gson/jpush/al;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/jpush/al;->a(Lcom/google/gson/jpush/b/a;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {p1, v2}, Lcom/google/gson/jpush/b/a;->a(Z)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2}, Lcom/google/gson/jpush/b/a;->a(Z)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/gson/jpush/af;

    invoke-direct {v1, v0}, Lcom/google/gson/jpush/af;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v2}, Lcom/google/gson/jpush/b/a;->a(Z)V

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/google/gson/jpush/af;

    invoke-direct {v1, v0}, Lcom/google/gson/jpush/af;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/google/gson/jpush/af;

    invoke-direct {v1, v0}, Lcom/google/gson/jpush/af;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method static synthetic a(Lcom/google/gson/jpush/k;D)V
    .locals 5

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gson/jpush/k;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/Object;Lcom/google/gson/jpush/b/a;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/jpush/b/a;->f()Lcom/google/gson/jpush/b/c;

    move-result-object v0

    sget-object v1, Lcom/google/gson/jpush/b/c;->j:Lcom/google/gson/jpush/b/c;

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/google/gson/jpush/x;

    sget-object v1, Lcom/google/gson/jpush/k;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/google/gson/jpush/x;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/gson/jpush/b/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

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

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/jpush/a/a;)Lcom/google/gson/jpush/al;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/jpush/a/a",
            "<TT;>;)",
            "Lcom/google/gson/jpush/al",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/jpush/k;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/al;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/gson/jpush/k;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/gson/jpush/k;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    :goto_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/q;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v3, Lcom/google/gson/jpush/q;

    invoke-direct {v3}, Lcom/google/gson/jpush/q;-><init>()V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/gson/jpush/k;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/am;

    invoke-interface {v0, p0, p1}, Lcom/google/gson/jpush/am;->a(Lcom/google/gson/jpush/k;Lcom/google/gson/jpush/a/a;)Lcom/google/gson/jpush/al;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v3, v0}, Lcom/google/gson/jpush/q;->a(Lcom/google/gson/jpush/al;)V

    iget-object v3, p0, Lcom/google/gson/jpush/k;->d:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/gson/jpush/k;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/google/gson/jpush/k;->z:[Ljava/lang/String;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/gson/jpush/k;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_4
    throw v0

    :cond_5
    move-object v2, v0

    goto :goto_1
.end method

.method public final a(Lcom/google/gson/jpush/am;Lcom/google/gson/jpush/a/a;)Lcom/google/gson/jpush/al;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/jpush/am;",
            "Lcom/google/gson/jpush/a/a",
            "<TT;>;)",
            "Lcom/google/gson/jpush/al",
            "<TT;>;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/gson/jpush/k;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    iget-object v2, p0, Lcom/google/gson/jpush/k;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/am;

    if-nez v2, :cond_2

    if-ne v0, p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_2
    invoke-interface {v0, p0, p2}, Lcom/google/gson/jpush/am;->a(Lcom/google/gson/jpush/k;Lcom/google/gson/jpush/a/a;)Lcom/google/gson/jpush/al;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/gson/jpush/k;->z:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/Class;)Lcom/google/gson/jpush/al;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/gson/jpush/al",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/gson/jpush/a/a;->a(Ljava/lang/Class;)Lcom/google/gson/jpush/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/jpush/k;->a(Lcom/google/gson/jpush/a/a;)Lcom/google/gson/jpush/al;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p2}, Lcom/google/gson/jpush/internal/af;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/jpush/b/a;

    invoke-direct {v1, v0}, Lcom/google/gson/jpush/b/a;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v1, p2}, Lcom/google/gson/jpush/k;->a(Lcom/google/gson/jpush/b/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/gson/jpush/k;->a(Ljava/lang/Object;Lcom/google/gson/jpush/b/a;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/gson/jpush/w;Ljava/lang/Appendable;)V
    .locals 6

    :try_start_0
    invoke-static {p2}, Lcom/google/gson/jpush/internal/ag;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/k;->a(Ljava/io/Writer;)Lcom/google/gson/jpush/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/jpush/b/d;->g()Z

    move-result v2

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/gson/jpush/b/d;->b(Z)V

    invoke-virtual {v1}, Lcom/google/gson/jpush/b/d;->h()Z

    move-result v3

    iget-boolean v0, p0, Lcom/google/gson/jpush/k;->h:Z

    invoke-virtual {v1, v0}, Lcom/google/gson/jpush/b/d;->c(Z)V

    invoke-virtual {v1}, Lcom/google/gson/jpush/b/d;->i()Z

    move-result v4

    iget-boolean v0, p0, Lcom/google/gson/jpush/k;->g:Z

    invoke-virtual {v1, v0}, Lcom/google/gson/jpush/b/d;->d(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p1, v1}, Lcom/google/gson/jpush/internal/ag;->a(Lcom/google/gson/jpush/w;Lcom/google/gson/jpush/b/d;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1, v2}, Lcom/google/gson/jpush/b/d;->b(Z)V

    invoke-virtual {v1, v3}, Lcom/google/gson/jpush/b/d;->c(Z)V

    invoke-virtual {v1, v4}, Lcom/google/gson/jpush/b/d;->d(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v5, Lcom/google/gson/jpush/x;

    invoke-direct {v5, v0}, Lcom/google/gson/jpush/x;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v2}, Lcom/google/gson/jpush/b/d;->b(Z)V

    invoke-virtual {v1, v3}, Lcom/google/gson/jpush/b/d;->c(Z)V

    invoke-virtual {v1, v4}, Lcom/google/gson/jpush/b/d;->d(Z)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 6

    :try_start_0
    invoke-static {p3}, Lcom/google/gson/jpush/internal/ag;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gson/jpush/k;->a(Ljava/io/Writer;)Lcom/google/gson/jpush/b/d;

    move-result-object v1

    invoke-static {p2}, Lcom/google/gson/jpush/a/a;->a(Ljava/lang/reflect/Type;)Lcom/google/gson/jpush/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/jpush/k;->a(Lcom/google/gson/jpush/a/a;)Lcom/google/gson/jpush/al;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/gson/jpush/b/d;->g()Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/google/gson/jpush/b/d;->b(Z)V

    invoke-virtual {v1}, Lcom/google/gson/jpush/b/d;->h()Z

    move-result v3

    iget-boolean v4, p0, Lcom/google/gson/jpush/k;->h:Z

    invoke-virtual {v1, v4}, Lcom/google/gson/jpush/b/d;->c(Z)V

    invoke-virtual {v1}, Lcom/google/gson/jpush/b/d;->i()Z

    move-result v4

    iget-boolean v5, p0, Lcom/google/gson/jpush/k;->g:Z

    invoke-virtual {v1, v5}, Lcom/google/gson/jpush/b/d;->d(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0, v1, p1}, Lcom/google/gson/jpush/al;->a(Lcom/google/gson/jpush/b/d;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1, v2}, Lcom/google/gson/jpush/b/d;->b(Z)V

    invoke-virtual {v1, v3}, Lcom/google/gson/jpush/b/d;->c(Z)V

    invoke-virtual {v1, v4}, Lcom/google/gson/jpush/b/d;->d(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v5, Lcom/google/gson/jpush/x;

    invoke-direct {v5, v0}, Lcom/google/gson/jpush/x;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v2}, Lcom/google/gson/jpush/b/d;->b(Z)V

    invoke-virtual {v1, v3}, Lcom/google/gson/jpush/b/d;->c(Z)V

    invoke-virtual {v1, v4}, Lcom/google/gson/jpush/b/d;->d(Z)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/gson/jpush/x;

    invoke-direct {v1, v0}, Lcom/google/gson/jpush/x;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/gson/jpush/k;->z:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/gson/jpush/k;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/gson/jpush/k;->z:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gson/jpush/k;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/gson/jpush/k;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gson/jpush/k;->f:Lcom/google/gson/jpush/internal/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
