.class Lcom/lzx/iteam/TalkListActivity$6;
.super Ljava/lang/Object;
.source "TalkListActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/TalkListActivity;->showDeleteTalkDlg(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/TalkListActivity;

.field private final synthetic val$talkId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/TalkListActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/TalkListActivity$6;->this$0:Lcom/lzx/iteam/TalkListActivity;

    iput-object p2, p0, Lcom/lzx/iteam/TalkListActivity$6;->val$talkId:Ljava/lang/String;

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 584
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 585
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$6;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # invokes: Lcom/lzx/iteam/TalkListActivity;->httpReqDlgShow()V
    invoke-static {v0}, Lcom/lzx/iteam/TalkListActivity;->access$18(Lcom/lzx/iteam/TalkListActivity;)V

    .line 578
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$6;->this$0:Lcom/lzx/iteam/TalkListActivity;

    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity$6;->val$talkId:Ljava/lang/String;

    # invokes: Lcom/lzx/iteam/TalkListActivity;->deleteTalk(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lzx/iteam/TalkListActivity;->access$19(Lcom/lzx/iteam/TalkListActivity;Ljava/lang/String;)V

    .line 579
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 580
    return-void
.end method
