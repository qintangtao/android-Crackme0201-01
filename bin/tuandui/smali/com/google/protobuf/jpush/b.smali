.class public abstract Lcom/google/protobuf/jpush/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/jpush/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BuilderType:",
        "Lcom/google/protobuf/jpush/b;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/jpush/l;"
    }
.end annotation


# static fields
.field private static final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "D\u0005|q&x\u0007=s=y\r=tot\u0019ipow\u0012ot66\u0014ug*a@|{o_/Xm,s\u0010i| x@5f\'y\u0015qqox\u0005kp=6\u0008|e?s\u000e4;"

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

    const/16 v5, 0x4f

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

    sput-object v0, Lcom/google/protobuf/jpush/b;->z:Ljava/lang/String;

    return-void

    :pswitch_0
    const/16 v5, 0x16

    goto :goto_1

    :pswitch_1
    const/16 v5, 0x60

    goto :goto_1

    :pswitch_2
    const/16 v5, 0x1d

    goto :goto_1

    :pswitch_3
    const/16 v5, 0x15

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

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Ljava/lang/Iterable;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/util/Collection",
            "<-TT;>;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-void

    :cond_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/jpush/d;",
            "Lcom/google/protobuf/jpush/g;",
            ")TBuilderType;"
        }
    .end annotation
.end method

.method public final a([BII)Lcom/google/protobuf/jpush/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TBuilderType;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0, p3}, Lcom/google/protobuf/jpush/d;->a([BII)Lcom/google/protobuf/jpush/d;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/jpush/g;->a()Lcom/google/protobuf/jpush/g;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/jpush/b;->a(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/jpush/d;->a(I)V
    :try_end_0
    .catch Lcom/google/protobuf/jpush/j; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    sget-object v2, Lcom/google/protobuf/jpush/b;->z:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public synthetic b(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/l;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/jpush/b;->a(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/jpush/b;->d()Lcom/google/protobuf/jpush/b;

    move-result-object v0

    return-object v0
.end method

.method public abstract d()Lcom/google/protobuf/jpush/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method
