.class final Lcom/google/gson/jpush/internal/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/gson/jpush/internal/ae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/jpush/internal/ae",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Ljava/lang/reflect/Type;

.field final synthetic c:Lcom/google/gson/jpush/internal/f;

.field private final d:Lcom/google/gson/jpush/internal/UnsafeAllocator;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v2, "jgD\u0011\u0019-4b\u0011\u000cd&xT7*4b\u0015\u0010\'\"U\u0006\u001b%3y\u0006^3.b\u001c^\u00034y\u001a^\"(dT\n,.eT\n=7sT\u0013%>6\u0012\u0017<gb\u001c\u00177gf\u0006\u0011&+s\u0019P"

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

    const/16 v11, 0x7e

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

    const-string v0, "\u0011)w\u0016\u0012!gb\u001b^-)`\u001b\u0015!gx\u001bS%5q\u0007^\'(x\u0007\n62u\u0000\u00116gp\u001b\u000cd"

    move-object v2, v0

    move v3, v4

    move-object v5, v6

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v2, v5, v3

    sput-object v6, Lcom/google/gson/jpush/internal/j;->z:[Ljava/lang/String;

    return-void

    :pswitch_1
    const/16 v11, 0x44

    goto :goto_2

    :pswitch_2
    const/16 v11, 0x47

    goto :goto_2

    :pswitch_3
    const/16 v11, 0x16

    goto :goto_2

    :pswitch_4
    const/16 v11, 0x74

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

.method constructor <init>(Lcom/google/gson/jpush/internal/f;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 1

    iput-object p1, p0, Lcom/google/gson/jpush/internal/j;->c:Lcom/google/gson/jpush/internal/f;

    iput-object p2, p0, Lcom/google/gson/jpush/internal/j;->a:Ljava/lang/Class;

    iput-object p3, p0, Lcom/google/gson/jpush/internal/j;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/gson/jpush/internal/UnsafeAllocator;->create()Lcom/google/gson/jpush/internal/UnsafeAllocator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/jpush/internal/j;->d:Lcom/google/gson/jpush/internal/UnsafeAllocator;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/gson/jpush/internal/j;->d:Lcom/google/gson/jpush/internal/UnsafeAllocator;

    iget-object v1, p0, Lcom/google/gson/jpush/internal/j;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/gson/jpush/internal/UnsafeAllocator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/google/gson/jpush/internal/j;->z:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/gson/jpush/internal/j;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/gson/jpush/internal/j;->z:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
