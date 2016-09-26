.class Lcom/lzx/iteam/ChatActivity$2;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ChatActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ChatActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ChatActivity$2;->this$0:Lcom/lzx/iteam/ChatActivity;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 295
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$2;->this$0:Lcom/lzx/iteam/ChatActivity;

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$2;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mEdInput:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity;->access$13(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lzx/iteam/ChatActivity;->access$14(Lcom/lzx/iteam/ChatActivity;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$2;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mSendMessage:Ljava/lang/String;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$15(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$2;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mIvMore:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$16(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$2;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mIvSend:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$17(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$2;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mIvMore:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$16(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$2;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mIvSend:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$17(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 286
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 291
    return-void
.end method
