.class Lcom/lzx/iteam/service/ChatService$2$2;
.super Ljava/lang/Object;
.source "ChatService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/service/ChatService$2;->loginXMPPServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/service/ChatService$2;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/service/ChatService$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/service/ChatService$2$2;->this$1:Lcom/lzx/iteam/service/ChatService$2;

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 404
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getNetManagerInstance()Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/service/NetServiceManager;->Login()V

    .line 405
    return-void
.end method
