.class public Lcom/google/protobuf/jpush/Internal;
.super Ljava/lang/Object;


# static fields
.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string v3, "Y\u0017I\u0013+E;\u001f\u0016dv\u0005\u001f\u001cdgVL\u0007{c\u0019M\u0006+rVL\u0006j}\u0012^\u0000o3\u0015W\u0013yr\u0015K\u0017y3\u0005Z\u0006%"

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

    const/16 v11, 0xb

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

    const-string v0, "Z%p_3+C\u0006_:"

    move-object v3, v0

    move v4, v2

    move-object v5, v6

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v3, v5, v4

    const/4 v3, 0x2

    const-string v0, "F\"y_3"

    move v4, v3

    move-object v5, v6

    move-object v3, v0

    move v0, v2

    goto :goto_0

    :pswitch_1
    aput-object v3, v5, v4

    sput-object v6, Lcom/google/protobuf/jpush/Internal;->z:[Ljava/lang/String;

    return-void

    :pswitch_2
    const/16 v11, 0x13

    goto :goto_2

    :pswitch_3
    const/16 v11, 0x76

    goto :goto_2

    :pswitch_4
    const/16 v11, 0x3f

    goto :goto_2

    :pswitch_5
    const/16 v11, 0x72

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

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesDefaultValue(Ljava/lang/String;)Lcom/google/protobuf/jpush/c;
    .locals 4

    :try_start_0
    sget-object v0, Lcom/google/protobuf/jpush/Internal;->z:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/jpush/c;->a([B)Lcom/google/protobuf/jpush/c;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    sget-object v2, Lcom/google/protobuf/jpush/Internal;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static isValidUtf8(Lcom/google/protobuf/jpush/c;)Z
    .locals 9

    const/16 v8, 0xf4

    const/16 v7, 0xbf

    const/16 v6, 0x80

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/protobuf/jpush/c;->a()I

    move-result v4

    move v0, v2

    :cond_0
    :goto_0
    if-ge v0, v4, :cond_11

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/jpush/c;->a(I)B

    move-result v0

    and-int/lit16 v5, v0, 0xff

    if-lt v5, v6, :cond_13

    const/16 v0, 0xc2

    if-lt v5, v0, :cond_1

    if-le v5, v8, :cond_2

    :cond_1
    move v0, v2

    :goto_1
    return v0

    :cond_2
    if-lt v3, v4, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/google/protobuf/jpush/c;->a(I)B

    move-result v0

    and-int/lit16 v3, v0, 0xff

    if-lt v3, v6, :cond_4

    if-le v3, v7, :cond_5

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    const/16 v0, 0xdf

    if-le v5, v0, :cond_12

    if-lt v1, v4, :cond_6

    move v0, v2

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/jpush/c;->a(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-lt v1, v6, :cond_7

    if-le v1, v7, :cond_8

    :cond_7
    move v0, v2

    goto :goto_1

    :cond_8
    const/16 v1, 0xef

    if-gt v5, v1, :cond_b

    const/16 v1, 0xe0

    if-ne v5, v1, :cond_9

    const/16 v1, 0xa0

    if-lt v3, v1, :cond_a

    :cond_9
    const/16 v1, 0xed

    if-ne v5, v1, :cond_0

    const/16 v1, 0x9f

    if-le v3, v1, :cond_0

    :cond_a
    move v0, v2

    goto :goto_1

    :cond_b
    if-lt v0, v4, :cond_c

    move v0, v2

    goto :goto_1

    :cond_c
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/jpush/c;->a(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v6, :cond_d

    if-le v0, v7, :cond_e

    :cond_d
    move v0, v2

    goto :goto_1

    :cond_e
    const/16 v0, 0xf0

    if-ne v5, v0, :cond_f

    const/16 v0, 0x90

    if-lt v3, v0, :cond_10

    :cond_f
    if-ne v5, v8, :cond_12

    const/16 v0, 0x8f

    if-le v3, v0, :cond_12

    :cond_10
    move v0, v2

    goto :goto_1

    :cond_11
    const/4 v0, 0x1

    goto :goto_1

    :cond_12
    move v0, v1

    goto :goto_0

    :cond_13
    move v0, v3

    goto :goto_0
.end method

.method public static stringDefaultValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/protobuf/jpush/Internal;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/jpush/Internal;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    sget-object v2, Lcom/google/protobuf/jpush/Internal;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
