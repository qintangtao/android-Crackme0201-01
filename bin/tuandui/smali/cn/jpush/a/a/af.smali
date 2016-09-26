.class public final Lcn/jpush/a/a/af;
.super Lcom/google/protobuf/jpush/h;


# static fields
.field private static final a:Lcn/jpush/a/a/af;


# instance fields
.field private b:I

.field private c:I

.field private d:Lcom/google/protobuf/jpush/c;

.field private e:B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/jpush/a/a/af;

    invoke-direct {v0}, Lcn/jpush/a/a/af;-><init>()V

    sput-object v0, Lcn/jpush/a/a/af;->a:Lcn/jpush/a/a/af;

    const/4 v1, 0x0

    iput v1, v0, Lcn/jpush/a/a/af;->c:I

    sget-object v1, Lcom/google/protobuf/jpush/c;->a:Lcom/google/protobuf/jpush/c;

    iput-object v1, v0, Lcn/jpush/a/a/af;->d:Lcom/google/protobuf/jpush/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/jpush/h;-><init>()V

    iput-byte v0, p0, Lcn/jpush/a/a/af;->e:B

    iput v0, p0, Lcn/jpush/a/a/af;->f:I

    return-void
.end method

.method private constructor <init>(Lcn/jpush/a/a/ag;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/jpush/h;-><init>(B)V

    iput-byte v1, p0, Lcn/jpush/a/a/af;->e:B

    iput v1, p0, Lcn/jpush/a/a/af;->f:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/jpush/a/a/ag;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/jpush/a/a/af;-><init>(Lcn/jpush/a/a/ag;)V

    return-void
.end method

.method static synthetic a(Lcn/jpush/a/a/af;I)I
    .locals 0

    iput p1, p0, Lcn/jpush/a/a/af;->c:I

    return p1
.end method

.method public static a()Lcn/jpush/a/a/af;
    .locals 1

    sget-object v0, Lcn/jpush/a/a/af;->a:Lcn/jpush/a/a/af;

    return-object v0
.end method

.method public static a(Lcn/jpush/a/a/af;)Lcn/jpush/a/a/ag;
    .locals 1

    invoke-static {}, Lcn/jpush/a/a/ag;->b()Lcn/jpush/a/a/ag;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jpush/a/a/ag;->a(Lcn/jpush/a/a/af;)Lcn/jpush/a/a/ag;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcn/jpush/a/a/af;Lcom/google/protobuf/jpush/c;)Lcom/google/protobuf/jpush/c;
    .locals 0

    iput-object p1, p0, Lcn/jpush/a/a/af;->d:Lcom/google/protobuf/jpush/c;

    return-object p1
.end method

.method static synthetic b(Lcn/jpush/a/a/af;I)I
    .locals 0

    iput p1, p0, Lcn/jpush/a/a/af;->b:I

    return p1
.end method

.method public static g()Lcn/jpush/a/a/ag;
    .locals 1

    invoke-static {}, Lcn/jpush/a/a/ag;->b()Lcn/jpush/a/a/ag;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/jpush/e;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcn/jpush/a/a/af;->c()I

    iget v0, p0, Lcn/jpush/a/a/af;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcn/jpush/a/a/af;->c:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/jpush/e;->a(II)V

    :cond_0
    iget v0, p0, Lcn/jpush/a/a/af;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcn/jpush/a/a/af;->d:Lcom/google/protobuf/jpush/c;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/jpush/e;->a(ILcom/google/protobuf/jpush/c;)V

    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcn/jpush/a/a/af;->b:I

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

    iget v0, p0, Lcn/jpush/a/a/af;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcn/jpush/a/a/af;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    iget v0, p0, Lcn/jpush/a/a/af;->c:I

    invoke-static {v2, v0}, Lcom/google/protobuf/jpush/e;->c(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lcn/jpush/a/a/af;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcn/jpush/a/a/af;->d:Lcom/google/protobuf/jpush/c;

    invoke-static {v3, v1}, Lcom/google/protobuf/jpush/e;->b(ILcom/google/protobuf/jpush/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iput v0, p0, Lcn/jpush/a/a/af;->f:I

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcn/jpush/a/a/af;->c:I

    return v0
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/af;->b:I

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

    iget-object v0, p0, Lcn/jpush/a/a/af;->d:Lcom/google/protobuf/jpush/c;

    return-object v0
.end method
