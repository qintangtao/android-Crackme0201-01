.class public final Lcn/jpush/a/a/ad;
.super Lcom/google/protobuf/jpush/h;


# static fields
.field private static final a:Lcn/jpush/a/a/ad;


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:J

.field private f:Lcom/google/protobuf/jpush/c;

.field private g:Lcn/jpush/a/a/x;

.field private h:I

.field private i:B

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcn/jpush/a/a/ad;

    invoke-direct {v0}, Lcn/jpush/a/a/ad;-><init>()V

    sput-object v0, Lcn/jpush/a/a/ad;->a:Lcn/jpush/a/a/ad;

    iput v4, v0, Lcn/jpush/a/a/ad;->c:I

    iput v4, v0, Lcn/jpush/a/a/ad;->d:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcn/jpush/a/a/ad;->e:J

    sget-object v1, Lcom/google/protobuf/jpush/c;->a:Lcom/google/protobuf/jpush/c;

    iput-object v1, v0, Lcn/jpush/a/a/ad;->f:Lcom/google/protobuf/jpush/c;

    invoke-static {}, Lcn/jpush/a/a/x;->a()Lcn/jpush/a/a/x;

    move-result-object v1

    iput-object v1, v0, Lcn/jpush/a/a/ad;->g:Lcn/jpush/a/a/x;

    iput v4, v0, Lcn/jpush/a/a/ad;->h:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/jpush/h;-><init>()V

    iput-byte v0, p0, Lcn/jpush/a/a/ad;->i:B

    iput v0, p0, Lcn/jpush/a/a/ad;->j:I

    return-void
.end method

.method private constructor <init>(Lcn/jpush/a/a/ae;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/jpush/h;-><init>(B)V

    iput-byte v1, p0, Lcn/jpush/a/a/ad;->i:B

    iput v1, p0, Lcn/jpush/a/a/ad;->j:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/jpush/a/a/ae;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/jpush/a/a/ad;-><init>(Lcn/jpush/a/a/ae;)V

    return-void
.end method

.method static synthetic a(Lcn/jpush/a/a/ad;I)I
    .locals 0

    iput p1, p0, Lcn/jpush/a/a/ad;->c:I

    return p1
.end method

.method static synthetic a(Lcn/jpush/a/a/ad;J)J
    .locals 1

    iput-wide p1, p0, Lcn/jpush/a/a/ad;->e:J

    return-wide p1
.end method

.method public static a()Lcn/jpush/a/a/ad;
    .locals 1

    sget-object v0, Lcn/jpush/a/a/ad;->a:Lcn/jpush/a/a/ad;

    return-object v0
.end method

.method public static a(Lcn/jpush/a/a/ad;)Lcn/jpush/a/a/ae;
    .locals 1

    invoke-static {}, Lcn/jpush/a/a/ae;->e()Lcn/jpush/a/a/ae;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jpush/a/a/ae;->a(Lcn/jpush/a/a/ad;)Lcn/jpush/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcn/jpush/a/a/ad;Lcn/jpush/a/a/x;)Lcn/jpush/a/a/x;
    .locals 0

    iput-object p1, p0, Lcn/jpush/a/a/ad;->g:Lcn/jpush/a/a/x;

    return-object p1
.end method

.method static synthetic a(Lcn/jpush/a/a/ad;Lcom/google/protobuf/jpush/c;)Lcom/google/protobuf/jpush/c;
    .locals 0

    iput-object p1, p0, Lcn/jpush/a/a/ad;->f:Lcom/google/protobuf/jpush/c;

    return-object p1
.end method

.method static synthetic b(Lcn/jpush/a/a/ad;I)I
    .locals 0

    iput p1, p0, Lcn/jpush/a/a/ad;->d:I

    return p1
.end method

.method static synthetic c(Lcn/jpush/a/a/ad;I)I
    .locals 0

    iput p1, p0, Lcn/jpush/a/a/ad;->h:I

    return p1
.end method

.method static synthetic d(Lcn/jpush/a/a/ad;I)I
    .locals 0

    iput p1, p0, Lcn/jpush/a/a/ad;->b:I

    return p1
.end method

.method public static p()Lcn/jpush/a/a/ae;
    .locals 1

    invoke-static {}, Lcn/jpush/a/a/ae;->e()Lcn/jpush/a/a/ae;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/jpush/e;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcn/jpush/a/a/ad;->c()I

    iget v0, p0, Lcn/jpush/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcn/jpush/a/a/ad;->c:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/jpush/e;->a(II)V

    :cond_0
    iget v0, p0, Lcn/jpush/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcn/jpush/a/a/ad;->d:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/jpush/e;->a(II)V

    :cond_1
    iget v0, p0, Lcn/jpush/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    const/4 v0, 0x3

    iget-wide v2, p0, Lcn/jpush/a/a/ad;->e:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/jpush/e;->a(IJ)V

    :cond_2
    iget v0, p0, Lcn/jpush/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcn/jpush/a/a/ad;->f:Lcom/google/protobuf/jpush/c;

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/jpush/e;->a(ILcom/google/protobuf/jpush/c;)V

    :cond_3
    iget v0, p0, Lcn/jpush/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcn/jpush/a/a/ad;->g:Lcn/jpush/a/a/x;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/jpush/e;->a(ILcom/google/protobuf/jpush/k;)V

    :cond_4
    iget v0, p0, Lcn/jpush/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    iget v1, p0, Lcn/jpush/a/a/ad;->h:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/jpush/e;->a(II)V

    :cond_5
    return-void
.end method

.method public final b()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcn/jpush/a/a/ad;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcn/jpush/a/a/ad;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcn/jpush/a/a/ad;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    iget v0, p0, Lcn/jpush/a/a/ad;->c:I

    invoke-static {v2, v0}, Lcom/google/protobuf/jpush/e;->c(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lcn/jpush/a/a/ad;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcn/jpush/a/a/ad;->d:I

    invoke-static {v3, v1}, Lcom/google/protobuf/jpush/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcn/jpush/a/a/ad;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    const/4 v1, 0x3

    iget-wide v2, p0, Lcn/jpush/a/a/ad;->e:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/jpush/e;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcn/jpush/a/a/ad;->b:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcn/jpush/a/a/ad;->f:Lcom/google/protobuf/jpush/c;

    invoke-static {v4, v1}, Lcom/google/protobuf/jpush/e;->b(ILcom/google/protobuf/jpush/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcn/jpush/a/a/ad;->b:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    iget-object v2, p0, Lcn/jpush/a/a/ad;->g:Lcn/jpush/a/a/x;

    invoke-static {v1, v2}, Lcom/google/protobuf/jpush/e;->b(ILcom/google/protobuf/jpush/k;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcn/jpush/a/a/ad;->b:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    iget v2, p0, Lcn/jpush/a/a/ad;->h:I

    invoke-static {v1, v2}, Lcom/google/protobuf/jpush/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iput v0, p0, Lcn/jpush/a/a/ad;->j:I

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcn/jpush/a/a/ad;->c:I

    return v0
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/ad;->b:I

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

.method public final f()I
    .locals 1

    iget v0, p0, Lcn/jpush/a/a/ad;->d:I

    return v0
.end method

.method public final g()Z
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/ad;->b:I

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

    iget-wide v0, p0, Lcn/jpush/a/a/ad;->e:J

    return-wide v0
.end method

.method public final i()Z
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/ad;->b:I

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

.method public final j()Lcom/google/protobuf/jpush/c;
    .locals 1

    iget-object v0, p0, Lcn/jpush/a/a/ad;->f:Lcom/google/protobuf/jpush/c;

    return-object v0
.end method

.method public final k()Z
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/ad;->b:I

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

.method public final l()Lcn/jpush/a/a/x;
    .locals 1

    iget-object v0, p0, Lcn/jpush/a/a/ad;->g:Lcn/jpush/a/a/x;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/ad;->b:I

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

    iget v0, p0, Lcn/jpush/a/a/ad;->h:I

    return v0
.end method

.method public final o()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lcn/jpush/a/a/ad;->i:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcn/jpush/a/a/ad;->i:B

    goto :goto_0
.end method
