.class public abstract Lcn/jpush/b/a/a/h;
.super Lcn/jpush/b/a/a/f;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field public g:I

.field public h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string v3, "A{<ZN\u0002)c"

    const/4 v0, -0x1

    move-object v5, v4

    move-object v6, v4

    move v4, v1

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v7, v3

    if-gt v7, v2, :cond_2

    move v8, v1

    :cond_0
    move-object v9, v3

    move v10, v8

    move v13, v7

    move-object v7, v3

    move v3, v13

    :goto_1
    aget-char v12, v7, v8

    rem-int/lit8 v11, v10, 0x5

    packed-switch v11, :pswitch_data_0

    const/16 v11, 0x3c

    :goto_2
    xor-int/2addr v11, v12

    int-to-char v11, v11

    aput-char v11, v7, v8

    add-int/lit8 v8, v10, 0x1

    if-nez v3, :cond_1

    move-object v7, v9

    move v10, v8

    move v8, v3

    goto :goto_1

    :cond_1
    move v7, v3

    move-object v3, v9

    :goto_3
    if-gt v7, v8, :cond_0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    packed-switch v0, :pswitch_data_1

    aput-object v3, v5, v4

    const-string v0, "Mvy"

    move-object v3, v0

    move v4, v2

    move-object v5, v6

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v3, v5, v4

    const/4 v3, 0x2

    const-string v0, "6\u0011\u000bMO\u001d47[Y0{t\u0008_\u0002?<\u0012"

    move v4, v3

    move-object v5, v6

    move-object v3, v0

    move v0, v2

    goto :goto_0

    :pswitch_1
    aput-object v3, v5, v4

    sput-object v6, Lcn/jpush/b/a/a/h;->z:[Ljava/lang/String;

    return-void

    :pswitch_2
    const/16 v11, 0x6d

    goto :goto_2

    :pswitch_3
    const/16 v11, 0x5b

    goto :goto_2

    :pswitch_4
    const/16 v11, 0x59

    goto :goto_2

    :pswitch_5
    const/16 v11, 0x28

    goto :goto_2

    :cond_2
    move v8, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(IIJJILjava/lang/String;)V
    .locals 11

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0xa

    const/4 v7, -0x1

    move-object v1, p0

    move-wide v5, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lcn/jpush/b/a/a/f;-><init>(ZIIJIJ)V

    move/from16 v0, p7

    iput v0, p0, Lcn/jpush/b/a/a/h;->g:I

    move-object/from16 v0, p8

    iput-object v0, p0, Lcn/jpush/b/a/a/h;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcn/jpush/b/a/a/e;Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcn/jpush/b/a/a/f;-><init>(ZLcn/jpush/b/a/a/e;Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 1

    iget v0, p0, Lcn/jpush/b/a/a/h;->g:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcn/jpush/b/a/a/h;->g:I

    invoke-virtual {p0, v0}, Lcn/jpush/b/a/a/h;->b(I)V

    iget v0, p0, Lcn/jpush/b/a/a/h;->g:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/jpush/b/a/a/h;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/jpush/b/a/a/h;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected c()V
    .locals 2

    invoke-virtual {p0}, Lcn/jpush/b/a/a/h;->d()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/jpush/b/a/a/h;->f:Ljava/nio/ByteBuffer;

    invoke-static {v0, p0}, Lcn/jpush/android/util/g;->b(Ljava/nio/ByteBuffer;Lcn/jpush/b/a/a/h;)S

    move-result v0

    iput v0, p0, Lcn/jpush/b/a/a/h;->g:I

    iget v0, p0, Lcn/jpush/b/a/a/h;->g:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/jpush/b/a/a/h;->f:Ljava/nio/ByteBuffer;

    invoke-static {v0, p0}, Lcn/jpush/b/a/c/a;->a(Ljava/nio/ByteBuffer;Lcn/jpush/b/a/a/h;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/b/a/a/h;->h:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/b/a/a/h;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/jpush/b/a/a/h;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcn/jpush/b/a/a/h;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/b/a/a/h;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcn/jpush/b/a/a/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/b/a/a/h;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jpush/b/a/a/h;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
