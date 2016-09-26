.class Lcom/lzx/iteam/FunctionFragment$ItemClickListener;
.super Ljava/lang/Object;
.source "FunctionFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/FunctionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemClickListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field imageContent:Landroid/graphics/Bitmap;

.field textContent:Ljava/lang/String;

.field final synthetic this$0:Lcom/lzx/iteam/FunctionFragment;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/FunctionFragment;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 550
    iput-object p1, p0, Lcom/lzx/iteam/FunctionFragment$ItemClickListener;->this$0:Lcom/lzx/iteam/FunctionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    iput-object p2, p0, Lcom/lzx/iteam/FunctionFragment$ItemClickListener;->textContent:Ljava/lang/String;

    .line 552
    iput-object p3, p0, Lcom/lzx/iteam/FunctionFragment$ItemClickListener;->imageContent:Landroid/graphics/Bitmap;

    .line 553
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 558
    packed-switch p3, :pswitch_data_0

    .line 582
    :goto_0
    return-void

    .line 560
    :pswitch_0
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.SENDTO"

    const-string v1, "smsto:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 561
    .local v7, "sms":Landroid/content/Intent;
    const-string v0, "sms_body"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lzx/iteam/FunctionFragment$ItemClickListener;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->mMyName:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/FunctionFragment;->access$10(Lcom/lzx/iteam/FunctionFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u9080\u8bf7\u4f60\u4f7f\u7528\u56e2\u961fAPP,\u70b9\u51fb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "http://ituandui.cn/download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u63a5\u53d7\u9080\u8bf7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment$ItemClickListener;->this$0:Lcom/lzx/iteam/FunctionFragment;

    invoke-virtual {v0, v7}, Lcom/lzx/iteam/FunctionFragment;->startActivity(Landroid/content/Intent;)V

    .line 563
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment$ItemClickListener;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->mShareWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lzx/iteam/FunctionFragment;->access$11(Lcom/lzx/iteam/FunctionFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 566
    .end local v7    # "sms":Landroid/content/Intent;
    :pswitch_1
    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment$ItemClickListener;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v0}, Lcom/lzx/iteam/FunctionFragment;->access$5(Lcom/lzx/iteam/FunctionFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v0

    const-class v1, Lcom/lzx/iteam/MyShareQrCodeActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 567
    .local v6, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment$ItemClickListener;->this$0:Lcom/lzx/iteam/FunctionFragment;

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/FunctionFragment;->startActivity(Landroid/content/Intent;)V

    .line 568
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment$ItemClickListener;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->mShareWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lzx/iteam/FunctionFragment;->access$11(Lcom/lzx/iteam/FunctionFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 571
    .end local v6    # "intent":Landroid/content/Intent;
    :pswitch_2
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment$ItemClickListener;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->mShareUtil:Lcom/lzx/iteam/util/ShareUtil;
    invoke-static {v0}, Lcom/lzx/iteam/FunctionFragment;->access$12(Lcom/lzx/iteam/FunctionFragment;)Lcom/lzx/iteam/util/ShareUtil;

    move-result-object v0

    const-string v1, "\u56e2\u961f-\u8ba9\u4f01\u4e1a\u6c9f\u901a\u66f4\u9ad8\u6548"

    iget-object v2, p0, Lcom/lzx/iteam/FunctionFragment$ItemClickListener;->textContent:Ljava/lang/String;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/lzx/iteam/FunctionFragment$ItemClickListener;->imageContent:Landroid/graphics/Bitmap;

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/util/ShareUtil;->shareToWx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    .line 572
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment$ItemClickListener;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->mShareWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lzx/iteam/FunctionFragment;->access$11(Lcom/lzx/iteam/FunctionFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 575
    :pswitch_3
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment$ItemClickListener;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->mShareUtil:Lcom/lzx/iteam/util/ShareUtil;
    invoke-static {v0}, Lcom/lzx/iteam/FunctionFragment;->access$12(Lcom/lzx/iteam/FunctionFragment;)Lcom/lzx/iteam/util/ShareUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/FunctionFragment$ItemClickListener;->textContent:Ljava/lang/String;

    iget-object v2, p0, Lcom/lzx/iteam/FunctionFragment$ItemClickListener;->imageContent:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v3, v2}, Lcom/lzx/iteam/util/ShareUtil;->shareToWxCircle(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 576
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment$ItemClickListener;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->mShareWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lzx/iteam/FunctionFragment;->access$11(Lcom/lzx/iteam/FunctionFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 558
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
