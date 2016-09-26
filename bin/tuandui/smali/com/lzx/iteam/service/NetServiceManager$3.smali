.class Lcom/lzx/iteam/service/NetServiceManager$3;
.super Ljava/lang/Object;
.source "NetServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/service/NetServiceManager;->sendTextMessage(Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/service/NetServiceManager;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/service/NetServiceManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/service/NetServiceManager$3;->this$0:Lcom/lzx/iteam/service/NetServiceManager;

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/lzx/iteam/service/NetServiceManager$3;->this$0:Lcom/lzx/iteam/service/NetServiceManager;

    invoke-virtual {v0}, Lcom/lzx/iteam/service/NetServiceManager;->Login()V

    .line 479
    return-void
.end method
