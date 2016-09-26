.class Lcom/lzx/iteam/CloudDialerActivity$MyOnChoiceChangeListener;
.super Ljava/lang/Object;
.source "CloudDialerActivity.java"

# interfaces
.implements Lcom/lzx/iteam/widget/TwiceTextChoiceView$OnChoiceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/CloudDialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOnChoiceChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CloudDialerActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CloudDialerActivity;)V
    .locals 0

    .prologue
    .line 3470
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity$MyOnChoiceChangeListener;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public choiceAll()V
    .locals 2

    .prologue
    .line 3474
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$MyOnChoiceChangeListener;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mLayoutSelectAll:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lzx/iteam/CloudDialerActivity;->access$39(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3475
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$MyOnChoiceChangeListener;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    sget-object v1, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CONTACT_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    if-ne v0, v1, :cond_0

    .line 3476
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$MyOnChoiceChangeListener;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/CloudDialerActivity;->access$23(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->changeToAllContent()V

    .line 3481
    :goto_0
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$MyOnChoiceChangeListener;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/KeyboardVertFrag;->enableInput(Z)V

    .line 3482
    return-void

    .line 3478
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$MyOnChoiceChangeListener;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->changeToAllContent()V

    goto :goto_0
.end method

.method public choiceSelected()V
    .locals 2

    .prologue
    .line 3486
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$MyOnChoiceChangeListener;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mLayoutSelectAll:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lzx/iteam/CloudDialerActivity;->access$39(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3487
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$MyOnChoiceChangeListener;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    sget-object v1, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CONTACT_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    if-ne v0, v1, :cond_0

    .line 3488
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$MyOnChoiceChangeListener;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/CloudDialerActivity;->access$23(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->changeSelectedContent()V

    .line 3493
    :goto_0
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$MyOnChoiceChangeListener;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/KeyboardVertFrag;->enableInput(Z)V

    .line 3494
    return-void

    .line 3490
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$MyOnChoiceChangeListener;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->changeSelectedContent()V

    goto :goto_0
.end method
