.class Lcom/lzx/iteam/MyTalkMessageActivity$5;
.super Ljava/lang/Object;
.source "MyTalkMessageActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/MyTalkMessageActivity;->showExitGroupDlg(Lcom/lzx/iteam/bean/MyTalkMessageData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/MyTalkMessageActivity;

.field private final synthetic val$myTalkMessageData:Lcom/lzx/iteam/bean/MyTalkMessageData;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/MyTalkMessageActivity;Lcom/lzx/iteam/bean/MyTalkMessageData;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/MyTalkMessageActivity$5;->this$0:Lcom/lzx/iteam/MyTalkMessageActivity;

    iput-object p2, p0, Lcom/lzx/iteam/MyTalkMessageActivity$5;->val$myTalkMessageData:Lcom/lzx/iteam/bean/MyTalkMessageData;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 165
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/lzx/iteam/MyTalkMessageActivity$5;->this$0:Lcom/lzx/iteam/MyTalkMessageActivity;

    # getter for: Lcom/lzx/iteam/MyTalkMessageActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v0}, Lcom/lzx/iteam/MyTalkMessageActivity;->access$1(Lcom/lzx/iteam/MyTalkMessageActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/MyTalkMessageActivity$5;->val$myTalkMessageData:Lcom/lzx/iteam/bean/MyTalkMessageData;

    iget-object v1, v1, Lcom/lzx/iteam/bean/MyTalkMessageData;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;->deleteOneTalkMyMsg(Ljava/lang/String;)I

    .line 158
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 159
    return-void
.end method
