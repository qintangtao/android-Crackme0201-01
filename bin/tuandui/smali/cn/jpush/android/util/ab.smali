.class public final Lcn/jpush/android/util/ab;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:Ljava/util/regex/Pattern;

.field public static final f:Ljava/util/regex/Pattern;

.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "\'I\u4e24\u0015\u9fffI?\u001dYw\u0003S\tb\u0005$i\u0014\u0014nIo\u0000"

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

    const/16 v9, 0x5a

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

    const-string v1, "\'I\u4e24\u0015\u9fffI?\u001dYw\u0003S\tb\u0005$9\u0000"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "Q:\u000c\u0010\u0001\u0018?^yw#\"\t\u0001\u00faT\ud7ed\uf924\u0015\ufd95\ufd89?\uffcbe\u0001\u0018?^yw#\"\t\u0001\u00faT\ud7ed\uf924\u0015\ufd95\ufd89?\uffcbdw$8\r\u0012\u0001\u0018?^yw#\"\t\u0001\u00faT\ud7ed\uf924\u0015\ufd95\ufd89?\uffcbe\u0006W;\u000f"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/util/ab;->z:[Ljava/lang/String;

    const-string v1, "Q:E](\u0016nEJ*\u0018nEK3\u0018nEc9\u001dwB_3\u0015\u007fJW+\u000baPM-\u0001hy\u0011&QpMB&\u001bIEZ>\u001ctCP3\u0013\u007fJW(\nfRO#\u0003O\rDr\u001asPD9\u0016\u007fX[5\u0016bX[\u0001\u0018q@^=\u0011{OT7\u0017}VM,\u0001k^es\u0005v\u007f]0\u0012\u007fKB\u0007\u0005:A\\/\u0005w\u007f[?\u001e`WL/$;X^\u0001\u0010xOU5\u000bOX\u0010=\u0016dX_\u0001\u0018p@]<\u001ezMT7\u0017bUJ)\rgSA\u0007PnLc1\u0014|VL/$n\u000cQ4\u001f}XQ4\rnMc>\u001c~IV5\u0008`WL\u0007Pn\u000cR5\u001baXR\u0001\u001c\u007fKH\u0007PnOc?\u001ezMU4\t`SA $nHc;\u001bqMS(\nfQN#$n\u000cU3\u0015nIW8\u0010nIM)\u001cgID7\"sG\\?\u001ezOT7\u0017}TI(\nfQN-\u0001k^es\u0005:JY7\u001cnJ].\u0005|\u007fY9\u001ctCQ6\u0016bVM $;X\u00105\u000buXW7Pn\u000cH(\u0016nTc;\u001ctCP1\u0015\u007fJJ)\re]es\u0005cED(\"wKK/\u000eOXK\u0001\u0018pG\\?\u001ezMR1\u0015\u007fJW(\rgRA $n\u000cL?\u0015nPJ;\u000fwHD.\"q@^=\u0011xOT7\u0017}TJ.\u000fe^es\u0005g\u007fY=\u0012a]B\u0007\u0005d\u007fY9\u001cuMV/$nSc<\nOX\u0010\"\u0017N\tdwIhSUoOvX@4%?x\u0015kHp\u0011Z)Js\u001dY0OuX@4%?x\u0015bIsOP8\u0000yJRn\u001fn\\V\u0006TN\t\u0001.Mp\u0015\t#\u0010\'ED\"\u0017N\tdw\u001dwFYj\u0018vX@4%?x\u0015=Oe\u0016\rk\u001dn\\V\u0006TN\tP=\u001by\u0012Y0Nt\u0011\u000b8\u001bsX@4%?x\u00152\u0015qN\u000e;\u0000s\u001d])\u001a%ED\"\u0017N\tdw\u0013jET*\u001d~TD\"\u0017N\tdw\u0012uF]9\u0011fRD\"\u0017N\tdw\u0003qOB;\u0011;XA\u0001\u001cfQe&\u0003IEU-$;"

    const/4 v0, -0x1

    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v2, v4, :cond_8

    :cond_3
    move-object v4, v1

    move v5, v3

    move v11, v2

    move-object v2, v1

    move v1, v11

    :goto_4
    aget-char v7, v2, v3

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_2

    const/16 v6, 0x5a

    :goto_5
    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v3

    add-int/lit8 v3, v5, 0x1

    if-nez v1, :cond_7

    move-object v2, v4

    move v5, v3

    move v3, v1

    goto :goto_4

    :pswitch_2
    const/16 v9, 0x79

    goto :goto_2

    :pswitch_3
    const/16 v9, 0x12

    goto :goto_2

    :pswitch_4
    const/16 v9, 0x24

    goto :goto_2

    :pswitch_5
    const/16 v9, 0x38

    goto :goto_2

    :pswitch_6
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/util/ab;->c:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/util/ab;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/jpush/android/util/ab;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v0, "Pn"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_6

    :cond_4
    move-object v3, v0

    move v4, v2

    move v11, v1

    move-object v1, v0

    move v0, v11

    :goto_6
    aget-char v7, v1, v2

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_3

    const/16 v5, 0x5a

    :goto_7
    xor-int/2addr v5, v7

    int-to-char v5, v5

    aput-char v5, v1, v2

    add-int/lit8 v2, v4, 0x1

    if-nez v0, :cond_5

    move-object v1, v3

    move v4, v2

    move v2, v0

    goto :goto_6

    :pswitch_7
    const/16 v5, 0x79

    goto :goto_7

    :pswitch_8
    const/16 v5, 0x12

    goto :goto_7

    :pswitch_9
    const/16 v5, 0x24

    goto :goto_7

    :pswitch_a
    const/16 v5, 0x38

    goto :goto_7

    :cond_5
    move v1, v0

    move-object v0, v3

    :cond_6
    if-gt v1, v2, :cond_4

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/util/ab;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/util/ab;->d:Ljava/util/regex/Pattern;

    const-string v1, "\"s\tB\u001bTH\u0014\u0015c%9x\u0016\u0006&N\u0001dw%9yCkU \u0011\u000e\'%R\u007fYw\u0003S\tbjT+yc;The\u0015\u0000I?\u001ddw$i\u0014\u0014lMo\u000cdt\"s\tB\u001bTH\u0014\u0015c$IE\u0015 8?~\u0008w@N\te!I>\u0016\r\'P9"

    const/4 v0, 0x2

    goto/16 :goto_3

    :pswitch_b
    const/16 v6, 0x79

    goto/16 :goto_5

    :pswitch_c
    const/16 v6, 0x12

    goto/16 :goto_5

    :pswitch_d
    const/16 v6, 0x24

    goto/16 :goto_5

    :pswitch_e
    const/16 v6, 0x38

    goto/16 :goto_5

    :cond_7
    move v2, v1

    move-object v1, v4

    :cond_8
    if-gt v2, v3, :cond_3

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_4

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/util/ab;->a:Ljava/util/regex/Pattern;

    const-string v1, "Q:\u001b\u0002r\u0011fPH&\u0011fPH)\u0005ZPL*\u0005ZPL*\nnVL)\tnvL)\t;\u001edu%=\u000c\u0007`Q-\u001ec;The\u0015\u0000I?\u001dd~%?xg\u0006WN\u000fd{%8x\u001f\u0006QN\rdv%)x\u0007\u0006_N\u0019e&Q-\u001ed\u007f\"s\t^\u001bTT\u0014\u0015c$i\u0016EsPi\u0015\u0014lMo\u000c\u0007`%(\u000c\u0007`\"s\tB\u001bTH\u0014\u0015c%6x\u0015\u0006&N\ndq%3x\u0012\u0006^N\u000cds%>x\u0003\u0006FN\u0002dg$n\u000c\u0007`%7\u007fYw\u001fS\t~jT+yCh\u0004;\rCkU \u0011EsFNd\u0011eP-\u000c\u0010eC:\u001b\u0002\u0001\u0018?^yw#\"\t\u0001\u00faT\ud7ed\uf924\u0015\ufd95\ufd89?\uffcbe\u0001\u0018?^yw#\"\t\u0001\u00faT\ud7ed\uf924\u0015\ufd95\ufd89?\uffcbdw$i\u0014\u0014lMox\u0016sR:\u001b\u0002rF(E](\u0016nEJ*\u0018nEK3\u0018nEc9\u001dwB_3\u0015\u007fJW+\u000baPM-\u0001hy\u0011&Q-\u001eZ3\u0003nFc;\u001bvA^=\u0011{NU4\u0016`WL,\u000ek^es\u0005:\u001b\u00029\u0018fX[5\u0014nGW5\tnGc;\u001avB_2\u0010yHU4\u0016`QN\"\u0000hy\u0011&\u001dIAR1\u0014}^e&Q-\u001e]>\u000cnAc9\u001cuVK.\u000cO\rD<\"{NS7\u0016`yDrF(CW,\u0005u\u007fY8\u001dwB_2\u0010~IV*\u0008`WL/\u000eky\u0011&\u0011IOU4\u000bfQe&Q-\u001eQ4\u001f}XQ4\rnMc>\u001c~IV5\u0008`WL\u0007Pn\u000c\u0007`\u0013}FK&\u0013IAU5\tO\rD1\"wCP3\u0014|TJ-\u0000hyD6\"sF[3\u0012`WL/\u000fkyDrF(IQ6\u0005\u007fKZ3\u0005\u007fQK?\u000c\u007fXU\u0001\u0018q@]=\u0011yHU4\u0016bUJ)\rgRO\"\u0000hy\u0011&Q-\u001eV;\u0014wXV?\rnJc;\u001awB_3\u0015}TJ/\u0003O\rDrF(KJ=\u0005}I\u0011&Q-\u001eH(\u0016nTc;\u001ctCP1\u0015\u007fJJ)\re]es\u0005cED(\"wKK/\u000eOXK\u0001\u0018pG\\?\u001ezMR1\u0015\u007fJW(\rgRA $n\u000c\u0007`\rwHD.\u000bsR]6\u0005f\u007f[>\u001fuLR1\u0015\u007fJW*\u000bfRO $;XM\u0001\u0018uOK#\u0003OXN\u0001\u0018qA_3\u0017gyD-\"tWe&Q-\u001e@4%?x\u0015j\u0003eI\rl\u001dn\\V\u0006TN\t\tk\u001b\'FKi\u0018+ERl\u001en\\V\u0006TN\t\u0000j\u0018yLZ#\u0012|N\u000c<\u0005jJdw%?\u001dLn\u001b#\u0015A3LsX@4%?x\u0015>\u001cpE\u0008;\u001dn\\V\u0006TN\t_l\u000e \u0011\t>\u0005jJdw%?L_8\u0012$ERm\u001f\'\u0017Z8\u0018n\\V\u0006TN\tP6\u001ax\u0012Y#\u0018+AK9NsX@4%?x\u00150\u0001sHH>\u0015bX@4%?x\u00151\u001epA[2\rdX@4%?x\u0015 \u001ay^Y2Pn]c?\rgyD \"sIO\u0007P;X\u0010eC:\u001b\u0002hLI\u0014\u0015o$n\u0016cjT&ycjT+yD\u0001I?\u0015e\u0001I?\u001de!KoXckT+ycjT+yD\u0001H?\u001des%<\u000c\u0007`K\'\u007f\u0008wLOX\n\u0001I?\u0010e\u0001I?\u001de&\"\"\t\t\u0007\"\"\t\u0001\u0007\u0002 YD\u0001H?\u001de\u0001I?\u001de&\"#\t\u0001\u0007\u0005\"\rdtQ-\u001e\no\"\"\t\r\u0007\u0005 \u007f\u0008wMO\u007f\u0008w@OXcjT#ycjT+yCh\u0004n\u007f\tw@O\u007f\u0008w@OXckT+yDjPN\n\u0010eC \u0011cjT\'yDh\"\"\t\u000c\u0007\"\"\t\u0001\u0007\u0005I\u0014\u0015k$I\u0014\u0015c$i\u0016E&\"#\t\u0001\u0007\"\"\t\u0001\u0007\u0005I\u0014\u0015c$;\r\u0011rF(x\u0002\u0006\u001di\u0015\u0014o\u0004;\u001b\u0011r%=\u000c\u0007`Q-\u001ec;The\u0015\u0000I?\u001d\u0098w\ud786\uf912\t\ufdf7\ufdaaT\ufffdx\u0003\u0006VN\u001bd`%Rx\u001e\u0006DN\u0007d$%?x\u0016\u0006RN\u0005dp%5x\u0010\u0006PN\u0008d\u0005$;X\u0010eCN\u0001c;Tte\u0015\u001cI?\u001de!Ko\r\u0011pP-\u000c\u0007`%pX\u001cs"

    const/4 v0, 0x0

    goto/16 :goto_3

    :pswitch_f
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/util/ab;->b:Ljava/util/regex/Pattern;

    const-string v1, "Q:\u0016\r\u0001I?\u0011e&KI\u0014\u0015n$I\u0014\u0015c$n\u007f\u0008wHO\u007f\u0008w@O_\n\'\u0005I\u0015\u0015c$I\u0014\u0015c$n\u007f\tw@O\rdtQ \u0011cjT\'yDh\"\"\t\u000c\u0007\"\"\t\u0001\u0007\u0005I\u0014\u0015k$I\u0014\u0015c$i\u0016E&\"#\t\u0001\u0007\"\"\t\u0001\u0007\u0005I\u0015\u0015c$n\u0014\u0011\u0006W:\u0016\r\u0001I?\u0011e&KI\u0014\u0015n$I\u0014\u0015c$n\u007f\u0008wHO\u007f\u0008w@O_\n\'\u0005I\u0015\u0015c$I\u0014\u0015c$n\u007f\tw@OX\u0008s%<\u000c\no\"\"\t\r\u0007\u0005 \u007f\u0008wMO\u007f\u0008w@OXcjT#ycjT+yCh\u0004n\u007f\tw@O\u007f\u0008w@OXcjT+y\u0011s"

    const/4 v0, 0x1

    goto/16 :goto_3

    :pswitch_10
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/util/ab;->e:Ljava/util/regex/Pattern;

    const-string v1, "QN\u000fcjT+y\u0013\u0001%?\u0004dt$8\r\u0007r%:\u007f\u0008w@O\u000fds\"N\t\u0018\u0006WO\u000e\u0011eQI\u0014\u0015c$I\u0014\u0015c%?\u0004dt$I\u0014\u0015c%?\u0004dt$9\u007f\u0008w@O\r"

    const/4 v0, 0x3

    goto/16 :goto_3

    :pswitch_11
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/util/ab;->f:Ljava/util/regex/Pattern;

    return-void

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

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_f
        :pswitch_6
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static a(Ljava/util/Set;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_2

    sget v0, Lcn/jpush/android/api/d;->g:I

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4

    sget v0, Lcn/jpush/android/api/d;->e:I

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    const/16 v4, 0x28

    if-le v3, v4, :cond_5

    sget v0, Lcn/jpush/android/api/d;->f:I

    goto :goto_0

    :cond_5
    sget-object v3, Lcn/jpush/android/util/ab;->z:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lcn/jpush/android/api/d;->e:I

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcn/jpush/android/util/ab;->z:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x28

    if-le v1, v2, :cond_2

    sget v0, Lcn/jpush/android/api/d;->d:I

    goto :goto_0

    :cond_2
    sget-object v1, Lcn/jpush/android/util/ab;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    sget v0, Lcn/jpush/android/api/d;->c:I

    goto :goto_0
.end method
