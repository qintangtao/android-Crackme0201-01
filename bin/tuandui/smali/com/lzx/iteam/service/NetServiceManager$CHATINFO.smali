.class Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;
.super Ljava/lang/Object;
.source "NetServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/service/NetServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CHATINFO"
.end annotation


# instance fields
.field chat:Lorg/jivesoftware/smack/Chat;

.field chatInterface:Lcom/lzx/iteam/service/aidl/NewMessageInterface;

.field chatInterfaceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/service/aidl/NewMessageInterface;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lzx/iteam/service/NetServiceManager;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/service/NetServiceManager;)V
    .locals 1

    .prologue
    .line 93
    iput-object p1, p0, Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;->this$0:Lcom/lzx/iteam/service/NetServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;->chatInterfaceList:Ljava/util/ArrayList;

    return-void
.end method
