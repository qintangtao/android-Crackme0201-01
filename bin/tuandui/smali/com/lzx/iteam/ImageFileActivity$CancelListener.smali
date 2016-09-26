.class Lcom/lzx/iteam/ImageFileActivity$CancelListener;
.super Ljava/lang/Object;
.source "ImageFileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ImageFileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ImageFileActivity;


# direct methods
.method private constructor <init>(Lcom/lzx/iteam/ImageFileActivity;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lzx/iteam/ImageFileActivity$CancelListener;->this$0:Lcom/lzx/iteam/ImageFileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lzx/iteam/ImageFileActivity;Lcom/lzx/iteam/ImageFileActivity$CancelListener;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/lzx/iteam/ImageFileActivity$CancelListener;-><init>(Lcom/lzx/iteam/ImageFileActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    sget-object v0, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 58
    iget-object v0, p0, Lcom/lzx/iteam/ImageFileActivity$CancelListener;->this$0:Lcom/lzx/iteam/ImageFileActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/ImageFileActivity;->finish()V

    .line 59
    return-void
.end method
