.class public final Lcom/google/protobuf/jpush/e;
.super Ljava/lang/Object;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I

.field private final d:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v12, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string v3, "?xiRm\u0000mnE e(kPflgf]qljm\u0011k-ddTllgf\u0011K#lmUG9|xD|\u001f|zTi!{(E`-|(Pz)(\u007fCa8afV(8g(P(*diE(-zzPqb"

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

    move v11, v12

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

    const-string v0, "\u001emiU(*ia]m(7(b`#}dU(\"m~Tzl`iAx)f"

    move-object v3, v0

    move v4, v2

    move-object v5, v6

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v3, v5, v4

    const/4 v3, 0x2

    const-string v0, "\u001fcaA(*ia]m(7(b`#}dU(\"m~Tzl`iAx)f&"

    move v4, v3

    move-object v5, v6

    move-object v3, v0

    move v0, v2

    goto :goto_0

    :pswitch_1
    aput-object v3, v5, v4

    sput-object v6, Lcom/google/protobuf/jpush/e;->z:[Ljava/lang/String;

    return-void

    :pswitch_2
    const/16 v11, 0x4c

    goto :goto_2

    :pswitch_3
    move v11, v12

    goto :goto_2

    :pswitch_4
    move v11, v12

    goto :goto_2

    :pswitch_5
    const/16 v11, 0x31

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

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/jpush/e;->d:Ljava/io/OutputStream;

    iput-object p1, p0, Lcom/google/protobuf/jpush/e;->a:[B

    iput p2, p0, Lcom/google/protobuf/jpush/e;->c:I

    add-int v0, p2, p3

    iput v0, p0, Lcom/google/protobuf/jpush/e;->b:I

    return-void
.end method

.method public static a(I)I
    .locals 1

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/google/protobuf/jpush/e;->e(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static a(J)I
    .locals 4

    const-wide/16 v2, 0x0

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static a([BII)Lcom/google/protobuf/jpush/e;
    .locals 2

    new-instance v0, Lcom/google/protobuf/jpush/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2}, Lcom/google/protobuf/jpush/e;-><init>([BII)V

    return-object v0
.end method

.method public static b(IJ)I
    .locals 3

    invoke-static {p0}, Lcom/google/protobuf/jpush/e;->c(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/jpush/e;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILcom/google/protobuf/jpush/c;)I
    .locals 3

    invoke-static {p0}, Lcom/google/protobuf/jpush/e;->c(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/c;->a()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/jpush/e;->e(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/c;->a()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILcom/google/protobuf/jpush/k;)I
    .locals 3

    invoke-static {p0}, Lcom/google/protobuf/jpush/e;->c(I)I

    move-result v0

    invoke-interface {p1}, Lcom/google/protobuf/jpush/k;->c()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/jpush/e;->e(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/protobuf/jpush/e;->d:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/jpush/f;

    invoke-direct {v0}, Lcom/google/protobuf/jpush/f;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/jpush/e;->d:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/protobuf/jpush/e;->a:[B

    iget v2, p0, Lcom/google/protobuf/jpush/e;->c:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/google/protobuf/jpush/e;->c:I

    return-void
.end method

.method private b(I)V
    .locals 4

    int-to-byte v0, p1

    iget v1, p0, Lcom/google/protobuf/jpush/e;->c:I

    iget v2, p0, Lcom/google/protobuf/jpush/e;->b:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/jpush/e;->b()V

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/jpush/e;->a:[B

    iget v2, p0, Lcom/google/protobuf/jpush/e;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/protobuf/jpush/e;->c:I

    aput-byte v0, v1, v2

    return-void
.end method

.method private b(J)V
    .locals 5

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    long-to-int v0, p1

    invoke-direct {p0, v0}, Lcom/google/protobuf/jpush/e;->b(I)V

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-direct {p0, v0}, Lcom/google/protobuf/jpush/e;->b(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method private static c(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/protobuf/jpush/n;->a(II)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/jpush/e;->e(I)I

    move-result v0

    return v0
.end method

.method public static c(II)I
    .locals 2

    invoke-static {p0}, Lcom/google/protobuf/jpush/e;->c(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/jpush/e;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static d(II)I
    .locals 2

    invoke-static {p0}, Lcom/google/protobuf/jpush/e;->c(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/jpush/e;->e(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private d(I)V
    .locals 1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/protobuf/jpush/e;->b(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-direct {p0, v0}, Lcom/google/protobuf/jpush/e;->b(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method private static e(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private e(II)V
    .locals 1

    invoke-static {p1, p2}, Lcom/google/protobuf/jpush/n;->a(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/jpush/e;->d(I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    iget-object v0, p0, Lcom/google/protobuf/jpush/e;->d:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/protobuf/jpush/e;->b:I

    iget v1, p0, Lcom/google/protobuf/jpush/e;->c:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lcom/google/protobuf/jpush/e;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(II)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/jpush/e;->e(II)V

    if-ltz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/google/protobuf/jpush/e;->d(I)V

    :goto_0
    return-void

    :cond_0
    int-to-long v0, p2

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/jpush/e;->b(J)V

    goto :goto_0
.end method

.method public final a(IJ)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/jpush/e;->e(II)V

    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/jpush/e;->b(J)V

    return-void
.end method

.method public final a(ILcom/google/protobuf/jpush/c;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    invoke-direct {p0, p1, v7}, Lcom/google/protobuf/jpush/e;->e(II)V

    invoke-virtual {p2}, Lcom/google/protobuf/jpush/c;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/jpush/e;->d(I)V

    invoke-virtual {p2}, Lcom/google/protobuf/jpush/c;->a()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/jpush/e;->b:I

    iget v2, p0, Lcom/google/protobuf/jpush/e;->c:I

    sub-int/2addr v1, v2

    if-lt v1, v0, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/jpush/e;->a:[B

    iget v2, p0, Lcom/google/protobuf/jpush/e;->c:I

    invoke-virtual {p2, v1, v6, v2, v0}, Lcom/google/protobuf/jpush/c;->a([BIII)V

    iget v1, p0, Lcom/google/protobuf/jpush/e;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/jpush/e;->c:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/google/protobuf/jpush/e;->b:I

    iget v2, p0, Lcom/google/protobuf/jpush/e;->c:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/protobuf/jpush/e;->a:[B

    iget v3, p0, Lcom/google/protobuf/jpush/e;->c:I

    invoke-virtual {p2, v2, v6, v3, v1}, Lcom/google/protobuf/jpush/c;->a([BIII)V

    add-int/lit8 v2, v1, 0x0

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/jpush/e;->b:I

    iput v1, p0, Lcom/google/protobuf/jpush/e;->c:I

    invoke-direct {p0}, Lcom/google/protobuf/jpush/e;->b()V

    iget v1, p0, Lcom/google/protobuf/jpush/e;->b:I

    if-gt v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/protobuf/jpush/e;->a:[B

    invoke-virtual {p2, v1, v2, v6, v0}, Lcom/google/protobuf/jpush/c;->a([BIII)V

    iput v0, p0, Lcom/google/protobuf/jpush/e;->c:I

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/google/protobuf/jpush/c;->c()Ljava/io/InputStream;

    move-result-object v1

    int-to-long v4, v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-eqz v2, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/google/protobuf/jpush/e;->z:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v2, p0, Lcom/google/protobuf/jpush/e;->d:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/google/protobuf/jpush/e;->a:[B

    invoke-virtual {v2, v4, v6, v3}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr v0, v3

    :cond_4
    if-lez v0, :cond_0

    iget v2, p0, Lcom/google/protobuf/jpush/e;->b:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/google/protobuf/jpush/e;->a:[B

    invoke-virtual {v1, v3, v6, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-eq v3, v2, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/google/protobuf/jpush/e;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(ILcom/google/protobuf/jpush/k;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/jpush/e;->e(II)V

    invoke-interface {p2}, Lcom/google/protobuf/jpush/k;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/jpush/e;->d(I)V

    invoke-interface {p2, p0}, Lcom/google/protobuf/jpush/k;->a(Lcom/google/protobuf/jpush/e;)V

    return-void
.end method

.method public final b(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/jpush/e;->e(II)V

    invoke-direct {p0, p2}, Lcom/google/protobuf/jpush/e;->d(I)V

    return-void
.end method
