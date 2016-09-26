.class public Lcom/lzx/iteam/ContactNameCardActivity$MyPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "ContactNameCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ContactNameCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ContactNameCardActivity;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/ContactNameCardActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 550
    iput-object p1, p0, Lcom/lzx/iteam/ContactNameCardActivity$MyPagerAdapter;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    .line 551
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 552
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity$MyPagerAdapter;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->groups:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/ContactNameCardActivity;->access$4(Lcom/lzx/iteam/ContactNameCardActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 566
    const-string v1, "ContactNameCardActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "--position="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "--groupInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity$MyPagerAdapter;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->groupInfos:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/ContactNameCardActivity;->access$3(Lcom/lzx/iteam/ContactNameCardActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/CloudContact;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/CloudContact;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity$MyPagerAdapter;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    invoke-static {v0, p1}, Lcom/lzx/iteam/ContactNameCardActivity;->access$21(Lcom/lzx/iteam/ContactNameCardActivity;I)V

    .line 568
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity$MyPagerAdapter;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->groupInfos:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/ContactNameCardActivity;->access$3(Lcom/lzx/iteam/ContactNameCardActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/CloudContact;

    invoke-static {v0}, Lcom/lzx/iteam/ContactNameCardFragment;->newInstance(Lcom/lzx/iteam/bean/CloudContact;)Lcom/lzx/iteam/ContactNameCardFragment;

    move-result-object v0

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 556
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity$MyPagerAdapter;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->groups:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/ContactNameCardActivity;->access$4(Lcom/lzx/iteam/ContactNameCardActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method
