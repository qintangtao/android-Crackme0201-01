.class public abstract Lcom/google/protobuf/jpush/i;
.super Lcom/google/protobuf/jpush/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/jpush/h;",
        "BuilderType:",
        "Lcom/google/protobuf/jpush/i;",
        ">",
        "Lcom/google/protobuf/jpush/b",
        "<TBuilderType;>;"
    }
.end annotation


# static fields
.field private static final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v6, 0x1

    const-string v0, "\\iS9Far\u001a9\u0013xqU9\u0003l!N%Fjd\u001a%\u0010msH#\u0002ldTj\u0004q!I?\u0004km[9\u0015mr\u0014"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    if-gt v1, v6, :cond_2

    :cond_0
    move-object v3, v0

    move v4, v2

    move v8, v1

    move-object v1, v0

    move v0, v8

    :goto_0
    aget-char v7, v1, v2

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_0

    const/16 v5, 0x66

    :goto_1
    xor-int/2addr v5, v7

    int-to-char v5, v5

    aput-char v5, v1, v2

    add-int/lit8 v2, v4, 0x1

    if-nez v0, :cond_1

    move-object v1, v3

    move v4, v2

    move v2, v0

    goto :goto_0

    :cond_1
    move v1, v0

    move-object v0, v3

    :cond_2
    if-gt v1, v2, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/jpush/i;->z:Ljava/lang/String;

    return-void

    :pswitch_0
    const/16 v5, 0x8

    goto :goto_1

    :pswitch_1
    move v5, v6

    goto :goto_1

    :pswitch_2
    const/16 v5, 0x3a

    goto :goto_1

    :pswitch_3
    const/16 v5, 0x4a

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/jpush/b;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lcom/google/protobuf/jpush/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lcom/google/protobuf/jpush/i;->z:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/jpush/i;->c()Lcom/google/protobuf/jpush/i;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Lcom/google/protobuf/jpush/b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/jpush/i;->c()Lcom/google/protobuf/jpush/i;

    move-result-object v0

    return-object v0
.end method
