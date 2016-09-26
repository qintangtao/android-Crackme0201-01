.class Lcom/lzx/iteam/adapter/TalkListAdapter$6;
.super Ljava/lang/Object;
.source "TalkListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/adapter/TalkListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

.field private final synthetic val$position:I

.field private final synthetic val$talkId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/TalkListAdapter;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$6;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    iput-object p2, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$6;->val$talkId:Ljava/lang/String;

    iput p3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$6;->val$position:I

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$6;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    iget-object v1, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$6;->val$talkId:Ljava/lang/String;

    # invokes: Lcom/lzx/iteam/adapter/TalkListAdapter;->AddPraiseMsg(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$11(Lcom/lzx/iteam/adapter/TalkListAdapter;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$6;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    iget v1, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$6;->val$position:I

    invoke-static {v0, v1}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$7(Lcom/lzx/iteam/adapter/TalkListAdapter;I)V

    .line 432
    const-string v0, "talkListData.position"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$6;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mPosition:I
    invoke-static {v2}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$3(Lcom/lzx/iteam/adapter/TalkListAdapter;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return-void
.end method
