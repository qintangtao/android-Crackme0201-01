.class public final Lcom/google/protobuf/jpush/m;
.super Ljava/lang/RuntimeException;


# static fields
.field private static final z:Ljava/lang/String;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "U*?\u00069\u007f*l\u00029ko!\u001c+k&\"\u0012xj*=\u00001j*(U>q* \u0011+6ol]\u0014q;)U*m!8\u001c5}o/\u001a-t+l\u001b7lo(\u0010,}=!\u001c6}o;\u001d1{\'l\u00131}#(\u0006xo*>\u0010xu&?\u00061v(e["

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_2

    :cond_0
    move-object v3, v0

    move v4, v2

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_0
    aget-char v6, v1, v2

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_0

    const/16 v5, 0x58

    :goto_1
    xor-int/2addr v5, v6

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

    sput-object v0, Lcom/google/protobuf/jpush/m;->z:Ljava/lang/String;

    return-void

    :pswitch_0
    const/16 v5, 0x18

    goto :goto_1

    :pswitch_1
    const/16 v5, 0x4f

    goto :goto_1

    :pswitch_2
    const/16 v5, 0x4c

    goto :goto_1

    :pswitch_3
    const/16 v5, 0x75

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/google/protobuf/jpush/m;->z:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/jpush/m;->a:Ljava/util/List;

    return-void
.end method
