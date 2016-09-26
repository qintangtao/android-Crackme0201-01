.class public Lcom/lzx/iteam/AlbumActivity;
.super Landroid/app/Activity;
.source "AlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/AlbumActivity$AlbumSendListener;,
        Lcom/lzx/iteam/AlbumActivity$BackListener;,
        Lcom/lzx/iteam/AlbumActivity$CancelListener;,
        Lcom/lzx/iteam/AlbumActivity$PreviewListener;
    }
.end annotation


# static fields
.field public static bitmap:Landroid/graphics/Bitmap;


# instance fields
.field private back:Landroid/widget/Button;

.field broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private cancel:Landroid/widget/Button;

.field private dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gridImageAdapter:Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;

.field private gridView:Landroid/widget/GridView;

.field private helper:Lcom/lzx/iteam/selectimage/AlbumHelper;

.field private intent:Landroid/content/Intent;

.field private mContext:Landroid/content/Context;

.field private okButton:Landroid/widget/Button;

.field private preview:Landroid/widget/Button;

.field private tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    new-instance v0, Lcom/lzx/iteam/AlbumActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/AlbumActivity$1;-><init>(Lcom/lzx/iteam/AlbumActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/AlbumActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/AlbumActivity;)Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lzx/iteam/AlbumActivity;->gridImageAdapter:Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/AlbumActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lzx/iteam/AlbumActivity;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/AlbumActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lzx/iteam/AlbumActivity;->dataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/AlbumActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/lzx/iteam/AlbumActivity;->removeOneData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/AlbumActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lzx/iteam/AlbumActivity;->okButton:Landroid/widget/Button;

    return-object v0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method private initListener()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/lzx/iteam/AlbumActivity;->gridImageAdapter:Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;

    .line 151
    new-instance v1, Lcom/lzx/iteam/AlbumActivity$2;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/AlbumActivity$2;-><init>(Lcom/lzx/iteam/AlbumActivity;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;->setOnItemClickListener(Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$OnItemClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/lzx/iteam/AlbumActivity;->okButton:Landroid/widget/Button;

    new-instance v1, Lcom/lzx/iteam/AlbumActivity$AlbumSendListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lzx/iteam/AlbumActivity$AlbumSendListener;-><init>(Lcom/lzx/iteam/AlbumActivity;Lcom/lzx/iteam/AlbumActivity$AlbumSendListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    return-void
.end method

.method private removeOneData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "imageItem"    # Ljava/lang/String;

    .prologue
    .line 184
    sget-object v0, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    sget-object v0, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/lzx/iteam/AlbumActivity;->okButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finish"

    invoke-static {v2}, Lcom/lzx/iteam/selectimage/Res;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lzx/iteam/selectimage/PublicWay;->num:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 187
    const/4 v0, 0x1

    .line 189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isShowOkBt()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 193
    sget-object v0, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/lzx/iteam/AlbumActivity;->okButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finish"

    invoke-static {v2}, Lcom/lzx/iteam/selectimage/Res;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lzx/iteam/selectimage/PublicWay;->num:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/lzx/iteam/AlbumActivity;->preview:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setPressed(Z)V

    .line 196
    iget-object v0, p0, Lcom/lzx/iteam/AlbumActivity;->okButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setPressed(Z)V

    .line 197
    iget-object v0, p0, Lcom/lzx/iteam/AlbumActivity;->preview:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 198
    iget-object v0, p0, Lcom/lzx/iteam/AlbumActivity;->okButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 199
    iget-object v0, p0, Lcom/lzx/iteam/AlbumActivity;->okButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 200
    iget-object v0, p0, Lcom/lzx/iteam/AlbumActivity;->preview:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 210
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/AlbumActivity;->okButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finish"

    invoke-static {v2}, Lcom/lzx/iteam/selectimage/Res;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lzx/iteam/selectimage/PublicWay;->num:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/lzx/iteam/AlbumActivity;->preview:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setPressed(Z)V

    .line 204
    iget-object v0, p0, Lcom/lzx/iteam/AlbumActivity;->preview:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 205
    iget-object v0, p0, Lcom/lzx/iteam/AlbumActivity;->okButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setPressed(Z)V

    .line 206
    iget-object v0, p0, Lcom/lzx/iteam/AlbumActivity;->okButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 207
    iget-object v0, p0, Lcom/lzx/iteam/AlbumActivity;->okButton:Landroid/widget/Button;

    const-string v1, "#E1E0DE"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 208
    iget-object v0, p0, Lcom/lzx/iteam/AlbumActivity;->preview:Landroid/widget/Button;

    const-string v1, "#E1E0DE"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const-string v1, "plugin_camera_album"

    invoke-static {v1}, Lcom/lzx/iteam/selectimage/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/AlbumActivity;->setContentView(I)V

    .line 53
    iput-object p0, p0, Lcom/lzx/iteam/AlbumActivity;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "data.broadcast.action"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/lzx/iteam/AlbumActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lzx/iteam/AlbumActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0}, Lcom/lzx/iteam/AlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "plugin_camera_no_pictures"

    invoke-static {v2}, Lcom/lzx/iteam/selectimage/Res;->getDrawableID(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/lzx/iteam/AlbumActivity;->bitmap:Landroid/graphics/Bitmap;

    .line 58
    invoke-direct {p0}, Lcom/lzx/iteam/AlbumActivity;->init()V

    .line 59
    invoke-direct {p0}, Lcom/lzx/iteam/AlbumActivity;->initListener()V

    .line 61
    invoke-virtual {p0}, Lcom/lzx/iteam/AlbumActivity;->isShowOkBt()V

    .line 62
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 213
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/lzx/iteam/AlbumActivity;->finish()V

    .line 218
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/lzx/iteam/AlbumActivity;->isShowOkBt()V

    .line 224
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 225
    return-void
.end method
