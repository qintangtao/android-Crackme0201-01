.class Lcom/lzx/iteam/ShowImagesActivity$1;
.super Ljava/lang/Object;
.source "ShowImagesActivity.java"

# interfaces
.implements Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ShowImagesActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ShowImagesActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ShowImagesActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ShowImagesActivity$1;->this$0:Lcom/lzx/iteam/ShowImagesActivity;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/ToggleButton;IZLandroid/widget/ImageView;)V
    .locals 4
    .param p1, "toggleButton"    # Landroid/widget/ToggleButton;
    .param p2, "position"    # I
    .param p3, "isChecked"    # Z
    .param p4, "button"    # Landroid/widget/ImageView;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 129
    sget-object v0, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/lzx/iteam/selectimage/PublicWay;->num:I

    if-lt v0, v1, :cond_0

    if-eqz p3, :cond_0

    .line 130
    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    invoke-virtual {p1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 132
    iget-object v0, p0, Lcom/lzx/iteam/ShowImagesActivity$1;->this$0:Lcom/lzx/iteam/ShowImagesActivity;

    const-string v1, "only_choose_num"

    invoke-static {v1}, Lcom/lzx/iteam/selectimage/Res;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 148
    :goto_0
    return-void

    .line 137
    :cond_0
    if-eqz p3, :cond_1

    .line 138
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    sget-object v1, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    sget-object v0, Lcom/lzx/iteam/ShowImagesActivity;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcom/lzx/iteam/ShowImagesActivity$1;->this$0:Lcom/lzx/iteam/ShowImagesActivity;

    # getter for: Lcom/lzx/iteam/ShowImagesActivity;->okButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/lzx/iteam/ShowImagesActivity;->access$0(Lcom/lzx/iteam/ShowImagesActivity;)Landroid/widget/Button;

    move-result-object v0

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

    .line 141
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

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :goto_1
    iget-object v0, p0, Lcom/lzx/iteam/ShowImagesActivity$1;->this$0:Lcom/lzx/iteam/ShowImagesActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/ShowImagesActivity;->isShowOkBt()V

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    sget-object v0, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    sget-object v1, Lcom/lzx/iteam/ShowImagesActivity;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/lzx/iteam/ShowImagesActivity$1;->this$0:Lcom/lzx/iteam/ShowImagesActivity;

    # getter for: Lcom/lzx/iteam/ShowImagesActivity;->okButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/lzx/iteam/ShowImagesActivity;->access$0(Lcom/lzx/iteam/ShowImagesActivity;)Landroid/widget/Button;

    move-result-object v0

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

    goto :goto_1
.end method
