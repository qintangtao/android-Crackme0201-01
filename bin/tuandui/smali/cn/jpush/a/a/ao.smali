.class public final Lcn/jpush/a/a/ao;
.super Lcom/google/protobuf/jpush/h;


# static fields
.field private static final a:Lcn/jpush/a/a/ao;


# instance fields
.field private b:I

.field private c:J

.field private d:J

.field private e:J

.field private f:I

.field private g:Lcn/jpush/a/a/bg;

.field private h:I

.field private i:I

.field private j:B

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    new-instance v0, Lcn/jpush/a/a/ao;

    invoke-direct {v0}, Lcn/jpush/a/a/ao;-><init>()V

    sput-object v0, Lcn/jpush/a/a/ao;->a:Lcn/jpush/a/a/ao;

    iput-wide v4, v0, Lcn/jpush/a/a/ao;->c:J

    iput-wide v4, v0, Lcn/jpush/a/a/ao;->d:J

    iput-wide v4, v0, Lcn/jpush/a/a/ao;->e:J

    iput v2, v0, Lcn/jpush/a/a/ao;->f:I

    invoke-static {}, Lcn/jpush/a/a/bg;->a()Lcn/jpush/a/a/bg;

    move-result-object v1

    iput-object v1, v0, Lcn/jpush/a/a/ao;->g:Lcn/jpush/a/a/bg;

    iput v2, v0, Lcn/jpush/a/a/ao;->h:I

    iput v2, v0, Lcn/jpush/a/a/ao;->i:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/jpush/h;-><init>()V

    iput-byte v0, p0, Lcn/jpush/a/a/ao;->j:B

    iput v0, p0, Lcn/jpush/a/a/ao;->k:I

    return-void
.end method

.method private constructor <init>(Lcn/jpush/a/a/ap;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/jpush/h;-><init>(B)V

    iput-byte v1, p0, Lcn/jpush/a/a/ao;->j:B

    iput v1, p0, Lcn/jpush/a/a/ao;->k:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/jpush/a/a/ap;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/jpush/a/a/ao;-><init>(Lcn/jpush/a/a/ap;)V

    return-void
.end method

.method static synthetic a(Lcn/jpush/a/a/ao;I)I
    .locals 0

    iput p1, p0, Lcn/jpush/a/a/ao;->f:I

    return p1
.end method

.method static synthetic a(Lcn/jpush/a/a/ao;J)J
    .locals 1

    iput-wide p1, p0, Lcn/jpush/a/a/ao;->c:J

    return-wide p1
.end method

.method public static a()Lcn/jpush/a/a/ao;
    .locals 1

    sget-object v0, Lcn/jpush/a/a/ao;->a:Lcn/jpush/a/a/ao;

    return-object v0
.end method

.method static synthetic a(Lcn/jpush/a/a/ao;Lcn/jpush/a/a/bg;)Lcn/jpush/a/a/bg;
    .locals 0

    iput-object p1, p0, Lcn/jpush/a/a/ao;->g:Lcn/jpush/a/a/bg;

    return-object p1
.end method

.method static synthetic b(Lcn/jpush/a/a/ao;I)I
    .locals 0

    iput p1, p0, Lcn/jpush/a/a/ao;->h:I

    return p1
.end method

.method static synthetic b(Lcn/jpush/a/a/ao;J)J
    .locals 1

    iput-wide p1, p0, Lcn/jpush/a/a/ao;->d:J

    return-wide p1
.end method

.method static synthetic c(Lcn/jpush/a/a/ao;I)I
    .locals 0

    iput p1, p0, Lcn/jpush/a/a/ao;->i:I

    return p1
.end method

.method static synthetic c(Lcn/jpush/a/a/ao;J)J
    .locals 1

    iput-wide p1, p0, Lcn/jpush/a/a/ao;->e:J

    return-wide p1
.end method

.method static synthetic d(Lcn/jpush/a/a/ao;I)I
    .locals 0

    iput p1, p0, Lcn/jpush/a/a/ao;->b:I

    return p1
.end method

.method public static r()Lcn/jpush/a/a/ap;
    .locals 1

    invoke-static {}, Lcn/jpush/a/a/ap;->e()Lcn/jpush/a/a/ap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/jpush/e;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcn/jpush/a/a/ao;->c()I

    iget v0, p0, Lcn/jpush/a/a/ao;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget-wide v0, p0, Lcn/jpush/a/a/ao;->c:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/jpush/e;->a(IJ)V

    :cond_0
    iget v0, p0, Lcn/jpush/a/a/ao;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    iget-wide v0, p0, Lcn/jpush/a/a/ao;->d:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/jpush/e;->a(IJ)V

    :cond_1
    iget v0, p0, Lcn/jpush/a/a/ao;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    const/4 v0, 0x3

    iget-wide v2, p0, Lcn/jpush/a/a/ao;->e:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/jpush/e;->a(IJ)V

    :cond_2
    iget v0, p0, Lcn/jpush/a/a/ao;->b:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcn/jpush/a/a/ao;->f:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/jpush/e;->a(II)V

    :cond_3
    iget v0, p0, Lcn/jpush/a/a/ao;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcn/jpush/a/a/ao;->g:Lcn/jpush/a/a/bg;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/jpush/e;->a(ILcom/google/protobuf/jpush/k;)V

    :cond_4
    iget v0, p0, Lcn/jpush/a/a/ao;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    iget v1, p0, Lcn/jpush/a/a/ao;->h:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/jpush/e;->b(II)V

    :cond_5
    iget v0, p0, Lcn/jpush/a/a/ao;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    iget v1, p0, Lcn/jpush/a/a/ao;->i:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/jpush/e;->a(II)V

    :cond_6
    return-void
.end method

.method public final b()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcn/jpush/a/a/ao;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcn/jpush/a/a/ao;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcn/jpush/a/a/ao;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    iget-wide v0, p0, Lcn/jpush/a/a/ao;->c:J

    invoke-static {v2, v0, v1}, Lcom/google/protobuf/jpush/e;->b(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lcn/jpush/a/a/ao;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_2

    iget-wide v2, p0, Lcn/jpush/a/a/ao;->d:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/jpush/e;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcn/jpush/a/a/ao;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_3

    const/4 v1, 0x3

    iget-wide v2, p0, Lcn/jpush/a/a/ao;->e:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/jpush/e;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcn/jpush/a/a/ao;->b:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcn/jpush/a/a/ao;->f:I

    invoke-static {v5, v1}, Lcom/google/protobuf/jpush/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcn/jpush/a/a/ao;->b:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    iget-object v2, p0, Lcn/jpush/a/a/ao;->g:Lcn/jpush/a/a/bg;

    invoke-static {v1, v2}, Lcom/google/protobuf/jpush/e;->b(ILcom/google/protobuf/jpush/k;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcn/jpush/a/a/ao;->b:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    iget v2, p0, Lcn/jpush/a/a/ao;->h:I

    invoke-static {v1, v2}, Lcom/google/protobuf/jpush/e;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcn/jpush/a/a/ao;->b:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    iget v2, p0, Lcn/jpush/a/a/ao;->i:I

    invoke-static {v1, v2}, Lcom/google/protobuf/jpush/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iput v0, p0, Lcn/jpush/a/a/ao;->k:I

    goto :goto_0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcn/jpush/a/a/ao;->c:J

    return-wide v0
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/ao;->b:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lcn/jpush/a/a/ao;->d:J

    return-wide v0
.end method

.method public final g()Z
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/ao;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()J
    .locals 2

    iget-wide v0, p0, Lcn/jpush/a/a/ao;->e:J

    return-wide v0
.end method

.method public final i()Z
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/ao;->b:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lcn/jpush/a/a/ao;->f:I

    return v0
.end method

.method public final k()Z
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/ao;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Lcn/jpush/a/a/bg;
    .locals 1

    iget-object v0, p0, Lcn/jpush/a/a/ao;->g:Lcn/jpush/a/a/bg;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/ao;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()I
    .locals 1

    iget v0, p0, Lcn/jpush/a/a/ao;->h:I

    return v0
.end method

.method public final o()Z
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/ao;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()I
    .locals 1

    iget v0, p0, Lcn/jpush/a/a/ao;->i:I

    return v0
.end method

.method public final q()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lcn/jpush/a/a/ao;->j:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcn/jpush/a/a/ao;->j:B

    goto :goto_0
.end method
