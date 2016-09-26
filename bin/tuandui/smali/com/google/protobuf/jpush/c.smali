.class public final Lcom/google/protobuf/jpush/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/protobuf/jpush/c;

.field private static final z:[Ljava/lang/String;


# instance fields
.field private final b:[B

.field private volatile c:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v2, "y0;\u0002W\u000c\n\u0012[O_\u0011\r_\u0000^\u0010\u0018KP"

    const/4 v0, -0x1

    move-object v5, v3

    move-object v6, v3

    move v3, v1

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v7, v2

    if-gt v7, v4, :cond_2

    move v8, v1

    :cond_0
    move-object v9, v2

    move v10, v8

    move v13, v7

    move-object v7, v2

    move v2, v13

    :goto_1
    aget-char v12, v7, v8

    rem-int/lit8 v11, v10, 0x5

    packed-switch v11, :pswitch_data_0

    const/16 v11, 0x6f

    :goto_2
    xor-int/2addr v11, v12

    int-to-char v11, v11

    aput-char v11, v7, v8

    add-int/lit8 v8, v10, 0x1

    if-nez v2, :cond_1

    move-object v7, v9

    move v10, v8

    move v8, v2

    goto :goto_1

    :cond_1
    move v7, v2

    move-object v2, v9

    :goto_3
    if-gt v7, v8, :cond_0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    packed-switch v0, :pswitch_data_1

    aput-object v2, v5, v3

    const-string v0, "y0;\u0002W"

    move-object v2, v0

    move v3, v4

    move-object v5, v6

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v2, v5, v3

    sput-object v6, Lcom/google/protobuf/jpush/c;->z:[Ljava/lang/String;

    new-instance v0, Lcom/google/protobuf/jpush/c;

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/protobuf/jpush/c;-><init>([B)V

    sput-object v0, Lcom/google/protobuf/jpush/c;->a:Lcom/google/protobuf/jpush/c;

    return-void

    :pswitch_1
    const/16 v11, 0x2c

    goto :goto_2

    :pswitch_2
    const/16 v11, 0x64

    goto :goto_2

    :pswitch_3
    const/16 v11, 0x7d

    goto :goto_2

    :pswitch_4
    const/16 v11, 0x2f

    goto :goto_2

    :cond_2
    move v8, v1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/jpush/c;->c:I

    iput-object p1, p0, Lcom/google/protobuf/jpush/c;->b:[B

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/protobuf/jpush/c;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/google/protobuf/jpush/c;

    sget-object v1, Lcom/google/protobuf/jpush/c;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/jpush/c;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    sget-object v2, Lcom/google/protobuf/jpush/c;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a([B)Lcom/google/protobuf/jpush/c;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/jpush/c;->a([BII)Lcom/google/protobuf/jpush/c;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Lcom/google/protobuf/jpush/c;
    .locals 2

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lcom/google/protobuf/jpush/c;

    invoke-direct {v1, v0}, Lcom/google/protobuf/jpush/c;-><init>([B)V

    return-object v1
.end method


# virtual methods
.method public final a(I)B
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/jpush/c;->b:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/jpush/c;->b:[B

    array-length v0, v0

    return v0
.end method

.method public final a([BIII)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/jpush/c;->b:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/protobuf/jpush/c;->b:[B

    sget-object v2, Lcom/google/protobuf/jpush/c;->z:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    sget-object v2, Lcom/google/protobuf/jpush/c;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final c()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/protobuf/jpush/c;->b:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/protobuf/jpush/c;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/protobuf/jpush/c;

    iget-object v2, p0, Lcom/google/protobuf/jpush/c;->b:[B

    array-length v3, v2

    iget-object v2, p1, Lcom/google/protobuf/jpush/c;->b:[B

    array-length v2, v2

    if-eq v3, v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/google/protobuf/jpush/c;->b:[B

    iget-object v5, p1, Lcom/google/protobuf/jpush/c;->b:[B

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-byte v6, v4, v2

    aget-byte v7, v5, v2

    if-eq v6, v7, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lcom/google/protobuf/jpush/c;->c:I

    if-nez v0, :cond_2

    iget-object v4, p0, Lcom/google/protobuf/jpush/c;->b:[B

    iget-object v0, p0, Lcom/google/protobuf/jpush/c;->b:[B

    array-length v2, v0

    const/4 v0, 0x0

    move v1, v0

    move v0, v2

    :goto_0
    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    aget-byte v3, v4, v1

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput v0, p0, Lcom/google/protobuf/jpush/c;->c:I

    :cond_2
    return v0
.end method
