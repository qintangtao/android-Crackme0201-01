.class Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter$DeleteOnClick;
.super Ljava/lang/Object;
.source "ManageModelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeleteOnClick"
.end annotation


# instance fields
.field private position:I

.field final synthetic this$1:Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;I)V
    .locals 0
    .param p2, "position"    # I

    .prologue
    .line 288
    iput-object p1, p0, Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter$DeleteOnClick;->this$1:Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput p2, p0, Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter$DeleteOnClick;->position:I

    .line 290
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter$DeleteOnClick;->this$1:Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;

    # getter for: Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;->this$0:Lcom/lzx/iteam/ManageModelActivity;
    invoke-static {v0}, Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;->access$0(Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;)Lcom/lzx/iteam/ManageModelActivity;

    move-result-object v0

    iget v1, p0, Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter$DeleteOnClick;->position:I

    invoke-static {v0, v1}, Lcom/lzx/iteam/ManageModelActivity;->access$7(Lcom/lzx/iteam/ManageModelActivity;I)V

    .line 295
    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter$DeleteOnClick;->this$1:Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;

    # getter for: Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;->this$0:Lcom/lzx/iteam/ManageModelActivity;
    invoke-static {v0}, Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;->access$0(Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;)Lcom/lzx/iteam/ManageModelActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter$DeleteOnClick;->this$1:Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;

    # getter for: Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;->this$0:Lcom/lzx/iteam/ManageModelActivity;
    invoke-static {v0}, Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;->access$0(Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;)Lcom/lzx/iteam/ManageModelActivity;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/ManageModelActivity;->mResultData:Ljava/util/List;
    invoke-static {v0}, Lcom/lzx/iteam/ManageModelActivity;->access$5(Lcom/lzx/iteam/ManageModelActivity;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter$DeleteOnClick;->position:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/EventListData;->getEventId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/ManageModelActivity;->deleteModel(Ljava/lang/String;)V

    .line 296
    return-void
.end method
