.class Lcom/lzx/iteam/CreateNewEventActivity$4;
.super Ljava/lang/Object;
.source "CreateNewEventActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CreateNewEventActivity;->showSavePop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CreateNewEventActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CreateNewEventActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CreateNewEventActivity$4;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    .line 944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 947
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$4;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mMoreWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$31(Lcom/lzx/iteam/CreateNewEventActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 948
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$4;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$2(Lcom/lzx/iteam/CreateNewEventActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    const-string v1, "draft_event_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 949
    invoke-static {}, Lcom/lzx/iteam/selectimage/Bimp;->deleteAllPhoto()V

    .line 951
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$4;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->finish()V

    .line 952
    return-void
.end method
