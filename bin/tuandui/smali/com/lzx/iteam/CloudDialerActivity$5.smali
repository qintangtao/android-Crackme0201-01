.class Lcom/lzx/iteam/CloudDialerActivity$5;
.super Landroid/os/AsyncTask;
.source "CloudDialerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CloudDialerActivity;->setKeyBoardOrientation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CloudDialerActivity;

.field private final synthetic val$orientation:I


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CloudDialerActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity$5;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iput p2, p0, Lcom/lzx/iteam/CloudDialerActivity$5;->val$orientation:I

    .line 1988
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/CloudDialerActivity$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1992
    new-instance v0, Lcom/lzx/iteam/skin/GetSkinResource;

    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity$5;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-direct {v0, v3}, Lcom/lzx/iteam/skin/GetSkinResource;-><init>(Landroid/content/Context;)V

    .line 1994
    .local v0, "resource":Lcom/lzx/iteam/skin/GetSkinResource;
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity$5;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v3, v3, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v4, "keyboard_packagename"

    const-string v5, "local"

    invoke-virtual {v3, v4, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1995
    .local v1, "skinPath":Ljava/lang/String;
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity$5;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v3, v3, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v4, "ishavesound"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1996
    .local v2, "tone":I
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity$5;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity$5;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v0, v4, v1, v2}, Lcom/lzx/iteam/skin/GetSkinResource;->loadCommon(Landroid/content/Context;Ljava/lang/String;I)Lcom/lzx/iteam/bean/SkinCommonData;

    move-result-object v4

    iput-object v4, v3, Lcom/lzx/iteam/CloudDialerActivity;->mSkinCommon:Lcom/lzx/iteam/bean/SkinCommonData;

    .line 1997
    iget v3, p0, Lcom/lzx/iteam/CloudDialerActivity$5;->val$orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1998
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity$5;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity$5;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v0, v4, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->getAllHorizSkinData(Landroid/content/Context;Ljava/lang/String;)Lcom/lzx/iteam/bean/SkinHorizData;

    move-result-object v4

    iput-object v4, v3, Lcom/lzx/iteam/CloudDialerActivity;->mHorizSkin:Lcom/lzx/iteam/bean/SkinHorizData;

    .line 1999
    invoke-virtual {v0}, Lcom/lzx/iteam/skin/GetSkinResource;->destroyVerty()V

    .line 2037
    :goto_0
    const/4 v3, 0x0

    return-object v3

    .line 2001
    :cond_0
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity$5;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v3, v3, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v4, "is_t9_vertial"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    .line 2003
    sget-object v3, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin:Lcom/lzx/iteam/bean/SkinVertyData;

    if-nez v3, :cond_1

    .line 2004
    new-instance v3, Lcom/lzx/iteam/bean/SkinVertyData;

    invoke-direct {v3}, Lcom/lzx/iteam/bean/SkinVertyData;-><init>()V

    sput-object v3, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin:Lcom/lzx/iteam/bean/SkinVertyData;

    .line 2013
    sget-object v3, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin:Lcom/lzx/iteam/bean/SkinVertyData;

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity$5;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v0, v3, v4, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->getVertT9SkinData(Lcom/lzx/iteam/bean/SkinVertyData;Landroid/content/Context;Ljava/lang/String;)Lcom/lzx/iteam/bean/SkinVertyData;

    move-result-object v3

    sput-object v3, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin:Lcom/lzx/iteam/bean/SkinVertyData;

    .line 2019
    :goto_1
    sget-object v3, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin2:Lcom/lzx/iteam/bean/SkinVertyData;

    if-nez v3, :cond_2

    .line 2020
    new-instance v3, Lcom/lzx/iteam/bean/SkinVertyData;

    invoke-direct {v3}, Lcom/lzx/iteam/bean/SkinVertyData;-><init>()V

    sput-object v3, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin2:Lcom/lzx/iteam/bean/SkinVertyData;

    .line 2029
    sget-object v3, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin2:Lcom/lzx/iteam/bean/SkinVertyData;

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity$5;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v0, v3, v4, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->getVertABCSkinData(Lcom/lzx/iteam/bean/SkinVertyData;Landroid/content/Context;Ljava/lang/String;)Lcom/lzx/iteam/bean/SkinVertyData;

    move-result-object v3

    sput-object v3, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin2:Lcom/lzx/iteam/bean/SkinVertyData;

    .line 2035
    :goto_2
    invoke-virtual {v0}, Lcom/lzx/iteam/skin/GetSkinResource;->destroyHoriz()V

    goto :goto_0

    .line 2015
    :cond_1
    sget-object v3, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin:Lcom/lzx/iteam/bean/SkinVertyData;

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity$5;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v0, v3, v4, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->getVertT9SkinData(Lcom/lzx/iteam/bean/SkinVertyData;Landroid/content/Context;Ljava/lang/String;)Lcom/lzx/iteam/bean/SkinVertyData;

    move-result-object v3

    sput-object v3, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin:Lcom/lzx/iteam/bean/SkinVertyData;

    goto :goto_1

    .line 2031
    :cond_2
    sget-object v3, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin2:Lcom/lzx/iteam/bean/SkinVertyData;

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity$5;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v0, v3, v4, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->getVertABCSkinData(Lcom/lzx/iteam/bean/SkinVertyData;Landroid/content/Context;Ljava/lang/String;)Lcom/lzx/iteam/bean/SkinVertyData;

    move-result-object v3

    sput-object v3, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin2:Lcom/lzx/iteam/bean/SkinVertyData;

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/CloudDialerActivity$5;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 2049
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 2043
    return-void
.end method
