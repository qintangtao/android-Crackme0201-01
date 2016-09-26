.class Lcom/lzx/iteam/EventDetailContentActivity$15;
.super Ljava/lang/Object;
.source "EventDetailContentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/EventDetailContentActivity;->getData()V
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
    iput-object p1, p0, Lcom/lzx/iteam/EventDetailContentActivity$15;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    .line 1011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity$15;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mShareUtil:Lcom/lzx/iteam/util/ShareUtil;
    invoke-static {v0}, Lcom/lzx/iteam/EventDetailContentActivity;->access$62(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/util/ShareUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity$15;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/lzx/iteam/EventDetailContentActivity;->access$64(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/EventDetailContentActivity$15;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mShareContent:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/EventDetailContentActivity;->access$65(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://ituandui.cn/mobile?event_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lzx/iteam/EventDetailContentActivity$15;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mEventId:Ljava/lang/String;
    invoke-static {v4}, Lcom/lzx/iteam/EventDetailContentActivity;->access$5(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/util/ShareUtil;->shareToWx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    .line 1015
    return-void
.end method
