.class Lcom/lzx/iteam/adapter/CloudGroupAdapter$1;
.super Ljava/lang/Object;
.source "CloudGroupAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/adapter/CloudGroupAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/adapter/CloudGroupAdapter;

.field private final synthetic val$groupItem:Lcom/lzx/iteam/bean/CloudGroup;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/CloudGroupAdapter;Lcom/lzx/iteam/bean/CloudGroup;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter$1;->this$0:Lcom/lzx/iteam/adapter/CloudGroupAdapter;

    iput-object p2, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter$1;->val$groupItem:Lcom/lzx/iteam/bean/CloudGroup;

    iput p3, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter$1;->val$position:I

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 193
    iget-object v1, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter$1;->val$groupItem:Lcom/lzx/iteam/bean/CloudGroup;

    sput-object v1, Lcom/lzx/iteam/CloudDialerActivity;->selectedGroup:Lcom/lzx/iteam/bean/CloudGroup;

    .line 194
    sget-object v1, Lcom/lzx/iteam/CloudDialerActivity;->selectedGroup:Lcom/lzx/iteam/bean/CloudGroup;

    iget v2, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter$1;->val$position:I

    iput v2, v1, Lcom/lzx/iteam/bean/CloudGroup;->position:I

    .line 195
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter$1;->this$0:Lcom/lzx/iteam/adapter/CloudGroupAdapter;

    # getter for: Lcom/lzx/iteam/adapter/CloudGroupAdapter;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->access$1(Lcom/lzx/iteam/adapter/CloudGroupAdapter;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/lzx/iteam/ManageGroupActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "groupData"

    iget-object v2, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter$1;->val$groupItem:Lcom/lzx/iteam/bean/CloudGroup;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 204
    const-string v1, "where"

    const-string v2, "structure"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    iget-object v1, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter$1;->this$0:Lcom/lzx/iteam/adapter/CloudGroupAdapter;

    # getter for: Lcom/lzx/iteam/adapter/CloudGroupAdapter;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->access$1(Lcom/lzx/iteam/adapter/CloudGroupAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 207
    return-void
.end method
