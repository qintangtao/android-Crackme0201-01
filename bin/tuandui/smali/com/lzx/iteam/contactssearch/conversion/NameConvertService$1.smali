.class Lcom/lzx/iteam/contactssearch/conversion/NameConvertService$1;
.super Ljava/util/TimerTask;
.source "NameConvertService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->scheduleAutoClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService$1;->this$0:Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;

    .line 99
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService$1;->this$0:Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;

    # getter for: Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mPersistTask:Lcom/lzx/iteam/contactssearch/conversion/NameConvertService$PersisitTask;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->access$1(Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;)Lcom/lzx/iteam/contactssearch/conversion/NameConvertService$PersisitTask;

    move-result-object v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService$1;->this$0:Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;

    invoke-virtual {v0}, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->stopSelf()V

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService$1;->this$0:Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->access$3(Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;Z)V

    .line 111
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService$1;->this$0:Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;

    # getter for: Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mIdleClosedTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->access$2(Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0
.end method
