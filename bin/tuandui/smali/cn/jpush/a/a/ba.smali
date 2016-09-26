.class public final Lcn/jpush/a/a/ba;
.super Lcom/google/protobuf/jpush/h;


# static fields
.field private static final a:Lcn/jpush/a/a/ba;


# instance fields
.field private b:I

.field private c:J

.field private d:I

.field private e:J

.field private f:J

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/google/protobuf/jpush/c;

.field private i:I

.field private j:I

.field private k:I

.field private l:B

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    new-instance v0, Lcn/jpush/a/a/ba;

    invoke-direct {v0}, Lcn/jpush/a/a/ba;-><init>()V

    sput-object v0, Lcn/jpush/a/a/ba;->a:Lcn/jpush/a/a/ba;

    iput-wide v4, v0, Lcn/jpush/a/a/ba;->c:J

    iput v2, v0, Lcn/jpush/a/a/ba;->d:I

    iput-wide v4, v0, Lcn/jpush/a/a/ba;->e:J

    iput-wide v4, v0, Lcn/jpush/a/a/ba;->f:J

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcn/jpush/a/a/ba;->g:Ljava/util/List;

    sget-object v1, Lcom/google/protobuf/jpush/c;->a:Lcom/google/protobuf/jpush/c;

    iput-object v1, v0, Lcn/jpush/a/a/ba;->h:Lcom/google/protobuf/jpush/c;

    iput v2, v0, Lcn/jpush/a/a/ba;->i:I

    iput v2, v0, Lcn/jpush/a/a/ba;->j:I

    iput v2, v0, Lcn/jpush/a/a/ba;->k:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/jpush/h;-><init>()V

    iput-byte v0, p0, Lcn/jpush/a/a/ba;->l:B

    iput v0, p0, Lcn/jpush/a/a/ba;->m:I

    return-void
.end method

.method private constructor <init>(Lcn/jpush/a/a/bb;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/jpush/h;-><init>(B)V

    iput-byte v1, p0, Lcn/jpush/a/a/ba;->l:B

    iput v1, p0, Lcn/jpush/a/a/ba;->m:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/jpush/a/a/bb;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/jpush/a/a/ba;-><init>(Lcn/jpush/a/a/bb;)V

    return-void
.end method

.method static synthetic a(Lcn/jpush/a/a/ba;I)I
    .locals 0

    iput p1, p0, Lcn/jpush/a/a/ba;->d:I

    return p1
.end method

.method static synthetic a(Lcn/jpush/a/a/ba;J)J
    .locals 1

    iput-wide p1, p0, Lcn/jpush/a/a/ba;->c:J

    return-wide p1
.end method

.method public static a()Lcn/jpush/a/a/ba;
    .locals 1

    sget-object v0, Lcn/jpush/a/a/ba;->a:Lcn/jpush/a/a/ba;

    return-object v0
.end method

.method public static a(Lcn/jpush/a/a/ba;)Lcn/jpush/a/a/bb;
    .locals 1

    invoke-static {}, Lcn/jpush/a/a/bb;->e()Lcn/jpush/a/a/bb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jpush/a/a/bb;->a(Lcn/jpush/a/a/ba;)Lcn/jpush/a/a/bb;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcn/jpush/a/a/ba;Lcom/google/protobuf/jpush/c;)Lcom/google/protobuf/jpush/c;
    .locals 0

    iput-object p1, p0, Lcn/jpush/a/a/ba;->h:Lcom/google/protobuf/jpush/c;

    return-object p1
.end method

.method static synthetic a(Lcn/jpush/a/a/ba;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcn/jpush/a/a/ba;->g:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcn/jpush/a/a/ba;I)I
    .locals 0

    iput p1, p0, Lcn/jpush/a/a/ba;->i:I

    return p1
.end method

.method static synthetic b(Lcn/jpush/a/a/ba;J)J
    .locals 1

    iput-wide p1, p0, Lcn/jpush/a/a/ba;->e:J

    return-wide p1
.end method

.method static synthetic b(Lcn/jpush/a/a/ba;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcn/jpush/a/a/ba;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcn/jpush/a/a/ba;I)I
    .locals 0

    iput p1, p0, Lcn/jpush/a/a/ba;->j:I

    return p1
.end method

.method static synthetic c(Lcn/jpush/a/a/ba;J)J
    .locals 1

    iput-wide p1, p0, Lcn/jpush/a/a/ba;->f:J

    return-wide p1
.end method

.method static synthetic d(Lcn/jpush/a/a/ba;I)I
    .locals 0

    iput p1, p0, Lcn/jpush/a/a/ba;->k:I

    return p1
.end method

.method static synthetic e(Lcn/jpush/a/a/ba;I)I
    .locals 0

    iput p1, p0, Lcn/jpush/a/a/ba;->b:I

    return p1
.end method

.method public static t()Lcn/jpush/a/a/bb;
    .locals 1

    invoke-static {}, Lcn/jpush/a/a/bb;->e()Lcn/jpush/a/a/bb;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/jpush/e;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcn/jpush/a/a/ba;->c()I

    iget v0, p0, Lcn/jpush/a/a/ba;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget-wide v0, p0, Lcn/jpush/a/a/ba;->c:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/jpush/e;->a(IJ)V

    :cond_0
    iget v0, p0, Lcn/jpush/a/a/ba;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcn/jpush/a/a/ba;->d:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/jpush/e;->a(II)V

    :cond_1
    iget v0, p0, Lcn/jpush/a/a/ba;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    const/4 v0, 0x3

    iget-wide v2, p0, Lcn/jpush/a/a/ba;->e:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/jpush/e;->a(IJ)V

    :cond_2
    iget v0, p0, Lcn/jpush/a/a/ba;->b:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v6, :cond_3

    iget-wide v0, p0, Lcn/jpush/a/a/ba;->f:J

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/jpush/e;->a(IJ)V

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcn/jpush/a/a/ba;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    const/4 v2, 0x5

    iget-object v0, p0, Lcn/jpush/a/a/ba;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/jpush/e;->a(IJ)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    iget v0, p0, Lcn/jpush/a/a/ba;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    iget-object v1, p0, Lcn/jpush/a/a/ba;->h:Lcom/google/protobuf/jpush/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/jpush/e;->a(ILcom/google/protobuf/jpush/c;)V

    :cond_5
    iget v0, p0, Lcn/jpush/a/a/ba;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    iget v1, p0, Lcn/jpush/a/a/ba;->i:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/jpush/e;->b(II)V

    :cond_6
    iget v0, p0, Lcn/jpush/a/a/ba;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcn/jpush/a/a/ba;->j:I

    invoke-virtual {p1, v6, v0}, Lcom/google/protobuf/jpush/e;->a(II)V

    :cond_7
    iget v0, p0, Lcn/jpush/a/a/ba;->b:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_8

    const/16 v0, 0x9

    iget v1, p0, Lcn/jpush/a/a/ba;->k:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/jpush/e;->a(II)V

    :cond_8
    return-void
.end method

.method public final b()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcn/jpush/a/a/ba;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcn/jpush/a/a/ba;->m:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/jpush/a/a/ba;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_9

    iget-wide v2, p0, Lcn/jpush/a/a/ba;->c:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/jpush/e;->b(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :goto_1
    iget v2, p0, Lcn/jpush/a/a/ba;->b:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_1

    iget v2, p0, Lcn/jpush/a/a/ba;->d:I

    invoke-static {v5, v2}, Lcom/google/protobuf/jpush/e;->c(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget v2, p0, Lcn/jpush/a/a/ba;->b:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_2

    const/4 v2, 0x3

    iget-wide v4, p0, Lcn/jpush/a/a/ba;->e:J

    invoke-static {v2, v4, v5}, Lcom/google/protobuf/jpush/e;->b(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget v2, p0, Lcn/jpush/a/a/ba;->b:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v7, :cond_8

    iget-wide v2, p0, Lcn/jpush/a/a/ba;->f:J

    invoke-static {v6, v2, v3}, Lcom/google/protobuf/jpush/e;->b(IJ)I

    move-result v2

    add-int/2addr v0, v2

    move v2, v0

    :goto_2
    move v3, v1

    :goto_3
    iget-object v0, p0, Lcn/jpush/a/a/ba;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcn/jpush/a/a/ba;->g:Ljava/util/List;

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

    :cond_3
    add-int v0, v2, v3

    iget-object v1, p0, Lcn/jpush/a/a/ba;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iget v1, p0, Lcn/jpush/a/a/ba;->b:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    const/4 v1, 0x6

    iget-object v2, p0, Lcn/jpush/a/a/ba;->h:Lcom/google/protobuf/jpush/c;

    invoke-static {v1, v2}, Lcom/google/protobuf/jpush/e;->b(ILcom/google/protobuf/jpush/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcn/jpush/a/a/ba;->b:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    const/4 v1, 0x7

    iget v2, p0, Lcn/jpush/a/a/ba;->i:I

    invoke-static {v1, v2}, Lcom/google/protobuf/jpush/e;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcn/jpush/a/a/ba;->b:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    iget v1, p0, Lcn/jpush/a/a/ba;->j:I

    invoke-static {v7, v1}, Lcom/google/protobuf/jpush/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcn/jpush/a/a/ba;->b:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_7

    const/16 v1, 0x9

    iget v2, p0, Lcn/jpush/a/a/ba;->k:I

    invoke-static {v1, v2}, Lcom/google/protobuf/jpush/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iput v0, p0, Lcn/jpush/a/a/ba;->m:I

    goto/16 :goto_0

    :cond_8
    move v2, v0

    goto :goto_2

    :cond_9
    move v0, v1

    goto/16 :goto_1
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcn/jpush/a/a/ba;->c:J

    return-wide v0
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/ba;->b:I

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

    iget v0, p0, Lcn/jpush/a/a/ba;->d:I

    return v0
.end method

.method public final g()Z
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/ba;->b:I

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

    iget-wide v0, p0, Lcn/jpush/a/a/ba;->e:J

    return-wide v0
.end method

.method public final i()Z
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/ba;->b:I

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

.method public final j()J
    .locals 2

    iget-wide v0, p0, Lcn/jpush/a/a/ba;->f:J

    return-wide v0
.end method

.method public final k()Z
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/ba;->b:I

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

    iget-object v0, p0, Lcn/jpush/a/a/ba;->h:Lcom/google/protobuf/jpush/c;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/ba;->b:I

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

    iget v0, p0, Lcn/jpush/a/a/ba;->i:I

    return v0
.end method

.method public final o()Z
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/ba;->b:I

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

    iget v0, p0, Lcn/jpush/a/a/ba;->j:I

    return v0
.end method

.method public final q()Z
    .locals 2

    iget v0, p0, Lcn/jpush/a/a/ba;->b:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final r()I
    .locals 1

    iget v0, p0, Lcn/jpush/a/a/ba;->k:I

    return v0
.end method

.method public final s()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lcn/jpush/a/a/ba;->l:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcn/jpush/a/a/ba;->l:B

    goto :goto_0
.end method
