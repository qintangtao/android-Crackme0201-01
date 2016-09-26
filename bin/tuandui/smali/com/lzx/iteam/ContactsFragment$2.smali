.class Lcom/lzx/iteam/ContactsFragment$2;
.super Ljava/lang/Object;
.source "ContactsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ContactsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ContactsFragment;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ContactsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ContactsFragment$2;->this$0:Lcom/lzx/iteam/ContactsFragment;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 139
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment$2;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v1}, Lcom/lzx/iteam/ContactsFragment;->access$5(Lcom/lzx/iteam/ContactsFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v1

    const-class v2, Lcom/lzx/iteam/HelpActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "title"

    const-string v2, "\u624b\u673a\u5982\u4f55\u521b\u5efa\u65b0\u56e2\u961f?"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v1, "type"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment$2;->this$0:Lcom/lzx/iteam/ContactsFragment;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/ContactsFragment;->startActivity(Landroid/content/Intent;)V

    .line 143
    return-void
.end method
