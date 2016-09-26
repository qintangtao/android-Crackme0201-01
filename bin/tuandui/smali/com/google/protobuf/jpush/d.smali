.class public final Lcom/google/protobuf/jpush/d;
.super Ljava/lang/Object;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field private final a:[B

.field private b:I

.field private c:I

.field private d:I

.field private final e:Ljava/io/InputStream;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v12, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-array v4, v12, [Ljava/lang/String;

    const-string v3, "\td\'L>J^?\\jPD=L\u007fn\u0010&DnoU\"LpwQ;@qm\u0010&Z>aE(Ng-"

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

    move v14, v7

    move-object v7, v3

    move v3, v14

    :goto_1
    aget-char v13, v7, v8

    rem-int/lit8 v11, v10, 0x5

    packed-switch v11, :pswitch_data_0

    const/16 v11, 0x1e

    :goto_2
    xor-int/2addr v11, v13

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

    const-string v0, "J^?\\jPD=L\u007fn\u0013=L\u007fg\u0018-Pjfk\u0012\u0000>qU;\\lmU+\twmF.Ewg\u0010=Lmv\\;\u0013>"

    move-object v3, v0

    move v4, v2

    move-object v5, v6

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v3, v5, v4

    const/4 v3, 0x2

    const-string v0, "qU)@ror:OxfBg\u0000>`Q#E{g\u00108A{m\u0010-\\xeU=\tibC!\u000ej#U\"Yjz\u001e"

    move v4, v3

    move-object v5, v6

    move-object v3, v0

    move v0, v2

    goto :goto_0

    :pswitch_1
    aput-object v3, v5, v4

    sput-object v6, Lcom/google/protobuf/jpush/d;->z:[Ljava/lang/String;

    return-void

    :pswitch_2
    move v11, v12

    goto :goto_2

    :pswitch_3
    const/16 v11, 0x30

    goto :goto_2

    :pswitch_4
    const/16 v11, 0x4f

    goto :goto_2

    :pswitch_5
    const/16 v11, 0x29

    goto :goto_2

    :cond_2
    move v8, v1

    goto :goto_3

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

.method private constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/jpush/d;->h:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/google/protobuf/jpush/d;->j:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/protobuf/jpush/d;->k:I

    iput-object p1, p0, Lcom/google/protobuf/jpush/d;->a:[B

    add-int v0, p2, p3

    iput v0, p0, Lcom/google/protobuf/jpush/d;->b:I

    iput p2, p0, Lcom/google/protobuf/jpush/d;->d:I

    neg-int v0, p2

    iput v0, p0, Lcom/google/protobuf/jpush/d;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/jpush/d;->e:Ljava/io/InputStream;

    return-void
.end method

.method public static a([BII)Lcom/google/protobuf/jpush/d;
    .locals 2

    new-instance v0, Lcom/google/protobuf/jpush/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/jpush/d;-><init>([BII)V

    :try_start_0
    invoke-virtual {v0, p2}, Lcom/google/protobuf/jpush/d;->c(I)I
    :try_end_0
    .catch Lcom/google/protobuf/jpush/j; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Z)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/protobuf/jpush/d;->d:I

    iget v4, p0, Lcom/google/protobuf/jpush/d;->b:I

    if-ge v0, v4, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/google/protobuf/jpush/d;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/protobuf/jpush/d;->g:I

    iget v4, p0, Lcom/google/protobuf/jpush/d;->b:I

    add-int/2addr v0, v4

    iget v4, p0, Lcom/google/protobuf/jpush/d;->h:I

    if-ne v0, v4, :cond_2

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/google/protobuf/jpush/j;->a()Lcom/google/protobuf/jpush/j;

    move-result-object v0

    throw v0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    iget v0, p0, Lcom/google/protobuf/jpush/d;->g:I

    iget v4, p0, Lcom/google/protobuf/jpush/d;->b:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/google/protobuf/jpush/d;->g:I

    iput v2, p0, Lcom/google/protobuf/jpush/d;->d:I

    iget-object v0, p0, Lcom/google/protobuf/jpush/d;->e:Ljava/io/InputStream;

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/google/protobuf/jpush/d;->b:I

    iget v0, p0, Lcom/google/protobuf/jpush/d;->b:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/protobuf/jpush/d;->b:I

    if-ge v0, v1, :cond_5

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/google/protobuf/jpush/d;->z:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/google/protobuf/jpush/d;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/google/protobuf/jpush/d;->z:[Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/jpush/d;->e:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/google/protobuf/jpush/d;->a:[B

    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/google/protobuf/jpush/d;->b:I

    if-ne v0, v1, :cond_7

    iput v2, p0, Lcom/google/protobuf/jpush/d;->b:I

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/google/protobuf/jpush/j;->a()Lcom/google/protobuf/jpush/j;

    move-result-object v0

    throw v0

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/google/protobuf/jpush/d;->h()V

    iget v0, p0, Lcom/google/protobuf/jpush/d;->g:I

    iget v1, p0, Lcom/google/protobuf/jpush/d;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/jpush/d;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/jpush/d;->k:I

    if-gt v0, v1, :cond_8

    if-gez v0, :cond_9

    :cond_8
    invoke-static {}, Lcom/google/protobuf/jpush/j;->h()Lcom/google/protobuf/jpush/j;

    move-result-object v0

    throw v0

    :cond_9
    move v0, v3

    goto :goto_0
.end method

.method private e(I)V
    .locals 4

    const/4 v3, 0x1

    if-gez p1, :cond_0

    invoke-static {}, Lcom/google/protobuf/jpush/j;->b()Lcom/google/protobuf/jpush/j;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/protobuf/jpush/d;->g:I

    iget v1, p0, Lcom/google/protobuf/jpush/d;->d:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/protobuf/jpush/d;->h:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/google/protobuf/jpush/d;->h:I

    iget v1, p0, Lcom/google/protobuf/jpush/d;->g:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/jpush/d;->d:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/protobuf/jpush/d;->e(I)V

    invoke-static {}, Lcom/google/protobuf/jpush/j;->a()Lcom/google/protobuf/jpush/j;

    move-result-object v0

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/protobuf/jpush/d;->b:I

    iget v1, p0, Lcom/google/protobuf/jpush/d;->d:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    iget v0, p0, Lcom/google/protobuf/jpush/d;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/protobuf/jpush/d;->d:I

    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/google/protobuf/jpush/d;->b:I

    iget v1, p0, Lcom/google/protobuf/jpush/d;->d:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/jpush/d;->b:I

    iput v1, p0, Lcom/google/protobuf/jpush/d;->d:I

    invoke-direct {p0, v3}, Lcom/google/protobuf/jpush/d;->a(Z)Z

    :goto_1
    sub-int v1, p1, v0

    iget v2, p0, Lcom/google/protobuf/jpush/d;->b:I

    if-le v1, v2, :cond_3

    iget v1, p0, Lcom/google/protobuf/jpush/d;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/jpush/d;->b:I

    iput v1, p0, Lcom/google/protobuf/jpush/d;->d:I

    invoke-direct {p0, v3}, Lcom/google/protobuf/jpush/d;->a(Z)Z

    goto :goto_1

    :cond_3
    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/protobuf/jpush/d;->d:I

    goto :goto_0
.end method

.method private h()V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/jpush/d;->b:I

    iget v1, p0, Lcom/google/protobuf/jpush/d;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/jpush/d;->b:I

    iget v0, p0, Lcom/google/protobuf/jpush/d;->g:I

    iget v1, p0, Lcom/google/protobuf/jpush/d;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/jpush/d;->h:I

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/google/protobuf/jpush/d;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/jpush/d;->c:I

    iget v0, p0, Lcom/google/protobuf/jpush/d;->b:I

    iget v1, p0, Lcom/google/protobuf/jpush/d;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/jpush/d;->b:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/jpush/d;->c:I

    goto :goto_0
.end method

.method private i()B
    .locals 3

    iget v0, p0, Lcom/google/protobuf/jpush/d;->d:I

    iget v1, p0, Lcom/google/protobuf/jpush/d;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/jpush/d;->a(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/jpush/d;->a:[B

    iget v1, p0, Lcom/google/protobuf/jpush/d;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/jpush/d;->d:I

    aget-byte v0, v0, v1

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/protobuf/jpush/d;->d:I

    iget v2, p0, Lcom/google/protobuf/jpush/d;->b:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/google/protobuf/jpush/d;->a(Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    iput v0, p0, Lcom/google/protobuf/jpush/d;->f:I

    :goto_1
    return v0

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/jpush/d;->f()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/jpush/d;->f:I

    iget v0, p0, Lcom/google/protobuf/jpush/d;->f:I

    invoke-static {v0}, Lcom/google/protobuf/jpush/n;->b(I)I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/protobuf/jpush/j;->d()Lcom/google/protobuf/jpush/j;

    move-result-object v0

    throw v0

    :cond_2
    iget v0, p0, Lcom/google/protobuf/jpush/d;->f:I

    goto :goto_1
.end method

.method public final a(I)V
    .locals 1

    iget v0, p0, Lcom/google/protobuf/jpush/d;->f:I

    if-eq v0, p1, :cond_0

    invoke-static {}, Lcom/google/protobuf/jpush/j;->e()Lcom/google/protobuf/jpush/j;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/protobuf/jpush/l;Lcom/google/protobuf/jpush/g;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/protobuf/jpush/d;->f()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/jpush/d;->i:I

    iget v2, p0, Lcom/google/protobuf/jpush/d;->j:I

    if-lt v1, v2, :cond_0

    invoke-static {}, Lcom/google/protobuf/jpush/j;->g()Lcom/google/protobuf/jpush/j;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/jpush/d;->c(I)I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/jpush/d;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/jpush/d;->i:I

    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/jpush/l;->b(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/l;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/jpush/d;->a(I)V

    iget v1, p0, Lcom/google/protobuf/jpush/d;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/protobuf/jpush/d;->i:I

    invoke-virtual {p0, v0}, Lcom/google/protobuf/jpush/d;->d(I)V

    return-void
.end method

.method public final b()J
    .locals 6

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    invoke-direct {p0}, Lcom/google/protobuf/jpush/d;->i()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/jpush/j;->c()Lcom/google/protobuf/jpush/j;

    move-result-object v0

    throw v0
.end method

.method public final b(I)Z
    .locals 12

    invoke-static {p1}, Lcom/google/protobuf/jpush/n;->a(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/google/protobuf/jpush/j;->f()Lcom/google/protobuf/jpush/j;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/jpush/d;->f()I

    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/jpush/d;->i()B

    move-result v0

    invoke-direct {p0}, Lcom/google/protobuf/jpush/d;->i()B

    move-result v1

    invoke-direct {p0}, Lcom/google/protobuf/jpush/d;->i()B

    move-result v2

    invoke-direct {p0}, Lcom/google/protobuf/jpush/d;->i()B

    move-result v3

    invoke-direct {p0}, Lcom/google/protobuf/jpush/d;->i()B

    move-result v4

    invoke-direct {p0}, Lcom/google/protobuf/jpush/d;->i()B

    move-result v5

    invoke-direct {p0}, Lcom/google/protobuf/jpush/d;->i()B

    move-result v6

    invoke-direct {p0}, Lcom/google/protobuf/jpush/d;->i()B

    move-result v7

    int-to-long v8, v0

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    int-to-long v0, v1

    const-wide/16 v10, 0xff

    and-long/2addr v0, v10

    const/16 v10, 0x8

    shl-long/2addr v0, v10

    or-long/2addr v0, v8

    int-to-long v8, v2

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    const-wide/16 v8, 0xff

    and-long/2addr v2, v8

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    const-wide/16 v8, 0xff

    and-long/2addr v2, v8

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/jpush/d;->f()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/jpush/d;->e(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/jpush/d;->a()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/jpush/d;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    invoke-static {p1}, Lcom/google/protobuf/jpush/n;->b(I)I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/protobuf/jpush/n;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/jpush/d;->a(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_4
    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/google/protobuf/jpush/d;->i()B

    move-result v0

    invoke-direct {p0}, Lcom/google/protobuf/jpush/d;->i()B

    move-result v1

    invoke-direct {p0}, Lcom/google/protobuf/jpush/d;->i()B

    move-result v2

    invoke-direct {p0}, Lcom/google/protobuf/jpush/d;->i()B

    move-result v3

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final c()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/jpush/d;->f()I

    move-result v0

    return v0
.end method

.method public final c(I)I
    .locals 2

    if-gez p1, :cond_0

    invoke-static {}, Lcom/google/protobuf/jpush/j;->b()Lcom/google/protobuf/jpush/j;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/protobuf/jpush/d;->g:I

    iget v1, p0, Lcom/google/protobuf/jpush/d;->d:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/protobuf/jpush/d;->h:I

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/google/protobuf/jpush/j;->a()Lcom/google/protobuf/jpush/j;

    move-result-object v0

    throw v0

    :cond_1
    iput v0, p0, Lcom/google/protobuf/jpush/d;->h:I

    invoke-direct {p0}, Lcom/google/protobuf/jpush/d;->h()V

    return v1
.end method

.method public final d()Lcom/google/protobuf/jpush/c;
    .locals 12

    const/16 v11, 0x1000

    const/4 v6, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/protobuf/jpush/d;->f()I

    move-result v5

    if-nez v5, :cond_0

    sget-object v0, Lcom/google/protobuf/jpush/c;->a:Lcom/google/protobuf/jpush/c;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/protobuf/jpush/d;->b:I

    iget v2, p0, Lcom/google/protobuf/jpush/d;->d:I

    sub-int/2addr v0, v2

    if-gt v5, v0, :cond_1

    if-lez v5, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/jpush/d;->a:[B

    iget v1, p0, Lcom/google/protobuf/jpush/d;->d:I

    invoke-static {v0, v1, v5}, Lcom/google/protobuf/jpush/c;->a([BII)Lcom/google/protobuf/jpush/c;

    move-result-object v0

    iget v1, p0, Lcom/google/protobuf/jpush/d;->d:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/google/protobuf/jpush/d;->d:I

    goto :goto_0

    :cond_1
    if-gez v5, :cond_2

    invoke-static {}, Lcom/google/protobuf/jpush/j;->b()Lcom/google/protobuf/jpush/j;

    move-result-object v0

    throw v0

    :cond_2
    iget v0, p0, Lcom/google/protobuf/jpush/d;->g:I

    iget v2, p0, Lcom/google/protobuf/jpush/d;->d:I

    add-int/2addr v0, v2

    add-int/2addr v0, v5

    iget v2, p0, Lcom/google/protobuf/jpush/d;->h:I

    if-le v0, v2, :cond_3

    iget v0, p0, Lcom/google/protobuf/jpush/d;->h:I

    iget v1, p0, Lcom/google/protobuf/jpush/d;->g:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/jpush/d;->d:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/protobuf/jpush/d;->e(I)V

    invoke-static {}, Lcom/google/protobuf/jpush/j;->a()Lcom/google/protobuf/jpush/j;

    move-result-object v0

    throw v0

    :cond_3
    iget v0, p0, Lcom/google/protobuf/jpush/d;->b:I

    iget v2, p0, Lcom/google/protobuf/jpush/d;->d:I

    sub-int/2addr v0, v2

    if-gt v5, v0, :cond_4

    new-array v0, v5, [B

    iget-object v2, p0, Lcom/google/protobuf/jpush/d;->a:[B

    iget v3, p0, Lcom/google/protobuf/jpush/d;->d:I

    invoke-static {v2, v3, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/google/protobuf/jpush/d;->d:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/google/protobuf/jpush/d;->d:I

    :goto_1
    invoke-static {v0}, Lcom/google/protobuf/jpush/c;->a([B)Lcom/google/protobuf/jpush/c;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-ge v5, v11, :cond_6

    new-array v2, v5, [B

    iget v0, p0, Lcom/google/protobuf/jpush/d;->b:I

    iget v3, p0, Lcom/google/protobuf/jpush/d;->d:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/protobuf/jpush/d;->a:[B

    iget v4, p0, Lcom/google/protobuf/jpush/d;->d:I

    invoke-static {v3, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/google/protobuf/jpush/d;->b:I

    iput v3, p0, Lcom/google/protobuf/jpush/d;->d:I

    invoke-direct {p0, v6}, Lcom/google/protobuf/jpush/d;->a(Z)Z

    :goto_2
    sub-int v3, v5, v0

    iget v4, p0, Lcom/google/protobuf/jpush/d;->b:I

    if-le v3, v4, :cond_5

    iget-object v3, p0, Lcom/google/protobuf/jpush/d;->a:[B

    iget v4, p0, Lcom/google/protobuf/jpush/d;->b:I

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/google/protobuf/jpush/d;->b:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/google/protobuf/jpush/d;->b:I

    iput v3, p0, Lcom/google/protobuf/jpush/d;->d:I

    invoke-direct {p0, v6}, Lcom/google/protobuf/jpush/d;->a(Z)Z

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/google/protobuf/jpush/d;->a:[B

    sub-int v4, v5, v0

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v0, v5, v0

    iput v0, p0, Lcom/google/protobuf/jpush/d;->d:I

    move-object v0, v2

    goto :goto_1

    :cond_6
    iget v6, p0, Lcom/google/protobuf/jpush/d;->d:I

    iget v7, p0, Lcom/google/protobuf/jpush/d;->b:I

    iget v0, p0, Lcom/google/protobuf/jpush/d;->g:I

    iget v2, p0, Lcom/google/protobuf/jpush/d;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/protobuf/jpush/d;->g:I

    iput v1, p0, Lcom/google/protobuf/jpush/d;->d:I

    iput v1, p0, Lcom/google/protobuf/jpush/d;->b:I

    sub-int v0, v7, v6

    sub-int v0, v5, v0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v4, v0

    :goto_3
    if-lez v4, :cond_a

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v9, v0, [B

    move v0, v1

    :goto_4
    array-length v2, v9

    if-ge v0, v2, :cond_9

    iget-object v2, p0, Lcom/google/protobuf/jpush/d;->e:Ljava/io/InputStream;

    if-nez v2, :cond_7

    move v2, v3

    :goto_5
    if-ne v2, v3, :cond_8

    invoke-static {}, Lcom/google/protobuf/jpush/j;->a()Lcom/google/protobuf/jpush/j;

    move-result-object v0

    throw v0

    :cond_7
    iget-object v2, p0, Lcom/google/protobuf/jpush/d;->e:Ljava/io/InputStream;

    array-length v10, v9

    sub-int/2addr v10, v0

    invoke-virtual {v2, v9, v0, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto :goto_5

    :cond_8
    iget v10, p0, Lcom/google/protobuf/jpush/d;->g:I

    add-int/2addr v10, v2

    iput v10, p0, Lcom/google/protobuf/jpush/d;->g:I

    add-int/2addr v0, v2

    goto :goto_4

    :cond_9
    array-length v0, v9

    sub-int v0, v4, v0

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v0

    goto :goto_3

    :cond_a
    new-array v3, v5, [B

    sub-int v0, v7, v6

    iget-object v2, p0, Lcom/google/protobuf/jpush/d;->a:[B

    invoke-static {v2, v6, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v5, v0

    invoke-static {v0, v1, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_6

    :cond_b
    move-object v0, v3

    goto/16 :goto_1
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/google/protobuf/jpush/d;->h:I

    invoke-direct {p0}, Lcom/google/protobuf/jpush/d;->h()V

    return-void
.end method

.method public final e()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/jpush/d;->f()I

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 3

    invoke-direct {p0}, Lcom/google/protobuf/jpush/d;->i()B

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    invoke-direct {p0}, Lcom/google/protobuf/jpush/d;->i()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/protobuf/jpush/d;->i()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/protobuf/jpush/d;->i()B

    move-result v1

    if-ltz v1, :cond_4

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_0

    :cond_4
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/protobuf/jpush/d;->i()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    invoke-direct {p0}, Lcom/google/protobuf/jpush/d;->i()B

    move-result v2

    if-gez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/google/protobuf/jpush/j;->c()Lcom/google/protobuf/jpush/j;

    move-result-object v0

    throw v0
.end method

.method public final g()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/jpush/d;->h:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/protobuf/jpush/d;->g:I

    iget v1, p0, Lcom/google/protobuf/jpush/d;->d:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/jpush/d;->h:I

    sub-int v0, v1, v0

    goto :goto_0
.end method
