.class Lcom/lzx/iteam/CloudDialerActivity$15;
.super Ljava/lang/Object;
.source "CloudDialerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CloudDialerActivity;->showPlusButtonWindow(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CloudDialerActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CloudDialerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity$15;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    .line 4206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4210
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity$15;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mAddContactsWin:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/lzx/iteam/CloudDialerActivity;->access$59(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4211
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity$15;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/CloudDialerActivity;->setNoData(Z)V

    .line 4223
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity$15;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    const-class v2, Lcom/lzx/iteam/AddContactByHandActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4224
    .local v0, "insert":Landroid/content/Intent;
    const-string v1, "group_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity$15;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-wide v4, v3, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4225
    const-string v1, "tag_id"

    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity$15;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4226
    const-class v1, Lcom/lzx/iteam/bean/CloudGroup;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/lzx/iteam/CloudDialerActivity;->selectedGroup:Lcom/lzx/iteam/bean/CloudGroup;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4227
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity$15;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/CloudDialerActivity;->startActivity(Landroid/content/Intent;)V

    .line 4228
    return-void
.end method
