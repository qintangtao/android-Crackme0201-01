.class public abstract Lcn/jpush/b/a/a/f;
.super Ljava/lang/Object;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field private a:Z

.field protected e:Lcn/jpush/b/a/a/e;

.field protected f:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "f\u0008gbuR4qtX"

    const/4 v0, -0x1

    move-object v4, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gt v5, v7, :cond_2

    :cond_0
    move-object v7, v1

    move v8, v6

    move v11, v5

    move-object v5, v1

    move v1, v11

    :goto_1
    aget-char v10, v5, v6

    rem-int/lit8 v9, v8, 0x5

    packed-switch v9, :pswitch_data_0

    const/4 v9, 0x5

    :goto_2
    xor-int/2addr v9, v10

    int-to-char v9, v9

    aput-char v9, v5, v6

    add-int/lit8 v6, v8, 0x1

    if-nez v1, :cond_1

    move-object v5, v7

    move v8, v6

    move v6, v1

    goto :goto_1

    :cond_1
    move v5, v1

    move-object v1, v7

    :cond_2
    if-gt v5, v6, :cond_0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_1

    aput-object v1, v3, v2

    const/4 v2, 0x1

    const-string v1, "f\u0008g`pX)vL"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "\u001dw\""

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "s5\"sjY#\"ej\u001d*ccvXt"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "\u0011z`hqX)81"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "{3lpi\u001dw\"}`S`"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/b/a/a/f;->z:[Ljava/lang/String;

    return-void

    :pswitch_5
    const/16 v9, 0x3d

    goto :goto_2

    :pswitch_6
    const/16 v9, 0x5a

    goto :goto_2

    :pswitch_7
    const/4 v9, 0x2

    goto :goto_2

    :pswitch_8
    const/16 v9, 0x11

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public constructor <init>(ZIIJ)V
    .locals 6

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcn/jpush/b/a/a/f;->a:Z

    new-instance v0, Lcn/jpush/b/a/a/e;

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcn/jpush/b/a/a/e;-><init>(ZIIJ)V

    iput-object v0, p0, Lcn/jpush/b/a/a/f;->e:Lcn/jpush/b/a/a/e;

    const/16 v0, 0x1c00

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/b/a/a/f;->f:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(ZIIJIJ)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jpush/b/a/a/f;->a:Z

    new-instance v0, Lcn/jpush/b/a/a/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v7, -0x1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcn/jpush/b/a/a/e;-><init>(ZIIIJIJ)V

    iput-object v0, p0, Lcn/jpush/b/a/a/f;->e:Lcn/jpush/b/a/a/e;

    const/16 v0, 0x1c00

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/b/a/a/f;->f:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(ZLcn/jpush/b/a/a/e;Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jpush/b/a/a/f;->a:Z

    iput-object p2, p0, Lcn/jpush/b/a/a/f;->e:Lcn/jpush/b/a/a/e;

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcn/jpush/b/a/a/f;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcn/jpush/b/a/a/f;->c()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/jpush/b/a/a/f;->z:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-static {v0}, Lcn/jpush/b/a/c/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final a()[B
    .locals 5

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v0, p0, Lcn/jpush/b/a/a/f;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcn/jpush/b/a/a/f;->e:Lcn/jpush/b/a/a/e;

    iget-boolean v0, p0, Lcn/jpush/b/a/a/f;->a:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    :goto_0
    array-length v4, v2

    add-int/2addr v0, v4

    iput v0, v3, Lcn/jpush/b/a/a/e;->a:I

    :try_start_0
    iget-object v0, p0, Lcn/jpush/b/a/a/f;->e:Lcn/jpush/b/a/a/e;

    invoke-virtual {v0}, Lcn/jpush/b/a/a/e;->c()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/b/a/a/f;->z:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/b/a/a/f;->z:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcn/jpush/b/a/c/c;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0

    :cond_0
    const/16 v0, 0x14

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected final a(I)V
    .locals 2

    iget-object v0, p0, Lcn/jpush/b/a/a/f;->f:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected final a(J)V
    .locals 1

    iget-object v0, p0, Lcn/jpush/b/a/a/f;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/jpush/b/a/a/f;->f:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcn/jpush/b/a/c/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected final a([B)V
    .locals 1

    iget-object v0, p0, Lcn/jpush/b/a/a/f;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected abstract b()V
.end method

.method protected final b(I)V
    .locals 2

    iget-object v0, p0, Lcn/jpush/b/a/a/f;->f:Ljava/nio/ByteBuffer;

    int-to-short v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected abstract c()V
.end method

.method protected final c(I)V
    .locals 1

    iget-object v0, p0, Lcn/jpush/b/a/a/f;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcn/jpush/b/a/a/f;->e:Lcn/jpush/b/a/a/e;

    iget v0, v0, Lcn/jpush/b/a/a/e;->c:I

    return v0
.end method

.method public final e()Lcn/jpush/b/a/a/e;
    .locals 1

    iget-object v0, p0, Lcn/jpush/b/a/a/f;->e:Lcn/jpush/b/a/a/e;

    return-object v0
.end method

.method public final f()[B
    .locals 1

    iget-object v0, p0, Lcn/jpush/b/a/a/f;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {p0}, Lcn/jpush/b/a/a/f;->b()V

    iget-object v0, p0, Lcn/jpush/b/a/a/f;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-direct {p0}, Lcn/jpush/b/a/a/f;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcn/jpush/b/a/a/f;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jpush/b/a/a/f;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/b/a/a/f;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/b/a/a/f;->e:Lcn/jpush/b/a/a/e;

    invoke-virtual {v1}, Lcn/jpush/b/a/a/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcn/jpush/b/a/a/f;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    goto :goto_0
.end method
