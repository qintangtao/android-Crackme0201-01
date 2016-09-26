.class Lcom/lzx/iteam/adapter/EventReplyAdapter$2;
.super Ljava/lang/Object;
.source "EventReplyAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/adapter/EventReplyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/adapter/EventReplyAdapter;

.field private final synthetic val$data:Lcom/lzx/iteam/bean/aidl/EventReplyNewData;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/EventReplyAdapter;Lcom/lzx/iteam/bean/aidl/EventReplyNewData;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/adapter/EventReplyAdapter$2;->this$0:Lcom/lzx/iteam/adapter/EventReplyAdapter;

    iput-object p2, p0, Lcom/lzx/iteam/adapter/EventReplyAdapter$2;->val$data:Lcom/lzx/iteam/bean/aidl/EventReplyNewData;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventReplyAdapter$2;->this$0:Lcom/lzx/iteam/adapter/EventReplyAdapter;

    # getter for: Lcom/lzx/iteam/adapter/EventReplyAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lzx/iteam/adapter/EventReplyAdapter;->access$0(Lcom/lzx/iteam/adapter/EventReplyAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/EventDetailContentActivity;

    iget-object v1, p0, Lcom/lzx/iteam/adapter/EventReplyAdapter$2;->val$data:Lcom/lzx/iteam/bean/aidl/EventReplyNewData;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->showCopyPop(Landroid/view/View;Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x0

    return v0
.end method
