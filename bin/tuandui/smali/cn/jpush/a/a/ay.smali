.class public final Lcn/jpush/a/a/ay;
.super Lcom/google/protobuf/jpush/h;


# static fields
.field private static final a:Lcn/jpush/a/a/ay;


# instance fields
.field private b:I

.field private c:J

.field private d:I

.field private e:I

.field private f:B

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Lcn/jpush/a/a/ay;

    invoke-direct {v0}, Lcn/jpush/a/a/ay;-><init>()V

    sput-object v0, Lcn/jpush/a/a/ay;->a:Lcn/jpush/a/a/ay;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcn/jpush/a/a/ay;->c:J

    iput v1, v0, Lcn/jpush/a/a/ay;->d:I

    iput v1, v0, Lcn/jpush/a/a/ay;->e:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/jpush/h;-><init>()V

    iput-byte v0, p0, Lcn/jpush/a/a/ay;->f:B

    iput v0, p0, Lcn/jpush/a/a/ay;->g:I

    return-void
.end method

.method private constructor <init>(Lcn/jpush/a/a/az;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/jpush/h;-><init>(B)V

    iput-byte v1, p0, Lcn/jpush/a/a/ay;->f:B

    iput v1, p0, Lcn/jpush/a/a/ay;->g:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/jpush/a/a/az;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/jpush/a/a/ay;-><init>(Lcn/jpush/a/a/az;)V

    return-void
.end method

.method static synthetic a(Lcn/jpush/a/a/ay;I)I
    .locals 0

    iput p1, p0, Lcn/jpush/a/a/ay;->d:I

    return p1
.end method

.method static synthetic a(Lcn/jpush/a/a/ay;J)J
    .locals 1

    iput-wide p1, p0, Lcn/jpush/a/a/ay;->c:J

    return-wide p1
.end method

.method public static a()Lcn/jpush/a/a/ay;
    .locals 1

    sget-object v0, Lcn/jpush/a/a/ay;->a:Lcn/jpush/a/a/ay;

    return-object v0
.end method

.method public static a(Lcn/jpush/a/a/ay;)Lcn/jpush/a/a/az;
    .locals 1

    invoke-static {}, Lcn/jpush/a/a/az;->b()Lcn/jpush/a/a/az;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jpush/a/a/az;->a(Lcn/jpush/a/a/ay;)Lcn/jpush/a/a/az;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcn/jpush/a/a/ay;I)I
    .locals 0

    iput p1, p0, Lcn/jpush/a/a/ay;->e:I

    return p1
.end method

.method static synthetic c(Lcn/jpush/a/a/ay;I)I
    .locals 0

    iput p1, p0, Lcn/jpush/a/a/ay;->b:I

    return p1
.end method

.method public static i()Lcn/jpush/a/a/az;
    .locals 1

    invoke-static {}, Lcn/jpush/a/a/az;->b()Lcn/jpush/a/a/az;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/jpush/e;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcn/jpush/a/a/ay;->c()I

    iget v0, p0, Lcn/jpush/a/a/ay;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget-wide v0, p0, Lcn/jpush/a/a/ay;->c:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/jpush/e;->a(IJ)V

    :cond_0
    iget v0, p0, Lcn/jpush/a/a/ay;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcn/jpush/a/a/ay;->d:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/jpush/e;->a(II)V

    :cond_1
    iget v0, p0, Lcn/jpush/a/a/ay;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcn/jpush/a/a/ay;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/jpush/e;->a(II)V

    :cond_2
    return-void
.end method

.method public final b()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcn/jpush/a/a/ay;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcn/jpush/a/a/ay;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcn/jpush/a/a/ay;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    iget-wide v0, p0, Lcn/jpush/a/a/ay;->c:J

    invoke-static {v2, v0, v1}, Lcom/google/protobuf/jpush/e;->b(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lcn/jpush/a/a/ay;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcn/jpush/a/a/ay;->d:I

    invoke-static {v3, v1}, Lcom/google/protobuf/jpush/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcn/jpush/a/a/ay;->b:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    iget v2, p0, Lcn/jpush/a/a/ay;->e:I

    invoke-static {v1, v2}, Lcom/google/protobuf/jpush/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iput v0, p0, Lcn/jpush/a/a/ay;->g:I

    goto :goto_0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcn/jpush/a/a/ay;->c:J

    return-wide v0
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/ay;->b:I

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

    iget v0, p0, Lcn/jpush/a/a/ay;->d:I

    return v0
.end method

.method public final g()Z
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/ay;->b:I

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

.method public final h()I
    .locals 1

    iget v0, p0, Lcn/jpush/a/a/ay;->e:I

    return v0
.end method
