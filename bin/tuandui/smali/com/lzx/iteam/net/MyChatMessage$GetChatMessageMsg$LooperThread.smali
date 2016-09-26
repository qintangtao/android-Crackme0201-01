.class Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;
.super Ljava/lang/Thread;
.source "MyChatMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LooperThread"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;->this$1:Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;)Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;->this$1:Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 50
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 51
    iget-object v0, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;->this$1:Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;

    new-instance v1, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread$1;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread$1;-><init>(Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;)V

    iput-object v1, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->mHandler:Landroid/os/Handler;

    .line 72
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 73
    return-void
.end method
