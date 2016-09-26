.class Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;
.super Landroid/os/Handler;
.source "ContactsSearchEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchHandler"
.end annotation


# instance fields
.field private mWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "engine"    # Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;

    .prologue
    .line 835
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 836
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;->mWeakRef:Ljava/lang/ref/WeakReference;

    .line 837
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 840
    iget-object v5, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchHandler;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;

    .line 841
    .local v0, "engine":Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;
    if-nez v0, :cond_0

    .line 872
    :goto_0
    return-void

    .line 845
    :cond_0
    iget v4, p1, Landroid/os/Message;->what:I

    .line 846
    .local v4, "what":I
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 849
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 850
    .local v2, "key":Ljava/lang/String;
    invoke-static {v6}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->setHaveNewInput(Z)V

    .line 851
    iget v5, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->searchImpl(Ljava/lang/String;I)V
    invoke-static {v0, v2, v5}, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->access$0(Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;Ljava/lang/String;I)V

    goto :goto_0

    .line 857
    .end local v2    # "key":Ljava/lang/String;
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    .line 858
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "key"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 859
    .restart local v2    # "key":Ljava/lang/String;
    const-string v5, "groupId"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 860
    .local v1, "groupId":Ljava/lang/String;
    invoke-static {v6}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->setHaveNewInput(Z)V

    .line 861
    iget v5, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->searchImpl(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v5}, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->access$1(Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 868
    .end local v1    # "groupId":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_2
    # invokes: Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->updateSearchScope()V
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->access$2(Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;)V

    goto :goto_0

    .line 846
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
