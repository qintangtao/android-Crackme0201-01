.class Lcom/lzx/iteam/EventDetailContentActivity$11;
.super Ljava/lang/Object;
.source "EventDetailContentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/EventDetailContentActivity;->showClickPop(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/EventDetailContentActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/EventDetailContentActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/EventDetailContentActivity$11;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 882
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity$11;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mShareUtil:Lcom/lzx/iteam/util/ShareUtil;
    invoke-static {v0}, Lcom/lzx/iteam/EventDetailContentActivity;->access$62(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/util/ShareUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/lzx/iteam/EventDetailContentActivity$11;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mEventContent1:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/EventDetailContentActivity;->access$59(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    move-object v3, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/util/ShareUtil;->shareToWx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    .line 883
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity$11;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mTvContent1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lzx/iteam/EventDetailContentActivity;->access$60(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a000a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 884
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity$11;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mMoreWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lzx/iteam/EventDetailContentActivity;->access$61(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 885
    return-void
.end method
