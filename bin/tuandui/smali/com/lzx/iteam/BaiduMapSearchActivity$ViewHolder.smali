.class Lcom/lzx/iteam/BaiduMapSearchActivity$ViewHolder;
.super Ljava/lang/Object;
.source "BaiduMapSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/BaiduMapSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public city:Landroid/widget/TextView;

.field public text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lzx/iteam/BaiduMapSearchActivity;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/BaiduMapSearchActivity;Landroid/view/View;)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/lzx/iteam/BaiduMapSearchActivity$ViewHolder;->this$0:Lcom/lzx/iteam/BaiduMapSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    const v0, 0x7f0e047f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/BaiduMapSearchActivity$ViewHolder;->text:Landroid/widget/TextView;

    .line 256
    const v0, 0x7f0e0480

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/BaiduMapSearchActivity$ViewHolder;->city:Landroid/widget/TextView;

    .line 257
    return-void
.end method
