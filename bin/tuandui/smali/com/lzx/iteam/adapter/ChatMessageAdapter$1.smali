.class Lcom/lzx/iteam/adapter/ChatMessageAdapter$1;
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

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/ChatMessageAdapter;ILcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$1;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    iput p2, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$1;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x4

    .line 325
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$1;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mActivity:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v2}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$6(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v2

    const-class v3, Lcom/lzx/iteam/ImagePagerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 326
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$1;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    iget v3, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$1;->val$position:I

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->getItemViewType(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 346
    const-string v2, "image_origin"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v0, "images":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$1;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getImageContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    const-string v2, "image_urls"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 350
    iget-object v2, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$1;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$7(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 370
    .end local v0    # "images":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v2, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$1;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getImageContent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$1;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getImageContent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "7xkcd8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 358
    const-string v2, "image_origin"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .restart local v0    # "images":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$1;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getImageContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    const-string v2, "image_urls"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 362
    iget-object v2, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$1;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$7(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 364
    .end local v0    # "images":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const-string v2, "image_origin"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    const-string v2, "imagePath"

    iget-object v3, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$1;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getImageContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    iget-object v2, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$1;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$7(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
