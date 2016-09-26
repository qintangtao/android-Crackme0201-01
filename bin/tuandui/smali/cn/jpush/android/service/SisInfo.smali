.class public Lcn/jpush/android/service/SisInfo;
.super Ljava/lang/Object;


# static fields
.field private static IPV4_PATTERN:Ljava/util/regex/Pattern;

.field private static final IPV4_REGEX:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final _gson:Lcom/google/gson/jpush/k;

.field private static final z:[Ljava/lang/String;


# instance fields
.field invalidSis:Z

.field ips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mainConnIp:Ljava/lang/String;

.field mainConnPort:I

.field op_conns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field optionConnIp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field optionConnPort:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field originSis:Ljava/lang/String;

.field ssl_ips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field ssl_op_conns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field udp_report:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x7

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "\u0003k]6E\u001a\u001e9]X\u0006z[}Y\u0007q{ZF\u0002?.43\u001bn2[3\u001bn?[4\u0005jz.Z\u001e\u00186+]v\u001f(/APp{.@ps+75\u0014\u00186+Qv87*ZVjz.Zps+25ps+?5\u0002?.4]ps+35\u0002j"

    const/4 v0, 0x6

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

    const/16 v9, 0x68

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

    :pswitch_0
    sput-object v1, Lcn/jpush/android/service/SisInfo;->IPV4_REGEX:Ljava/lang/String;

    const-string v1, "x*uO\u0006M,"

    const/4 v0, 0x7

    goto :goto_0

    :pswitch_1
    sput-object v1, Lcn/jpush/android/service/SisInfo;->TAG:Ljava/lang/String;

    const-string v1, "m\"oj\rOcriH[\"tu\r\u000b*vuE\u0019c+&\u000cN%gs\u0004_covF"

    const/4 v0, -0x1

    goto :goto_0

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

    const-string v1, "e,&t\r[,trHI\"em\u001d[covF"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "d-j\u007fHF\"ohHB3&o\u0006\u000b0ouF"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "~-c~\u0018N rc\u000c\u000bn&o\u0006]\"jo\u000c\u000b0ouH\u0006cov\u001b\u000b\"tt\tRcjc\u0006\u000b*u&X"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "~-c~\u0018N rc\u000c\u000bn&O\u0006]\"jo\u000c\u000b0ouH\u0006chiHB3u&\u0003N:("

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "m\"oj\rOcriH[\"tu\r\u000b,vY\u000bD-h&E\u000b"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "m\"oj\rOcriH[\"tu\r\u000b*vuE\u001ac+&\u0005J*h&\u0001[m"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/service/SisInfo;->z:[Ljava/lang/String;

    new-instance v0, Lcom/google/gson/jpush/k;

    invoke-direct {v0}, Lcom/google/gson/jpush/k;-><init>()V

    sput-object v0, Lcn/jpush/android/service/SisInfo;->_gson:Lcom/google/gson/jpush/k;

    sget-object v0, Lcn/jpush/android/service/SisInfo;->IPV4_REGEX:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/service/SisInfo;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    return-void

    :pswitch_8
    const/16 v9, 0x2b

    goto :goto_2

    :pswitch_9
    const/16 v9, 0x43

    goto :goto_2

    :pswitch_a
    const/4 v9, 0x6

    goto :goto_2

    :pswitch_b
    const/4 v9, 0x6

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/service/SisInfo;->optionConnIp:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/service/SisInfo;->optionConnPort:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jpush/android/service/SisInfo;->invalidSis:Z

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcn/jpush/android/service/SisInfo;
    .locals 2

    sget-object v0, Lcn/jpush/android/service/SisInfo;->_gson:Lcom/google/gson/jpush/k;

    const-class v1, Lcn/jpush/android/service/SisInfo;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/jpush/k;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/service/SisInfo;

    return-object v0
.end method

.method public static isValidIPV4(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcn/jpush/android/service/SisInfo;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public configure()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    iget-object v0, p0, Lcn/jpush/android/service/SisInfo;->ips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/jpush/android/service/SisInfo;->originSis:Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/a;->f(Ljava/lang/String;)V

    if-le v1, v5, :cond_2

    :try_start_0
    new-instance v2, Lcn/jpush/android/service/q;

    iget-object v0, p0, Lcn/jpush/android/service/SisInfo;->ips:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcn/jpush/android/service/q;-><init>(Ljava/lang/String;)V

    iget-object v0, v2, Lcn/jpush/android/service/q;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/a;->c(Ljava/lang/String;)V

    iget v0, v2, Lcn/jpush/android/service/q;->b:I

    invoke-static {v0}, Lcn/jpush/android/a;->c(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-le v1, v6, :cond_3

    iget-object v0, p0, Lcn/jpush/android/service/SisInfo;->ips:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/a;->d(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcn/jpush/android/service/SisInfo;->user:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/service/SisInfo;->user:Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/a;->e(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcn/jpush/android/service/SisInfo;->TAG:Ljava/lang/String;

    sget-object v3, Lcn/jpush/android/service/SisInfo;->z:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v2, v3, v0}, Lcn/jpush/android/util/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcn/jpush/android/service/SisInfo;->TAG:Ljava/lang/String;

    sget-object v2, Lcn/jpush/android/service/SisInfo;->z:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-static {v0, v2}, Lcn/jpush/android/util/z;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object v0, Lcn/jpush/android/service/SisInfo;->TAG:Ljava/lang/String;

    sget-object v1, Lcn/jpush/android/service/SisInfo;->z:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getMainConnIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/service/SisInfo;->mainConnIp:Ljava/lang/String;

    return-object v0
.end method

.method public getMainConnPort()I
    .locals 1

    iget v0, p0, Lcn/jpush/android/service/SisInfo;->mainConnPort:I

    return v0
.end method

.method public getOptionConnIp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/jpush/android/service/SisInfo;->optionConnIp:Ljava/util/List;

    return-object v0
.end method

.method public getOptionConnPort()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/jpush/android/service/SisInfo;->optionConnPort:Ljava/util/List;

    return-object v0
.end method

.method public getOriginSis()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/service/SisInfo;->originSis:Ljava/lang/String;

    return-object v0
.end method

.method public isInvalidSis()Z
    .locals 1

    iget-boolean v0, p0, Lcn/jpush/android/service/SisInfo;->invalidSis:Z

    return v0
.end method

.method public parseAndSet(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    iput-object p1, p0, Lcn/jpush/android/service/SisInfo;->originSis:Ljava/lang/String;

    iget-object v0, p0, Lcn/jpush/android/service/SisInfo;->ips:Ljava/util/List;

    if-nez v0, :cond_1

    sget-object v0, Lcn/jpush/android/service/SisInfo;->TAG:Ljava/lang/String;

    sget-object v1, Lcn/jpush/android/service/SisInfo;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcn/jpush/android/service/SisInfo;->invalidSis:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/jpush/android/service/SisInfo;->ips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcn/jpush/android/service/SisInfo;->TAG:Ljava/lang/String;

    sget-object v1, Lcn/jpush/android/service/SisInfo;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/z;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcn/jpush/android/service/SisInfo;->invalidSis:Z

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v1, Lcn/jpush/android/service/q;

    iget-object v0, p0, Lcn/jpush/android/service/SisInfo;->ips:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcn/jpush/android/service/q;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcn/jpush/android/service/q;->a:Ljava/lang/String;

    iput-object v0, p0, Lcn/jpush/android/service/SisInfo;->mainConnIp:Ljava/lang/String;

    iget v0, v1, Lcn/jpush/android/service/q;->b:I

    iput v0, p0, Lcn/jpush/android/service/SisInfo;->mainConnPort:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcn/jpush/android/service/SisInfo;->op_conns:Ljava/util/List;

    if-nez v0, :cond_3

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcn/jpush/android/service/SisInfo;->TAG:Ljava/lang/String;

    sget-object v2, Lcn/jpush/android/service/SisInfo;->z:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-static {v1, v2, v0}, Lcn/jpush/android/util/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v4, p0, Lcn/jpush/android/service/SisInfo;->invalidSis:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcn/jpush/android/service/SisInfo;->op_conns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_1
    new-instance v2, Lcn/jpush/android/service/q;

    invoke-direct {v2, v0}, Lcn/jpush/android/service/q;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/jpush/android/service/SisInfo;->optionConnIp:Ljava/util/List;

    iget-object v4, v2, Lcn/jpush/android/service/q;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcn/jpush/android/service/SisInfo;->optionConnPort:Ljava/util/List;

    iget v2, v2, Lcn/jpush/android/service/q;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/SisInfo;->z:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->i()V

    goto :goto_1
.end method
