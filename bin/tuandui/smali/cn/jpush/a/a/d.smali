.class public final Lcn/jpush/a/a/d;
.super Lcom/google/protobuf/jpush/h;


# static fields
.field private static final a:Lcn/jpush/a/a/d;


# instance fields
.field private b:I

.field private c:J

.field private d:Lcom/google/protobuf/jpush/c;

.field private e:Lcom/google/protobuf/jpush/c;

.field private f:I

.field private g:Lcom/google/protobuf/jpush/c;

.field private h:B

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcn/jpush/a/a/d;

    invoke-direct {v0}, Lcn/jpush/a/a/d;-><init>()V

    sput-object v0, Lcn/jpush/a/a/d;->a:Lcn/jpush/a/a/d;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcn/jpush/a/a/d;->c:J

    sget-object v1, Lcom/google/protobuf/jpush/c;->a:Lcom/google/protobuf/jpush/c;

    iput-object v1, v0, Lcn/jpush/a/a/d;->d:Lcom/google/protobuf/jpush/c;

    sget-object v1, Lcom/google/protobuf/jpush/c;->a:Lcom/google/protobuf/jpush/c;

    iput-object v1, v0, Lcn/jpush/a/a/d;->e:Lcom/google/protobuf/jpush/c;

    const/4 v1, 0x0

    iput v1, v0, Lcn/jpush/a/a/d;->f:I

    sget-object v1, Lcom/google/protobuf/jpush/c;->a:Lcom/google/protobuf/jpush/c;

    iput-object v1, v0, Lcn/jpush/a/a/d;->g:Lcom/google/protobuf/jpush/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/jpush/h;-><init>()V

    iput-byte v0, p0, Lcn/jpush/a/a/d;->h:B

    iput v0, p0, Lcn/jpush/a/a/d;->i:I

    return-void
.end method

.method private constructor <init>(Lcn/jpush/a/a/e;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/jpush/h;-><init>(B)V

    iput-byte v1, p0, Lcn/jpush/a/a/d;->h:B

    iput v1, p0, Lcn/jpush/a/a/d;->i:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/jpush/a/a/e;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/jpush/a/a/d;-><init>(Lcn/jpush/a/a/e;)V

    return-void
.end method

.method static synthetic a(Lcn/jpush/a/a/d;I)I
    .locals 0

    iput p1, p0, Lcn/jpush/a/a/d;->f:I

    return p1
.end method

.method static synthetic a(Lcn/jpush/a/a/d;J)J
    .locals 1

    iput-wide p1, p0, Lcn/jpush/a/a/d;->c:J

    return-wide p1
.end method

.method public static a()Lcn/jpush/a/a/d;
    .locals 1

    sget-object v0, Lcn/jpush/a/a/d;->a:Lcn/jpush/a/a/d;

    return-object v0
.end method

.method public static a(Lcn/jpush/a/a/d;)Lcn/jpush/a/a/e;
    .locals 1

    invoke-static {}, Lcn/jpush/a/a/e;->e()Lcn/jpush/a/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jpush/a/a/e;->a(Lcn/jpush/a/a/d;)Lcn/jpush/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcn/jpush/a/a/d;Lcom/google/protobuf/jpush/c;)Lcom/google/protobuf/jpush/c;
    .locals 0

    iput-object p1, p0, Lcn/jpush/a/a/d;->d:Lcom/google/protobuf/jpush/c;

    return-object p1
.end method

.method static synthetic b(Lcn/jpush/a/a/d;I)I
    .locals 0

    iput p1, p0, Lcn/jpush/a/a/d;->b:I

    return p1
.end method

.method static synthetic b(Lcn/jpush/a/a/d;Lcom/google/protobuf/jpush/c;)Lcom/google/protobuf/jpush/c;
    .locals 0

    iput-object p1, p0, Lcn/jpush/a/a/d;->e:Lcom/google/protobuf/jpush/c;

    return-object p1
.end method

.method static synthetic c(Lcn/jpush/a/a/d;Lcom/google/protobuf/jpush/c;)Lcom/google/protobuf/jpush/c;
    .locals 0

    iput-object p1, p0, Lcn/jpush/a/a/d;->g:Lcom/google/protobuf/jpush/c;

    return-object p1
.end method

.method public static n()Lcn/jpush/a/a/e;
    .locals 1

    invoke-static {}, Lcn/jpush/a/a/e;->e()Lcn/jpush/a/a/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/jpush/e;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcn/jpush/a/a/d;->c()I

    iget v0, p0, Lcn/jpush/a/a/d;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget-wide v0, p0, Lcn/jpush/a/a/d;->c:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/jpush/e;->a(IJ)V

    :cond_0
    iget v0, p0, Lcn/jpush/a/a/d;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcn/jpush/a/a/d;->d:Lcom/google/protobuf/jpush/c;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/jpush/e;->a(ILcom/google/protobuf/jpush/c;)V

    :cond_1
    iget v0, p0, Lcn/jpush/a/a/d;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcn/jpush/a/a/d;->e:Lcom/google/protobuf/jpush/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/jpush/e;->a(ILcom/google/protobuf/jpush/c;)V

    :cond_2
    iget v0, p0, Lcn/jpush/a/a/d;->b:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcn/jpush/a/a/d;->f:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/jpush/e;->a(II)V

    :cond_3
    iget v0, p0, Lcn/jpush/a/a/d;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcn/jpush/a/a/d;->g:Lcom/google/protobuf/jpush/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/jpush/e;->a(ILcom/google/protobuf/jpush/c;)V

    :cond_4
    return-void
.end method

.method public final b()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcn/jpush/a/a/d;->b:I

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

    iget v0, p0, Lcn/jpush/a/a/d;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcn/jpush/a/a/d;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    iget-wide v0, p0, Lcn/jpush/a/a/d;->c:J

    invoke-static {v2, v0, v1}, Lcom/google/protobuf/jpush/e;->b(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lcn/jpush/a/a/d;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcn/jpush/a/a/d;->d:Lcom/google/protobuf/jpush/c;

    invoke-static {v3, v1}, Lcom/google/protobuf/jpush/e;->b(ILcom/google/protobuf/jpush/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcn/jpush/a/a/d;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    const/4 v1, 0x3

    iget-object v2, p0, Lcn/jpush/a/a/d;->e:Lcom/google/protobuf/jpush/c;

    invoke-static {v1, v2}, Lcom/google/protobuf/jpush/e;->b(ILcom/google/protobuf/jpush/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcn/jpush/a/a/d;->b:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcn/jpush/a/a/d;->f:I

    invoke-static {v4, v1}, Lcom/google/protobuf/jpush/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcn/jpush/a/a/d;->b:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    iget-object v2, p0, Lcn/jpush/a/a/d;->g:Lcom/google/protobuf/jpush/c;

    invoke-static {v1, v2}, Lcom/google/protobuf/jpush/e;->b(ILcom/google/protobuf/jpush/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iput v0, p0, Lcn/jpush/a/a/d;->i:I

    goto :goto_0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcn/jpush/a/a/d;->c:J

    return-wide v0
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/d;->b:I

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

.method public final f()Lcom/google/protobuf/jpush/c;
    .locals 1

    iget-object v0, p0, Lcn/jpush/a/a/d;->d:Lcom/google/protobuf/jpush/c;

    return-object v0
.end method

.method public final g()Z
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/d;->b:I

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

.method public final h()Lcom/google/protobuf/jpush/c;
    .locals 1

    iget-object v0, p0, Lcn/jpush/a/a/d;->e:Lcom/google/protobuf/jpush/c;

    return-object v0
.end method

.method public final i()Z
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/d;->b:I

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

    iget v0, p0, Lcn/jpush/a/a/d;->f:I

    return v0
.end method

.method public final k()Z
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/d;->b:I

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

.method public final l()Lcom/google/protobuf/jpush/c;
    .locals 1

    iget-object v0, p0, Lcn/jpush/a/a/d;->g:Lcom/google/protobuf/jpush/c;

    return-object v0
.end method

.method public final m()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lcn/jpush/a/a/d;->h:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcn/jpush/a/a/d;->h:B

    goto :goto_0
.end method
