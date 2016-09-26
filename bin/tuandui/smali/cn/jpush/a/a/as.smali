.class public final Lcn/jpush/a/a/as;
.super Lcom/google/protobuf/jpush/h;


# static fields
.field private static final a:Lcn/jpush/a/a/as;


# instance fields
.field private b:I

.field private c:I

.field private d:J

.field private e:B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcn/jpush/a/a/as;

    invoke-direct {v0}, Lcn/jpush/a/a/as;-><init>()V

    sput-object v0, Lcn/jpush/a/a/as;->a:Lcn/jpush/a/a/as;

    const/4 v1, 0x0

    iput v1, v0, Lcn/jpush/a/a/as;->c:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcn/jpush/a/a/as;->d:J

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/jpush/h;-><init>()V

    iput-byte v0, p0, Lcn/jpush/a/a/as;->e:B

    iput v0, p0, Lcn/jpush/a/a/as;->f:I

    return-void
.end method

.method private constructor <init>(Lcn/jpush/a/a/at;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/jpush/h;-><init>(B)V

    iput-byte v1, p0, Lcn/jpush/a/a/as;->e:B

    iput v1, p0, Lcn/jpush/a/a/as;->f:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/jpush/a/a/at;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/jpush/a/a/as;-><init>(Lcn/jpush/a/a/at;)V

    return-void
.end method

.method static synthetic a(Lcn/jpush/a/a/as;I)I
    .locals 0

    iput p1, p0, Lcn/jpush/a/a/as;->c:I

    return p1
.end method

.method static synthetic a(Lcn/jpush/a/a/as;J)J
    .locals 1

    iput-wide p1, p0, Lcn/jpush/a/a/as;->d:J

    return-wide p1
.end method

.method public static a()Lcn/jpush/a/a/as;
    .locals 1

    sget-object v0, Lcn/jpush/a/a/as;->a:Lcn/jpush/a/a/as;

    return-object v0
.end method

.method public static a(Lcn/jpush/a/a/as;)Lcn/jpush/a/a/at;
    .locals 1

    invoke-static {}, Lcn/jpush/a/a/at;->e()Lcn/jpush/a/a/at;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jpush/a/a/at;->a(Lcn/jpush/a/a/as;)Lcn/jpush/a/a/at;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcn/jpush/a/a/as;I)I
    .locals 0

    iput p1, p0, Lcn/jpush/a/a/as;->b:I

    return p1
.end method

.method public static h()Lcn/jpush/a/a/at;
    .locals 1

    invoke-static {}, Lcn/jpush/a/a/at;->e()Lcn/jpush/a/a/at;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/jpush/e;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcn/jpush/a/a/as;->c()I

    iget v0, p0, Lcn/jpush/a/a/as;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcn/jpush/a/a/as;->c:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/jpush/e;->a(II)V

    :cond_0
    iget v0, p0, Lcn/jpush/a/a/as;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    iget-wide v0, p0, Lcn/jpush/a/a/as;->d:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/jpush/e;->a(IJ)V

    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcn/jpush/a/a/as;->b:I

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

    const/4 v4, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcn/jpush/a/a/as;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcn/jpush/a/a/as;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    iget v0, p0, Lcn/jpush/a/a/as;->c:I

    invoke-static {v2, v0}, Lcom/google/protobuf/jpush/e;->c(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lcn/jpush/a/a/as;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_2

    iget-wide v2, p0, Lcn/jpush/a/a/as;->d:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/jpush/e;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iput v0, p0, Lcn/jpush/a/a/as;->f:I

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcn/jpush/a/a/as;->c:I

    return v0
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/as;->b:I

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

    iget-wide v0, p0, Lcn/jpush/a/a/as;->d:J

    return-wide v0
.end method

.method public final g()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lcn/jpush/a/a/as;->e:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcn/jpush/a/a/as;->e:B

    goto :goto_0
.end method
