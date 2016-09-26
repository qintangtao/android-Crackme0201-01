.class Lcom/lzx/iteam/FeedActivity$1;
.super Landroid/os/Handler;
.source "FeedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/FeedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/FeedActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/FeedActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/FeedActivity$1;->this$0:Lcom/lzx/iteam/FeedActivity;

    .line 36
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 40
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 54
    :goto_0
    return-void

    .line 42
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/lzx/iteam/FeedActivity$1;->this$0:Lcom/lzx/iteam/FeedActivity;

    # getter for: Lcom/lzx/iteam/FeedActivity;->mEmail:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/lzx/iteam/FeedActivity;->access$0(Lcom/lzx/iteam/FeedActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/FeedActivity$1;->this$0:Lcom/lzx/iteam/FeedActivity;

    # getter for: Lcom/lzx/iteam/FeedActivity;->mEmail:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/lzx/iteam/FeedActivity;->access$0(Lcom/lzx/iteam/FeedActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberArea;->isEmail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/lzx/iteam/FeedActivity$1;->this$0:Lcom/lzx/iteam/FeedActivity;

    # getter for: Lcom/lzx/iteam/FeedActivity;->nameCard:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/FeedActivity;->access$1(Lcom/lzx/iteam/FeedActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/lzx/iteam/FeedActivity$1;->this$0:Lcom/lzx/iteam/FeedActivity;

    # getter for: Lcom/lzx/iteam/FeedActivity;->mEmail:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/lzx/iteam/FeedActivity;->access$0(Lcom/lzx/iteam/FeedActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/lzx/iteam/FeedActivity$1;->this$0:Lcom/lzx/iteam/FeedActivity;

    # getter for: Lcom/lzx/iteam/FeedActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v0}, Lcom/lzx/iteam/FeedActivity;->access$2(Lcom/lzx/iteam/FeedActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    const-string v1, "contact_name_card"

    iget-object v2, p0, Lcom/lzx/iteam/FeedActivity$1;->this$0:Lcom/lzx/iteam/FeedActivity;

    # getter for: Lcom/lzx/iteam/FeedActivity;->nameCard:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lzx/iteam/FeedActivity;->access$1(Lcom/lzx/iteam/FeedActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->saveCloudContact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/FeedActivity$1;->this$0:Lcom/lzx/iteam/FeedActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/FeedActivity;->finish()V

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/FeedActivity$1;->this$0:Lcom/lzx/iteam/FeedActivity;

    const-string v1, "\u60a8\u7684\u53cd\u9988\u672a\u63d0\u4ea4\u6210\u529f\uff0c\u8bf7\u91cd\u8bd5"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
