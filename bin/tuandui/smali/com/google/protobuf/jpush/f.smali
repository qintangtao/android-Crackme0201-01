.class public final Lcom/google/protobuf/jpush/f;
.super Ljava/io/IOException;


# static fields
.field private static final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "\u001f\ni$s\u0013\u0010y1b(6y3r=\u0008-6v/Ez3~(\u000cc&7(\n- 7:\tl57>\u001cy$7=\u0017\u007f n|\u0004c%7.\u0004cax)\u0011-.q|\u0016} t9K"

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

    const/16 v5, 0x17

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

    sput-object v0, Lcom/google/protobuf/jpush/f;->z:Ljava/lang/String;

    return-void

    :pswitch_0
    const/16 v5, 0x5c

    goto :goto_1

    :pswitch_1
    const/16 v5, 0x65

    goto :goto_1

    :pswitch_2
    const/16 v5, 0xd

    goto :goto_1

    :pswitch_3
    const/16 v5, 0x41

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

.method constructor <init>()V
    .locals 1

    sget-object v0, Lcom/google/protobuf/jpush/f;->z:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
