.class Lcom/lzx/iteam/adapter/DetailCommentListAdapter$4;
.super Ljava/lang/Object;
.source "DetailCommentListAdapter.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->showDeleteTalkCommentDlg(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/adapter/DetailCommentListAdapter;

.field private final synthetic val$comment:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/DetailCommentListAdapter;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$4;->this$0:Lcom/lzx/iteam/adapter/DetailCommentListAdapter;

    iput-object p2, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$4;->val$comment:Ljava/util/Map;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 216
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$4;->this$0:Lcom/lzx/iteam/adapter/DetailCommentListAdapter;

    iget-object v1, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$4;->val$comment:Ljava/util/Map;

    # invokes: Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->deleteTalkComment(Ljava/util/Map;)V
    invoke-static {v0, v1}, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->access$3(Lcom/lzx/iteam/adapter/DetailCommentListAdapter;Ljava/util/Map;)V

    .line 210
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 211
    return-void
.end method
