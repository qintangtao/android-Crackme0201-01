.class public final Lcom/lzx/iteam/dimensioncode/result/AddressBookResultHandler;
.super Lcom/lzx/iteam/dimensioncode/result/ResultHandler;
.source "AddressBookResultHandler.java"


# static fields
.field private static final DATE_FORMATS:[Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 43
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/text/DateFormat;

    .line 44
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd"

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v3, v1, v2

    const/4 v3, 0x1

    .line 45
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd\'T\'HHmmss"

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v4, v1, v3

    const/4 v3, 0x2

    .line 46
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v4, v1, v3

    const/4 v3, 0x3

    .line 47
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd\'T\'HH:mm:ss"

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v4, v1, v3

    .line 43
    sput-object v1, Lcom/lzx/iteam/dimensioncode/result/AddressBookResultHandler;->DATE_FORMATS:[Ljava/text/DateFormat;

    .line 50
    sget-object v3, Lcom/lzx/iteam/dimensioncode/result/AddressBookResultHandler;->DATE_FORMATS:[Ljava/text/DateFormat;

    array-length v4, v3

    move v1, v2

    .local v0, "format":Ljava/text/DateFormat;
    :goto_0
    if-lt v1, v4, :cond_0

    .line 53
    return-void

    .line 50
    :cond_0
    aget-object v0, v3, v1

    .line 51
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/client/result/AddressBookParsedResult;[BLjava/lang/String;Z)V
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "result"    # Lcom/google/zxing/client/result/ParsedResult;
    .param p3, "data"    # Lcom/google/zxing/client/result/AddressBookParsedResult;
    .param p4, "filePath"    # [B
    .param p5, "groupId"    # Ljava/lang/String;
    .param p6, "cloudMode"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/dimensioncode/result/ResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V

    .line 68
    if-nez p3, :cond_3

    move-object v1, p2

    .line 69
    check-cast v1, Lcom/google/zxing/client/result/AddressBookParsedResult;

    .line 74
    .local v1, "addressResult":Lcom/google/zxing/client/result/AddressBookParsedResult;
    :goto_0
    invoke-virtual {v1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getAddresses()[Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "addresses":[Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getAddressTypes()[Ljava/lang/String;

    .line 76
    invoke-virtual {v1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPhoneNumbers()[Ljava/lang/String;

    move-result-object v8

    .line 77
    .local v8, "phoneNumbers":[Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getEmails()[Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "emails":[Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNames()[Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "displayName":[Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/lzx/iteam/dimensioncode/result/AddressBookResultHandler;->formatName([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-virtual {v1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPhoneTypes()[Ljava/lang/String;

    .line 81
    invoke-virtual {v1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getEmailTypes()[Ljava/lang/String;

    .line 82
    invoke-virtual {v1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getURLs()[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getURLs()[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    .line 83
    :cond_0
    invoke-virtual {v1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getOrg()Ljava/lang/String;

    move-result-object v7

    .line 84
    .local v7, "org":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNote()Ljava/lang/String;

    .line 85
    invoke-virtual {v1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 86
    .local v6, "jobTitle":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-class v9, Lcom/lzx/iteam/ResultActivity;

    invoke-direct {v0, p1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v0, "addContact":Landroid/content/Intent;
    const-string v9, "phone"

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    if-eqz v4, :cond_6

    array-length v9, v4

    if-lez v9, :cond_6

    .line 119
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v9, v4

    if-lt v5, v9, :cond_4

    .line 140
    .end local v5    # "i":I
    :goto_2
    const-string v9, "company"

    invoke-virtual {v0, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v9, "job"

    invoke-virtual {v0, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    if-eqz v2, :cond_7

    array-length v9, v2

    if-lez v9, :cond_7

    .line 145
    const/4 v9, 0x0

    aget-object v9, v2, v9

    invoke-static {v9}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 147
    const-string v9, "address"

    const/4 v10, 0x0

    aget-object v10, v2, v10

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    :cond_1
    :goto_3
    if-eqz v3, :cond_2

    array-length v9, v3

    if-lez v9, :cond_2

    .line 163
    const-string v9, "name"

    const/4 v10, 0x0

    aget-object v10, v3, v10

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    :cond_2
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 177
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 178
    return-void

    .line 71
    .end local v0    # "addContact":Landroid/content/Intent;
    .end local v1    # "addressResult":Lcom/google/zxing/client/result/AddressBookParsedResult;
    .end local v2    # "addresses":[Ljava/lang/String;
    .end local v3    # "displayName":[Ljava/lang/String;
    .end local v4    # "emails":[Ljava/lang/String;
    .end local v6    # "jobTitle":Ljava/lang/String;
    .end local v7    # "org":Ljava/lang/String;
    .end local v8    # "phoneNumbers":[Ljava/lang/String;
    :cond_3
    move-object v1, p3

    .restart local v1    # "addressResult":Lcom/google/zxing/client/result/AddressBookParsedResult;
    goto/16 :goto_0

    .line 120
    .restart local v0    # "addContact":Landroid/content/Intent;
    .restart local v2    # "addresses":[Ljava/lang/String;
    .restart local v3    # "displayName":[Ljava/lang/String;
    .restart local v4    # "emails":[Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v6    # "jobTitle":Ljava/lang/String;
    .restart local v7    # "org":Ljava/lang/String;
    .restart local v8    # "phoneNumbers":[Ljava/lang/String;
    :cond_4
    aget-object v9, v4, v5

    invoke-static {v9}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 122
    const-string v9, "email"

    aget-object v10, v4, v5

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 126
    .end local v5    # "i":I
    :cond_6
    const-string v9, "email"

    const-string v10, ""

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 150
    :cond_7
    const-string v9, "address"

    const-string v10, ""

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3
.end method

.method private formatName([Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p1, "name"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 192
    if-nez p1, :cond_0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v5

    .line 203
    :goto_0
    return-object v2

    .line 194
    :cond_0
    aget-object v0, p1, v5

    .line 195
    .local v0, "displayName":Ljava/lang/String;
    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 196
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "format":[Ljava/lang/String;
    new-array v2, v6, [Ljava/lang/String;

    .line 198
    .local v2, "formatedName":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v1, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    goto :goto_0

    .end local v1    # "format":[Ljava/lang/String;
    .end local v2    # "formatedName":[Ljava/lang/String;
    :cond_1
    move-object v2, p1

    .line 203
    goto :goto_0
.end method

.method private static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 181
    sget-object v2, Lcom/lzx/iteam/dimensioncode/result/AddressBookResultHandler;->DATE_FORMATS:[Ljava/text/DateFormat;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 188
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 181
    :cond_0
    aget-object v0, v2, v1

    .line 183
    .local v0, "currentFormat":Ljava/text/DateFormat;
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 181
    :catch_0
    move-exception v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getDisplayContents()Ljava/lang/CharSequence;
    .locals 14

    .prologue
    const/4 v10, 0x0

    .line 210
    invoke-virtual {p0}, Lcom/lzx/iteam/dimensioncode/result/AddressBookResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/client/result/AddressBookParsedResult;

    .line 211
    .local v7, "result":Lcom/google/zxing/client/result/AddressBookParsedResult;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v9, 0x64

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 212
    .local v1, "contents":Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNames()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 215
    .local v3, "namesLength":I
    invoke-virtual {v7}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPronunciation()Ljava/lang/String;

    move-result-object v6

    .line 216
    .local v6, "pronunciation":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 217
    const-string v9, "\n("

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const/16 v9, 0x29

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    :cond_0
    invoke-virtual {v7}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 223
    invoke-virtual {v7}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getOrg()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 224
    invoke-virtual {v7}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getAddresses()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 225
    invoke-virtual {v7}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPhoneNumbers()[Ljava/lang/String;

    move-result-object v5

    .line 226
    .local v5, "numbers":[Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 227
    array-length v11, v5

    move v9, v10

    :goto_0
    if-lt v9, v11, :cond_3

    .line 231
    :cond_1
    invoke-virtual {v7}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getEmails()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 232
    invoke-virtual {v7}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getURLs()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 234
    invoke-virtual {v7}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getBirthday()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "birthday":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 236
    invoke-static {v0}, Lcom/lzx/iteam/dimensioncode/result/AddressBookResultHandler;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 237
    .local v2, "date":Ljava/util/Date;
    if-eqz v2, :cond_2

    .line 238
    const/4 v9, 0x2

    invoke-static {v9}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v9

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 241
    .end local v2    # "date":Ljava/util/Date;
    :cond_2
    invoke-virtual {v7}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNote()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 243
    if-lez v3, :cond_4

    .line 245
    new-instance v8, Landroid/text/SpannableString;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 246
    .local v8, "styled":Landroid/text/Spannable;
    new-instance v9, Landroid/text/style/StyleSpan;

    const/4 v11, 0x1

    invoke-direct {v9, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v8, v9, v10, v3, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 249
    .end local v8    # "styled":Landroid/text/Spannable;
    :goto_1
    return-object v8

    .line 227
    .end local v0    # "birthday":Ljava/lang/String;
    :cond_3
    aget-object v4, v5, v9

    .line 228
    .local v4, "number":Ljava/lang/String;
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v1}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 227
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 249
    .end local v4    # "number":Ljava/lang/String;
    .restart local v0    # "birthday":Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method
