.class Lcom/lzx/iteam/CloudDialerActivity$14;
.super Ljava/lang/Object;
.source "CloudDialerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CloudDialerActivity;->showPlusButtonWindow(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CloudDialerActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CloudDialerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity$14;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    .line 4191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 4195
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$14;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mAddContactsWin:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lzx/iteam/CloudDialerActivity;->access$59(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4196
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$14;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    sget-object v1, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CONTACT_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v1, v0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 4197
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$14;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/CloudDialerActivity;->freshContactsByStatus()V

    .line 4199
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$14;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    .line 4200
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$14;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-static {v0, v2}, Lcom/lzx/iteam/CloudDialerActivity;->access$60(Lcom/lzx/iteam/CloudDialerActivity;Z)V

    .line 4201
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$14;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/CloudDialerActivity;->setNoData(Z)V

    .line 4202
    return-void
.end method
