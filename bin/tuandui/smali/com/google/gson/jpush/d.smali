.class public abstract enum Lcom/google/gson/jpush/d;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/gson/jpush/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gson/jpush/d;",
        ">;",
        "Lcom/google/gson/jpush/j;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/gson/jpush/d;

.field public static final enum b:Lcom/google/gson/jpush/d;

.field public static final enum c:Lcom/google/gson/jpush/d;

.field public static final enum d:Lcom/google/gson/jpush/d;

.field public static final enum e:Lcom/google/gson/jpush/d;

.field private static final synthetic f:[Lcom/google/gson/jpush/d;

.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "\u001a\u0010/zM\t\u001c9lZ\t\u00081kW\t\n6{Z\u0004\u000c;pM\u0013\u000c"

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

    const/16 v9, 0x1f

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

    const-string v1, "\u0003\u000f(zM\t\u001c9rZ\u001a\u0000;~L\u0013\u0000/vK\u001e\u0000+o^\u0015\u001a+"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "\u0003\u000f(zM\t\u001c9rZ\u001a\u0000;~L\u0013"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "\u001a\u0010/zM\t\u001c9lZ\t\u00081kW\t\u001b9lW\u0013\u000c"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "\u001f\u001b=qK\u001f\u000b!"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    sput-object v4, Lcom/google/gson/jpush/d;->z:[Ljava/lang/String;

    new-instance v0, Lcom/google/gson/jpush/e;

    sget-object v1, Lcom/google/gson/jpush/d;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/gson/jpush/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/jpush/d;->a:Lcom/google/gson/jpush/d;

    new-instance v0, Lcom/google/gson/jpush/f;

    sget-object v1, Lcom/google/gson/jpush/d;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/gson/jpush/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/jpush/d;->b:Lcom/google/gson/jpush/d;

    new-instance v0, Lcom/google/gson/jpush/g;

    sget-object v1, Lcom/google/gson/jpush/d;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/gson/jpush/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/jpush/d;->c:Lcom/google/gson/jpush/d;

    new-instance v0, Lcom/google/gson/jpush/h;

    sget-object v1, Lcom/google/gson/jpush/d;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/gson/jpush/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/jpush/d;->d:Lcom/google/gson/jpush/d;

    new-instance v0, Lcom/google/gson/jpush/i;

    sget-object v1, Lcom/google/gson/jpush/d;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/gson/jpush/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/jpush/d;->e:Lcom/google/gson/jpush/d;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/gson/jpush/d;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/gson/jpush/d;->a:Lcom/google/gson/jpush/d;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/gson/jpush/d;->b:Lcom/google/gson/jpush/d;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/gson/jpush/d;->c:Lcom/google/gson/jpush/d;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/gson/jpush/d;->d:Lcom/google/gson/jpush/d;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/gson/jpush/d;->e:Lcom/google/gson/jpush/d;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gson/jpush/d;->f:[Lcom/google/gson/jpush/d;

    return-void

    :pswitch_4
    const/16 v9, 0x56

    goto/16 :goto_2

    :pswitch_5
    const/16 v9, 0x5f

    goto/16 :goto_2

    :pswitch_6
    const/16 v9, 0x78

    goto/16 :goto_2

    :pswitch_7
    const/16 v9, 0x3f

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/gson/jpush/d;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_1
    return-object p0

    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gson/jpush/d;
    .locals 1

    const-class v0, Lcom/google/gson/jpush/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gson/jpush/d;

    return-object v0
.end method

.method public static values()[Lcom/google/gson/jpush/d;
    .locals 1

    sget-object v0, Lcom/google/gson/jpush/d;->f:[Lcom/google/gson/jpush/d;

    invoke-virtual {v0}, [Lcom/google/gson/jpush/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gson/jpush/d;

    return-object v0
.end method
