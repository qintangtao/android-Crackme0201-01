.class Lcom/lzx/iteam/TalkListActivity$2;
.super Ljava/lang/Object;
.source "TalkListActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/TalkListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/TalkListActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/TalkListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/TalkListActivity$2;->this$0:Lcom/lzx/iteam/TalkListActivity;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$2;->this$0:Lcom/lzx/iteam/TalkListActivity;

    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity$2;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mEtCommentEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lzx/iteam/TalkListActivity;->access$11(Lcom/lzx/iteam/TalkListActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lzx/iteam/TalkListActivity;->access$10(Lcom/lzx/iteam/TalkListActivity;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$2;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mSendMessage:Ljava/lang/String;
    invoke-static {v0}, Lcom/lzx/iteam/TalkListActivity;->access$8(Lcom/lzx/iteam/TalkListActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$2;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mTvSend:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lzx/iteam/TalkListActivity;->access$12(Lcom/lzx/iteam/TalkListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$2;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mTvSend:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lzx/iteam/TalkListActivity;->access$12(Lcom/lzx/iteam/TalkListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 332
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 337
    return-void
.end method
