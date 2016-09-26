.class public final Lcn/jpush/b/a/a/c;
.super Lcn/jpush/b/a/a/h;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field a:I

.field b:Lcn/jpush/b/a/b/p;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/String;

    const-string v4, ":zJ=8\u0017NJ32\u001dP\u001e\u0017w^\u0017"

    const/4 v0, -0x1

    move-object v6, v5

    move-object v7, v5

    move v5, v1

    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v8, v4

    if-gt v8, v2, :cond_2

    move v9, v1

    :cond_0
    move-object v10, v4

    move v11, v9

    move v14, v8

    move-object v8, v4

    move v4, v14

    :goto_1
    aget-char v13, v8, v9

    rem-int/lit8 v12, v11, 0x5

    packed-switch v12, :pswitch_data_0

    const/16 v12, 0x57

    :goto_2
    xor-int/2addr v12, v13

    int-to-char v12, v12

    aput-char v12, v8, v9

    add-int/lit8 v9, v11, 0x1

    if-nez v4, :cond_1

    move-object v8, v10

    move v11, v9

    move v9, v4

    goto :goto_1

    :cond_1
    move v8, v4

    move-object v4, v10

    :goto_3
    if-gt v8, v9, :cond_0

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    packed-switch v0, :pswitch_data_1

    aput-object v4, v6, v5

    const-string v0, "S\u001aJ"

    move-object v4, v0

    move v5, v2

    move-object v6, v7

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v4, v6, v5

    const-string v0, "(~\'-2\u0000G\u0005\u0011$\u0016jJRw\u0003E\u0005\u000b8\u0010X\u0006E"

    move-object v4, v0

    move v5, v3

    move-object v6, v7

    move v0, v2

    goto :goto_0

    :pswitch_1
    aput-object v4, v6, v5

    const/4 v4, 0x3

    const-string v0, "=b&3w<U\u0000\u001a4\u0007"

    move v5, v4

    move-object v6, v7

    move-object v4, v0

    move v0, v3

    goto :goto_0

    :pswitch_2
    aput-object v4, v6, v5

    sput-object v7, Lcn/jpush/b/a/a/c;->z:[Ljava/lang/String;

    return-void

    :pswitch_3
    const/16 v12, 0x73

    goto :goto_2

    :pswitch_4
    const/16 v12, 0x37

    goto :goto_2

    :pswitch_5
    const/16 v12, 0x6a

    goto :goto_2

    :pswitch_6
    const/16 v12, 0x7f

    goto :goto_2

    :cond_2
    move v9, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Lcn/jpush/b/a/a/e;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/jpush/b/a/a/h;-><init>(Lcn/jpush/b/a/a/e;Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public final a()Lcn/jpush/b/a/b/p;
    .locals 1

    iget-object v0, p0, Lcn/jpush/b/a/a/c;->b:Lcn/jpush/b/a/b/p;

    return-object v0
.end method

.method public final b()V
    .locals 4

    invoke-super {p0}, Lcn/jpush/b/a/a/h;->b()V

    iget-object v0, p0, Lcn/jpush/b/a/a/c;->b:Lcn/jpush/b/a/b/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/b/a/a/c;->b:Lcn/jpush/b/a/b/p;

    invoke-virtual {v0}, Lcn/jpush/b/a/b/p;->a()Lcn/jpush/a/a/z;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/a/a/z;->ae()[B

    move-result-object v0

    array-length v1, v0

    iput v1, p0, Lcn/jpush/b/a/a/c;->a:I

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/b/a/a/c;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/jpush/b/a/a/c;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/jpush/b/a/a/c;->a:I

    invoke-virtual {p0, v1}, Lcn/jpush/b/a/a/c;->b(I)V

    invoke-virtual {p0, v0}, Lcn/jpush/b/a/a/c;->a([B)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    invoke-super {p0}, Lcn/jpush/b/a/a/h;->c()V

    iget-object v0, p0, Lcn/jpush/b/a/a/c;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput v0, p0, Lcn/jpush/b/a/a/c;->a:I

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/b/a/a/c;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/jpush/b/a/a/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/jpush/b/a/a/c;->f:Ljava/nio/ByteBuffer;

    :try_start_0
    new-instance v1, Lcn/jpush/b/a/b/p;

    invoke-static {v0}, Lcn/jpush/b/a/c/a;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcn/jpush/b/a/b/p;-><init>([B)V

    iput-object v1, p0, Lcn/jpush/b/a/a/c;->b:Lcn/jpush/b/a/b/p;
    :try_end_0
    .catch Lcom/google/protobuf/jpush/j; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/protobuf/jpush/j;->printStackTrace()V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcn/jpush/b/a/a/c;->b:Lcn/jpush/b/a/b/p;

    if-nez v0, :cond_0

    sget-object v0, Lcn/jpush/b/a/a/c;->z:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/b/a/a/c;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/b/a/a/c;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcn/jpush/b/a/a/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/jpush/b/a/a/c;->b:Lcn/jpush/b/a/b/p;

    invoke-virtual {v0}, Lcn/jpush/b/a/b/p;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
