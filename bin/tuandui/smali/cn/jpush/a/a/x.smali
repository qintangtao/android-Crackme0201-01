.class public final Lcn/jpush/a/a/x;
.super Lcom/google/protobuf/jpush/h;


# static fields
.field private static final a:Lcn/jpush/a/a/x;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:B

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/jpush/a/a/x;

    invoke-direct {v0}, Lcn/jpush/a/a/x;-><init>()V

    sput-object v0, Lcn/jpush/a/a/x;->a:Lcn/jpush/a/a/x;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcn/jpush/a/a/x;->b:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/jpush/h;-><init>()V

    iput-byte v0, p0, Lcn/jpush/a/a/x;->c:B

    iput v0, p0, Lcn/jpush/a/a/x;->d:I

    return-void
.end method

.method private constructor <init>(Lcn/jpush/a/a/y;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/jpush/h;-><init>(B)V

    iput-byte v1, p0, Lcn/jpush/a/a/x;->c:B

    iput v1, p0, Lcn/jpush/a/a/x;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/jpush/a/a/y;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/jpush/a/a/x;-><init>(Lcn/jpush/a/a/y;)V

    return-void
.end method

.method public static a()Lcn/jpush/a/a/x;
    .locals 1

    sget-object v0, Lcn/jpush/a/a/x;->a:Lcn/jpush/a/a/x;

    return-object v0
.end method

.method public static a(Lcn/jpush/a/a/x;)Lcn/jpush/a/a/y;
    .locals 1

    invoke-static {}, Lcn/jpush/a/a/y;->b()Lcn/jpush/a/a/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jpush/a/a/y;->a(Lcn/jpush/a/a/x;)Lcn/jpush/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcn/jpush/a/a/x;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcn/jpush/a/a/x;->b:Ljava/util/List;

    return-object p1
.end method

.method public static b()Lcn/jpush/a/a/y;
    .locals 1

    invoke-static {}, Lcn/jpush/a/a/y;->b()Lcn/jpush/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcn/jpush/a/a/x;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcn/jpush/a/a/x;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/jpush/e;)V
    .locals 3

    invoke-virtual {p0}, Lcn/jpush/a/a/x;->c()I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcn/jpush/a/a/x;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v2, 0x1

    iget-object v0, p0, Lcn/jpush/a/a/x;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/jpush/e;->a(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcn/jpush/a/a/x;->d:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v1, v0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcn/jpush/a/a/x;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcn/jpush/a/a/x;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/jpush/e;->a(I)I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x0

    iget-object v1, p0, Lcn/jpush/a/a/x;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/jpush/a/a/x;->d:I

    goto :goto_0
.end method
