.class Lcom/lzx/iteam/engine/observer/FreshContactObserver$2;
.super Ljava/lang/Thread;
.source "FreshContactObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/engine/observer/FreshContactObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/engine/observer/FreshContactObserver;

.field private final synthetic val$worker:Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/engine/observer/FreshContactObserver;Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/engine/observer/FreshContactObserver$2;->this$0:Lcom/lzx/iteam/engine/observer/FreshContactObserver;

    iput-object p2, p0, Lcom/lzx/iteam/engine/observer/FreshContactObserver$2;->val$worker:Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;

    .line 57
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lzx/iteam/engine/observer/FreshContactObserver$2;->val$worker:Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->getChangesList(Z)V

    .line 61
    return-void
.end method
