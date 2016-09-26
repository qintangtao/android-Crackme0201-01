.class public final Lcn/jpush/a/a/z;
.super Lcom/google/protobuf/jpush/h;


# static fields
.field private static final a:Lcn/jpush/a/a/z;


# instance fields
.field private b:I

.field private c:Lcn/jpush/a/a/ad;

.field private d:Lcn/jpush/a/a/ab;

.field private e:B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/jpush/a/a/z;

    invoke-direct {v0}, Lcn/jpush/a/a/z;-><init>()V

    sput-object v0, Lcn/jpush/a/a/z;->a:Lcn/jpush/a/a/z;

    invoke-static {}, Lcn/jpush/a/a/ad;->a()Lcn/jpush/a/a/ad;

    move-result-object v1

    iput-object v1, v0, Lcn/jpush/a/a/z;->c:Lcn/jpush/a/a/ad;

    invoke-static {}, Lcn/jpush/a/a/ab;->a()Lcn/jpush/a/a/ab;

    move-result-object v1

    iput-object v1, v0, Lcn/jpush/a/a/z;->d:Lcn/jpush/a/a/ab;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/jpush/h;-><init>()V

    iput-byte v0, p0, Lcn/jpush/a/a/z;->e:B

    iput v0, p0, Lcn/jpush/a/a/z;->f:I

    return-void
.end method

.method private constructor <init>(Lcn/jpush/a/a/aa;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/jpush/h;-><init>(B)V

    iput-byte v1, p0, Lcn/jpush/a/a/z;->e:B

    iput v1, p0, Lcn/jpush/a/a/z;->f:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/jpush/a/a/aa;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/jpush/a/a/z;-><init>(Lcn/jpush/a/a/aa;)V

    return-void
.end method

.method static synthetic a(Lcn/jpush/a/a/z;I)I
    .locals 0

    iput p1, p0, Lcn/jpush/a/a/z;->b:I

    return p1
.end method

.method static synthetic a(Lcn/jpush/a/a/z;Lcn/jpush/a/a/ab;)Lcn/jpush/a/a/ab;
    .locals 0

    iput-object p1, p0, Lcn/jpush/a/a/z;->d:Lcn/jpush/a/a/ab;

    return-object p1
.end method

.method static synthetic a(Lcn/jpush/a/a/z;Lcn/jpush/a/a/ad;)Lcn/jpush/a/a/ad;
    .locals 0

    iput-object p1, p0, Lcn/jpush/a/a/z;->c:Lcn/jpush/a/a/ad;

    return-object p1
.end method

.method public static a()Lcn/jpush/a/a/z;
    .locals 1

    sget-object v0, Lcn/jpush/a/a/z;->a:Lcn/jpush/a/a/z;

    return-object v0
.end method

.method public static a([B)Lcn/jpush/a/a/z;
    .locals 3

    invoke-static {}, Lcn/jpush/a/a/aa;->b()Lcn/jpush/a/a/aa;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/protobuf/jpush/b;->a([BII)Lcom/google/protobuf/jpush/b;

    move-result-object v0

    check-cast v0, Lcn/jpush/a/a/aa;

    invoke-static {v0}, Lcn/jpush/a/a/aa;->a(Lcn/jpush/a/a/aa;)Lcn/jpush/a/a/z;

    move-result-object v0

    return-object v0
.end method

.method public static h()Lcn/jpush/a/a/aa;
    .locals 1

    invoke-static {}, Lcn/jpush/a/a/aa;->b()Lcn/jpush/a/a/aa;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/jpush/e;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcn/jpush/a/a/z;->c()I

    iget v0, p0, Lcn/jpush/a/a/z;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/jpush/a/a/z;->c:Lcn/jpush/a/a/ad;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/jpush/e;->a(ILcom/google/protobuf/jpush/k;)V

    :cond_0
    iget v0, p0, Lcn/jpush/a/a/z;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcn/jpush/a/a/z;->d:Lcn/jpush/a/a/ab;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/jpush/e;->a(ILcom/google/protobuf/jpush/k;)V

    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcn/jpush/a/a/z;->b:I

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

    iget v0, p0, Lcn/jpush/a/a/z;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcn/jpush/a/a/z;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcn/jpush/a/a/z;->c:Lcn/jpush/a/a/ad;

    invoke-static {v2, v0}, Lcom/google/protobuf/jpush/e;->b(ILcom/google/protobuf/jpush/k;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lcn/jpush/a/a/z;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcn/jpush/a/a/z;->d:Lcn/jpush/a/a/ab;

    invoke-static {v3, v1}, Lcom/google/protobuf/jpush/e;->b(ILcom/google/protobuf/jpush/k;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iput v0, p0, Lcn/jpush/a/a/z;->f:I

    goto :goto_0
.end method

.method public final d()Lcn/jpush/a/a/ad;
    .locals 1

    iget-object v0, p0, Lcn/jpush/a/a/z;->c:Lcn/jpush/a/a/ad;

    return-object v0
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/z;->b:I

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

.method public final f()Lcn/jpush/a/a/ab;
    .locals 1

    iget-object v0, p0, Lcn/jpush/a/a/z;->d:Lcn/jpush/a/a/ab;

    return-object v0
.end method

.method public final g()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lcn/jpush/a/a/z;->e:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcn/jpush/a/a/z;->e:B

    goto :goto_0
.end method
