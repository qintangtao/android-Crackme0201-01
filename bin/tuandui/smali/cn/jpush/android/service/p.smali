.class final Lcn/jpush/android/service/p;
.super Ljava/lang/Object;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field a:Lcn/jpush/b/a/a/g;

.field b:I

.field c:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v12, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v4, v12, [Ljava/lang/String;

    const-string v3, "\u001d\u0017qd&DRpum"

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

    move v14, v7

    move-object v7, v3

    move v3, v14

    :goto_1
    aget-char v13, v7, v8

    rem-int/lit8 v11, v10, 0x5

    packed-switch v11, :pswitch_data_0

    const/16 v11, 0x57

    :goto_2
    xor-int/2addr v11, v13

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

    const-string v0, "jefp\"TDwh9Vj#,wE^nd8DC9"

    move-object v3, v0

    move v4, v2

    move-object v5, v6

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v3, v5, v4

    const/4 v3, 0x2

    const-string v0, "\u001d\u0017wh:TD9"

    move v4, v3

    move-object v5, v6

    move-object v3, v0

    move v0, v2

    goto :goto_0

    :pswitch_1
    aput-object v3, v5, v4

    sput-object v6, Lcn/jpush/android/service/p;->z:[Ljava/lang/String;

    return-void

    :pswitch_2
    const/16 v11, 0x31

    goto :goto_2

    :pswitch_3
    const/16 v11, 0x37

    goto :goto_2

    :pswitch_4
    move v11, v12

    goto :goto_2

    :pswitch_5
    move v11, v2

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

.method public constructor <init>(Lcn/jpush/b/a/a/g;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/jpush/android/service/p;->c:I

    iput-object p1, p0, Lcn/jpush/android/service/p;->a:Lcn/jpush/b/a/a/g;

    iput p2, p0, Lcn/jpush/android/service/p;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Lcn/jpush/android/service/p;->b:I

    add-int/lit16 v0, v0, -0x2710

    iput v0, p0, Lcn/jpush/android/service/p;->b:I

    iget v0, p0, Lcn/jpush/android/service/p;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jpush/android/service/p;->c:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/p;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/jpush/android/service/p;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/p;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/jpush/android/service/p;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/p;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/android/service/p;->a:Lcn/jpush/b/a/a/g;

    invoke-virtual {v1}, Lcn/jpush/b/a/a/g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
