.class public final Lcom/google/gson/jpush/internal/a/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/gson/jpush/am;


# static fields
.field private static final z:Ljava/lang/String;


# instance fields
.field private final a:Lcom/google/gson/jpush/internal/f;

.field private final b:Lcom/google/gson/jpush/j;

.field private final c:Lcom/google/gson/jpush/internal/s;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "7n\u001aK:vx\u001a[vz\u007f\u0013\\?gf\u001a\u0008\u001cDE1\u00080~o\u0013L%7d\u001eE3s*"

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

    const/16 v5, 0x56

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

    sput-object v0, Lcom/google/gson/jpush/internal/a/q;->z:Ljava/lang/String;

    return-void

    :pswitch_0
    const/16 v5, 0x17

    goto :goto_1

    :pswitch_1
    const/16 v5, 0xa

    goto :goto_1

    :pswitch_2
    const/16 v5, 0x7f

    goto :goto_1

    :pswitch_3
    const/16 v5, 0x28

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

.method public constructor <init>(Lcom/google/gson/jpush/internal/f;Lcom/google/gson/jpush/j;Lcom/google/gson/jpush/internal/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/jpush/internal/a/q;->a:Lcom/google/gson/jpush/internal/f;

    iput-object p2, p0, Lcom/google/gson/jpush/internal/a/q;->b:Lcom/google/gson/jpush/j;

    iput-object p3, p0, Lcom/google/gson/jpush/internal/a/q;->c:Lcom/google/gson/jpush/internal/s;

    return-void
.end method

.method static synthetic a(Lcom/google/gson/jpush/internal/a/q;Lcom/google/gson/jpush/k;Ljava/lang/reflect/Field;Lcom/google/gson/jpush/a/a;)Lcom/google/gson/jpush/al;
    .locals 2

    const-class v0, Lcom/google/gson/jpush/annotations/b;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/annotations/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/gson/jpush/internal/a/q;->a:Lcom/google/gson/jpush/internal/f;

    invoke-static {v1, p1, p3, v0}, Lcom/google/gson/jpush/internal/a/g;->a(Lcom/google/gson/jpush/internal/f;Lcom/google/gson/jpush/k;Lcom/google/gson/jpush/a/a;Lcom/google/gson/jpush/annotations/b;)Lcom/google/gson/jpush/al;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p3}, Lcom/google/gson/jpush/k;->a(Lcom/google/gson/jpush/a/a;)Lcom/google/gson/jpush/al;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/gson/jpush/internal/a/q;->b:Lcom/google/gson/jpush/j;

    const-class v0, Lcom/google/gson/jpush/annotations/c;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/annotations/c;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    if-nez v0, :cond_1

    invoke-interface {v1, p1}, Lcom/google/gson/jpush/j;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v2

    :cond_1
    invoke-interface {v0}, Lcom/google/gson/jpush/annotations/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Lcom/google/gson/jpush/annotations/c;->b()[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/google/gson/jpush/k;Lcom/google/gson/jpush/a/a;Ljava/lang/Class;)Ljava/util/Map;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/jpush/k;",
            "Lcom/google/gson/jpush/a/a",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gson/jpush/internal/a/t;",
            ">;"
        }
    .end annotation

    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v12

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/gson/jpush/a/a;->b()Ljava/lang/reflect/Type;

    move-result-object v14

    :goto_1
    const-class v1, Ljava/lang/Object;

    move-object/from16 v0, p3

    if-eq v0, v1, :cond_6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v15

    array-length v0, v15

    move/from16 v16, v0

    const/4 v1, 0x0

    move v13, v1

    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_5

    aget-object v7, v15, v13

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1}, Lcom/google/gson/jpush/internal/a/q;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v4

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1}, Lcom/google/gson/jpush/internal/a/q;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v5

    if-nez v4, :cond_1

    if-eqz v5, :cond_4

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual/range {p2 .. p2}, Lcom/google/gson/jpush/a/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lcom/google/gson/jpush/internal/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v17

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/google/gson/jpush/internal/a/q;->a(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v18

    const/4 v10, 0x0

    const/4 v1, 0x0

    move v11, v1

    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_3

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v11, :cond_2

    const/4 v4, 0x0

    :cond_2
    invoke-static/range {v17 .. v17}, Lcom/google/gson/jpush/a/a;->a(Ljava/lang/reflect/Type;)Lcom/google/gson/jpush/a/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/jpush/a/a;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/google/gson/jpush/internal/af;->a(Ljava/lang/reflect/Type;)Z

    move-result v9

    new-instance v1, Lcom/google/gson/jpush/internal/a/r;

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v9}, Lcom/google/gson/jpush/internal/a/r;-><init>(Lcom/google/gson/jpush/internal/a/q;Ljava/lang/String;ZZLcom/google/gson/jpush/k;Ljava/lang/reflect/Field;Lcom/google/gson/jpush/a/a;Z)V

    invoke-interface {v12, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/jpush/internal/a/t;

    if-nez v10, :cond_7

    :goto_4
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    move-object v10, v1

    goto :goto_3

    :cond_3
    if-eqz v10, :cond_4

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/gson/jpush/internal/a/q;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Lcom/google/gson/jpush/internal/a/t;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto/16 :goto_2

    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/google/gson/jpush/a/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lcom/google/gson/jpush/internal/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/gson/jpush/a/a;->a(Ljava/lang/reflect/Type;)Lcom/google/gson/jpush/a/a;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Lcom/google/gson/jpush/a/a;->a()Ljava/lang/Class;

    move-result-object p3

    goto/16 :goto_1

    :cond_6
    move-object v1, v12

    goto/16 :goto_0

    :cond_7
    move-object v1, v10

    goto :goto_4
.end method

.method private a(Ljava/lang/reflect/Field;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/q;->c:Lcom/google/gson/jpush/internal/s;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/gson/jpush/internal/s;->a(Ljava/lang/Class;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/jpush/internal/s;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/gson/jpush/k;Lcom/google/gson/jpush/a/a;)Lcom/google/gson/jpush/al;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/jpush/k;",
            "Lcom/google/gson/jpush/a/a",
            "<TT;>;)",
            "Lcom/google/gson/jpush/al",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/gson/jpush/a/a;->a()Ljava/lang/Class;

    move-result-object v1

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/jpush/internal/a/q;->a:Lcom/google/gson/jpush/internal/f;

    invoke-virtual {v0, p2}, Lcom/google/gson/jpush/internal/f;->a(Lcom/google/gson/jpush/a/a;)Lcom/google/gson/jpush/internal/ae;

    move-result-object v2

    new-instance v0, Lcom/google/gson/jpush/internal/a/s;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/gson/jpush/internal/a/q;->a(Lcom/google/gson/jpush/k;Lcom/google/gson/jpush/a/a;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/google/gson/jpush/internal/a/s;-><init>(Lcom/google/gson/jpush/internal/ae;Ljava/util/Map;B)V

    goto :goto_0
.end method
