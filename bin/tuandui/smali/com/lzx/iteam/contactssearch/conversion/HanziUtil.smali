.class public Lcom/lzx/iteam/contactssearch/conversion/HanziUtil;
.super Ljava/lang/Object;
.source "HanziUtil.java"


# static fields
.field public static final Data_Letters_To_T9:[C

.field public static final Data_Reg_Pinyin:Ljava/lang/String; = "2     24    26    264   22    224   226   2264  234   236   2364  2426  243   246   2464  28    23    242   2424  24264 2436  24364 244   24664 2468  248   2482  24824 24826 2482642484  2486  2664  268   2826  284   286   32    324   326   3264  33    334   336   3364  34    342   3426  343   3464  348   3664  368   38    3826  384   386   3     36    37    42    424   426   4264  43    434   436   4364  4664  468   48    482   4824  4826  48264 484   486   54    542   5426  54264 543   546   5464  54664 548   58    5826  583   586   52    524   526   5264  53    534   536   5364  5664  568   582   5824  58264 584   6     62    624   626   6264  63    634   636   6364  64    6426  643   646   6464  648   66    668   68    64264 6664  6826  686   683   72    724   726   7264  734   736   7364  74    7426  743   746   7464  76    768   78    742   74264 74664 748   7826  783   786   73    7664  784   7424  7434  7436  74364 744   7468  7482  74824 74826 7482647484  7486  82    824   826   8264  83    8364  84    8426  843   8464  8664  868   88    8826  884   886   92    924   926   9264  934   936   9364  96    98    94    942   9426  94264 943   946   9464  94664 948   9826  983   986   93    9664  968   9424  9434  9436  94364 944   9468  9482  94824 94826 9482649484  9486  984   "

.field public static final HANZI_COUNT:I = 0x51a6

.field public static final HANZI_START:I = 0x4e00

.field public static final mutableErr:Ljava/lang/String; = "\u67dc\u957f\u851a"

.field public static final mutableHZ:Ljava/lang/String; = "\u5355\u66fe\u4ec7\u89e3\u79d8\u533a\u67e5\u8983\u77bf\u5c04\u8c0c"

.field public static final mutablePY:Ljava/lang/String; = "SZQXBOZQQXS"

.field public static final mutableRight:Ljava/lang/String; = "gcw"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 242
    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lzx/iteam/contactssearch/conversion/HanziUtil;->Data_Letters_To_T9:[C

    .line 262
    return-void

    .line 242
    :array_0
    .array-data 2
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetpinyinFirstLetter(Landroid/content/Context;CLjava/lang/StringBuilder;)C
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hanzi"    # C
    .param p2, "firstLetterStr"    # Ljava/lang/StringBuilder;

    .prologue
    .line 3755
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const-string v3, "\u67dc\u957f\u851a"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 3761
    add-int/lit16 v2, p1, -0x4e00

    .line 3762
    .local v2, "index":I
    if-ltz v2, :cond_3

    const/16 v3, 0x51a6

    if-gt v2, v3, :cond_3

    .line 3763
    const/4 v0, 0x0

    .line 3764
    .local v0, "firstLetterArray":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 3765
    move-object v0, p2

    .line 3769
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 3771
    .end local v0    # "firstLetterArray":Ljava/lang/StringBuilder;
    .end local v2    # "index":I
    :goto_2
    return v3

    .line 3756
    :cond_0
    const-string v3, "\u67dc\u957f\u851a"

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne p1, v3, :cond_1

    .line 3757
    const-string v3, "gcw"

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_2

    .line 3755
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3767
    .restart local v0    # "firstLetterArray":Ljava/lang/StringBuilder;
    .restart local v2    # "index":I
    :cond_2
    invoke-static {p0}, Lcom/lzx/iteam/util/StringUtil;->getFirstLetterStr(Landroid/content/Context;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_1

    .line 3771
    .end local v0    # "firstLetterArray":Ljava/lang/StringBuilder;
    :cond_3
    const/16 v3, 0x20

    goto :goto_2
.end method
