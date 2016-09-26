.class Lcom/lzx/iteam/adapter/ChatMessageAdapter$2;
.super Ljava/lang/Object;
.source "ChatMessageAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$2;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    iput-object p2, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$2;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$2;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$2;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getTextContent()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/lzx/iteam/adapter/ChatMessageAdapter;->showCopyPop(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$8(Lcom/lzx/iteam/adapter/ChatMessageAdapter;Ljava/lang/String;)V

    .line 377
    const/4 v0, 0x1

    return v0
.end method
