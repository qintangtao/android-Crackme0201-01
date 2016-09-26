.class public Lcom/lzx/iteam/util/AndroidRomUtil;
.super Ljava/lang/Object;
.source "AndroidRomUtil.java"


# static fields
.field private static final KEY_MIUI_INTERNAL_STORAGE:Ljava/lang/String; = "ro.miui.internal.storage"

.field private static final KEY_MIUI_VERSION_CODE:Ljava/lang/String; = "ro.miui.ui.version.code"

.field private static final KEY_MIUI_VERSION_NAME:Ljava/lang/String; = "ro.miui.ui.version.name"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFlyme()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 42
    :try_start_0
    const-class v2, Landroid/os/Build;

    const-string v3, "hasSmartBar"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 43
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 45
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isMIUI()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 28
    :try_start_0
    invoke-static {}, Lcom/lzx/iteam/util/BuildProperties;->newInstance()Lcom/lzx/iteam/util/BuildProperties;

    move-result-object v0

    .line 31
    .local v0, "prop":Lcom/lzx/iteam/util/BuildProperties;
    const-string v2, "ro.miui.ui.version.code"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/lzx/iteam/util/BuildProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 32
    const-string v2, "ro.miui.ui.version.name"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/lzx/iteam/util/BuildProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 33
    const-string v2, "ro.miui.internal.storage"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/lzx/iteam/util/BuildProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_0

    .line 35
    :goto_0
    return v1

    .line 31
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 35
    :catch_0
    move-exception v2

    goto :goto_0
.end method
