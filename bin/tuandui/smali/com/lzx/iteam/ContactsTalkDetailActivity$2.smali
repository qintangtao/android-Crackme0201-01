.class Lcom/lzx/iteam/ContactsTalkDetailActivity$2;
.super Ljava/lang/Object;
.source "ContactsTalkDetailActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ContactsTalkDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ContactsTalkDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity$2;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 300
    iget-object v1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity$2;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mEtCommentEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$18(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "mSendMessage":Ljava/lang/String;
    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity$2;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mTvSend:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$19(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity$2;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mTvSend:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$19(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 291
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 296
    return-void
.end method
