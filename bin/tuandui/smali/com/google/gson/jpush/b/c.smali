.class public final enum Lcom/google/gson/jpush/b/c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gson/jpush/b/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/gson/jpush/b/c;

.field public static final enum b:Lcom/google/gson/jpush/b/c;

.field public static final enum c:Lcom/google/gson/jpush/b/c;

.field public static final enum d:Lcom/google/gson/jpush/b/c;

.field public static final enum e:Lcom/google/gson/jpush/b/c;

.field public static final enum f:Lcom/google/gson/jpush/b/c;

.field public static final enum g:Lcom/google/gson/jpush/b/c;

.field public static final enum h:Lcom/google/gson/jpush/b/c;

.field public static final enum i:Lcom/google/gson/jpush/b/c;

.field public static final enum j:Lcom/google/gson/jpush/b/c;

.field private static final synthetic k:[Lcom/google/gson/jpush/b/c;

.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0xa

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "RW<d<XZ-v=YM"

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

    const/16 v9, 0x78

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

    const-string v1, "U\\?r6HV:q=TM"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "YX5~"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "U\\?r6HX*i9N"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "RW<d7US=x,"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "YL5y=E"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "UV7w=VW"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "YL4w"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "DM*r6P"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "RW<d9EK9b"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    sput-object v4, Lcom/google/gson/jpush/b/c;->z:[Ljava/lang/String;

    new-instance v0, Lcom/google/gson/jpush/b/c;

    sget-object v1, Lcom/google/gson/jpush/b/c;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/gson/jpush/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/jpush/b/c;->a:Lcom/google/gson/jpush/b/c;

    new-instance v0, Lcom/google/gson/jpush/b/c;

    sget-object v1, Lcom/google/gson/jpush/b/c;->z:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/gson/jpush/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/jpush/b/c;->b:Lcom/google/gson/jpush/b/c;

    new-instance v0, Lcom/google/gson/jpush/b/c;

    sget-object v1, Lcom/google/gson/jpush/b/c;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/gson/jpush/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/jpush/b/c;->c:Lcom/google/gson/jpush/b/c;

    new-instance v0, Lcom/google/gson/jpush/b/c;

    sget-object v1, Lcom/google/gson/jpush/b/c;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/gson/jpush/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/jpush/b/c;->d:Lcom/google/gson/jpush/b/c;

    new-instance v0, Lcom/google/gson/jpush/b/c;

    sget-object v1, Lcom/google/gson/jpush/b/c;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/gson/jpush/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/jpush/b/c;->e:Lcom/google/gson/jpush/b/c;

    new-instance v0, Lcom/google/gson/jpush/b/c;

    sget-object v1, Lcom/google/gson/jpush/b/c;->z:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/gson/jpush/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/jpush/b/c;->f:Lcom/google/gson/jpush/b/c;

    new-instance v0, Lcom/google/gson/jpush/b/c;

    sget-object v1, Lcom/google/gson/jpush/b/c;->z:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/gson/jpush/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/jpush/b/c;->g:Lcom/google/gson/jpush/b/c;

    new-instance v0, Lcom/google/gson/jpush/b/c;

    sget-object v1, Lcom/google/gson/jpush/b/c;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/gson/jpush/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/jpush/b/c;->h:Lcom/google/gson/jpush/b/c;

    new-instance v0, Lcom/google/gson/jpush/b/c;

    sget-object v1, Lcom/google/gson/jpush/b/c;->z:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/gson/jpush/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/jpush/b/c;->i:Lcom/google/gson/jpush/b/c;

    new-instance v0, Lcom/google/gson/jpush/b/c;

    sget-object v1, Lcom/google/gson/jpush/b/c;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/gson/jpush/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/jpush/b/c;->j:Lcom/google/gson/jpush/b/c;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/gson/jpush/b/c;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/gson/jpush/b/c;->a:Lcom/google/gson/jpush/b/c;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/gson/jpush/b/c;->b:Lcom/google/gson/jpush/b/c;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/gson/jpush/b/c;->c:Lcom/google/gson/jpush/b/c;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/gson/jpush/b/c;->d:Lcom/google/gson/jpush/b/c;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/gson/jpush/b/c;->e:Lcom/google/gson/jpush/b/c;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/gson/jpush/b/c;->f:Lcom/google/gson/jpush/b/c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/gson/jpush/b/c;->g:Lcom/google/gson/jpush/b/c;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/gson/jpush/b/c;->h:Lcom/google/gson/jpush/b/c;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/gson/jpush/b/c;->i:Lcom/google/gson/jpush/b/c;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/gson/jpush/b/c;->j:Lcom/google/gson/jpush/b/c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gson/jpush/b/c;->k:[Lcom/google/gson/jpush/b/c;

    return-void

    :pswitch_9
    const/16 v9, 0x17

    goto/16 :goto_2

    :pswitch_a
    const/16 v9, 0x19

    goto/16 :goto_2

    :pswitch_b
    const/16 v9, 0x78

    goto/16 :goto_2

    :pswitch_c
    const/16 v9, 0x3b

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gson/jpush/b/c;
    .locals 1

    const-class v0, Lcom/google/gson/jpush/b/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/b/c;

    return-object v0
.end method

.method public static values()[Lcom/google/gson/jpush/b/c;
    .locals 1

    sget-object v0, Lcom/google/gson/jpush/b/c;->k:[Lcom/google/gson/jpush/b/c;

    invoke-virtual {v0}, [Lcom/google/gson/jpush/b/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gson/jpush/b/c;

    return-object v0
.end method
