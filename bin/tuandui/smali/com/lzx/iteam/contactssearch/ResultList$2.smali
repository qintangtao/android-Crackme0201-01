.class Lcom/lzx/iteam/contactssearch/ResultList$2;
.super Ljava/lang/Object;
.source "ResultList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/contactssearch/ResultList;->onQueryComplete(Ljava/util/LinkedHashSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/contactssearch/ResultList;

.field private final synthetic val$contactId:Ljava/util/LinkedHashSet;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/contactssearch/ResultList;Ljava/util/LinkedHashSet;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/ResultList$2;->this$0:Lcom/lzx/iteam/contactssearch/ResultList;

    iput-object p2, p0, Lcom/lzx/iteam/contactssearch/ResultList$2;->val$contactId:Ljava/util/LinkedHashSet;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ResultList$2;->this$0:Lcom/lzx/iteam/contactssearch/ResultList;

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/ResultList;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/ResultList$2;->val$contactId:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->changeResult(Ljava/util/LinkedHashSet;)V

    .line 116
    return-void
.end method
