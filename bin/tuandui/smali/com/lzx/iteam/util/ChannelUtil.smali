.class public Lcom/lzx/iteam/util/ChannelUtil;
.super Ljava/lang/Object;
.source "ChannelUtil.java"


# static fields
.field private static final CHANNEL_KEY:Ljava/lang/String; = "lzxchannel"

.field private static final CHANNEL_VERSION_KEY:Ljava/lang/String; = "lzxchannel_version"

.field private static mChannel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/lzx/iteam/util/ChannelUtil;->getChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultChannel"    # Ljava/lang/String;

    .prologue
    .line 37
    sget-object v0, Lcom/lzx/iteam/util/ChannelUtil;->mChannel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    sget-object p1, Lcom/lzx/iteam/util/ChannelUtil;->mChannel:Ljava/lang/String;

    .line 53
    .end local p1    # "defaultChannel":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 41
    .restart local p1    # "defaultChannel":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/lzx/iteam/util/ChannelUtil;->getChannelBySharedPreferences(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/util/ChannelUtil;->mChannel:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/lzx/iteam/util/ChannelUtil;->mChannel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 43
    sget-object p1, Lcom/lzx/iteam/util/ChannelUtil;->mChannel:Ljava/lang/String;

    goto :goto_0

    .line 46
    :cond_2
    const-string v0, "lzxchannel"

    invoke-static {p0, v0}, Lcom/lzx/iteam/util/ChannelUtil;->getChannelFromApk(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/util/ChannelUtil;->mChannel:Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/lzx/iteam/util/ChannelUtil;->mChannel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    sget-object v0, Lcom/lzx/iteam/util/ChannelUtil;->mChannel:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/lzx/iteam/util/ChannelUtil;->saveChannelBySharedPreferences(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    sget-object p1, Lcom/lzx/iteam/util/ChannelUtil;->mChannel:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getChannelBySharedPreferences(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    .line 114
    invoke-static {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v1

    .line 115
    .local v1, "preferenceUtil":Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {p0}, Lcom/lzx/iteam/util/ChannelUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    .line 116
    .local v0, "currentVersionCode":I
    if-ne v0, v4, :cond_0

    .line 118
    const-string v3, ""

    .line 129
    :goto_0
    return-object v3

    .line 120
    :cond_0
    const-string v3, "lzxchannel_version"

    invoke-virtual {v1, v3, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 121
    .local v2, "versionCodeSaved":I
    if-ne v2, v4, :cond_1

    .line 124
    const-string v3, ""

    goto :goto_0

    .line 126
    :cond_1
    if-eq v0, v2, :cond_2

    .line 127
    const-string v3, ""

    goto :goto_0

    .line 129
    :cond_2
    const-string v3, "lzxchannel"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static getChannelFromApk(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channelKey"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 64
    .local v0, "appinfo":Landroid/content/pm/ApplicationInfo;
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 66
    .local v8, "sourceDir":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "META-INF/"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, "key":Ljava/lang/String;
    const-string v7, ""

    .line 68
    .local v7, "ret":Ljava/lang/String;
    const/4 v10, 0x0

    .line 70
    .local v10, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v11, Ljava/util/zip/ZipFile;

    invoke-direct {v11, v8}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .end local v10    # "zipfile":Ljava/util/zip/ZipFile;
    .local v11, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 72
    .local v3, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v12

    if-nez v12, :cond_3

    .line 83
    :goto_0
    if-eqz v11, :cond_5

    .line 85
    :try_start_2
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v10, v11

    .line 91
    .end local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v11    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v10    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_1
    :goto_1
    const-string v12, "_"

    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 92
    .local v9, "split":[Ljava/lang/String;
    const-string v1, ""

    .line 93
    .local v1, "channel":Ljava/lang/String;
    if-eqz v9, :cond_2

    array-length v12, v9

    const/4 v13, 0x2

    if-lt v12, v13, :cond_2

    .line 94
    const/4 v12, 0x0

    aget-object v12, v9, v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    :cond_2
    return-object v1

    .line 73
    .end local v1    # "channel":Ljava/lang/String;
    .end local v9    # "split":[Ljava/lang/String;
    .end local v10    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v11    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_3
    :try_start_3
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 74
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "entryName":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v12

    if-eqz v12, :cond_0

    .line 76
    move-object v7, v5

    .line 77
    goto :goto_0

    .line 80
    .end local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "entryName":Ljava/lang/String;
    .end local v11    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v10    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v2

    .line 81
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 83
    if-eqz v10, :cond_1

    .line 85
    :try_start_5
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 86
    :catch_1
    move-exception v2

    .line 87
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 82
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 83
    :goto_3
    if-eqz v10, :cond_4

    .line 85
    :try_start_6
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 90
    :cond_4
    :goto_4
    throw v12

    .line 86
    :catch_2
    move-exception v2

    .line 87
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 86
    .end local v2    # "e":Ljava/io/IOException;
    .end local v10    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v11    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_3
    move-exception v2

    .line 87
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_5
    move-object v10, v11

    .end local v11    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v10    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_1

    .line 82
    .end local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v10    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v11    # "zipfile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v12

    move-object v10, v11

    .end local v11    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v10    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_3

    .line 80
    .end local v10    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v11    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v2

    move-object v10, v11

    .end local v11    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v10    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_2
.end method

.method private static getVersionCode(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return v1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 142
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private static saveChannelBySharedPreferences(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-static {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    .line 105
    .local v0, "preferenceUtil":Lcom/lzx/iteam/util/PreferenceUtil;
    const-string v1, "lzxchannel"

    invoke-virtual {v0, v1, p1}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 106
    const-string v1, "lzxchannel_version"

    invoke-static {p0}, Lcom/lzx/iteam/util/ChannelUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 107
    return-void
.end method
