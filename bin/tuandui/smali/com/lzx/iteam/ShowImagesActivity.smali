.class public Lcom/lzx/iteam/ShowImagesActivity;
.super Lcom/lzx/iteam/BaseActivity;
.source "ShowImagesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/ShowImagesActivity$BackListener;,
        Lcom/lzx/iteam/ShowImagesActivity$CancelListener;,
        Lcom/lzx/iteam/ShowImagesActivity$PreviewListener;
    }
.end annotation


# static fields
.field public static dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private back:Landroid/widget/TextView;

.field private cancel:Landroid/widget/TextView;

.field private gridImageAdapter:Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;

.field private gridView:Landroid/widget/GridView;

.field private headTitle:Landroid/widget/TextView;

.field private intent:Landroid/content/Intent;

.field private mContext:Landroid/content/Context;

.field private okButton:Landroid/widget/Button;

.field private progressBar:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lzx/iteam/ShowImagesActivity;->dataList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lzx/iteam/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/ShowImagesActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lzx/iteam/ShowImagesActivity;->okButton:Landroid/widget/Button;

    return-object v0
.end method

.method private applyScrollListener()V
    .locals 5

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lzx/iteam/ShowImagesActivity;->gridView:Landroid/widget/GridView;

    new-instance v1, Lcom/nostra13/universalimageloader/core/assist/PauseOnScrollListener;

    iget-object v2, p0, Lcom/lzx/iteam/ShowImagesActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-boolean v3, p0, Lcom/lzx/iteam/ShowImagesActivity;->pauseOnScroll:Z

    iget-boolean v4, p0, Lcom/lzx/iteam/ShowImagesActivity;->pauseOnFling:Z

    invoke-direct {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/assist/PauseOnScrollListener;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoader;ZZ)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 77
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 113
    const-string v0, "showallphoto_progressbar"

    invoke-static {v0}, Lcom/lzx/iteam/selectimage/Res;->getWidgetID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ShowImagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/lzx/iteam/ShowImagesActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 114
    iget-object v0, p0, Lcom/lzx/iteam/ShowImagesActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 115
    const-string v0, "showallphoto_myGrid"

    invoke-static {v0}, Lcom/lzx/iteam/selectimage/Res;->getWidgetID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ShowImagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/lzx/iteam/ShowImagesActivity;->gridView:Landroid/widget/GridView;

    .line 116
    new-instance v0, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;

    sget-object v1, Lcom/lzx/iteam/ShowImagesActivity;->dataList:Ljava/util/ArrayList;

    .line 117
    sget-object v2, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 116
    iput-object v0, p0, Lcom/lzx/iteam/ShowImagesActivity;->gridImageAdapter:Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;

    .line 118
    iget-object v0, p0, Lcom/lzx/iteam/ShowImagesActivity;->gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/lzx/iteam/ShowImagesActivity;->gridImageAdapter:Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    const-string v0, "showallphoto_ok_button"

    invoke-static {v0}, Lcom/lzx/iteam/selectimage/Res;->getWidgetID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ShowImagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lzx/iteam/ShowImagesActivity;->okButton:Landroid/widget/Button;

    .line 120
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lzx/iteam/ShowImagesActivity;->gridImageAdapter:Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;

    .line 125
    new-instance v1, Lcom/lzx/iteam/ShowImagesActivity$1;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/ShowImagesActivity$1;-><init>(Lcom/lzx/iteam/ShowImagesActivity;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;->setOnItemClickListener(Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$OnItemClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/lzx/iteam/ShowImagesActivity;->okButton:Landroid/widget/Button;

    new-instance v1, Lcom/lzx/iteam/ShowImagesActivity$2;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/ShowImagesActivity$2;-><init>(Lcom/lzx/iteam/ShowImagesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    return-void
.end method


# virtual methods
.method public isShowOkBt()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 165
    sget-object v0, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/lzx/iteam/ShowImagesActivity;->okButton:Landroid/widget/Button;

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

    .line 167
    iget-object v0, p0, Lcom/lzx/iteam/ShowImagesActivity;->okButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setPressed(Z)V

    .line 168
    iget-object v0, p0, Lcom/lzx/iteam/ShowImagesActivity;->okButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 169
    iget-object v0, p0, Lcom/lzx/iteam/ShowImagesActivity;->okButton:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 176
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/ShowImagesActivity;->okButton:Landroid/widget/Button;

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

    .line 172
    iget-object v0, p0, Lcom/lzx/iteam/ShowImagesActivity;->okButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setPressed(Z)V

    .line 173
    iget-object v0, p0, Lcom/lzx/iteam/ShowImagesActivity;->okButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 174
    iget-object v0, p0, Lcom/lzx/iteam/ShowImagesActivity;->okButton:Landroid/widget/Button;

    const-string v1, "#E1E0DE"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/lzx/iteam/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const-string v1, "plugin_camera_show_all_photo"

    invoke-static {v1}, Lcom/lzx/iteam/selectimage/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ShowImagesActivity;->setContentView(I)V

    .line 47
    iput-object p0, p0, Lcom/lzx/iteam/ShowImagesActivity;->mContext:Landroid/content/Context;

    .line 48
    const-string v1, "showallphoto_back"

    invoke-static {v1}, Lcom/lzx/iteam/selectimage/Res;->getWidgetID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ShowImagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/ShowImagesActivity;->back:Landroid/widget/TextView;

    .line 49
    const-string v1, "showallphoto_cancel"

    invoke-static {v1}, Lcom/lzx/iteam/selectimage/Res;->getWidgetID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ShowImagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/ShowImagesActivity;->cancel:Landroid/widget/TextView;

    .line 50
    const-string v1, "showallphoto_ok_button"

    invoke-static {v1}, Lcom/lzx/iteam/selectimage/Res;->getWidgetID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ShowImagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/lzx/iteam/ShowImagesActivity;->okButton:Landroid/widget/Button;

    .line 51
    const-string v1, "showallphoto_headtitle"

    invoke-static {v1}, Lcom/lzx/iteam/selectimage/Res;->getWidgetID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ShowImagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/ShowImagesActivity;->headTitle:Landroid/widget/TextView;

    .line 52
    invoke-virtual {p0}, Lcom/lzx/iteam/ShowImagesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ShowImagesActivity;->intent:Landroid/content/Intent;

    .line 53
    iget-object v1, p0, Lcom/lzx/iteam/ShowImagesActivity;->intent:Landroid/content/Intent;

    const-string v2, "folderName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "folderName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/ShowImagesActivity;->headTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v1, p0, Lcom/lzx/iteam/ShowImagesActivity;->cancel:Landroid/widget/TextView;

    new-instance v2, Lcom/lzx/iteam/ShowImagesActivity$CancelListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/lzx/iteam/ShowImagesActivity$CancelListener;-><init>(Lcom/lzx/iteam/ShowImagesActivity;Lcom/lzx/iteam/ShowImagesActivity$CancelListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v1, p0, Lcom/lzx/iteam/ShowImagesActivity;->back:Landroid/widget/TextView;

    new-instance v2, Lcom/lzx/iteam/ShowImagesActivity$BackListener;

    iget-object v3, p0, Lcom/lzx/iteam/ShowImagesActivity;->intent:Landroid/content/Intent;

    invoke-direct {v2, p0, v3}, Lcom/lzx/iteam/ShowImagesActivity$BackListener;-><init>(Lcom/lzx/iteam/ShowImagesActivity;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-direct {p0}, Lcom/lzx/iteam/ShowImagesActivity;->init()V

    .line 61
    invoke-direct {p0}, Lcom/lzx/iteam/ShowImagesActivity;->initListener()V

    .line 62
    invoke-virtual {p0}, Lcom/lzx/iteam/ShowImagesActivity;->isShowOkBt()V

    .line 63
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 179
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/lzx/iteam/ShowImagesActivity;->finish()V

    .line 183
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/lzx/iteam/ShowImagesActivity;->isShowOkBt()V

    .line 191
    invoke-super {p0}, Lcom/lzx/iteam/BaseActivity;->onRestart()V

    .line 192
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Lcom/lzx/iteam/BaseActivity;->onResume()V

    .line 68
    invoke-direct {p0}, Lcom/lzx/iteam/ShowImagesActivity;->applyScrollListener()V

    .line 70
    return-void
.end method
