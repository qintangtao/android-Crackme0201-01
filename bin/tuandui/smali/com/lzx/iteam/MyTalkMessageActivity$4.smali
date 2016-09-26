.class Lcom/lzx/iteam/MyTalkMessageActivity$4;
.super Ljava/lang/Object;
.source "MyTalkMessageActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/MyTalkMessageActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/MyTalkMessageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/MyTalkMessageActivity$4;->this$0:Lcom/lzx/iteam/MyTalkMessageActivity;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/lzx/iteam/MyTalkMessageActivity$4;->this$0:Lcom/lzx/iteam/MyTalkMessageActivity;

    # getter for: Lcom/lzx/iteam/MyTalkMessageActivity;->adapter:Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/MyTalkMessageActivity;->access$5(Lcom/lzx/iteam/MyTalkMessageActivity;)Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/MyTalkMessageData;

    .line 129
    .local v0, "myTalkMessageData":Lcom/lzx/iteam/bean/MyTalkMessageData;
    iget-object v1, p0, Lcom/lzx/iteam/MyTalkMessageActivity$4;->this$0:Lcom/lzx/iteam/MyTalkMessageActivity;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/MyTalkMessageActivity;->showExitGroupDlg(Lcom/lzx/iteam/bean/MyTalkMessageData;)V

    .line 130
    const/4 v1, 0x0

    return v1
.end method
