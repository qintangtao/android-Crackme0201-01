.class public final Lcn/jpush/a/a/bg;
.super Lcom/google/protobuf/jpush/h;


# static fields
.field private static final a:Lcn/jpush/a/a/bg;


# instance fields
.field private b:I

.field private c:Lcom/google/protobuf/jpush/c;

.field private d:Lcom/google/protobuf/jpush/c;

.field private e:Lcom/google/protobuf/jpush/c;

.field private f:B

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/jpush/a/a/bg;

    invoke-direct {v0}, Lcn/jpush/a/a/bg;-><init>()V

    sput-object v0, Lcn/jpush/a/a/bg;->a:Lcn/jpush/a/a/bg;

    sget-object v1, Lcom/google/protobuf/jpush/c;->a:Lcom/google/protobuf/jpush/c;

    iput-object v1, v0, Lcn/jpush/a/a/bg;->c:Lcom/google/protobuf/jpush/c;

    sget-object v1, Lcom/google/protobuf/jpush/c;->a:Lcom/google/protobuf/jpush/c;

    iput-object v1, v0, Lcn/jpush/a/a/bg;->d:Lcom/google/protobuf/jpush/c;

    sget-object v1, Lcom/google/protobuf/jpush/c;->a:Lcom/google/protobuf/jpush/c;

    iput-object v1, v0, Lcn/jpush/a/a/bg;->e:Lcom/google/protobuf/jpush/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/jpush/h;-><init>()V

    iput-byte v0, p0, Lcn/jpush/a/a/bg;->f:B

    iput v0, p0, Lcn/jpush/a/a/bg;->g:I

    return-void
.end method

.method private constructor <init>(Lcn/jpush/a/a/bh;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/jpush/h;-><init>(B)V

    iput-byte v1, p0, Lcn/jpush/a/a/bg;->f:B

    iput v1, p0, Lcn/jpush/a/a/bg;->g:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/jpush/a/a/bh;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/jpush/a/a/bg;-><init>(Lcn/jpush/a/a/bh;)V

    return-void
.end method

.method static synthetic a(Lcn/jpush/a/a/bg;I)I
    .locals 0

    iput p1, p0, Lcn/jpush/a/a/bg;->b:I

    return p1
.end method

.method public static a()Lcn/jpush/a/a/bg;
    .locals 1

    sget-object v0, Lcn/jpush/a/a/bg;->a:Lcn/jpush/a/a/bg;

    return-object v0
.end method

.method public static a(Lcn/jpush/a/a/bg;)Lcn/jpush/a/a/bh;
    .locals 1

    invoke-static {}, Lcn/jpush/a/a/bh;->e()Lcn/jpush/a/a/bh;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jpush/a/a/bh;->a(Lcn/jpush/a/a/bg;)Lcn/jpush/a/a/bh;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcn/jpush/a/a/bg;Lcom/google/protobuf/jpush/c;)Lcom/google/protobuf/jpush/c;
    .locals 0

    iput-object p1, p0, Lcn/jpush/a/a/bg;->c:Lcom/google/protobuf/jpush/c;

    return-object p1
.end method

.method static synthetic b(Lcn/jpush/a/a/bg;Lcom/google/protobuf/jpush/c;)Lcom/google/protobuf/jpush/c;
    .locals 0

    iput-object p1, p0, Lcn/jpush/a/a/bg;->d:Lcom/google/protobuf/jpush/c;

    return-object p1
.end method

.method static synthetic c(Lcn/jpush/a/a/bg;Lcom/google/protobuf/jpush/c;)Lcom/google/protobuf/jpush/c;
    .locals 0

    iput-object p1, p0, Lcn/jpush/a/a/bg;->e:Lcom/google/protobuf/jpush/c;

    return-object p1
.end method

.method public static j()Lcn/jpush/a/a/bh;
    .locals 1

    invoke-static {}, Lcn/jpush/a/a/bh;->e()Lcn/jpush/a/a/bh;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/jpush/e;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcn/jpush/a/a/bg;->c()I

    iget v0, p0, Lcn/jpush/a/a/bg;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/jpush/a/a/bg;->c:Lcom/google/protobuf/jpush/c;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/jpush/e;->a(ILcom/google/protobuf/jpush/c;)V

    :cond_0
    iget v0, p0, Lcn/jpush/a/a/bg;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcn/jpush/a/a/bg;->d:Lcom/google/protobuf/jpush/c;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/jpush/e;->a(ILcom/google/protobuf/jpush/c;)V

    :cond_1
    iget v0, p0, Lcn/jpush/a/a/bg;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcn/jpush/a/a/bg;->e:Lcom/google/protobuf/jpush/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/jpush/e;->a(ILcom/google/protobuf/jpush/c;)V

    :cond_2
    return-void
.end method

.method public final b()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcn/jpush/a/a/bg;->b:I

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

    iget v0, p0, Lcn/jpush/a/a/bg;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcn/jpush/a/a/bg;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcn/jpush/a/a/bg;->c:Lcom/google/protobuf/jpush/c;

    invoke-static {v2, v0}, Lcom/google/protobuf/jpush/e;->b(ILcom/google/protobuf/jpush/c;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lcn/jpush/a/a/bg;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcn/jpush/a/a/bg;->d:Lcom/google/protobuf/jpush/c;

    invoke-static {v3, v1}, Lcom/google/protobuf/jpush/e;->b(ILcom/google/protobuf/jpush/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcn/jpush/a/a/bg;->b:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    iget-object v2, p0, Lcn/jpush/a/a/bg;->e:Lcom/google/protobuf/jpush/c;

    invoke-static {v1, v2}, Lcom/google/protobuf/jpush/e;->b(ILcom/google/protobuf/jpush/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iput v0, p0, Lcn/jpush/a/a/bg;->g:I

    goto :goto_0
.end method

.method public final d()Lcom/google/protobuf/jpush/c;
    .locals 1

    iget-object v0, p0, Lcn/jpush/a/a/bg;->c:Lcom/google/protobuf/jpush/c;

    return-object v0
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/bg;->b:I

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

    iget-object v0, p0, Lcn/jpush/a/a/bg;->d:Lcom/google/protobuf/jpush/c;

    return-object v0
.end method

.method public final g()Z
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/bg;->b:I

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

    iget-object v0, p0, Lcn/jpush/a/a/bg;->e:Lcom/google/protobuf/jpush/c;

    return-object v0
.end method

.method public final i()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lcn/jpush/a/a/bg;->f:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcn/jpush/a/a/bg;->f:B

    goto :goto_0
.end method
