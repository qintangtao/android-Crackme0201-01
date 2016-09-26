.class public final Lcn/jpush/a/a/m;
.super Lcom/google/protobuf/jpush/h;


# static fields
.field private static final a:Lcn/jpush/a/a/m;


# instance fields
.field private b:I

.field private c:J

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private f:B

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcn/jpush/a/a/m;

    invoke-direct {v0}, Lcn/jpush/a/a/m;-><init>()V

    sput-object v0, Lcn/jpush/a/a/m;->a:Lcn/jpush/a/a/m;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcn/jpush/a/a/m;->c:J

    const/4 v1, 0x0

    iput v1, v0, Lcn/jpush/a/a/m;->d:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcn/jpush/a/a/m;->e:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/jpush/h;-><init>()V

    iput-byte v0, p0, Lcn/jpush/a/a/m;->f:B

    iput v0, p0, Lcn/jpush/a/a/m;->g:I

    return-void
.end method

.method private constructor <init>(Lcn/jpush/a/a/n;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/jpush/h;-><init>(B)V

    iput-byte v1, p0, Lcn/jpush/a/a/m;->f:B

    iput v1, p0, Lcn/jpush/a/a/m;->g:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/jpush/a/a/n;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/jpush/a/a/m;-><init>(Lcn/jpush/a/a/n;)V

    return-void
.end method

.method static synthetic a(Lcn/jpush/a/a/m;I)I
    .locals 0

    iput p1, p0, Lcn/jpush/a/a/m;->d:I

    return p1
.end method

.method static synthetic a(Lcn/jpush/a/a/m;J)J
    .locals 1

    iput-wide p1, p0, Lcn/jpush/a/a/m;->c:J

    return-wide p1
.end method

.method public static a()Lcn/jpush/a/a/m;
    .locals 1

    sget-object v0, Lcn/jpush/a/a/m;->a:Lcn/jpush/a/a/m;

    return-object v0
.end method

.method public static a(Lcn/jpush/a/a/m;)Lcn/jpush/a/a/n;
    .locals 1

    invoke-static {}, Lcn/jpush/a/a/n;->e()Lcn/jpush/a/a/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jpush/a/a/n;->a(Lcn/jpush/a/a/m;)Lcn/jpush/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcn/jpush/a/a/m;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcn/jpush/a/a/m;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcn/jpush/a/a/m;I)I
    .locals 0

    iput p1, p0, Lcn/jpush/a/a/m;->b:I

    return p1
.end method

.method static synthetic b(Lcn/jpush/a/a/m;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcn/jpush/a/a/m;->e:Ljava/util/List;

    return-object v0
.end method

.method public static h()Lcn/jpush/a/a/n;
    .locals 1

    invoke-static {}, Lcn/jpush/a/a/n;->e()Lcn/jpush/a/a/n;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/jpush/e;)V
    .locals 6

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcn/jpush/a/a/m;->c()I

    iget v0, p0, Lcn/jpush/a/a/m;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget-wide v0, p0, Lcn/jpush/a/a/m;->c:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/jpush/e;->a(IJ)V

    :cond_0
    iget v0, p0, Lcn/jpush/a/a/m;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcn/jpush/a/a/m;->d:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/jpush/e;->a(II)V

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcn/jpush/a/a/m;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    const/4 v2, 0x3

    iget-object v0, p0, Lcn/jpush/a/a/m;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/jpush/e;->a(IJ)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final b()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcn/jpush/a/a/m;->b:I

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

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcn/jpush/a/a/m;->g:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/jpush/a/a/m;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_3

    iget-wide v2, p0, Lcn/jpush/a/a/m;->c:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/jpush/e;->b(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :goto_1
    iget v2, p0, Lcn/jpush/a/a/m;->b:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_2

    iget v2, p0, Lcn/jpush/a/a/m;->d:I

    invoke-static {v5, v2}, Lcom/google/protobuf/jpush/e;->c(II)I

    move-result v2

    add-int/2addr v0, v2

    move v2, v0

    :goto_2
    move v3, v1

    :goto_3
    iget-object v0, p0, Lcn/jpush/a/a/m;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcn/jpush/a/a/m;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/jpush/e;->a(J)I

    move-result v0

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    move v3, v0

    goto :goto_3

    :cond_1
    add-int v0, v2, v3

    iget-object v1, p0, Lcn/jpush/a/a/m;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/jpush/a/a/m;->g:I

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcn/jpush/a/a/m;->c:J

    return-wide v0
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/m;->b:I

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

    iget v0, p0, Lcn/jpush/a/a/m;->d:I

    return v0
.end method

.method public final g()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lcn/jpush/a/a/m;->f:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcn/jpush/a/a/m;->f:B

    goto :goto_0
.end method
