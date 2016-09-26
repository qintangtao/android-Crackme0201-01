.class public final Lcn/jpush/b/a/a/d;
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

    const-string v3, "{N\"\u0018fYNi\u0015fCM(\u0018m\u000eF&\u0004)^A;\u0005`@Gi\u001fgLO<\u0018m\u0000"

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

    const/16 v11, 0x9

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

    const-string v0, "ZO=\u0017e\u000eB0\u0002l]\u0000dV"

    move-object v3, v0

    move v4, v2

    move-object v5, v6

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v3, v5, v4

    const/4 v3, 0x2

    const-string v0, "^A;\u0005lJ\u0000!\u0013hJ\u0000dV"

    move v4, v3

    move-object v5, v6

    move-object v3, v0

    move v0, v2

    goto :goto_0

    :pswitch_1
    aput-object v3, v5, v4

    sput-object v6, Lcn/jpush/b/a/a/d;->z:[Ljava/lang/String;

    return-void

    :pswitch_2
    const/16 v11, 0x2e

    goto :goto_2

    :pswitch_3
    const/16 v11, 0x20

    goto :goto_2

    :pswitch_4
    const/16 v11, 0x49

    goto :goto_2

    :pswitch_5
    const/16 v11, 0x76

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

.method public static a([B)Lcn/jpush/b/a/a/h;
    .locals 6

    const/16 v3, 0x14

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/b/a/a/d;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcn/jpush/b/a/c/c;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p0

    add-int/lit8 v0, v0, -0x14

    new-array v1, v3, [B

    invoke-static {p0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v2, v0, [B

    invoke-static {p0, v3, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    new-instance v3, Lcn/jpush/b/a/a/e;

    invoke-direct {v3, v5, v1}, Lcn/jpush/b/a/a/e;-><init>(Z[B)V

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/b/a/a/d;->z:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v1, v1, v4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcn/jpush/b/a/a/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcn/jpush/b/a/a/e;->c:I

    sparse-switch v0, :sswitch_data_0

    sget-object v0, Lcn/jpush/b/a/a/d;->z:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-static {v0}, Lcn/jpush/b/a/c/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    new-instance v0, Lcn/jpush/b/a/a/k;

    invoke-direct {v0, v3, v2}, Lcn/jpush/b/a/a/k;-><init>(Lcn/jpush/b/a/a/e;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcn/jpush/b/a/a/i;

    invoke-direct {v0, v3, v2}, Lcn/jpush/b/a/a/i;-><init>(Lcn/jpush/b/a/a/e;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcn/jpush/b/a/a/a;

    invoke-direct {v0, v3, v2}, Lcn/jpush/b/a/a/a;-><init>(Lcn/jpush/b/a/a/e;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcn/jpush/b/a/a/m;

    invoke-direct {v0, v3, v2}, Lcn/jpush/b/a/a/m;-><init>(Lcn/jpush/b/a/a/e;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcn/jpush/b/a/a/j;

    invoke-direct {v0, v3, v2}, Lcn/jpush/b/a/a/j;-><init>(Lcn/jpush/b/a/a/e;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcn/jpush/b/a/a/c;

    invoke-direct {v0, v3, v2}, Lcn/jpush/b/a/a/c;-><init>(Lcn/jpush/b/a/a/e;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_4
        0xa -> :sswitch_3
        0x13 -> :sswitch_2
        0x64 -> :sswitch_5
    .end sparse-switch
.end method
