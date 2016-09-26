.class Lcom/lzx/iteam/DraftsActivity$2;
.super Ljava/lang/Object;
.source "DraftsActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/DraftsActivity;->showDeleteDraftDlg(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/DraftsActivity;

.field private final synthetic val$eventId:Ljava/lang/String;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/lzx/iteam/DraftsActivity;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/DraftsActivity$2;->this$0:Lcom/lzx/iteam/DraftsActivity;

    iput p2, p0, Lcom/lzx/iteam/DraftsActivity$2;->val$position:I

    iput-object p3, p0, Lcom/lzx/iteam/DraftsActivity$2;->val$eventId:Ljava/lang/String;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 160
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 161
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/lzx/iteam/DraftsActivity$2;->this$0:Lcom/lzx/iteam/DraftsActivity;

    # getter for: Lcom/lzx/iteam/DraftsActivity;->mEventData:Ljava/util/List;
    invoke-static {v0}, Lcom/lzx/iteam/DraftsActivity;->access$3(Lcom/lzx/iteam/DraftsActivity;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/lzx/iteam/DraftsActivity$2;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/lzx/iteam/DraftsActivity$2;->this$0:Lcom/lzx/iteam/DraftsActivity;

    # getter for: Lcom/lzx/iteam/DraftsActivity;->mAdapter:Lcom/lzx/iteam/adapter/DraftAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/DraftsActivity;->access$7(Lcom/lzx/iteam/DraftsActivity;)Lcom/lzx/iteam/adapter/DraftAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/DraftAdapter;->notifyDataSetChanged()V

    .line 154
    iget-object v0, p0, Lcom/lzx/iteam/DraftsActivity$2;->this$0:Lcom/lzx/iteam/DraftsActivity;

    # getter for: Lcom/lzx/iteam/DraftsActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v0}, Lcom/lzx/iteam/DraftsActivity;->access$1(Lcom/lzx/iteam/DraftsActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/DraftsActivity$2;->val$eventId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;->deleteEventDraftsByEventId(Ljava/lang/String;)I

    .line 155
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 156
    return-void
.end method
