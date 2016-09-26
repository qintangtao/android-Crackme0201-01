.class public Lcom/lzx/iteam/util/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/util/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    }
.end annotation


# static fields
.field private static final CCC_LENGTH:I

.field private static final CLIR_OFF:Ljava/lang/String; = "#31#"

.field private static final CLIR_ON:Ljava/lang/String; = "*31#"

.field private static final COUNTRY_CALLING_CALL:[Z

.field private static final DBG:Z = false

.field public static final FORMAT_JAPAN:I = 0x2

.field public static final FORMAT_NANP:I = 0x1

.field public static final FORMAT_UNKNOWN:I = 0x0

.field private static final GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field private static final KEYPAD_MAP:Landroid/util/SparseIntArray;

.field static final LOG_TAG:Ljava/lang/String; = "PhoneNumberUtils"

.field static final MIN_MATCH:I = 0x7

.field private static final NANP_COUNTRIES:[Ljava/lang/String;

.field private static final NANP_IDP_STRING:Ljava/lang/String; = "011"

.field private static final NANP_LENGTH:I = 0xa

.field private static final NANP_STATE_DASH:I = 0x4

.field private static final NANP_STATE_DIGIT:I = 0x1

.field private static final NANP_STATE_ONE:I = 0x3

.field private static final NANP_STATE_PLUS:I = 0x2

.field public static final PAUSE:C = ','

.field private static final PLUS_SIGN_CHAR:C = '+'

.field private static final PLUS_SIGN_STRING:Ljava/lang/String; = "+"

.field public static final TOA_International:I = 0x91

.field public static final TOA_Unknown:I = 0x81

.field public static final WAIT:C = ';'

.field public static final WILD:C = 'N'


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x34

    const/16 v6, 0x33

    const/16 v5, 0x39

    const/16 v4, 0x37

    const/4 v3, 0x1

    .line 69
    const-string v0, "[\\+]?[0-9.-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 68
    sput-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 1039
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1040
    const-string v2, "US"

    aput-object v2, v0, v1

    .line 1041
    const-string v1, "CA"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    .line 1042
    const-string v2, "AS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 1043
    const-string v2, "AI"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 1044
    const-string v2, "AG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 1045
    const-string v2, "BS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 1046
    const-string v2, "BB"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 1047
    const-string v2, "BM"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 1048
    const-string v2, "VG"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 1049
    const-string v2, "KY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 1050
    const-string v2, "DM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 1051
    const-string v2, "DO"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 1052
    const-string v2, "GD"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 1053
    const-string v2, "GU"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 1054
    const-string v2, "JM"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 1055
    const-string v2, "PR"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 1056
    const-string v2, "MS"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 1057
    const-string v2, "MP"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 1058
    const-string v2, "KN"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 1059
    const-string v2, "LC"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 1060
    const-string v2, "VC"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 1061
    const-string v2, "TT"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 1062
    const-string v2, "TC"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 1063
    const-string v2, "VI"

    aput-object v2, v0, v1

    .line 1039
    sput-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    .line 1787
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    .line 1789
    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x61

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x62

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x63

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1790
    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x41

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x42

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x43

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1792
    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1793
    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x45

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1795
    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x69

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1796
    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x47

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x48

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x49

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1798
    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1799
    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1801
    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1802
    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1804
    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x70

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x72

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x73

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1805
    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x50

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x51

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x52

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x53

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1807
    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x74

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x75

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x76

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1808
    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x54

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x55

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x56

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1810
    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x77

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x79

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1811
    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x57

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x58

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x59

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2265
    const/16 v0, 0x64

    new-array v0, v0, [Z

    const/4 v1, 0x0

    .line 2266
    aput-boolean v3, v0, v1

    aput-boolean v3, v0, v3

    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    const/16 v1, 0x14

    .line 2268
    aput-boolean v3, v0, v1

    const/16 v1, 0x1b

    aput-boolean v3, v0, v1

    const/16 v1, 0x1c

    aput-boolean v3, v0, v1

    const/16 v1, 0x1e

    .line 2269
    aput-boolean v3, v0, v1

    const/16 v1, 0x1f

    aput-boolean v3, v0, v1

    const/16 v1, 0x20

    aput-boolean v3, v0, v1

    const/16 v1, 0x21

    aput-boolean v3, v0, v1

    const/16 v1, 0x22

    aput-boolean v3, v0, v1

    const/16 v1, 0x24

    aput-boolean v3, v0, v1

    const/16 v1, 0x27

    aput-boolean v3, v0, v1

    const/16 v1, 0x28

    .line 2270
    aput-boolean v3, v0, v1

    const/16 v1, 0x2b

    aput-boolean v3, v0, v1

    const/16 v1, 0x2c

    aput-boolean v3, v0, v1

    const/16 v1, 0x2d

    aput-boolean v3, v0, v1

    const/16 v1, 0x2e

    aput-boolean v3, v0, v1

    const/16 v1, 0x2f

    aput-boolean v3, v0, v1

    const/16 v1, 0x30

    aput-boolean v3, v0, v1

    const/16 v1, 0x31

    aput-boolean v3, v0, v1

    .line 2271
    aput-boolean v3, v0, v6

    aput-boolean v3, v0, v7

    const/16 v1, 0x35

    aput-boolean v3, v0, v1

    const/16 v1, 0x36

    aput-boolean v3, v0, v1

    aput-boolean v3, v0, v4

    const/16 v1, 0x38

    aput-boolean v3, v0, v1

    aput-boolean v3, v0, v5

    const/16 v1, 0x3a

    aput-boolean v3, v0, v1

    const/16 v1, 0x3c

    .line 2272
    aput-boolean v3, v0, v1

    const/16 v1, 0x3d

    aput-boolean v3, v0, v1

    const/16 v1, 0x3e

    aput-boolean v3, v0, v1

    const/16 v1, 0x3f

    aput-boolean v3, v0, v1

    const/16 v1, 0x40

    aput-boolean v3, v0, v1

    const/16 v1, 0x41

    aput-boolean v3, v0, v1

    const/16 v1, 0x42

    aput-boolean v3, v0, v1

    const/16 v1, 0x51

    .line 2274
    aput-boolean v3, v0, v1

    const/16 v1, 0x52

    aput-boolean v3, v0, v1

    const/16 v1, 0x53

    aput-boolean v3, v0, v1

    const/16 v1, 0x54

    aput-boolean v3, v0, v1

    const/16 v1, 0x56

    aput-boolean v3, v0, v1

    const/16 v1, 0x59

    aput-boolean v3, v0, v1

    const/16 v1, 0x5a

    .line 2275
    aput-boolean v3, v0, v1

    const/16 v1, 0x5b

    aput-boolean v3, v0, v1

    const/16 v1, 0x5c

    aput-boolean v3, v0, v1

    const/16 v1, 0x5d

    aput-boolean v3, v0, v1

    const/16 v1, 0x5e

    aput-boolean v3, v0, v1

    const/16 v1, 0x5f

    aput-boolean v3, v0, v1

    const/16 v1, 0x62

    aput-boolean v3, v0, v1

    .line 2265
    sput-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    .line 2277
    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    array-length v0, v0

    sput v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->CCC_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "dialableIndex"    # I
    .param p1, "origStr"    # Ljava/lang/String;
    .param p2, "dialStr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2125
    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    .line 2126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2127
    .local v1, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2135
    .end local v1    # "ret":Ljava/lang/StringBuilder;
    .local v2, "retStr":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 2132
    .end local v2    # "retStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2133
    .local v0, "nonDigitStr":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "retStr":Ljava/lang/String;
    goto :goto_0
.end method

.method private static bcdToChar(B)C
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 887
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 888
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    .line 895
    :goto_0
    return v0

    .line 889
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 895
    const/4 v0, 0x0

    goto :goto_0

    .line 890
    :pswitch_0
    const/16 v0, 0x2a

    goto :goto_0

    .line 891
    :pswitch_1
    const/16 v0, 0x23

    goto :goto_0

    .line 892
    :pswitch_2
    const/16 v0, 0x2c

    goto :goto_0

    .line 893
    :pswitch_3
    const/16 v0, 0x4e

    goto :goto_0

    .line 889
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static calledPartyBCDFragmentToString([BII)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 879
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1, p2}, Lcom/lzx/iteam/util/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 881
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static calledPartyBCDToString([BII)Ljava/lang/String;
    .locals 12
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 734
    const/4 v2, 0x0

    .line 735
    .local v2, "prependPlus":Z
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, p2, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 737
    .local v3, "ret":Ljava/lang/StringBuilder;
    if-ge p2, v7, :cond_0

    .line 738
    const-string v5, ""

    .line 829
    :goto_0
    return-object v5

    .line 742
    :cond_0
    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0x90

    if-ne v5, v6, :cond_1

    .line 743
    const/4 v2, 0x1

    .line 747
    :cond_1
    add-int/lit8 v5, p1, 0x1

    add-int/lit8 v6, p2, -0x1

    .line 746
    invoke-static {v3, p0, v5, v6}, Lcom/lzx/iteam/util/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 749
    if-eqz v2, :cond_2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 751
    const-string v5, ""

    goto :goto_0

    .line 754
    :cond_2
    if-eqz v2, :cond_3

    .line 780
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 781
    .local v4, "retString":Ljava/lang/String;
    const-string v5, "(^[#*])(.*)([#*])(.*)(#)$"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 782
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 783
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 784
    const-string v5, ""

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 788
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 789
    .restart local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "p":Ljava/util/regex/Pattern;
    .end local v4    # "retString":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 798
    .restart local v0    # "m":Ljava/util/regex/Matcher;
    .restart local v1    # "p":Ljava/util/regex/Pattern;
    .restart local v4    # "retString":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 799
    .restart local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 807
    :cond_5
    const-string v5, "(^[#*])(.*)([#*])(.*)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 808
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 809
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 814
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 815
    .restart local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 822
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 823
    .restart local v3    # "ret":Ljava/lang/StringBuilder;
    const/16 v5, 0x2b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 824
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static charToBCD(C)I
    .locals 3
    .param p0, "c"    # C

    .prologue
    .line 901
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 902
    add-int/lit8 v0, p0, -0x30

    .line 910
    :goto_0
    return v0

    .line 903
    :cond_0
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_1

    .line 904
    const/16 v0, 0xa

    goto :goto_0

    .line 905
    :cond_1
    const/16 v0, 0x23

    if-ne p0, v0, :cond_2

    .line 906
    const/16 v0, 0xb

    goto :goto_0

    .line 907
    :cond_2
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_3

    .line 908
    const/16 v0, 0xc

    goto :goto_0

    .line 909
    :cond_3
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_4

    .line 910
    const/16 v0, 0xd

    goto :goto_0

    .line 912
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid char for BCD "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkPrefixIsIgnorable(Ljava/lang/String;II)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "forwardIndex"    # I
    .param p2, "backwardIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 2428
    const/4 v0, 0x0

    .line 2429
    .local v0, "trunk_prefix_was_read":Z
    :goto_0
    if-ge p2, p1, :cond_1

    .line 2446
    const/4 v1, 0x1

    :cond_0
    :goto_1
    return v1

    .line 2430
    :cond_1
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/lzx/iteam/util/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v2

    if-ltz v2, :cond_3

    .line 2431
    if-nez v0, :cond_0

    .line 2437
    const/4 v0, 0x1

    .line 2443
    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 2439
    :cond_3
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "useStrictComparation"    # Z

    .prologue
    .line 367
    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/lzx/iteam/util/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/lzx/iteam/util/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 388
    const/4 v7, 0x0

    .line 389
    .local v7, "numNonDialableCharsInA":I
    const/4 v8, 0x0

    .line 391
    .local v8, "numNonDialableCharsInB":I
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v10, 0x1

    .line 475
    :goto_0
    return v10

    .line 391
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 393
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4

    .line 394
    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    .line 397
    :cond_4
    invoke-static {p0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 398
    .local v4, "ia":I
    invoke-static {p1}, Lcom/lzx/iteam/util/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v5

    .line 399
    .local v5, "ib":I
    const/4 v6, 0x0

    .line 401
    .local v6, "matched":I
    :cond_5
    :goto_1
    if-ltz v4, :cond_6

    if-gez v5, :cond_7

    .line 429
    :cond_6
    const/4 v10, 0x7

    if-ge v6, v10, :cond_c

    .line 430
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v2, v10, v7

    .line 431
    .local v2, "effectiveALen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v3, v10, v8

    .line 436
    .local v3, "effectiveBLen":I
    if-ne v2, v3, :cond_b

    if-ne v2, v6, :cond_b

    .line 437
    const/4 v10, 0x1

    goto :goto_0

    .line 403
    .end local v2    # "effectiveALen":I
    .end local v3    # "effectiveBLen":I
    :cond_7
    const/4 v9, 0x0

    .line 405
    .local v9, "skipCmp":Z
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 407
    .local v0, "ca":C
    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isDialable(C)Z

    move-result v10

    if-nez v10, :cond_8

    .line 408
    add-int/lit8 v4, v4, -0x1

    .line 409
    const/4 v9, 0x1

    .line 410
    add-int/lit8 v7, v7, 0x1

    .line 413
    :cond_8
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 415
    .local v1, "cb":C
    invoke-static {v1}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isDialable(C)Z

    move-result v10

    if-nez v10, :cond_9

    .line 416
    add-int/lit8 v5, v5, -0x1

    .line 417
    const/4 v9, 0x1

    .line 418
    add-int/lit8 v8, v8, 0x1

    .line 421
    :cond_9
    if-nez v9, :cond_5

    .line 422
    if-eq v1, v0, :cond_a

    const/16 v10, 0x4e

    if-eq v0, v10, :cond_a

    const/16 v10, 0x4e

    if-ne v1, v10, :cond_6

    .line 425
    :cond_a
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 440
    .end local v0    # "ca":C
    .end local v1    # "cb":C
    .end local v9    # "skipCmp":Z
    .restart local v2    # "effectiveALen":I
    .restart local v3    # "effectiveBLen":I
    :cond_b
    const/4 v10, 0x0

    goto :goto_0

    .line 444
    .end local v2    # "effectiveALen":I
    .end local v3    # "effectiveBLen":I
    :cond_c
    const/4 v10, 0x7

    if-lt v6, v10, :cond_e

    if-ltz v4, :cond_d

    if-gez v5, :cond_e

    .line 445
    :cond_d
    const/4 v10, 0x1

    goto :goto_0

    .line 457
    :cond_e
    add-int/lit8 v10, v4, 0x1

    invoke-static {p0, v10}, Lcom/lzx/iteam/util/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 458
    add-int/lit8 v10, v5, 0x1

    invoke-static {p1, v10}, Lcom/lzx/iteam/util/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 460
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 463
    :cond_f
    add-int/lit8 v10, v4, 0x1

    invoke-static {p0, v10}, Lcom/lzx/iteam/util/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 464
    add-int/lit8 v10, v5, 0x1

    invoke-static {p1, v10}, Lcom/lzx/iteam/util/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 466
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 469
    :cond_10
    add-int/lit8 v10, v5, 0x1

    invoke-static {p1, v10}, Lcom/lzx/iteam/util/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 470
    add-int/lit8 v10, v4, 0x1

    invoke-static {p0, v10}, Lcom/lzx/iteam/util/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 472
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 475
    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 483
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 20
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "acceptInvalidCCCPrefix"    # Z

    .prologue
    .line 491
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 492
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_1

    const/16 v18, 0x1

    .line 629
    :goto_0
    return v18

    .line 492
    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    .line 493
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_3

    .line 494
    const/16 v18, 0x0

    goto :goto_0

    .line 497
    :cond_3
    const/4 v10, 0x0

    .line 498
    .local v10, "forwardIndexA":I
    const/4 v11, 0x0

    .line 501
    .local v11, "forwardIndexB":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Lcom/lzx/iteam/util/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v6

    .line 503
    .local v6, "cccA":Lcom/lzx/iteam/util/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    invoke-static/range {p1 .. p2}, Lcom/lzx/iteam/util/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Lcom/lzx/iteam/util/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v7

    .line 504
    .local v7, "cccB":Lcom/lzx/iteam/util/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    const/4 v5, 0x0

    .line 505
    .local v5, "bothHasCountryCallingCode":Z
    const/4 v13, 0x1

    .line 506
    .local v13, "okToIgnorePrefix":Z
    const/16 v16, 0x0

    .line 507
    .local v16, "trunkPrefixIsOmittedA":Z
    const/16 v17, 0x0

    .line 508
    .local v17, "trunkPrefixIsOmittedB":Z
    if-eqz v6, :cond_a

    if-eqz v7, :cond_a

    .line 509
    iget v0, v6, Lcom/lzx/iteam/util/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    move/from16 v18, v0

    iget v0, v7, Lcom/lzx/iteam/util/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 511
    const/16 v18, 0x0

    goto :goto_0

    .line 515
    :cond_4
    const/4 v13, 0x0

    .line 516
    const/4 v5, 0x1

    .line 517
    iget v10, v6, Lcom/lzx/iteam/util/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 518
    iget v11, v7, Lcom/lzx/iteam/util/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 544
    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v3, v18, -0x1

    .line 545
    .local v3, "backwardIndexA":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v4, v18, -0x1

    .line 546
    .local v4, "backwardIndexB":I
    :cond_6
    :goto_2
    if-lt v3, v10, :cond_7

    if-ge v4, v11, :cond_f

    .line 568
    :cond_7
    if-eqz v13, :cond_18

    .line 569
    if-eqz v16, :cond_8

    if-le v10, v3, :cond_9

    .line 570
    :cond_8
    move-object/from16 v0, p0

    invoke-static {v0, v10, v3}, Lcom/lzx/iteam/util/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_14

    .line 571
    :cond_9
    if-eqz p2, :cond_13

    .line 581
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/lzx/iteam/util/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    goto :goto_0

    .line 519
    .end local v3    # "backwardIndexA":I
    .end local v4    # "backwardIndexB":I
    :cond_a
    if-nez v6, :cond_b

    if-nez v7, :cond_b

    .line 522
    const/4 v13, 0x0

    .line 523
    goto :goto_1

    .line 524
    :cond_b
    if-eqz v6, :cond_d

    .line 525
    iget v10, v6, Lcom/lzx/iteam/util/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 533
    :cond_c
    :goto_3
    if-eqz v7, :cond_e

    .line 534
    iget v11, v7, Lcom/lzx/iteam/util/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 535
    goto :goto_1

    .line 527
    :cond_d
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v15

    .line 528
    .local v15, "tmp":I
    if-ltz v15, :cond_c

    .line 529
    move v10, v15

    .line 530
    const/16 v16, 0x1

    goto :goto_3

    .line 536
    .end local v15    # "tmp":I
    :cond_e
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v15

    .line 537
    .restart local v15    # "tmp":I
    if-ltz v15, :cond_5

    .line 538
    move v11, v15

    .line 539
    const/16 v17, 0x1

    goto :goto_1

    .line 547
    .end local v15    # "tmp":I
    .restart local v3    # "backwardIndexA":I
    .restart local v4    # "backwardIndexB":I
    :cond_f
    const/4 v14, 0x0

    .line 548
    .local v14, "skip_compare":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 549
    .local v8, "chA":C
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 550
    .local v9, "chB":C
    invoke-static {v8}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 551
    add-int/lit8 v3, v3, -0x1

    .line 552
    const/4 v14, 0x1

    .line 554
    :cond_10
    invoke-static {v9}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 555
    add-int/lit8 v4, v4, -0x1

    .line 556
    const/4 v14, 0x1

    .line 559
    :cond_11
    if-nez v14, :cond_6

    .line 560
    if-eq v8, v9, :cond_12

    .line 561
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 563
    :cond_12
    add-int/lit8 v3, v3, -0x1

    .line 564
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 583
    .end local v8    # "chA":C
    .end local v9    # "chB":C
    .end local v14    # "skip_compare":Z
    :cond_13
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 586
    :cond_14
    if-eqz v17, :cond_15

    if-le v11, v4, :cond_16

    .line 587
    :cond_15
    move-object/from16 v0, p1

    invoke-static {v0, v10, v4}, Lcom/lzx/iteam/util/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_19

    .line 588
    :cond_16
    if-eqz p2, :cond_17

    .line 589
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/lzx/iteam/util/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    goto/16 :goto_0

    .line 591
    :cond_17
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 604
    :cond_18
    if-eqz v5, :cond_1a

    const/4 v12, 0x0

    .line 605
    .local v12, "maybeNamp":Z
    :goto_4
    if-ge v3, v10, :cond_1b

    .line 616
    :goto_5
    if-ge v4, v11, :cond_1e

    .line 629
    .end local v12    # "maybeNamp":Z
    :cond_19
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 604
    :cond_1a
    const/4 v12, 0x1

    goto :goto_4

    .line 606
    .restart local v12    # "maybeNamp":Z
    :cond_1b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 607
    .restart local v8    # "chA":C
    invoke-static {v8}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_1c

    .line 608
    if-eqz v12, :cond_1d

    invoke-static {v8}, Lcom/lzx/iteam/util/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1d

    .line 609
    const/4 v12, 0x0

    .line 614
    :cond_1c
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 611
    :cond_1d
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 617
    .end local v8    # "chA":C
    :cond_1e
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 618
    .restart local v9    # "chB":C
    invoke-static {v9}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_1f

    .line 619
    if-eqz v12, :cond_20

    invoke-static {v9}, Lcom/lzx/iteam/util/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_20

    .line 620
    const/4 v12, 0x0

    .line 625
    :cond_1f
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    .line 622
    :cond_20
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method public static convertAndStrip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-static {p0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 1765
    if-nez p0, :cond_1

    .line 1781
    .end local p0    # "input":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1768
    .restart local p0    # "input":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1769
    .local v2, "len":I
    if-eqz v2, :cond_0

    .line 1773
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 1775
    .local v3, "out":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v2, :cond_2

    .line 1781
    new-instance p0, Ljava/lang/String;

    .end local p0    # "input":Ljava/lang/String;
    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 1776
    .restart local p0    # "input":Ljava/lang/String;
    :cond_2
    aget-char v0, v3, v1

    .line 1778
    .local v0, "c":C
    sget-object v4, Lcom/lzx/iteam/util/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    aput-char v4, v3, v1

    .line 1775
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static convertPreDial(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 265
    if-nez p0, :cond_0

    .line 266
    const/4 v4, 0x0

    .line 281
    :goto_0
    return-object v4

    .line 268
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 269
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 271
    .local v3, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v2, :cond_1

    .line 281
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 274
    .local v0, "c":C
    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isPause(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 275
    const/16 v0, 0x2c

    .line 279
    :cond_2
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 276
    :cond_3
    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isToneWait(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 277
    const/16 v0, 0x3b

    goto :goto_2
.end method

.method public static cutPlus86Formatter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-static {p0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    const-string v0, "+86"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 171
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 172
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 175
    :cond_0
    const-string v0, "86"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    const/4 v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 178
    :cond_1
    return-object p0
.end method

.method public static dxNumberFormat(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "isShow"    # Z

    .prologue
    .line 2449
    invoke-static {p0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2450
    const/4 v2, 0x0

    .line 2465
    :goto_0
    return-object v2

    .line 2452
    :cond_0
    const-string v1, ""

    .line 2453
    .local v1, "temp":Ljava/lang/String;
    const-string v2, "86"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2454
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2458
    :goto_1
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2459
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2461
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2462
    .local v0, "result":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_2

    .line 2463
    const/4 v2, 0x4

    const-string v3, "-"

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 2465
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2456
    .end local v0    # "result":Ljava/lang/StringBuffer;
    :cond_3
    move-object v1, p0

    goto :goto_1
.end method

.method public static extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 138
    if-nez p0, :cond_0

    .line 139
    const/4 v6, 0x0

    .line 164
    :goto_0
    return-object v6

    .line 142
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 143
    .local v3, "len":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 145
    .local v5, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v3, :cond_1

    .line 164
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 148
    .local v0, "c":C
    const/16 v6, 0xa

    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 149
    .local v1, "digit":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_3

    .line 150
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 151
    :cond_3
    const/16 v6, 0x2b

    if-ne v0, v6, :cond_5

    .line 153
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, "prefix":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "*31#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "#31#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 155
    :cond_4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 157
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_5
    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 158
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 159
    :cond_6
    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 192
    if-nez p0, :cond_0

    .line 193
    const/4 v5, 0x0

    .line 215
    :goto_0
    return-object v5

    .line 196
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 197
    .local v3, "len":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 198
    .local v4, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 200
    .local v1, "haveSeenPlus":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v3, :cond_1

    .line 215
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 202
    .local v0, "c":C
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_4

    .line 203
    if-eqz v1, :cond_3

    .line 200
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 206
    :cond_3
    const/4 v1, 0x1

    .line 208
    :cond_4
    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 209
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 210
    :cond_5
    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2
.end method

.method public static extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 334
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 350
    :goto_0
    return-object v5

    .line 337
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .local v2, "ret":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 341
    .local v4, "trimIndex":I
    add-int/lit8 v1, v4, 0x1

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "s":I
    :goto_1
    if-lt v1, v3, :cond_1

    .line 350
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 344
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 345
    .local v0, "c":C
    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 346
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static findDialableIndexFromPostDialStr(Ljava/lang/String;)I
    .locals 3
    .param p0, "postDialStr"    # Ljava/lang/String;

    .prologue
    .line 2109
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 2115
    const/4 v1, -0x1

    .end local v1    # "index":I
    :cond_0
    return v1

    .line 2110
    .restart local v1    # "index":I
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2111
    .local v0, "c":C
    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static formatNanpNumber(Landroid/text/Editable;)V
    .locals 15
    .param p0, "text"    # Landroid/text/Editable;

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x3

    const/4 v12, 0x0

    .line 1164
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    .line 1165
    .local v4, "length":I
    const-string v11, "+1-nnn-nnn-nnnn"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-le v4, v11, :cond_1

    .line 1259
    :cond_0
    :goto_0
    return-void

    .line 1168
    :cond_1
    const/4 v11, 0x5

    if-le v4, v11, :cond_0

    .line 1173
    invoke-interface {p0, v12, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1176
    .local v9, "saved":Ljava/lang/CharSequence;
    invoke-static {p0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    .line 1177
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    .line 1182
    new-array v1, v13, [I

    .line 1183
    .local v1, "dashPositions":[I
    const/4 v5, 0x0

    .line 1185
    .local v5, "numDashes":I
    const/4 v10, 0x1

    .line 1186
    .local v10, "state":I
    const/4 v7, 0x0

    .line 1187
    .local v7, "numDigits":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v6, v5

    .end local v5    # "numDashes":I
    .local v6, "numDashes":I
    :goto_1
    if-lt v2, v4, :cond_2

    .line 1238
    const/4 v11, 0x7

    if-ne v7, v11, :cond_a

    .line 1240
    add-int/lit8 v5, v6, -0x1

    .line 1244
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    :goto_2
    const/4 v2, 0x0

    :goto_3
    if-lt v2, v5, :cond_9

    .line 1250
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1251
    .local v3, "len":I
    :goto_4
    if-lez v3, :cond_0

    .line 1252
    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v11

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_0

    .line 1253
    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1254
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 1188
    .end local v3    # "len":I
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_2
    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 1189
    .local v0, "c":C
    packed-switch v0, :pswitch_data_0

    .line 1233
    :cond_3
    :pswitch_0
    invoke-interface {p0, v12, v4, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 1191
    :pswitch_1
    if-eqz v7, :cond_4

    if-ne v10, v14, :cond_5

    .line 1192
    :cond_4
    const/4 v10, 0x3

    move v5, v6

    .line 1187
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    :goto_5
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    goto :goto_1

    .line 1205
    :cond_5
    :pswitch_2
    if-ne v10, v14, :cond_6

    .line 1207
    invoke-interface {p0, v12, v4, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 1209
    :cond_6
    if-ne v10, v13, :cond_7

    .line 1211
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    aput v2, v1, v6

    .line 1216
    :goto_6
    const/4 v10, 0x1

    .line 1217
    add-int/lit8 v7, v7, 0x1

    .line 1218
    goto :goto_5

    .line 1212
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_7
    const/4 v11, 0x4

    if-eq v10, v11, :cond_b

    if-eq v7, v13, :cond_8

    const/4 v11, 0x6

    if-ne v7, v11, :cond_b

    .line 1214
    :cond_8
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    aput v2, v1, v6

    goto :goto_6

    .line 1221
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :pswitch_3
    const/4 v10, 0x4

    move v5, v6

    .line 1222
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_5

    .line 1225
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :pswitch_4
    if-nez v2, :cond_3

    .line 1227
    const/4 v10, 0x2

    move v5, v6

    .line 1228
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_5

    .line 1245
    .end local v0    # "c":C
    :cond_9
    aget v8, v1, v2

    .line 1246
    .local v8, "pos":I
    add-int v11, v8, v2

    add-int v12, v8, v2

    const-string v13, "-"

    invoke-interface {p0, v11, v12, v13}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1244
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v5    # "numDashes":I
    .end local v8    # "pos":I
    .restart local v6    # "numDashes":I
    :cond_a
    move v5, v6

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_2

    .end local v5    # "numDashes":I
    .restart local v0    # "c":C
    .restart local v6    # "numDashes":I
    :cond_b
    move v5, v6

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_6

    .line 1189
    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 1075
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1076
    .local v0, "text":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/lzx/iteam/util/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1077
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "defaultFormattingType"    # I

    .prologue
    .line 1091
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1092
    .local v0, "text":Landroid/text/SpannableStringBuilder;
    invoke-static {v0, p1}, Lcom/lzx/iteam/util/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1093
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Landroid/text/Editable;I)V
    .locals 6
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "defaultFormattingType"    # I

    .prologue
    const/16 v5, 0x31

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1118
    move v0, p1

    .line 1120
    .local v0, "formatType":I
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    .line 1121
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1

    .line 1122
    const/4 v0, 0x1

    .line 1131
    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1142
    :goto_1
    :pswitch_0
    return-void

    .line 1123
    :cond_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_2

    .line 1124
    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_2

    .line 1125
    const/4 v0, 0x2

    .line 1126
    goto :goto_0

    .line 1127
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1133
    :pswitch_1
    invoke-static {p0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    goto :goto_1

    .line 1139
    :pswitch_2
    invoke-static {p0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    goto :goto_1

    .line 1131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getFormatTypeForLocale(Ljava/util/Locale;)I
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1104
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1106
    .local v0, "country":Ljava/lang/String;
    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .locals 3
    .param p0, "country"    # Ljava/lang/String;

    .prologue
    .line 1982
    sget-object v2, Lcom/lzx/iteam/util/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v1, v2

    .line 1983
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 1988
    const-string v2, "jp"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 1989
    const/4 v2, 0x2

    .line 1991
    :goto_1
    return v2

    .line 1984
    :cond_0
    sget-object v2, Lcom/lzx/iteam/util/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 1985
    const/4 v2, 0x1

    goto :goto_1

    .line 1983
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1991
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 656
    invoke-static {p0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 658
    .local v0, "np":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 660
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 2065
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2066
    .local v0, "delimiterIndex":I
    if-gez v0, :cond_0

    .line 2067
    const-string v1, "%40"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2069
    :cond_0
    if-gez v0, :cond_1

    .line 2070
    const-string v1, "PhoneNumberUtils"

    .line 2071
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getUsernameFromUriNumber: no delimiter found in SIP addr \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2070
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2074
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static indexOfLastNetworkChar(Ljava/lang/String;)I
    .locals 5
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 310
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 312
    .local v0, "origLength":I
    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 313
    .local v1, "pIndex":I
    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 315
    .local v3, "wIndex":I
    invoke-static {v1, v3}, Lcom/lzx/iteam/util/PhoneNumberUtils;->minPositive(II)I

    move-result v2

    .line 317
    .local v2, "trimIndex":I
    if-gez v2, :cond_0

    .line 318
    add-int/lit8 v4, v0, -0x1

    .line 320
    :goto_0
    return v4

    :cond_0
    add-int/lit8 v4, v2, -0x1

    goto :goto_0
.end method

.method private static internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 835
    move v2, p2

    .local v2, "i":I
    :goto_0
    add-int v3, p3, p2

    if-lt v2, v3, :cond_1

    .line 868
    :cond_0
    return-void

    .line 839
    :cond_1
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    invoke-static {v3}, Lcom/lzx/iteam/util/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .line 841
    .local v1, "c":C
    if-eqz v1, :cond_0

    .line 844
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 853
    aget-byte v3, p1, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v0, v3

    .line 855
    .local v0, "b":B
    const/16 v3, 0xf

    if-ne v0, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    add-int v4, p3, p2

    if-eq v3, v4, :cond_0

    .line 860
    :cond_2
    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .line 861
    if-eqz v1, :cond_0

    .line 865
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 835
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "np"    # Ljava/lang/String;
    .param p1, "numDigits"    # I

    .prologue
    .line 669
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 682
    :goto_0
    return-object v5

    .line 671
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 672
    .local v3, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 674
    .local v2, "length":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    move v4, v2

    .line 675
    .local v4, "s":I
    :goto_1
    if-ltz v1, :cond_1

    sub-int v5, v4, v1

    .line 674
    if-le v5, p1, :cond_2

    .line 682
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 677
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 679
    .local v0, "c":C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 675
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public static final is12Key(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 80
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isCountryCallingCode(I)Z
    .locals 1
    .param p0, "countryCallingCodeCandidate"    # I

    .prologue
    .line 2283
    if-lez p0, :cond_0

    sget v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->CCC_LENGTH:I

    if-ge p0, v0, :cond_0

    .line 2284
    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    .line 2283
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isDialable(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 86
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isDialable(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 940
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 945
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 941
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 942
    const/4 v2, 0x0

    goto :goto_1

    .line 940
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isGlobalPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 931
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 932
    const/4 v1, 0x0

    .line 936
    :goto_0
    return v1

    .line 935
    :cond_0
    sget-object v1, Lcom/lzx/iteam/util/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 936
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method public static isISODigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 74
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNanp(Ljava/lang/String;)Z
    .locals 5
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xa

    .line 1999
    const/4 v2, 0x0

    .line 2000
    .local v2, "retVal":Z
    if-eqz p0, :cond_3

    .line 2001
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 2002
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2003
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2004
    const/4 v2, 0x1

    .line 2005
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-lt v1, v4, :cond_1

    .line 2017
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return v2

    .line 2006
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2007
    .local v0, "c":C
    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2008
    const/4 v2, 0x0

    .line 2009
    goto :goto_1

    .line 2005
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2015
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_3
    const-string v3, "isNanp: null dialStr passed in"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static final isNonSeparator(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 98
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    .line 99
    const/16 v0, 0x4e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_1

    .line 98
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isNonSeparator(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 949
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 954
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 950
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 951
    const/4 v2, 0x0

    goto :goto_1

    .line 949
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static isOneNanp(Ljava/lang/String;)Z
    .locals 4
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 2024
    const/4 v1, 0x0

    .line 2025
    .local v1, "retVal":Z
    if-eqz p0, :cond_1

    .line 2026
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2027
    .local v0, "newDialStr":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2028
    const/4 v1, 0x1

    .line 2033
    .end local v0    # "newDialStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 2031
    :cond_1
    const-string v2, "isOneNanp: null dialStr passed in"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isPause(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 112
    const/16 v0, 0x70

    if-eq p0, v0, :cond_0

    const/16 v0, 0x50

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final isReallyDialable(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 92
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isSeparator(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 123
    invoke-static {p0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isDialable(C)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isStartsPostDial(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 107
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isToneWait(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 117
    const/16 v0, 0x77

    if-eq p0, v0, :cond_0

    const/16 v0, 0x57

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isTwoToNine(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 1973
    const/16 v0, 0x32

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 1974
    const/4 v0, 0x1

    .line 1976
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUriNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 2049
    if-eqz p0, :cond_1

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWellFormedSmsAddress(Ljava/lang/String;)Z
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 923
    invoke-static {p0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 925
    .local v0, "networkPortion":Ljava/lang/String;
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 926
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 927
    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isDialable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 925
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 299
    const-string v0, "PhoneNumberUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void
.end method

.method private static matchIntlPrefix(Ljava/lang/String;I)Z
    .locals 8
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    const/16 v7, 0x31

    const/16 v6, 0x30

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2156
    const/4 v2, 0x0

    .line 2157
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, p1, :cond_1

    .line 2185
    if-eq v2, v4, :cond_8

    const/4 v5, 0x3

    if-eq v2, v5, :cond_8

    const/4 v5, 0x5

    if-eq v2, v5, :cond_8

    :cond_0
    :goto_1
    return v3

    .line 2158
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2160
    .local v0, "c":C
    packed-switch v2, :pswitch_data_0

    .line 2179
    :pswitch_0
    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2157
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2162
    :pswitch_1
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    .line 2163
    :cond_3
    if-ne v0, v6, :cond_4

    const/4 v2, 0x2

    goto :goto_2

    .line 2164
    :cond_4
    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 2168
    :pswitch_2
    if-ne v0, v6, :cond_5

    const/4 v2, 0x3

    goto :goto_2

    .line 2169
    :cond_5
    if-ne v0, v7, :cond_6

    const/4 v2, 0x4

    goto :goto_2

    .line 2170
    :cond_6
    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 2174
    :pswitch_3
    if-ne v0, v7, :cond_7

    const/4 v2, 0x5

    goto :goto_2

    .line 2175
    :cond_7
    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .end local v0    # "c":C
    :cond_8
    move v3, v4

    .line 2185
    goto :goto_1

    .line 2160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static matchIntlPrefixAndCC(Ljava/lang/String;I)Z
    .locals 7
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    const/16 v6, 0x31

    const/16 v5, 0x30

    const/4 v3, 0x0

    .line 2195
    const/4 v2, 0x0

    .line 2196
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, p1, :cond_1

    .line 2235
    const/4 v4, 0x6

    if-eq v2, v4, :cond_a

    const/4 v4, 0x7

    if-eq v2, v4, :cond_a

    const/16 v4, 0x8

    if-eq v2, v4, :cond_a

    :cond_0
    :goto_1
    return v3

    .line 2197
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2199
    .local v0, "c":C
    packed-switch v2, :pswitch_data_0

    .line 2231
    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2196
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2201
    :pswitch_0
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    .line 2202
    :cond_3
    if-ne v0, v5, :cond_4

    const/4 v2, 0x2

    goto :goto_2

    .line 2203
    :cond_4
    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 2207
    :pswitch_1
    if-ne v0, v5, :cond_5

    const/4 v2, 0x3

    goto :goto_2

    .line 2208
    :cond_5
    if-ne v0, v6, :cond_6

    const/4 v2, 0x4

    goto :goto_2

    .line 2209
    :cond_6
    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 2213
    :pswitch_2
    if-ne v0, v6, :cond_7

    const/4 v2, 0x5

    goto :goto_2

    .line 2214
    :cond_7
    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 2220
    :pswitch_3
    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v2, 0x6

    goto :goto_2

    .line 2221
    :cond_8
    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 2226
    :pswitch_4
    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_9

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2227
    :cond_9
    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 2235
    .end local v0    # "c":C
    :cond_a
    const/4 v3, 0x1

    goto :goto_1

    .line 2199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private static matchTrunkPrefix(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    .line 2243
    const/4 v1, 0x0

    .line 2245
    .local v1, "found":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, p1, :cond_0

    .line 2255
    .end local v1    # "found":Z
    :goto_1
    return v1

    .line 2246
    .restart local v1    # "found":Z
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2248
    .local v0, "c":C
    const/16 v3, 0x30

    if-ne v0, v3, :cond_2

    if-nez v1, :cond_2

    .line 2249
    const/4 v1, 0x1

    .line 2245
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2250
    :cond_2
    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2251
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static minPositive(II)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 287
    if-ltz p0, :cond_2

    if-ltz p1, :cond_2

    .line 288
    if-ge p0, p1, :cond_1

    .line 294
    .end local p0    # "a":I
    :cond_0
    :goto_0
    return p0

    .restart local p0    # "a":I
    :cond_1
    move p0, p1

    .line 288
    goto :goto_0

    .line 289
    :cond_2
    if-gez p0, :cond_0

    .line 291
    if-ltz p1, :cond_3

    move p0, p1

    .line 292
    goto :goto_0

    .line 294
    :cond_3
    const/4 p0, -0x1

    goto :goto_0
.end method

.method public static networkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 964
    invoke-static {p0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 965
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 974
    invoke-static {p0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 975
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1400
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1401
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1402
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 1414
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    return-object v5

    .line 1403
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1405
    .local v0, "c":C
    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 1406
    .local v1, "digit":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    .line 1407
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1402
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1408
    :cond_2
    if-nez v2, :cond_3

    const/16 v5, 0x2b

    if-ne v0, v5, :cond_3

    .line 1409
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1410
    :cond_3
    const/16 v5, 0x61

    if-lt v0, v5, :cond_4

    const/16 v5, 0x7a

    if-le v0, v5, :cond_5

    :cond_4
    const/16 v5, 0x41

    if-lt v0, v5, :cond_1

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_1

    .line 1411
    :cond_5
    invoke-static {p0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lzx/iteam/util/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public static numberToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 987
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method private static numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B
    .locals 15
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "includeLength"    # Z

    .prologue
    .line 996
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 997
    .local v6, "numberLenReal":I
    move v5, v6

    .line 998
    .local v5, "numberLenEffective":I
    const/16 v12, 0x2b

    invoke-virtual {p0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    const/4 v3, 0x1

    .line 999
    .local v3, "hasPlus":Z
    :goto_0
    if-eqz v3, :cond_0

    add-int/lit8 v5, v5, -0x1

    .line 1001
    :cond_0
    if-nez v5, :cond_2

    const/4 v9, 0x0

    .line 1026
    :goto_1
    return-object v9

    .line 998
    .end local v3    # "hasPlus":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1003
    .restart local v3    # "hasPlus":Z
    :cond_2
    add-int/lit8 v12, v5, 0x1

    div-int/lit8 v10, v12, 0x2

    .line 1004
    .local v10, "resultLen":I
    const/4 v2, 0x1

    .line 1005
    .local v2, "extraBytes":I
    if-eqz p1, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 1006
    :cond_3
    add-int/2addr v10, v2

    .line 1008
    new-array v9, v10, [B

    .line 1010
    .local v9, "result":[B
    const/4 v1, 0x0

    .line 1011
    .local v1, "digitCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-lt v4, v6, :cond_6

    .line 1020
    and-int/lit8 v12, v1, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    shr-int/lit8 v12, v1, 0x1

    add-int/2addr v12, v2

    aget-byte v13, v9, v12

    or-int/lit16 v13, v13, 0xf0

    int-to-byte v13, v13

    aput-byte v13, v9, v12

    .line 1022
    :cond_4
    const/4 v7, 0x0

    .line 1023
    .local v7, "offset":I
    if-eqz p1, :cond_5

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .local v8, "offset":I
    add-int/lit8 v12, v10, -0x1

    int-to-byte v12, v12

    aput-byte v12, v9, v7

    move v7, v8

    .line 1024
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    :cond_5
    if-eqz v3, :cond_9

    const/16 v12, 0x91

    :goto_3
    int-to-byte v12, v12

    aput-byte v12, v9, v7

    goto :goto_1

    .line 1012
    .end local v7    # "offset":I
    :cond_6
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1013
    .local v0, "c":C
    const/16 v12, 0x2b

    if-ne v0, v12, :cond_7

    .line 1011
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1014
    :cond_7
    and-int/lit8 v12, v1, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_8

    const/4 v11, 0x4

    .line 1015
    .local v11, "shift":I
    :goto_5
    shr-int/lit8 v12, v1, 0x1

    add-int/2addr v12, v2

    aget-byte v13, v9, v12

    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->charToBCD(C)I

    move-result v14

    and-int/lit8 v14, v14, 0xf

    shl-int/2addr v14, v11

    int-to-byte v14, v14

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v9, v12

    .line 1016
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1014
    .end local v11    # "shift":I
    :cond_8
    const/4 v11, 0x0

    goto :goto_5

    .line 1024
    .end local v0    # "c":C
    .restart local v7    # "offset":I
    :cond_9
    const/16 v12, 0x81

    goto :goto_3
.end method

.method private static removeDashes(Landroid/text/Editable;)V
    .locals 3
    .param p0, "text"    # Landroid/text/Editable;

    .prologue
    .line 1267
    const/4 v0, 0x0

    .line 1268
    .local v0, "p":I
    :goto_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1275
    return-void

    .line 1269
    :cond_0
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_1

    .line 1270
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 1272
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1427
    .local v2, "normalizedDigits":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_0

    .line 1435
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1427
    :cond_0
    aget-char v0, v4, v3

    .line 1428
    .local v0, "c":C
    const/16 v6, 0xa

    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 1429
    .local v1, "digit":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    .line 1430
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1427
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1432
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "TOA"    # I

    .prologue
    .line 693
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 699
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 695
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    const/16 v0, 0x91

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 224
    if-nez p0, :cond_0

    .line 225
    const/4 v5, 0x0

    .line 241
    :goto_0
    return-object v5

    .line 227
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 228
    .local v3, "len":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 230
    .local v4, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v3, :cond_1

    .line 241
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 233
    .local v0, "c":C
    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 234
    .local v1, "digit":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_3

    .line 235
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 236
    :cond_3
    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 237
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 643
    invoke-static {p0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 644
    .local v0, "np":Ljava/lang/String;
    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toaFromString(Ljava/lang/String;)I
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 709
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    .line 710
    const/16 v0, 0x91

    .line 713
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x81

    goto :goto_0
.end method

.method private static tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Lcom/lzx/iteam/util/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .locals 11
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "acceptThailandCase"    # Z

    .prologue
    const/16 v10, 0x36

    const/16 v9, 0x30

    const/16 v8, 0x31

    const/4 v6, 0x0

    .line 2322
    const/4 v5, 0x0

    .line 2323
    .local v5, "state":I
    const/4 v0, 0x0

    .line 2324
    .local v0, "ccc":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2325
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 2396
    :cond_0
    :goto_1
    return-object v6

    .line 2326
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2327
    .local v1, "ch":C
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 2329
    :pswitch_0
    const/16 v7, 0x2b

    if-ne v1, v7, :cond_3

    const/4 v5, 0x1

    .line 2325
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2330
    :cond_3
    if-ne v1, v9, :cond_4

    const/4 v5, 0x2

    goto :goto_2

    .line 2331
    :cond_4
    if-ne v1, v8, :cond_5

    .line 2332
    if-eqz p1, :cond_0

    .line 2333
    const/16 v5, 0x8

    .line 2334
    goto :goto_2

    .line 2337
    :cond_5
    invoke-static {v1}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 2343
    :pswitch_1
    if-ne v1, v9, :cond_6

    const/4 v5, 0x3

    goto :goto_2

    .line 2344
    :cond_6
    if-ne v1, v8, :cond_7

    const/4 v5, 0x4

    goto :goto_2

    .line 2345
    :cond_7
    invoke-static {v1}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 2351
    :pswitch_2
    if-ne v1, v8, :cond_8

    const/4 v5, 0x5

    goto :goto_2

    .line 2352
    :cond_8
    invoke-static {v1}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 2363
    :pswitch_3
    invoke-static {v1}, Lcom/lzx/iteam/util/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    .line 2364
    .local v4, "ret":I
    if-lez v4, :cond_d

    .line 2365
    mul-int/lit8 v7, v0, 0xa

    add-int v0, v7, v4

    .line 2366
    const/16 v7, 0x64

    if-ge v0, v7, :cond_9

    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isCountryCallingCode(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2367
    :cond_9
    new-instance v6, Lcom/lzx/iteam/util/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v6, v0, v7}, Lcom/lzx/iteam/util/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_1

    .line 2369
    :cond_a
    const/4 v7, 0x1

    if-eq v5, v7, :cond_b

    const/4 v7, 0x3

    if-eq v5, v7, :cond_b

    const/4 v7, 0x5

    if-ne v5, v7, :cond_c

    .line 2370
    :cond_b
    const/4 v5, 0x6

    .line 2371
    goto :goto_2

    .line 2372
    :cond_c
    add-int/lit8 v5, v5, 0x1

    .line 2374
    goto :goto_2

    :cond_d
    invoke-static {v1}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 2380
    .end local v4    # "ret":I
    :pswitch_4
    if-ne v1, v10, :cond_e

    const/16 v5, 0x9

    goto :goto_2

    .line 2381
    :cond_e
    invoke-static {v1}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 2386
    :pswitch_5
    if-ne v1, v10, :cond_0

    .line 2387
    new-instance v6, Lcom/lzx/iteam/util/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    const/16 v7, 0x42

    add-int/lit8 v8, v2, 0x1

    invoke-direct {v6, v7, v8}, Lcom/lzx/iteam/util/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto/16 :goto_1

    .line 2327
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static tryGetISODigit(C)I
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 2293
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 2294
    add-int/lit8 v0, p0, -0x30

    .line 2296
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "currentIndex"    # I

    .prologue
    const/4 v3, -0x1

    .line 2409
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2410
    .local v2, "length":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 2418
    :cond_0
    :goto_1
    return v3

    .line 2411
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2412
    .local v0, "ch":C
    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    if-ltz v4, :cond_2

    .line 2413
    add-int/lit8 v3, v1, 0x1

    goto :goto_1

    .line 2414
    :cond_2
    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberUtils;->isDialable(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2410
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
