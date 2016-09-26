.class Lcom/lzx/iteam/ChatActivity$11;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lcom/qiniu/android/storage/UpProgressHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ChatActivity;->setPhoto(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ChatActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ChatActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ChatActivity$11;->this$0:Lcom/lzx/iteam/ChatActivity;

    .line 1569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public progress(Ljava/lang/String;D)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "percent"    # D

    .prologue
    .line 1571
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, p2

    double-to-int v0, v2

    .line 1572
    .local v0, "p":I
    const-string v1, "\u4e03\u725b--percent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    return-void
.end method
