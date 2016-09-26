.class Lcom/lzx/iteam/jpushutil/MyReceiver$1;
.super Landroid/os/Handler;
.source "MyReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/jpushutil/MyReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/jpushutil/MyReceiver;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/jpushutil/MyReceiver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/jpushutil/MyReceiver$1;->this$0:Lcom/lzx/iteam/jpushutil/MyReceiver;

    .line 51
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    .line 58
    return-void
.end method
