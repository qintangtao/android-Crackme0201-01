.class public Lcom/lzx/iteam/util/SettingsParser;
.super Ljava/lang/Object;
.source "SettingsParser.java"


# static fields
.field private static final ATTR_KEY:Ljava/lang/String; = "key"

.field private static final CUSTOMIZATION_SETTINGS_URI:Ljava/lang/String; = "content://com.sonyericsson.provider.customization/settings/com.sonyericsson.android.socialphonebook"

.field public static final KEY_ACCOUNT_TYPES:Ljava/lang/String; = "account-types"

.field public static final KEY_BRAND_STRING:Ljava/lang/String; = "brand"

.field public static final KEY_DISABLED_CONTACT_FIELDS:Ljava/lang/String; = "disabled-contact-fields"

.field public static final KEY_DISABLED_IM_SERVICES:Ljava/lang/String; = "disabled-im-services"

.field public static final KEY_DISABLED_VOICEMAIL:Ljava/lang/String; = "disabled-voicemail"

.field public static final KEY_DISABLE_DISPLAY_ORDER:Ljava/lang/String; = "disabled-display-order"

.field public static final KEY_DISABLE_INTEGRATED_APP_PRESENCE:Ljava/lang/String; = "disable-integrated-app-presence"

.field public static final KEY_DISABLE_SORT_ORDER:Ljava/lang/String; = "disabled-sort-order"

.field public static final KEY_ENABLE_SPEED_DIAL:Ljava/lang/String; = "enable-speed-dial"

.field public static final KEY_FACEBOOK:Ljava/lang/String; = "facebook"

.field public static final KEY_HIDE_SIM_CONTACTS:Ljava/lang/String; = "hide_sim_contacts"

.field public static final KEY_IMPORTGUIDE_URL:Ljava/lang/String; = "contacts-tutorial-url"

.field public static final KEY_SD_CONTACTS_PATH:Ljava/lang/String; = "contacts"

.field public static final KEY_TWITTER:Ljava/lang/String; = "twitter"

.field private static final TAG:Ljava/lang/String; = "SettingsParser"

.field private static final TAG_SETTING:Ljava/lang/String; = "setting"

.field private static final TAG_SETTINGS:Ljava/lang/String; = "settings"


# instance fields
.field private customizationXmlInputStream:Ljava/io/InputStream;

.field private disableCustomizationProvider:Z

.field private final mBooleanDefaultSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisabledContactFields:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mStringDefaultSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/util/SettingsParser;->customizationXmlInputStream:Ljava/io/InputStream;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/util/SettingsParser;->disableCustomizationProvider:Z

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/util/SettingsParser;->mBooleanDefaultSettings:Ljava/util/HashMap;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/util/SettingsParser;->mStringDefaultSettings:Ljava/util/HashMap;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/util/SettingsParser;->mDisabledContactFields:Ljava/util/HashSet;

    .line 27
    return-void
.end method

.method private loadDisabledContactFields(Ljava/lang/String;)V
    .locals 4
    .param p1, "disabledContactFields"    # Ljava/lang/String;

    .prologue
    .line 311
    const/4 v0, 0x0

    .line 313
    .local v0, "disabledContactFieldsList":[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 315
    :try_start_0
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 320
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    .line 321
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-lt v1, v2, :cond_2

    .line 325
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 322
    .restart local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/lzx/iteam/util/SettingsParser;->mDisabledContactFields:Ljava/util/HashSet;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private putBoolean(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v1, p0, Lcom/lzx/iteam/util/SettingsParser;->mBooleanDefaultSettings:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "bool":Z
    const-string v1, "true"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    const/4 v0, 0x1

    .line 191
    :goto_0
    iget-object v1, p0, Lcom/lzx/iteam/util/SettingsParser;->mBooleanDefaultSettings:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    return-void

    .line 185
    :cond_0
    const-string v1, "false"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    const/4 v0, 0x0

    .line 187
    goto :goto_0

    .line 188
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lzx/iteam/util/SettingsParser;->mStringDefaultSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lcom/lzx/iteam/util/SettingsParser;->mStringDefaultSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method private readDefaultSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 137
    const-string v0, "brand"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    const-string v0, "brand"

    invoke-direct {p0, v0, p2}, Lcom/lzx/iteam/util/SettingsParser;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    const-string v0, "facebook"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    const-string v0, "facebook"

    invoke-direct {p0, v0, p2}, Lcom/lzx/iteam/util/SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_2
    const-string v0, "twitter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    const-string v0, "twitter"

    invoke-direct {p0, v0, p2}, Lcom/lzx/iteam/util/SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_3
    const-string v0, "contacts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 144
    const-string v0, "contacts"

    invoke-direct {p0, v0, p2}, Lcom/lzx/iteam/util/SettingsParser;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_4
    const-string v0, "disable-integrated-app-presence"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 146
    const-string v0, "disable-integrated-app-presence"

    invoke-direct {p0, v0, p2}, Lcom/lzx/iteam/util/SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_5
    const-string v0, "account-types"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 149
    const-string v0, "account-types"

    invoke-direct {p0, v0, p2}, Lcom/lzx/iteam/util/SettingsParser;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_6
    const-string v0, "contacts-tutorial-url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 151
    const-string v0, "contacts-tutorial-url"

    invoke-direct {p0, v0, p2}, Lcom/lzx/iteam/util/SettingsParser;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_7
    const-string v0, "disabled-im-services"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 154
    const-string v0, "disabled-im-services"

    invoke-direct {p0, v0, p2}, Lcom/lzx/iteam/util/SettingsParser;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_8
    const-string v0, "disabled-contact-fields"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 156
    invoke-direct {p0, p2}, Lcom/lzx/iteam/util/SettingsParser;->loadDisabledContactFields(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_9
    const-string v0, "hide_sim_contacts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 158
    const-string v0, "hide_sim_contacts"

    invoke-direct {p0, v0, p2}, Lcom/lzx/iteam/util/SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_a
    const-string v0, "disabled-voicemail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 160
    const-string v0, "disabled-voicemail"

    invoke-direct {p0, v0, p2}, Lcom/lzx/iteam/util/SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    :cond_b
    const-string v0, "enable-speed-dial"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 162
    const-string v0, "enable-speed-dial"

    invoke-direct {p0, v0, p2}, Lcom/lzx/iteam/util/SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 163
    :cond_c
    const-string v0, "disabled-sort-order"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 164
    const-string v0, "disabled-sort-order"

    invoke-direct {p0, v0, p2}, Lcom/lzx/iteam/util/SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    :cond_d
    const-string v0, "disabled-display-order"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "disabled-display-order"

    invoke-direct {p0, v0, p2}, Lcom/lzx/iteam/util/SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    .line 205
    move v0, p2

    .line 206
    .local v0, "retValue":Z
    iget-object v1, p0, Lcom/lzx/iteam/util/SettingsParser;->mBooleanDefaultSettings:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/lzx/iteam/util/SettingsParser;->mBooleanDefaultSettings:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 211
    :cond_0
    return v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "retValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/lzx/iteam/util/SettingsParser;->mStringDefaultSettings:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/lzx/iteam/util/SettingsParser;->mStringDefaultSettings:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "retValue":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 201
    .restart local v0    # "retValue":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public isContactFieldDisabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/lzx/iteam/util/SettingsParser;->mDisabledContactFields:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadSettings(Landroid/content/Context;)Z
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 236
    const/4 v4, 0x0

    .line 238
    .local v4, "parseDefaultOk":Z
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f050000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 240
    .local v6, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    invoke-virtual {p0, v6}, Lcom/lzx/iteam/util/SettingsParser;->parseSettings(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    const/4 v4, 0x1

    .line 248
    :goto_0
    const/4 v3, 0x0

    .line 251
    .local v3, "parseCustomOkOrNoCustom":Z
    :try_start_1
    iget-boolean v7, p0, Lcom/lzx/iteam/util/SettingsParser;->disableCustomizationProvider:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/lzx/iteam/util/SettingsParser;->customizationXmlInputStream:Ljava/io/InputStream;

    if-nez v7, :cond_0

    .line 252
    const-string v7, "content://com.sonyericsson.provider.customization/settings/com.sonyericsson.android.socialphonebook"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 253
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 254
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    iput-object v7, p0, Lcom/lzx/iteam/util/SettingsParser;->customizationXmlInputStream:Ljava/io/InputStream;

    .line 256
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_0
    iget-object v7, p0, Lcom/lzx/iteam/util/SettingsParser;->customizationXmlInputStream:Ljava/io/InputStream;

    if-eqz v7, :cond_1

    .line 257
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 258
    .local v1, "customizedParser":Lorg/xmlpull/v1/XmlPullParser;
    iget-object v7, p0, Lcom/lzx/iteam/util/SettingsParser;->customizationXmlInputStream:Ljava/io/InputStream;

    const/4 v8, 0x0

    invoke-interface {v1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/util/SettingsParser;->parseSettings(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    .end local v1    # "customizedParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    const/4 v3, 0x1

    .line 273
    iget-object v7, p0, Lcom/lzx/iteam/util/SettingsParser;->customizationXmlInputStream:Ljava/io/InputStream;

    if-eqz v7, :cond_2

    .line 275
    :try_start_2
    iget-object v7, p0, Lcom/lzx/iteam/util/SettingsParser;->customizationXmlInputStream:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 276
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lzx/iteam/util/SettingsParser;->customizationXmlInputStream:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 283
    :cond_2
    :goto_1
    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    const/4 v7, 0x1

    :goto_2
    return v7

    .line 242
    .end local v3    # "parseCustomOkOrNoCustom":Z
    :catch_0
    move-exception v2

    .line 243
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 244
    const/4 v4, 0x0

    goto :goto_0

    .line 264
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "parseCustomOkOrNoCustom":Z
    :catch_1
    move-exception v7

    const/4 v3, 0x1

    .line 273
    iget-object v7, p0, Lcom/lzx/iteam/util/SettingsParser;->customizationXmlInputStream:Ljava/io/InputStream;

    if-eqz v7, :cond_2

    .line 275
    :try_start_3
    iget-object v7, p0, Lcom/lzx/iteam/util/SettingsParser;->customizationXmlInputStream:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 276
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lzx/iteam/util/SettingsParser;->customizationXmlInputStream:Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 277
    :catch_2
    move-exception v7

    goto :goto_1

    .line 266
    :catch_3
    move-exception v7

    const/4 v3, 0x0

    .line 273
    iget-object v7, p0, Lcom/lzx/iteam/util/SettingsParser;->customizationXmlInputStream:Ljava/io/InputStream;

    if-eqz v7, :cond_2

    .line 275
    :try_start_4
    iget-object v7, p0, Lcom/lzx/iteam/util/SettingsParser;->customizationXmlInputStream:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 276
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lzx/iteam/util/SettingsParser;->customizationXmlInputStream:Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    .line 277
    :catch_4
    move-exception v7

    goto :goto_1

    .line 272
    :catchall_0
    move-exception v7

    .line 273
    iget-object v8, p0, Lcom/lzx/iteam/util/SettingsParser;->customizationXmlInputStream:Ljava/io/InputStream;

    if-eqz v8, :cond_3

    .line 275
    :try_start_5
    iget-object v8, p0, Lcom/lzx/iteam/util/SettingsParser;->customizationXmlInputStream:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 276
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/lzx/iteam/util/SettingsParser;->customizationXmlInputStream:Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 281
    :cond_3
    :goto_3
    throw v7

    .line 283
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    :catch_5
    move-exception v7

    goto :goto_1

    :catch_6
    move-exception v8

    goto :goto_3
.end method

.method public parseSettings(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 86
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 87
    .local v0, "eventType":I
    const/4 v3, 0x0

    .line 88
    .local v3, "tag":Ljava/lang/String;
    const/4 v2, 0x0

    .line 91
    .local v2, "settingKey":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 132
    .end local v0    # "eventType":I
    .end local v2    # "settingKey":Ljava/lang/String;
    .end local v3    # "tag":Ljava/lang/String;
    :cond_0
    return-void

    .line 92
    .restart local v0    # "eventType":I
    .restart local v2    # "settingKey":Ljava/lang/String;
    .restart local v3    # "tag":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x2

    if-ne v0, v5, :cond_5

    .line 93
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 94
    const-string v5, "settings"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 96
    const-string v5, "setting"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 97
    const/4 v5, 0x0

    const-string v6, "key"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    if-nez v2, :cond_2

    .line 100
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 103
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 105
    const/4 v4, 0x0

    .line 106
    .local v4, "value":Ljava/lang/String;
    const/4 v5, 0x4

    if-ne v0, v5, :cond_3

    .line 107
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    .line 109
    if-nez v4, :cond_4

    .line 110
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 113
    :cond_3
    const/4 v5, 0x3

    if-ne v0, v5, :cond_6

    .line 116
    const-string v4, ""

    .line 123
    :cond_4
    :try_start_0
    invoke-direct {p0, v2, v4}, Lcom/lzx/iteam/util/SettingsParser;->readDefaultSetting(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v4    # "value":Ljava/lang/String;
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 119
    .restart local v4    # "value":Ljava/lang/String;
    :cond_6
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/util/SettingsParser;->customizationXmlInputStream:Ljava/io/InputStream;

    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/util/SettingsParser;->disableCustomizationProvider:Z

    .line 308
    return-void
.end method

.method public setCustomizationProviderDisabled(Z)V
    .locals 0
    .param p1, "disableCustomizationProvider"    # Z

    .prologue
    .line 299
    iput-boolean p1, p0, Lcom/lzx/iteam/util/SettingsParser;->disableCustomizationProvider:Z

    .line 300
    return-void
.end method

.method public setCustomizationXml(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "customizationXmlInputStream"    # Ljava/io/InputStream;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/lzx/iteam/util/SettingsParser;->customizationXmlInputStream:Ljava/io/InputStream;

    .line 292
    return-void
.end method
