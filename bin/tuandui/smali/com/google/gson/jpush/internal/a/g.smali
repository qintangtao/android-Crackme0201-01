.class public final Lcom/google/gson/jpush/internal/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/gson/jpush/am;


# static fields
.field private static final z:Ljava/lang/String;


# instance fields
.field private final a:Lcom/google/gson/jpush/internal/f;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "\u0013thw?\u0012Zzh%6L;n0?K~8<&Mo836\u001eOa!6\u007f\u007fy!\'[i8>!\u001eOa!6\u007f\u007fy!\'[i^00Jtj(sL~~4![u{4}"

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

    const/16 v5, 0x51

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

    sput-object v0, Lcom/google/gson/jpush/internal/a/g;->z:Ljava/lang/String;

    return-void

    :pswitch_0
    const/16 v5, 0x53

    goto :goto_1

    :pswitch_1
    const/16 v5, 0x3e

    goto :goto_1

    :pswitch_2
    const/16 v5, 0x1b

    goto :goto_1

    :pswitch_3
    const/16 v5, 0x18

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

.method public constructor <init>(Lcom/google/gson/jpush/internal/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/jpush/internal/a/g;->a:Lcom/google/gson/jpush/internal/f;

    return-void
.end method

.method static a(Lcom/google/gson/jpush/internal/f;Lcom/google/gson/jpush/k;Lcom/google/gson/jpush/a/a;Lcom/google/gson/jpush/annotations/b;)Lcom/google/gson/jpush/al;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/jpush/internal/f;",
            "Lcom/google/gson/jpush/k;",
            "Lcom/google/gson/jpush/a/a",
            "<*>;",
            "Lcom/google/gson/jpush/annotations/b;",
            ")",
            "Lcom/google/gson/jpush/al",
            "<*>;"
        }
    .end annotation

    invoke-interface {p3}, Lcom/google/gson/jpush/annotations/b;->a()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/gson/jpush/al;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/gson/jpush/a/a;->a(Ljava/lang/Class;)Lcom/google/gson/jpush/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/jpush/internal/f;->a(Lcom/google/gson/jpush/a/a;)Lcom/google/gson/jpush/internal/ae;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/gson/jpush/internal/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/al;

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Lcom/google/gson/jpush/am;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/google/gson/jpush/a/a;->a(Ljava/lang/Class;)Lcom/google/gson/jpush/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/jpush/internal/f;->a(Lcom/google/gson/jpush/a/a;)Lcom/google/gson/jpush/internal/ae;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/gson/jpush/internal/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/am;

    invoke-interface {v0, p1, p2}, Lcom/google/gson/jpush/am;->a(Lcom/google/gson/jpush/k;Lcom/google/gson/jpush/a/a;)Lcom/google/gson/jpush/al;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcom/google/gson/jpush/internal/a/g;->z:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/gson/jpush/k;Lcom/google/gson/jpush/a/a;)Lcom/google/gson/jpush/al;
    .locals 2
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

    move-result-object v0

    const-class v1, Lcom/google/gson/jpush/annotations/b;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/annotations/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/gson/jpush/internal/a/g;->a:Lcom/google/gson/jpush/internal/f;

    invoke-static {v1, p1, p2, v0}, Lcom/google/gson/jpush/internal/a/g;->a(Lcom/google/gson/jpush/internal/f;Lcom/google/gson/jpush/k;Lcom/google/gson/jpush/a/a;Lcom/google/gson/jpush/annotations/b;)Lcom/google/gson/jpush/al;

    move-result-object v0

    goto :goto_0
.end method
