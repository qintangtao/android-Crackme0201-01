.class Lcom/lzx/iteam/EventsFragment$7;
.super Ljava/lang/Object;
.source "EventsFragment.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/EventsFragment;->showDeleteEventDlg(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/EventsFragment;

.field private final synthetic val$eventId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/EventsFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/EventsFragment$7;->this$0:Lcom/lzx/iteam/EventsFragment;

    iput-object p2, p0, Lcom/lzx/iteam/EventsFragment$7;->val$eventId:Ljava/lang/String;

    .line 963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 973
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 974
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 966
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$7;->this$0:Lcom/lzx/iteam/EventsFragment;

    # invokes: Lcom/lzx/iteam/EventsFragment;->httpReqDlgShow()V
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$24(Lcom/lzx/iteam/EventsFragment;)V

    .line 967
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$7;->this$0:Lcom/lzx/iteam/EventsFragment;

    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment$7;->val$eventId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/EventsFragment;->removeEvent(Ljava/lang/String;)V

    .line 968
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 969
    return-void
.end method
