.class public Lcom/lzx/iteam/util/PhoneNumberArea;
.super Ljava/lang/Object;
.source "PhoneNumberArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/util/PhoneNumberArea$operator;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$lzx$iteam$util$PhoneNumberArea$operator:[I = null

.field private static final TAG:Ljava/lang/String; = "PhoneNumberArea"

.field private static binFileBytes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private static ipcode:[Ljava/lang/String;

.field private static mccmnc:[Ljava/lang/String;

.field public static mccmncMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lzx/iteam/util/PhoneNumberArea$operator;",
            ">;"
        }
    .end annotation
.end field

.field private static mobile_name:B

.field private static operations:[Ljava/lang/String;

.field private static provinces:[Ljava/lang/String;

.field private static sInstance:Lcom/lzx/iteam/util/PhoneNumberArea;

.field private static telecom_name:B

.field private static union_name:B


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOpertatorName:Ljava/lang/String;

.field private mPrefUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private sCityPreCode:Ljava/lang/String;

.field private sCountryCode:Ljava/lang/String;

.field private sCountryName:Ljava/lang/String;

.field private sISOCountryCode:Ljava/lang/String;

.field private sInternationalCode:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$lzx$iteam$util$PhoneNumberArea$operator()[I
    .locals 3

    .prologue
    .line 22
    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberArea;->$SWITCH_TABLE$com$lzx$iteam$util$PhoneNumberArea$operator:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/lzx/iteam/util/PhoneNumberArea$operator;->values()[Lcom/lzx/iteam/util/PhoneNumberArea$operator;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/lzx/iteam/util/PhoneNumberArea$operator;->ChinaMobile:Lcom/lzx/iteam/util/PhoneNumberArea$operator;

    invoke-virtual {v1}, Lcom/lzx/iteam/util/PhoneNumberArea$operator;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/lzx/iteam/util/PhoneNumberArea$operator;->ChinaTelecom:Lcom/lzx/iteam/util/PhoneNumberArea$operator;

    invoke-virtual {v1}, Lcom/lzx/iteam/util/PhoneNumberArea$operator;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/lzx/iteam/util/PhoneNumberArea$operator;->ChinaUnicom:Lcom/lzx/iteam/util/PhoneNumberArea$operator;

    invoke-virtual {v1}, Lcom/lzx/iteam/util/PhoneNumberArea$operator;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/lzx/iteam/util/PhoneNumberArea;->$SWITCH_TABLE$com$lzx$iteam$util$PhoneNumberArea$operator:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lzx/iteam/util/PhoneNumberArea;->binFileBytes:Ljava/util/Map;

    .line 27
    sput-byte v3, Lcom/lzx/iteam/util/PhoneNumberArea;->mobile_name:B

    .line 28
    sput-byte v4, Lcom/lzx/iteam/util/PhoneNumberArea;->union_name:B

    .line 29
    sput-byte v5, Lcom/lzx/iteam/util/PhoneNumberArea;->telecom_name:B

    .line 93
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u5c71\u4e1c"

    aput-object v1, v0, v3

    const-string v1, "\u6c5f\u82cf"

    aput-object v1, v0, v4

    const-string v1, "\u5b89\u5fbd"

    aput-object v1, v0, v5

    const-string v1, "\u6e56\u5317"

    aput-object v1, v0, v6

    const-string v1, "\u5317\u4eac"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u5929\u6d25"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u4e0a\u6d77"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u5e7f\u4e1c"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u6d59\u6c5f"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u5e7f\u897f"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u7518\u8083"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u5409\u6797"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u8fbd\u5b81"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u5185\u8499\u53e4"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u65b0\u7586"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u9ed1\u9f99\u6c5f"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u6cb3\u5317"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u91cd\u5e86"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u56db\u5ddd"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u9655\u897f"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u798f\u5efa"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u6d77\u5357"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u6c5f\u897f"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u5c71\u897f"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u6e56\u5357"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u6cb3\u5357"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u9752\u6d77"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u8d35\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\u5b81\u590f"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u4e91\u5357"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\u897f\u85cf"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lzx/iteam/util/PhoneNumberArea;->provinces:[Ljava/lang/String;

    .line 95
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "\u79fb\u52a8"

    aput-object v1, v0, v3

    const-string v1, "\u8054\u901a"

    aput-object v1, v0, v4

    const-string v1, "\u7535\u4fe1"

    aput-object v1, v0, v5

    sput-object v0, Lcom/lzx/iteam/util/PhoneNumberArea;->operations:[Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    sput-object v0, Lcom/lzx/iteam/util/PhoneNumberArea;->sInstance:Lcom/lzx/iteam/util/PhoneNumberArea;

    .line 1011
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "46000"

    aput-object v1, v0, v3

    const-string v1, "46001"

    aput-object v1, v0, v4

    const-string v1, "46002"

    aput-object v1, v0, v5

    const-string v1, "46003"

    aput-object v1, v0, v6

    const-string v1, "46005"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "46006"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "46007"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lzx/iteam/util/PhoneNumberArea;->mccmnc:[Ljava/lang/String;

    .line 1012
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "17951"

    aput-object v1, v0, v3

    const-string v1, "17911"

    aput-object v1, v0, v4

    const-string v1, "17901"

    aput-object v1, v0, v5

    sput-object v0, Lcom/lzx/iteam/util/PhoneNumberArea;->ipcode:[Ljava/lang/String;

    .line 1013
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lzx/iteam/util/PhoneNumberArea;->mccmncMap:Ljava/util/Map;

    .line 1017
    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberArea;->mccmncMap:Ljava/util/Map;

    sget-object v1, Lcom/lzx/iteam/util/PhoneNumberArea;->mccmnc:[Ljava/lang/String;

    aget-object v1, v1, v3

    sget-object v2, Lcom/lzx/iteam/util/PhoneNumberArea$operator;->ChinaMobile:Lcom/lzx/iteam/util/PhoneNumberArea$operator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberArea;->mccmncMap:Ljava/util/Map;

    sget-object v1, Lcom/lzx/iteam/util/PhoneNumberArea;->mccmnc:[Ljava/lang/String;

    aget-object v1, v1, v4

    sget-object v2, Lcom/lzx/iteam/util/PhoneNumberArea$operator;->ChinaUnicom:Lcom/lzx/iteam/util/PhoneNumberArea$operator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberArea;->mccmncMap:Ljava/util/Map;

    sget-object v1, Lcom/lzx/iteam/util/PhoneNumberArea;->mccmnc:[Ljava/lang/String;

    aget-object v1, v1, v5

    sget-object v2, Lcom/lzx/iteam/util/PhoneNumberArea$operator;->ChinaMobile:Lcom/lzx/iteam/util/PhoneNumberArea$operator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberArea;->mccmncMap:Ljava/util/Map;

    sget-object v1, Lcom/lzx/iteam/util/PhoneNumberArea;->mccmnc:[Ljava/lang/String;

    aget-object v1, v1, v6

    sget-object v2, Lcom/lzx/iteam/util/PhoneNumberArea$operator;->ChinaTelecom:Lcom/lzx/iteam/util/PhoneNumberArea$operator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberArea;->mccmncMap:Ljava/util/Map;

    sget-object v1, Lcom/lzx/iteam/util/PhoneNumberArea;->mccmnc:[Ljava/lang/String;

    aget-object v1, v1, v7

    sget-object v2, Lcom/lzx/iteam/util/PhoneNumberArea$operator;->ChinaTelecom:Lcom/lzx/iteam/util/PhoneNumberArea$operator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberArea;->mccmncMap:Ljava/util/Map;

    sget-object v1, Lcom/lzx/iteam/util/PhoneNumberArea;->mccmnc:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    sget-object v2, Lcom/lzx/iteam/util/PhoneNumberArea$operator;->ChinaUnicom:Lcom/lzx/iteam/util/PhoneNumberArea$operator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberArea;->mccmncMap:Ljava/util/Map;

    sget-object v1, Lcom/lzx/iteam/util/PhoneNumberArea;->mccmnc:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    sget-object v2, Lcom/lzx/iteam/util/PhoneNumberArea$operator;->ChinaMobile:Lcom/lzx/iteam/util/PhoneNumberArea$operator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "00"

    iput-object v0, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->sInternationalCode:Ljava/lang/String;

    .line 32
    const-string v0, "86"

    iput-object v0, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->sCountryCode:Ljava/lang/String;

    .line 33
    const-string v0, "CN"

    iput-object v0, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->sISOCountryCode:Ljava/lang/String;

    .line 34
    const-string v0, "0"

    iput-object v0, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->sCityPreCode:Ljava/lang/String;

    .line 35
    const-string v0, "\u4e2d\u56fd"

    iput-object v0, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->sCountryName:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->mOpertatorName:Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->mContext:Landroid/content/Context;

    .line 118
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 119
    iget-object v0, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->sISOCountryCode:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->sISOCountryCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->sISOCountryCode:Ljava/lang/String;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->sISOCountryCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->sISOCountryCode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lzx/iteam/util/PhoneNumberArea;->autoMatchCountry(Ljava/lang/String;)V

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->mPrefUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 128
    iget-object v0, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->mOpertatorName:Ljava/lang/String;

    .line 130
    return-void
.end method

.method private GetAreaForMobile(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x7

    const/4 v10, -0x1

    .line 459
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v11, :cond_1

    .line 460
    :cond_0
    const-string v9, ""

    .line 508
    :goto_0
    return-object v9

    .line 463
    :cond_1
    invoke-direct {p0, p1}, Lcom/lzx/iteam/util/PhoneNumberArea;->LoadBytesForMobile(Ljava/lang/String;)[B

    move-result-object v1

    .line 465
    .local v1, "binFileBytes":[B
    if-nez v1, :cond_2

    .line 466
    const/4 v9, 0x0

    goto :goto_0

    .line 471
    :cond_2
    const/4 v9, 0x3

    invoke-virtual {p1, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 474
    .local v8, "subNumber":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .local v7, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "begin":I
    array-length v9, v1

    div-int/lit8 v9, v9, 0x4

    add-int/lit8 v3, v9, -0x1

    .line 477
    .local v3, "end":I
    :goto_1
    if-le v0, v3, :cond_4

    .line 508
    :cond_3
    :goto_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 479
    :cond_4
    add-int v9, v0, v3

    div-int/lit8 v5, v9, 0x2

    .line 480
    .local v5, "mid":I
    mul-int/lit8 v4, v5, 0x4

    .line 482
    .local v4, "index":I
    invoke-direct {p0, v1, v4}, Lcom/lzx/iteam/util/PhoneNumberArea;->area([BI)I

    move-result v9

    if-lt v8, v9, :cond_7

    if-ge v5, v3, :cond_5

    add-int/lit8 v9, v4, 0x4

    invoke-direct {p0, v1, v9}, Lcom/lzx/iteam/util/PhoneNumberArea;->area([BI)I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 484
    :cond_5
    const/4 v6, -0x1

    .line 485
    .local v6, "provice":I
    const/4 v2, -0x1

    .line 486
    .local v2, "city":I
    invoke-direct {p0, v1, v4}, Lcom/lzx/iteam/util/PhoneNumberArea;->province([BI)I

    move-result v6

    if-eq v6, v10, :cond_6

    .line 487
    sget-object v9, Lcom/lzx/iteam/util/PhoneNumberArea;->provinces:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :cond_6
    invoke-direct {p0, v1, v4}, Lcom/lzx/iteam/util/PhoneNumberArea;->city([BI)I

    move-result v2

    if-eq v2, v10, :cond_3

    .line 491
    if-eq v6, v10, :cond_3

    .line 492
    invoke-direct {p0, v6}, Lcom/lzx/iteam/util/PhoneNumberArea;->getcities(I)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v2

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 500
    .end local v2    # "city":I
    .end local v6    # "provice":I
    :cond_7
    invoke-direct {p0, v1, v4}, Lcom/lzx/iteam/util/PhoneNumberArea;->area([BI)I

    move-result v9

    if-le v8, v9, :cond_8

    .line 501
    add-int/lit8 v5, v5, 0x1

    move v0, v5

    .line 502
    goto :goto_1

    .line 503
    :cond_8
    add-int/lit8 v5, v5, -0x1

    move v3, v5

    goto :goto_1
.end method

.method private GetAreaForTelephone(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 665
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 666
    const-string v0, ""

    .line 674
    :cond_0
    :goto_0
    return-object v0

    .line 669
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lzx/iteam/util/PhoneNumberArea;->_GetAreaForTelephone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 671
    :cond_2
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lzx/iteam/util/PhoneNumberArea;->_GetAreaForTelephone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private GetNationalArea(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 519
    invoke-static {p1}, Lcom/lzx/iteam/util/StringUtil;->filterUnNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 539
    iget-object v8, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070003

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 540
    .local v7, "national_codes":[Ljava/lang/String;
    array-length v2, v7

    .line 541
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "begin":I
    add-int/lit8 v3, v2, -0x1

    .line 543
    .local v3, "end":I
    :goto_0
    if-le v0, v3, :cond_0

    .line 561
    const-string v8, ""

    :goto_1
    return-object v8

    .line 544
    :cond_0
    add-int v8, v0, v3

    div-int/lit8 v4, v8, 0x2

    .line 546
    .local v4, "mid":I
    aget-object v5, v7, v4

    .line 547
    .local v5, "nationCode":Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 548
    .local v6, "nationCodeArray":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v1, v6, v8

    .line 550
    .local v1, "codeItem":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 551
    const/4 v8, 0x1

    aget-object v8, v6, v8

    goto :goto_1

    .line 554
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-le v8, v9, :cond_2

    .line 555
    add-int/lit8 v4, v4, 0x1

    move v0, v4

    .line 556
    goto :goto_0

    .line 557
    :cond_2
    add-int/lit8 v4, v4, -0x1

    move v3, v4

    goto :goto_0
.end method

.method private GetOperation(I)Ljava/lang/String;
    .locals 12
    .param p1, "opNumber"    # I

    .prologue
    const v11, 0x7f070002

    .line 314
    iget-object v10, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    array-length v1, v10

    .line 315
    .local v1, "count":I
    iget-object v10, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 316
    .local v9, "op_part":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "begin":I
    add-int/lit8 v2, v1, -0x1

    .line 318
    .local v2, "end":I
    :goto_0
    if-le v0, v2, :cond_0

    .line 337
    const-string v10, ""

    :goto_1
    return-object v10

    .line 319
    :cond_0
    add-int v10, v0, v2

    div-int/lit8 v3, v10, 0x2

    .line 320
    .local v3, "mid":I
    aget-object v7, v9, v3

    .line 321
    .local v7, "opPartsCode":Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 322
    .local v8, "opPartsCodeArray":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 323
    .local v5, "numberPrefix1":I
    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 324
    .local v6, "numberPrefix2":I
    const/4 v10, 0x2

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 325
    .local v4, "name_index":I
    if-gt p1, v6, :cond_1

    if-lt p1, v5, :cond_1

    .line 326
    sget-object v10, Lcom/lzx/iteam/util/PhoneNumberArea;->operations:[Ljava/lang/String;

    aget-object v10, v10, v4

    goto :goto_1

    .line 329
    :cond_1
    if-ge p1, v5, :cond_2

    .line 330
    add-int/lit8 v3, v3, -0x1

    move v2, v3

    .line 331
    goto :goto_0

    .line 332
    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method private LoadBytes(Ljava/lang/String;)[B
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 346
    sget-object v5, Lcom/lzx/iteam/util/PhoneNumberArea;->binFileBytes:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 348
    .local v1, "bytes":[B
    if-eqz v1, :cond_0

    array-length v5, v1

    if-gtz v5, :cond_3

    .line 350
    :cond_0
    const/4 v3, 0x0

    .line 354
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v5, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".bin"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 355
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v5

    new-array v0, v5, [B

    .line 356
    .local v0, "buffer":[B
    array-length v4, v0

    .line 357
    .local v4, "size":I
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/InputStream;->read([BII)I

    .line 359
    array-length v5, v0

    if-lez v5, :cond_1

    .line 360
    sget-object v5, Lcom/lzx/iteam/util/PhoneNumberArea;->binFileBytes:Ljava/util/Map;

    invoke-interface {v5, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :cond_1
    if-eqz v3, :cond_2

    .line 375
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 386
    .end local v0    # "buffer":[B
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "size":I
    :cond_2
    :goto_0
    return-object v0

    .line 376
    .restart local v0    # "buffer":[B
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "size":I
    :catch_0
    move-exception v2

    .line 378
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "buffer":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "size":I
    :catch_1
    move-exception v5

    .line 373
    if-eqz v3, :cond_3

    .line 375
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v3    # "inputStream":Ljava/io/InputStream;
    :cond_3
    :goto_1
    move-object v0, v1

    .line 386
    goto :goto_0

    .line 376
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_2
    move-exception v2

    .line 378
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 369
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 371
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 373
    if-eqz v3, :cond_3

    .line 375
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    .line 376
    :catch_4
    move-exception v2

    .line 378
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 372
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 373
    if-eqz v3, :cond_4

    .line 375
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 382
    :cond_4
    :goto_2
    throw v5

    .line 376
    :catch_5
    move-exception v2

    .line 378
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private LoadBytesForMobile(Ljava/lang/String;)[B
    .locals 3
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x3

    .line 397
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_0

    .line 398
    const/4 v1, 0x0

    .line 402
    :goto_0
    return-object v1

    .line 401
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "bytesFilePath":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lzx/iteam/util/PhoneNumberArea;->LoadBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_0
.end method

.method private _GetAreaForTelephone(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    const/4 v11, -0x1

    .line 605
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_1

    .line 606
    :cond_0
    const-string v9, ""

    .line 653
    :goto_0
    return-object v9

    .line 609
    :cond_1
    const-string v9, "areacode"

    invoke-direct {p0, v9}, Lcom/lzx/iteam/util/PhoneNumberArea;->LoadBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 611
    .local v1, "binFileBytes":[B
    if-nez v1, :cond_2

    .line 612
    const/4 v9, 0x0

    goto :goto_0

    .line 616
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 617
    .local v3, "codeValue":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 618
    .local v8, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "begin":I
    array-length v9, v1

    div-int/lit8 v9, v9, 0x4

    add-int/lit8 v4, v9, -0x1

    .line 620
    .local v4, "end":I
    :goto_1
    if-le v0, v4, :cond_3

    .line 653
    const-string v9, ""

    goto :goto_0

    .line 622
    :cond_3
    add-int v9, v0, v4

    div-int/lit8 v6, v9, 0x2

    .line 623
    .local v6, "mid":I
    mul-int/lit8 v5, v6, 0x4

    .line 625
    .local v5, "index":I
    invoke-direct {p0, v1, v5}, Lcom/lzx/iteam/util/PhoneNumberArea;->area([BI)I

    move-result v9

    if-ne v3, v9, :cond_6

    .line 627
    const/4 v7, -0x1

    .line 628
    .local v7, "provice":I
    const/4 v2, -0x1

    .line 629
    .local v2, "city":I
    invoke-direct {p0, v1, v5}, Lcom/lzx/iteam/util/PhoneNumberArea;->province([BI)I

    move-result v7

    if-eq v7, v11, :cond_4

    .line 630
    sget-object v9, Lcom/lzx/iteam/util/PhoneNumberArea;->provinces:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    :cond_4
    invoke-direct {p0, v1, v5}, Lcom/lzx/iteam/util/PhoneNumberArea;->city([BI)I

    move-result v2

    if-eq v2, v11, :cond_5

    .line 634
    if-eq v7, v11, :cond_5

    .line 635
    invoke-direct {p0, v7}, Lcom/lzx/iteam/util/PhoneNumberArea;->getcities(I)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    :cond_5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 644
    .end local v2    # "city":I
    .end local v7    # "provice":I
    :cond_6
    invoke-direct {p0, v1, v5}, Lcom/lzx/iteam/util/PhoneNumberArea;->area([BI)I

    move-result v9

    if-le v3, v9, :cond_7

    .line 645
    add-int/lit8 v6, v6, 0x1

    move v0, v6

    .line 646
    goto :goto_1

    .line 647
    :cond_7
    add-int/lit8 v6, v6, -0x1

    move v4, v6

    goto :goto_1
.end method

.method private area([BI)I
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "index"    # I

    .prologue
    .line 414
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    if-ltz p2, :cond_0

    .line 415
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    mul-int/lit16 v1, v1, 0x100

    add-int/2addr v0, v1

    .line 418
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private autoMatchCountry(Ljava/lang/String;)V
    .locals 7
    .param p1, "isoCountryCode"    # Ljava/lang/String;

    .prologue
    .line 866
    iget-object v5, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 867
    .local v4, "national_codes":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "begin":I
    array-length v5, v4

    add-int/lit8 v1, v5, -0x1

    .line 868
    .local v1, "end":I
    const-string v5, "cn"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 886
    :goto_0
    return-void

    .line 873
    :cond_0
    aget-object v2, v4, v0

    .line 874
    .local v2, "nationCode":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 875
    .local v3, "nationCodeArray":[Ljava/lang/String;
    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 876
    iput-object p1, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->sISOCountryCode:Ljava/lang/String;

    .line 877
    const/4 v5, 0x0

    aget-object v5, v3, v5

    iput-object v5, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->sCountryCode:Ljava/lang/String;

    .line 878
    const/4 v5, 0x4

    aget-object v5, v3, v5

    iput-object v5, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->sInternationalCode:Ljava/lang/String;

    .line 879
    const/4 v5, 0x3

    aget-object v5, v3, v5

    iput-object v5, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->sCityPreCode:Ljava/lang/String;

    .line 880
    const/4 v5, 0x1

    aget-object v5, v3, v5

    iput-object v5, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->sCountryName:Ljava/lang/String;

    goto :goto_0

    .line 883
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 872
    .end local v2    # "nationCode":Ljava/lang/String;
    .end local v3    # "nationCodeArray":[Ljava/lang/String;
    :cond_2
    if-le v0, v1, :cond_0

    goto :goto_0
.end method

.method private checkRegex(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "regexp"    # Ljava/lang/String;

    .prologue
    .line 162
    const/4 v2, 0x2

    invoke-static {p2, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 163
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 164
    .local v0, "input":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    return v2
.end method

.method private city([BI)I
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "index"    # I

    .prologue
    .line 444
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    if-ltz p2, :cond_0

    .line 445
    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 448
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private filterPhoneNum(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 855
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 856
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 862
    return-object v2

    .line 857
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 858
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x2b

    if-ne v0, v3, :cond_2

    .line 859
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 856
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static formatNum(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "rawNum"    # Ljava/lang/String;

    .prologue
    .line 1061
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 1062
    :cond_0
    const-string v3, ""

    .line 1107
    :cond_1
    :goto_0
    return-object v3

    .line 1065
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1066
    .local v0, "charArr":[C
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1067
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v0

    if-lt v1, v7, :cond_3

    .line 1073
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1074
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_5

    const-string v3, ""

    goto :goto_0

    .line 1068
    .end local v5    # "s":Ljava/lang/String;
    :cond_3
    aget-char v7, v0, v1

    invoke-static {v7}, Lcom/lzx/iteam/util/PhoneNumberArea;->isPhoneNumDigit(C)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1069
    aget-char v7, v0, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1067
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1076
    .restart local v5    # "s":Ljava/lang/String;
    :cond_5
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2b

    if-ne v7, v8, :cond_7

    .line 1078
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/lzx/iteam/util/PhoneNumberArea;->matchCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1079
    .local v2, "nCode":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1080
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1081
    .local v4, "phoneNum":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1083
    .end local v4    # "phoneNum":Ljava/lang/String;
    :cond_6
    const-string v3, ""

    goto :goto_0

    .line 1085
    .end local v2    # "nCode":Ljava/lang/String;
    :cond_7
    const-string v7, "00"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1087
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/lzx/iteam/util/PhoneNumberArea;->matchCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1088
    .restart local v2    # "nCode":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1089
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1090
    .restart local v4    # "phoneNum":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1092
    .end local v4    # "phoneNum":Ljava/lang/String;
    :cond_8
    const-string v3, ""

    goto/16 :goto_0

    .line 1096
    .end local v2    # "nCode":Ljava/lang/String;
    :cond_9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/16 v8, 0xb

    if-ge v7, v8, :cond_a

    .line 1097
    const-string v3, ""

    goto/16 :goto_0

    .line 1100
    :cond_a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0xb

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1101
    .local v3, "num":Ljava/lang/String;
    const-string v7, "13"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "14"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1102
    const-string v7, "15"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "18"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1107
    const-string v3, ""

    goto/16 :goto_0
.end method

.method public static formatPhoneNumDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "oldNumber"    # Ljava/lang/String;

    .prologue
    .line 301
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PhoneNumberArea;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberArea;->sInstance:Lcom/lzx/iteam/util/PhoneNumberArea;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/lzx/iteam/util/PhoneNumberArea;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/util/PhoneNumberArea;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lzx/iteam/util/PhoneNumberArea;->sInstance:Lcom/lzx/iteam/util/PhoneNumberArea;

    .line 113
    :cond_0
    sget-object v0, Lcom/lzx/iteam/util/PhoneNumberArea;->sInstance:Lcom/lzx/iteam/util/PhoneNumberArea;

    return-object v0
.end method

.method private getNationalAreaNew(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 571
    iget-object v8, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070003

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 572
    .local v7, "national_codes":[Ljava/lang/String;
    array-length v2, v7

    .line 573
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "begin":I
    add-int/lit8 v3, v2, -0x1

    .line 575
    .local v3, "end":I
    :goto_0
    if-le v0, v3, :cond_0

    .line 593
    const-string v8, ""

    :goto_1
    return-object v8

    .line 576
    :cond_0
    add-int v8, v0, v3

    div-int/lit8 v4, v8, 0x2

    .line 578
    .local v4, "mid":I
    aget-object v5, v7, v4

    .line 579
    .local v5, "nationCode":Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 580
    .local v6, "nationCodeArray":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v1, v6, v8

    .line 582
    .local v1, "codeItem":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 583
    const/4 v8, 0x1

    aget-object v8, v6, v8

    goto :goto_1

    .line 586
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-le v8, v9, :cond_2

    .line 587
    add-int/lit8 v4, v4, 0x1

    move v0, v4

    .line 588
    goto :goto_0

    .line 589
    :cond_2
    add-int/lit8 v4, v4, -0x1

    move v3, v4

    goto :goto_0
.end method

.method private getcities(I)[Ljava/lang/String;
    .locals 3
    .param p1, "province"    # I

    .prologue
    .line 102
    iget-object v1, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070007

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "cities":[Ljava/lang/String;
    return-object v0
.end method

.method public static isEmail(Ljava/lang/String;)Z
    .locals 4
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 1140
    const-string v2, "^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$"

    .line 1141
    .local v2, "str":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1142
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1143
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method private isHardRegexpValidate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;
    .locals 3
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "regexp"    # Ljava/lang/String;

    .prologue
    .line 154
    const/16 v2, 0x20

    invoke-static {p2, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 156
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 158
    .local v0, "input":Ljava/util/regex/Matcher;
    return-object v0
.end method

.method public static isPhoneNumDigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 1055
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static matchCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "phoneNum"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1113
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1114
    .local v1, "codeOne":[Ljava/lang/String;
    array-length v6, v1

    move v5, v4

    :goto_0
    if-lt v5, v6, :cond_1

    .line 1120
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1121
    .local v3, "codeTwo":[Ljava/lang/String;
    array-length v6, v3

    move v5, v4

    :goto_1
    if-lt v5, v6, :cond_2

    .line 1127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1128
    .local v2, "codeThree":[Ljava/lang/String;
    array-length v5, v2

    :goto_2
    if-lt v4, v5, :cond_3

    .line 1134
    const-string v0, ""

    .end local v2    # "codeThree":[Ljava/lang/String;
    .end local v3    # "codeTwo":[Ljava/lang/String;
    :cond_0
    return-object v0

    .line 1114
    :cond_1
    aget-object v0, v1, v5

    .line 1115
    .local v0, "code":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1114
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1121
    .end local v0    # "code":Ljava/lang/String;
    .restart local v3    # "codeTwo":[Ljava/lang/String;
    :cond_2
    aget-object v0, v3, v5

    .line 1122
    .restart local v0    # "code":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1121
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1128
    .end local v0    # "code":Ljava/lang/String;
    .restart local v2    # "codeThree":[Ljava/lang/String;
    :cond_3
    aget-object v0, v2, v4

    .line 1129
    .restart local v0    # "code":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1128
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private province([BI)I
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "index"    # I

    .prologue
    .line 429
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    if-ltz p2, :cond_0

    .line 430
    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 433
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private replace(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "matcher"    # Ljava/util/regex/Matcher;
    .param p2, "replaceString"    # Ljava/lang/String;

    .prologue
    .line 173
    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private retLocalArea(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 689
    invoke-static {p1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 706
    :cond_0
    :goto_0
    return-object v0

    .line 692
    :cond_1
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/util/PhoneNumberArea;->replaceIpCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 693
    invoke-static {p1}, Lcom/lzx/iteam/util/StringUtil;->filterUnNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 695
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 700
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 701
    invoke-direct {p0, p1}, Lcom/lzx/iteam/util/PhoneNumberArea;->GetAreaForTelephone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 702
    .local v0, "result":Ljava/lang/String;
    goto :goto_0

    .line 703
    .end local v0    # "result":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1}, Lcom/lzx/iteam/util/PhoneNumberArea;->GetAreaForMobile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public static stripShortNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 891
    if-nez p0, :cond_0

    .line 892
    const-string v1, "PhoneNumberArea"

    const-string v2, "source == null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_0
    move-object v0, p0

    .line 896
    .local v0, "s":Ljava/lang/String;
    const-string v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "852"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 897
    const-string v1, "853"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "886"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 898
    const-string v1, "86 "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 899
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 905
    .end local v0    # "s":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v0

    .line 900
    .restart local v0    # "s":Ljava/lang/String;
    :cond_3
    const-string v1, "17951"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "12593"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 901
    const-string v1, "17911"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "17901"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 902
    :cond_4
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public compareNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "number1"    # Ljava/lang/String;
    .param p2, "number2"    # Ljava/lang/String;

    .prologue
    .line 943
    const/4 v2, 0x0

    .line 944
    .local v2, "result":Z
    const/4 v0, 0x0

    .line 945
    .local v0, "isNumber1Mobile":Z
    const/4 v1, 0x0

    .line 948
    .local v1, "isNumber2Mobile":Z
    const-string v3, ""

    .line 949
    .local v3, "sNumber1":Ljava/lang/String;
    const-string v4, ""

    .line 952
    .local v4, "sNumber2":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 953
    const/4 v0, 0x1

    .line 957
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 958
    const/4 v1, 0x1

    .line 961
    :cond_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 964
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/util/PhoneNumberArea;->replaceIpCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 965
    invoke-virtual {p0, p2}, Lcom/lzx/iteam/util/PhoneNumberArea;->replaceIpCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 966
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 967
    const/4 v2, 0x1

    .line 982
    :cond_2
    :goto_0
    return v2

    .line 970
    :cond_3
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    .line 972
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/util/PhoneNumberArea;->replaceIpCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 973
    invoke-virtual {p0, p2}, Lcom/lzx/iteam/util/PhoneNumberArea;->replaceIpCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 974
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 975
    const/4 v2, 0x1

    .line 978
    goto :goto_0

    .line 979
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getArea(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 17
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "needOp"    # Z

    .prologue
    .line 718
    const-string v14, ",,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 719
    const-string v14, ",,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 720
    .local v12, "split":I
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 723
    .end local v12    # "split":I
    :cond_0
    const-string v14, " "

    const-string v15, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 724
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/util/PhoneNumberArea;->mPrefUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 725
    const-string v15, "country_code"

    const-string v16, "86"

    .line 724
    invoke-virtual/range {v14 .. v16}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 726
    .local v1, "countryCode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/util/PhoneNumberArea;->mPrefUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 727
    const-string v15, "international_prefix_code"

    const-string v16, "00"

    .line 726
    invoke-virtual/range {v14 .. v16}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 729
    .local v4, "internationalCode":Ljava/lang/String;
    const-string v10, ""

    .line 730
    .local v10, "result":Ljava/lang/String;
    const-string v14, "+86"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 731
    const-string v14, "+86"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 732
    .local v11, "sTmp":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/lzx/iteam/util/PhoneNumberArea;->retLocalArea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 737
    .end local v11    # "sTmp":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x4

    if-ge v14, v15, :cond_3

    .line 738
    :cond_1
    const-string v14, ""

    .line 793
    :goto_1
    return-object v14

    .line 734
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/lzx/iteam/util/PhoneNumberArea;->replaceIpCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 741
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "86"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 742
    .local v8, "pre":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 743
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 744
    .restart local v11    # "sTmp":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/lzx/iteam/util/PhoneNumberArea;->retLocalArea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 754
    .end local v11    # "sTmp":Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 756
    .local v3, "il":I
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_6

    .line 758
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-le v14, v3, :cond_6

    .line 760
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 762
    .local v7, "pl":I
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 763
    .local v13, "tmp":Ljava/lang/String;
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 765
    .local v5, "judge":Z
    if-eqz v5, :cond_6

    .line 766
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 767
    .restart local v11    # "sTmp":Ljava/lang/String;
    const/4 v2, 0x4

    .local v2, "i":I
    :goto_3
    if-gtz v2, :cond_a

    .line 781
    .end local v2    # "i":I
    .end local v5    # "judge":Z
    .end local v7    # "pl":I
    .end local v11    # "sTmp":Ljava/lang/String;
    .end local v13    # "tmp":Ljava/lang/String;
    :cond_6
    :goto_4
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_d

    .line 782
    :cond_7
    const-string v14, "\u672c\u5730\u7535\u8bdd"

    goto :goto_1

    .line 747
    .end local v3    # "il":I
    :cond_8
    const-string v14, "86"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 748
    invoke-direct/range {p0 .. p1}, Lcom/lzx/iteam/util/PhoneNumberArea;->retLocalArea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 749
    goto :goto_2

    :cond_9
    const-string v14, "+86"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 750
    const-string v14, "+86"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/lzx/iteam/util/PhoneNumberArea;->retLocalArea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 768
    .restart local v2    # "i":I
    .restart local v3    # "il":I
    .restart local v5    # "judge":Z
    .restart local v7    # "pl":I
    .restart local v11    # "sTmp":Ljava/lang/String;
    .restart local v13    # "tmp":Ljava/lang/String;
    :cond_a
    add-int v14, v2, v3

    if-le v14, v7, :cond_c

    .line 767
    :cond_b
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 772
    :cond_c
    const/4 v14, 0x0

    invoke-virtual {v11, v14, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/lzx/iteam/util/PhoneNumberArea;->GetNationalArea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 773
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_b

    goto :goto_4

    .line 784
    .end local v2    # "i":I
    .end local v5    # "judge":Z
    .end local v7    # "pl":I
    .end local v11    # "sTmp":Ljava/lang/String;
    .end local v13    # "tmp":Ljava/lang/String;
    :cond_d
    const/4 v6, 0x0

    .line 785
    .local v6, "op":Ljava/lang/String;
    if-eqz p2, :cond_e

    .line 786
    invoke-static/range {p1 .. p1}, Lcom/lzx/iteam/util/StringUtil;->filterUnNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 787
    const/4 v14, 0x0

    const/4 v15, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 788
    .local v9, "prefix":I
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/lzx/iteam/util/PhoneNumberArea;->GetOperation(I)Ljava/lang/String;

    move-result-object v6

    .line 790
    .end local v9    # "prefix":I
    :cond_e
    invoke-static {v6}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_f

    .line 791
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_f
    move-object v14, v10

    .line 793
    goto/16 :goto_1
.end method

.method public getAreaNew(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 798
    invoke-direct {p0, p1}, Lcom/lzx/iteam/util/PhoneNumberArea;->filterPhoneNum(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 800
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->mPrefUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 801
    const-string v6, "country_code"

    const-string v7, "86"

    .line 800
    invoke-virtual {v5, v6, v7}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 802
    .local v1, "countryCode":Ljava/lang/String;
    const-string v5, "86"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 803
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 804
    .local v3, "s":Ljava/lang/String;
    const-string v5, "+86"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 805
    invoke-virtual {v3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 838
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v11, :cond_b

    .line 839
    const-string v2, "\u672c\u5730\u7535\u8bdd"

    .line 850
    .end local v3    # "s":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 806
    .restart local v3    # "s":Ljava/lang/String;
    :cond_1
    const-string v5, "17951"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "12593"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 807
    const-string v5, "17911"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "17901"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 808
    :cond_2
    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 810
    const-string v5, "00"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 811
    iget-object v5, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lzx/iteam/util/PhoneNumberArea;->matchCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 812
    .local v0, "code":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    .line 813
    :cond_3
    const-string v2, ""

    goto :goto_0

    .line 815
    :cond_4
    invoke-direct {p0, v0}, Lcom/lzx/iteam/util/PhoneNumberArea;->getNationalAreaNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 818
    .end local v0    # "code":Ljava/lang/String;
    :cond_5
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 820
    iget-object v5, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lzx/iteam/util/PhoneNumberArea;->matchCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 821
    .restart local v0    # "code":Ljava/lang/String;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    .line 822
    :cond_6
    const-string v2, ""

    goto :goto_0

    .line 824
    :cond_7
    invoke-direct {p0, v0}, Lcom/lzx/iteam/util/PhoneNumberArea;->getNationalAreaNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 826
    .end local v0    # "code":Ljava/lang/String;
    :cond_8
    const-string v5, "00"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 828
    const-string v5, "00"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 829
    iget-object v5, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lzx/iteam/util/PhoneNumberArea;->matchCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 830
    .restart local v0    # "code":Ljava/lang/String;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_a

    .line 831
    :cond_9
    const-string v2, ""

    goto/16 :goto_0

    .line 833
    :cond_a
    invoke-direct {p0, v0}, Lcom/lzx/iteam/util/PhoneNumberArea;->getNationalAreaNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 842
    .end local v0    # "code":Ljava/lang/String;
    :cond_b
    const/4 v2, 0x0

    .line 843
    .local v2, "ret":Ljava/lang/String;
    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 844
    invoke-direct {p0, v3}, Lcom/lzx/iteam/util/PhoneNumberArea;->GetAreaForTelephone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 845
    goto/16 :goto_0

    .line 846
    :cond_c
    invoke-direct {p0, v3}, Lcom/lzx/iteam/util/PhoneNumberArea;->GetAreaForMobile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 850
    .end local v2    # "ret":Ljava/lang/String;
    .end local v3    # "s":Ljava/lang/String;
    :cond_d
    invoke-virtual {p0, p1, v8}, Lcom/lzx/iteam/util/PhoneNumberArea;->getArea(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public getCityPreCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->sCityPreCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->sCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->sCountryName:Ljava/lang/String;

    return-object v0
.end method

.method public getISOCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->sISOCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getInternationalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->sInternationalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getIpcallNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "ipcodeS"    # Ljava/lang/String;

    .prologue
    .line 1028
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1051
    .end local p1    # "ipcodeS":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 1032
    .restart local p1    # "ipcodeS":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    .line 1033
    iget-object v2, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 1034
    .local v0, "mccmnc":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1035
    sget-object v2, Lcom/lzx/iteam/util/PhoneNumberArea;->mccmncMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/util/PhoneNumberArea$operator;

    .line 1036
    .local v1, "soperators":Lcom/lzx/iteam/util/PhoneNumberArea$operator;
    if-eqz v1, :cond_1

    .line 1037
    invoke-static {}, Lcom/lzx/iteam/util/PhoneNumberArea;->$SWITCH_TABLE$com$lzx$iteam$util$PhoneNumberArea$operator()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/lzx/iteam/util/PhoneNumberArea$operator;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1051
    .end local v0    # "mccmnc":Ljava/lang/String;
    .end local v1    # "soperators":Lcom/lzx/iteam/util/PhoneNumberArea$operator;
    :cond_1
    const-string p1, ""

    goto :goto_0

    .line 1039
    .restart local v0    # "mccmnc":Ljava/lang/String;
    .restart local v1    # "soperators":Lcom/lzx/iteam/util/PhoneNumberArea$operator;
    :pswitch_0
    sget-object v2, Lcom/lzx/iteam/util/PhoneNumberArea;->ipcode:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object p1, v2, v3

    goto :goto_0

    .line 1041
    :pswitch_1
    sget-object v2, Lcom/lzx/iteam/util/PhoneNumberArea;->ipcode:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object p1, v2, v3

    goto :goto_0

    .line 1043
    :pswitch_2
    sget-object v2, Lcom/lzx/iteam/util/PhoneNumberArea;->ipcode:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object p1, v2, v3

    goto :goto_0

    .line 1037
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->mOpertatorName:Ljava/lang/String;

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->mOpertatorName:Ljava/lang/String;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->mOpertatorName:Ljava/lang/String;

    return-object v0
.end method

.method public isMobilePhone(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "label"    # I

    .prologue
    .line 916
    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 917
    const/4 v1, 0x1

    .line 932
    :goto_0
    return v1

    .line 920
    :cond_0
    const/4 v1, 0x0

    .line 921
    .local v1, "result":Z
    const-string v2, "\\("

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 922
    const-string v2, "\\)"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 923
    const-string v2, "\\-"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 924
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 925
    iget-object v2, p0, Lcom/lzx/iteam/util/PhoneNumberArea;->mPrefUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 926
    const-string v3, "country_code"

    const-string v4, "86"

    .line 925
    invoke-virtual {v2, v3, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 927
    .local v0, "countryCode":Ljava/lang/String;
    const-string v2, "86"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 928
    invoke-static {p1}, Lcom/lzx/iteam/util/StringUtil;->isMobilePhoneInChina(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 930
    :cond_1
    const/4 v1, 0x0

    .line 932
    goto :goto_0
.end method

.method public replaceIpCall(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "oldNumber"    # Ljava/lang/String;

    .prologue
    .line 186
    move-object/from16 v13, p1

    .line 188
    .local v13, "result":Ljava/lang/String;
    const-string v12, "[*#\\-()\\.\\s]"

    .line 189
    .local v12, "regexDealExtraChars":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/lzx/iteam/util/PhoneNumberArea;->isHardRegexpValidate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 190
    .local v6, "matcher":Ljava/util/regex/Matcher;
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v14, ""

    invoke-virtual {v13, v12, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 191
    .local v7, "newNumber":Ljava/lang/StringBuffer;
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    .line 197
    .local v8, "newNumberLength":I
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "^86.{8,}"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/lzx/iteam/util/PhoneNumberArea;->checkRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 198
    const/16 v14, 0xb

    if-le v8, v14, :cond_0

    .line 199
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "+"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    .line 204
    :cond_0
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "^852.{7,}"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/lzx/iteam/util/PhoneNumberArea;->checkRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 205
    const/16 v14, 0xa

    if-le v8, v14, :cond_1

    .line 206
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "+"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    .line 210
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "^853.{7,}"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/lzx/iteam/util/PhoneNumberArea;->checkRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 211
    const/16 v14, 0xb

    if-le v8, v14, :cond_2

    .line 212
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "+"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    .line 216
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "^886.{7,}"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/lzx/iteam/util/PhoneNumberArea;->checkRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 217
    const/16 v14, 0xb

    if-le v8, v14, :cond_3

    .line 218
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "+"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    .line 222
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    .line 224
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/util/PhoneNumberArea;->mPrefUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v15, "country_code"

    const-class v16, Ljava/lang/String;

    invoke-virtual/range {v14 .. v16}, Lcom/lzx/iteam/util/PreferenceUtil;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 225
    .local v2, "countryCode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/util/PhoneNumberArea;->mPrefUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v15, "international_prefix_code"

    const-class v16, Ljava/lang/String;

    invoke-virtual/range {v14 .. v16}, Lcom/lzx/iteam/util/PreferenceUtil;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 226
    .local v4, "internationalCode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/util/PhoneNumberArea;->mPrefUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v15, "setting_init"

    const-class v16, Ljava/lang/Integer;

    invoke-virtual/range {v14 .. v16}, Lcom/lzx/iteam/util/PreferenceUtil;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-nez v14, :cond_4

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/util/PhoneNumberArea;->sCountryCode:Ljava/lang/String;

    .line 228
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/util/PhoneNumberArea;->sInternationalCode:Ljava/lang/String;

    .line 231
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    .local v3, "internaitonCoadAndCountryCode":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v14, "+"

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .local v9, "plusAndCountryCode":Ljava/lang/StringBuilder;
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 238
    .local v10, "plusCountryCodeZero":Ljava/lang/StringBuilder;
    const-string v14, "0"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 242
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "^"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/lzx/iteam/util/PhoneNumberArea;->checkRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 243
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/lzx/iteam/util/PhoneNumberArea;->isHardRegexpValidate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 244
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14}, Lcom/lzx/iteam/util/PhoneNumberArea;->replace(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 248
    :cond_5
    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "^\\"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/lzx/iteam/util/PhoneNumberArea;->checkRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 249
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "^\\"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/lzx/iteam/util/PhoneNumberArea;->isHardRegexpValidate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 250
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14}, Lcom/lzx/iteam/util/PhoneNumberArea;->replace(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 254
    :cond_6
    const/4 v5, 0x0

    .line 257
    .local v5, "isMobile":Z
    const-string v14, "86"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 260
    const-string v14, "^\\+861.*"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/lzx/iteam/util/PhoneNumberArea;->checkRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 262
    const-string v14, "^\\+8610.*"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/lzx/iteam/util/PhoneNumberArea;->checkRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 263
    const/4 v5, 0x1

    .line 274
    :cond_7
    :goto_0
    if-nez v5, :cond_8

    .line 275
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "^\\"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/lzx/iteam/util/PhoneNumberArea;->isHardRegexpValidate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 276
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/util/PhoneNumberArea;->sCityPreCode:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14}, Lcom/lzx/iteam/util/PhoneNumberArea;->replace(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 279
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_9

    .line 281
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "^\\"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 283
    .local v11, "regex":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v11}, Lcom/lzx/iteam/util/PhoneNumberArea;->isHardRegexpValidate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 284
    const-string v14, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14}, Lcom/lzx/iteam/util/PhoneNumberArea;->replace(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 287
    .end local v11    # "regex":Ljava/lang/String;
    :cond_9
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_c

    .line 288
    const-string v14, "^\\+"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/lzx/iteam/util/PhoneNumberArea;->isHardRegexpValidate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 289
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/lzx/iteam/util/PhoneNumberArea;->replace(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 295
    :goto_1
    return-object v13

    .line 265
    :cond_a
    const/4 v5, 0x0

    .line 268
    goto :goto_0

    .line 269
    :cond_b
    const/4 v5, 0x0

    goto :goto_0

    .line 291
    :cond_c
    const-string v14, "^\\+"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/lzx/iteam/util/PhoneNumberArea;->isHardRegexpValidate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 292
    const-string v14, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14}, Lcom/lzx/iteam/util/PhoneNumberArea;->replace(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_1
.end method
