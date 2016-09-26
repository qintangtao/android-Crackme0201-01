.class Lcom/lzx/iteam/MyTalkMessageActivity$3;
.super Ljava/lang/Object;
.source "MyTalkMessageActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/MyTalkMessageActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/MyTalkMessageActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/MyTalkMessageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/MyTalkMessageActivity$3;->this$0:Lcom/lzx/iteam/MyTalkMessageActivity;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 119
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lzx/iteam/MyTalkMessageActivity$3;->this$0:Lcom/lzx/iteam/MyTalkMessageActivity;

    const-class v2, Lcom/lzx/iteam/ContactsTalkDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "talk_id"

    iget-object v1, p0, Lcom/lzx/iteam/MyTalkMessageActivity$3;->this$0:Lcom/lzx/iteam/MyTalkMessageActivity;

    # getter for: Lcom/lzx/iteam/MyTalkMessageActivity;->mTalkMessageDatas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/MyTalkMessageActivity;->access$2(Lcom/lzx/iteam/MyTalkMessageActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/MyTalkMessageData;

    iget-object v1, v1, Lcom/lzx/iteam/bean/MyTalkMessageData;->talkId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    iget-object v1, p0, Lcom/lzx/iteam/MyTalkMessageActivity$3;->this$0:Lcom/lzx/iteam/MyTalkMessageActivity;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/MyTalkMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 123
    return-void
.end method
