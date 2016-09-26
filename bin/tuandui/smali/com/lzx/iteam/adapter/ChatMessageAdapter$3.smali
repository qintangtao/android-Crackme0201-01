.class Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;
.super Ljava/lang/Object;
.source "ChatMessageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/adapter/ChatMessageAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

.field private final synthetic val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/ChatMessageAdapter;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    iput-object p2, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;)Lcom/lzx/iteam/adapter/ChatMessageAdapter;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 384
    iget-object v3, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$7(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/ChatActivity;

    invoke-static {v3}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v1

    .line 385
    .local v1, "mDialogUtil":Lcom/lzx/iteam/util/AllDialogUtil;
    const-string v2, "\u91cd\u53d1"

    .line 386
    .local v2, "okText":Ljava/lang/String;
    iget-object v3, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$7(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08002d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "cancelText":Ljava/lang/String;
    const-string v3, "\u662f\u5426\u91cd\u53d1\u6d88\u606f\uff1f"

    invoke-virtual {v1, v2, v0, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->titleDeleteMsgStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 388
    new-instance v3, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3$1;

    iget-object v4, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-direct {v3, p0, v4}, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3$1;-><init>(Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    invoke-virtual {v1, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    .line 419
    return-void
.end method
