.class public Lcom/lzx/iteam/util/CommonCodeUtil;
.super Ljava/lang/Object;
.source "CommonCodeUtil.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$lzx$iteam$util$PhoneNumberArea$operator:[I = null

.field public static final PAUSE:C = ','

.field public static final PAYPHONE_NUMBER:Ljava/lang/String; = "-3"

.field public static final PRIVATE_NUMBER:Ljava/lang/String; = "-2"

.field private static final TAG:Ljava/lang/String; = "CommonCodeUtil"

.field public static final UNKNOWN_NUMBER:Ljava/lang/String; = "-1"

.field public static final WAIT:C = ';'

.field public static final WILD:C = 'N'


# direct methods
.method static synthetic $SWITCH_TABLE$com$lzx$iteam$util$PhoneNumberArea$operator()[I
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lcom/lzx/iteam/util/CommonCodeUtil;->$SWITCH_TABLE$com$lzx$iteam$util$PhoneNumberArea$operator:[I

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
    sput-object v0, Lcom/lzx/iteam/util/CommonCodeUtil;->$SWITCH_TABLE$com$lzx$iteam$util$PhoneNumberArea$operator:[I

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

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static addShortcut(Landroid/app/Activity;)V
    .locals 5
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 319
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .local v2, "shortcut":Landroid/content/Intent;
    const-string v3, "duplicate"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 321
    const-string v3, "android.intent.extra.shortcut.NAME"

    const v4, 0x7f080025

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/lzx/iteam/CloudDialerActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 324
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-string v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 329
    const v3, 0x7f0200a1

    .line 328
    invoke-static {p0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    .line 330
    .local v0, "iconRes":Landroid/content/Intent$ShortcutIconResource;
    const-string v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 332
    invoke-virtual {p0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 333
    return-void
.end method

.method public static getCallIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 204
    :goto_0
    return-object v0

    .line 199
    :cond_0
    invoke-static {p0}, Lcom/lzx/iteam/util/StringUtil;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "sip"

    .line 201
    .local v1, "scheme":Ljava/lang/String;
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL"

    invoke-static {v1, p0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 202
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10800000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 200
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "scheme":Ljava/lang/String;
    :cond_1
    const-string v1, "tel"

    goto :goto_1
.end method

.method public static getCallVoipIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 213
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 214
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 216
    return-object v0
.end method

.method public static getIpPrefix(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    invoke-static {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v1

    const-string v2, "ip_call"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    .local v0, "ipcodeS":Ljava/lang/String;
    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    .end local v0    # "ipcodeS":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "ipcodeS":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getRoamingCallBackCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 234
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 235
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "mccmnc":Ljava/lang/String;
    const/4 v1, 0x0

    .line 239
    .local v1, "ret":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 240
    sget-object v4, Lcom/lzx/iteam/util/PhoneNumberArea;->mccmncMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/util/PhoneNumberArea$operator;

    .line 241
    .local v2, "soperators":Lcom/lzx/iteam/util/PhoneNumberArea$operator;
    invoke-static {}, Lcom/lzx/iteam/util/CommonCodeUtil;->$SWITCH_TABLE$com$lzx$iteam$util$PhoneNumberArea$operator()[I

    move-result-object v4

    invoke-virtual {v2}, Lcom/lzx/iteam/util/PhoneNumberArea$operator;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 255
    .end local v2    # "soperators":Lcom/lzx/iteam/util/PhoneNumberArea$operator;
    :cond_0
    :goto_0
    return-object v1

    .line 243
    .restart local v2    # "soperators":Lcom/lzx/iteam/util/PhoneNumberArea$operator;
    :pswitch_0
    const v4, 0x7f08006f

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 244
    goto :goto_0

    .line 246
    :pswitch_1
    const v4, 0x7f080070

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 247
    goto :goto_0

    .line 249
    :pswitch_2
    const v4, 0x7f080071

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 250
    goto :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static final isDialable(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 296
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

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isDialable(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 287
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 292
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 288
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/lzx/iteam/util/CommonCodeUtil;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 289
    const/4 v2, 0x0

    goto :goto_1

    .line 287
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isNotCallBackNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 279
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    const-string v0, "-2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    :cond_0
    const/4 v0, 0x1

    .line 283
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static launchAddToContacts(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 154
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    :cond_0
    const/4 v1, 0x0

    .line 162
    :goto_0
    return v1

    .line 157
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 162
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static launchCallByNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 18
    .param p0, "activity"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 56
    if-eqz p0, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 57
    :cond_0
    const/4 v15, 0x0

    .line 141
    :goto_0
    return v15

    .line 61
    :cond_1
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v10

    .line 62
    .local v10, "mPreferenceUtil":Lcom/lzx/iteam/util/PreferenceUtil;
    const-string v15, "istwosim"

    const-class v16, Ljava/lang/Integer;

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lcom/lzx/iteam/util/PreferenceUtil;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 64
    .local v8, "isTwoSim":I
    const/4 v15, 0x1

    if-ne v8, v15, :cond_6

    .line 65
    const-string v15, "twosimpackage"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 66
    .local v13, "twoSimPackage":Ljava/lang/String;
    const/4 v7, 0x0

    .line 67
    .local v7, "isHaveInstalled":Z
    invoke-static/range {p0 .. p0}, Lcom/lzx/iteam/net/MsgCenter;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/MsgCenter;

    move-result-object v11

    .line 68
    .local v11, "mc":Lcom/lzx/iteam/net/MsgCenter;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v12

    .line 70
    .local v12, "pm":Landroid/content/pm/PackageManager;
    :try_start_1
    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 71
    const/4 v7, 0x1

    .line 75
    :goto_1
    if-eqz v7, :cond_3

    .line 82
    :try_start_2
    const-string v15, "twosimtype"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 83
    .local v14, "type":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 84
    .local v2, "data":Landroid/os/Bundle;
    const-string v15, "number"

    move-object/from16 v0, p1

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v15, "type"

    invoke-virtual {v2, v15, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v3, "intent":Landroid/content/Intent;
    new-instance v15, Landroid/content/ComponentName;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ".TwoSimActivity"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v13, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 88
    const-string v15, "com.hfx.twosimplugin"

    invoke-virtual {v3, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 90
    const/high16 v15, 0x10800000

    invoke-virtual {v3, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 91
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 92
    const-wide/16 v16, 0x0

    const/16 v15, 0x2718

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1, v15}, Lcom/lzx/iteam/net/MsgCenter;->typeMsgExist(JI)J

    move-result-wide v4

    .line 93
    .local v4, "flag":J
    const-wide/16 v16, -0x1

    cmp-long v15, v4, v16

    if-eqz v15, :cond_2

    .line 94
    invoke-virtual {v11, v4, v5}, Lcom/lzx/iteam/net/MsgCenter;->getMsgItem(J)Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;

    move-result-object v9

    .line 95
    .local v9, "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    const/4 v15, 0x1

    iput v15, v9, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->isReaded:I

    .line 96
    const v15, 0x7f0200df

    iput v15, v9, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->msgTypeDrawableId:I

    .line 97
    invoke-virtual {v11, v9}, Lcom/lzx/iteam/net/MsgCenter;->updateMsgReaded(Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;)V

    .line 141
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "flag":J
    .end local v7    # "isHaveInstalled":Z
    .end local v8    # "isTwoSim":I
    .end local v9    # "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    .end local v10    # "mPreferenceUtil":Lcom/lzx/iteam/util/PreferenceUtil;
    .end local v11    # "mc":Lcom/lzx/iteam/net/MsgCenter;
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "twoSimPackage":Ljava/lang/String;
    .end local v14    # "type":Ljava/lang/String;
    :cond_2
    :goto_2
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 73
    .restart local v7    # "isHaveInstalled":Z
    .restart local v8    # "isTwoSim":I
    .restart local v10    # "mPreferenceUtil":Lcom/lzx/iteam/util/PreferenceUtil;
    .restart local v11    # "mc":Lcom/lzx/iteam/net/MsgCenter;
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "twoSimPackage":Ljava/lang/String;
    :catch_0
    move-exception v15

    const/4 v7, 0x0

    goto :goto_1

    .line 99
    :cond_3
    if-nez v7, :cond_2

    .line 100
    const-string v15, "show_twosim_dialog"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, "isFirst":Ljava/lang/String;
    if-nez v6, :cond_4

    .line 102
    invoke-static/range {p0 .. p1}, Lcom/lzx/iteam/util/CommonCodeUtil;->showHelpDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    :goto_3
    const-wide/16 v16, 0x0

    const/16 v15, 0x2718

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1, v15}, Lcom/lzx/iteam/net/MsgCenter;->typeMsgExist(JI)J

    move-result-wide v4

    .line 108
    .restart local v4    # "flag":J
    const-wide/16 v16, -0x1

    cmp-long v15, v4, v16

    if-nez v15, :cond_5

    .line 109
    new-instance v9, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;

    invoke-direct {v9}, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;-><init>()V

    .line 110
    .restart local v9    # "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    iput-wide v0, v9, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->cloudId:J

    .line 111
    const/4 v15, 0x0

    iput-object v15, v9, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->phoneNum:Ljava/lang/String;

    .line 112
    const/4 v15, 0x0

    iput v15, v9, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->isReaded:I

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v9, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->dateTime:J

    .line 114
    const/16 v15, 0x2718

    iput v15, v9, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->execCode:I

    .line 115
    const v15, 0x7f08006d

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v9, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->displayText:Ljava/lang/String;

    .line 116
    const-string v15, ""

    iput-object v15, v9, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->argList:Ljava/lang/String;

    .line 117
    const v15, 0x7f0200e0

    iput v15, v9, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->msgTypeDrawableId:I

    .line 118
    const/4 v15, -0x1

    iput v15, v9, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->nextActionDrawableId:I

    .line 119
    invoke-virtual {v11, v9}, Lcom/lzx/iteam/net/MsgCenter;->addNewMsg(Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;)V

    goto :goto_2

    .line 133
    .end local v4    # "flag":J
    .end local v6    # "isFirst":Ljava/lang/String;
    .end local v7    # "isHaveInstalled":Z
    .end local v8    # "isTwoSim":I
    .end local v9    # "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    .end local v10    # "mPreferenceUtil":Lcom/lzx/iteam/util/PreferenceUtil;
    .end local v11    # "mc":Lcom/lzx/iteam/net/MsgCenter;
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "twoSimPackage":Ljava/lang/String;
    :catch_1
    move-exception v15

    goto :goto_2

    .line 104
    .restart local v6    # "isFirst":Ljava/lang/String;
    .restart local v7    # "isHaveInstalled":Z
    .restart local v8    # "isTwoSim":I
    .restart local v10    # "mPreferenceUtil":Lcom/lzx/iteam/util/PreferenceUtil;
    .restart local v11    # "mc":Lcom/lzx/iteam/net/MsgCenter;
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "twoSimPackage":Ljava/lang/String;
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/lzx/iteam/util/CommonCodeUtil;->getCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 105
    .restart local v3    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 136
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "isFirst":Ljava/lang/String;
    .end local v7    # "isHaveInstalled":Z
    .end local v8    # "isTwoSim":I
    .end local v10    # "mPreferenceUtil":Lcom/lzx/iteam/util/PreferenceUtil;
    .end local v11    # "mc":Lcom/lzx/iteam/net/MsgCenter;
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "twoSimPackage":Ljava/lang/String;
    :catch_2
    move-exception v15

    .line 137
    const v15, 0x7f08002b

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 138
    const/16 v16, 0x1

    .line 136
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    .line 138
    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 121
    .restart local v4    # "flag":J
    .restart local v6    # "isFirst":Ljava/lang/String;
    .restart local v7    # "isHaveInstalled":Z
    .restart local v8    # "isTwoSim":I
    .restart local v10    # "mPreferenceUtil":Lcom/lzx/iteam/util/PreferenceUtil;
    .restart local v11    # "mc":Lcom/lzx/iteam/net/MsgCenter;
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "twoSimPackage":Ljava/lang/String;
    :cond_5
    :try_start_3
    invoke-virtual {v11, v4, v5}, Lcom/lzx/iteam/net/MsgCenter;->getMsgItem(J)Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;

    move-result-object v9

    .line 122
    .restart local v9    # "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    const/4 v15, 0x0

    iput v15, v9, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->isReaded:I

    .line 123
    const v15, 0x7f0200e0

    iput v15, v9, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->msgTypeDrawableId:I

    .line 124
    invoke-virtual {v11, v9}, Lcom/lzx/iteam/net/MsgCenter;->updateMsgReaded(Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;)V

    goto/16 :goto_2

    .line 128
    .end local v4    # "flag":J
    .end local v6    # "isFirst":Ljava/lang/String;
    .end local v7    # "isHaveInstalled":Z
    .end local v9    # "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    .end local v11    # "mc":Lcom/lzx/iteam/net/MsgCenter;
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "twoSimPackage":Ljava/lang/String;
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/lzx/iteam/util/CommonCodeUtil;->getCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 129
    .restart local v3    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2
.end method

.method public static launchSendMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "activity"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 166
    if-nez p0, :cond_0

    .line 167
    const/4 v2, 0x0

    .line 189
    :goto_0
    return v2

    .line 172
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 173
    const-string v3, "sms"

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 174
    .local v1, "numberUri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 180
    .end local v1    # "numberUri":Landroid/net/Uri;
    .local v0, "intent":Landroid/content/Intent;
    :goto_1
    invoke-static {p2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 181
    const-string v3, "sms_body"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    const v3, 0x7f08002b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 187
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 176
    :cond_2
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static networkUnavailable(Landroid/content/Context;)Z
    .locals 6
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 300
    const/4 v2, 0x0

    .line 301
    .local v2, "haveConnectedWifi":Z
    const/4 v1, 0x0

    .line 303
    .local v1, "haveConnectedMobile":Z
    const-string v5, "connectivity"

    .line 302
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 304
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 305
    .local v3, "ni":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    .line 306
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 307
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 308
    const/4 v2, 0x1

    .line 315
    :cond_0
    :goto_0
    if-nez v2, :cond_2

    if-nez v1, :cond_2

    :goto_1
    return v4

    .line 309
    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_0

    .line 310
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 311
    const/4 v1, 0x1

    goto :goto_0

    .line 315
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static phoneIsIdle(Landroid/app/Activity;)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 45
    if-nez p0, :cond_0

    .line 52
    :goto_0
    return v0

    .line 49
    :cond_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 48
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 50
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 52
    .local v0, "result":Z
    :cond_1
    goto :goto_0
.end method

.method private static showHelpDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 145
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lzx/iteam/FakeDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "dialog_title"

    const-string v2, "\u63d0\u793a"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v1, "dialog_message"

    const-string v2, "\u76d1\u6d4b\u5230\u53cc\u5361\u63d2\u4ef6\uff0c\u4e3a\u4e86\u4f7f\u60a8\u62e8\u6253\u66f4\u65b9\u4fbf\u662f\u5426\u9700\u8981\u7acb\u523b\u4e0b\u8f7d?"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v1, "dialog_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 150
    return-void
.end method
