.class Lcom/lzx/iteam/ShowImagesActivity$CancelListener;
.super Ljava/lang/Object;
.source "ShowImagesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ShowImagesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ShowImagesActivity;


# direct methods
.method private constructor <init>(Lcom/lzx/iteam/ShowImagesActivity;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/lzx/iteam/ShowImagesActivity$CancelListener;->this$0:Lcom/lzx/iteam/ShowImagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lzx/iteam/ShowImagesActivity;Lcom/lzx/iteam/ShowImagesActivity$CancelListener;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/lzx/iteam/ShowImagesActivity$CancelListener;-><init>(Lcom/lzx/iteam/ShowImagesActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    sget-object v0, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 108
    iget-object v0, p0, Lcom/lzx/iteam/ShowImagesActivity$CancelListener;->this$0:Lcom/lzx/iteam/ShowImagesActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/ShowImagesActivity;->finish()V

    .line 109
    return-void
.end method
