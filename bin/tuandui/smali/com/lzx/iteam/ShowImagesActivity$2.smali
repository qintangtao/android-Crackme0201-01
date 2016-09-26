.class Lcom/lzx/iteam/ShowImagesActivity$2;
.super Ljava/lang/Object;
.source "ShowImagesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/lzx/iteam/ShowImagesActivity$2;->this$0:Lcom/lzx/iteam/ShowImagesActivity;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lzx/iteam/ShowImagesActivity$2;->this$0:Lcom/lzx/iteam/ShowImagesActivity;

    # getter for: Lcom/lzx/iteam/ShowImagesActivity;->okButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/lzx/iteam/ShowImagesActivity;->access$0(Lcom/lzx/iteam/ShowImagesActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 156
    sget-object v0, Lcom/lzx/iteam/ImageFileActivity;->instance:Lcom/lzx/iteam/ImageFileActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/ImageFileActivity;->finish()V

    .line 157
    iget-object v0, p0, Lcom/lzx/iteam/ShowImagesActivity$2;->this$0:Lcom/lzx/iteam/ShowImagesActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/ShowImagesActivity;->finish()V

    .line 159
    return-void
.end method
