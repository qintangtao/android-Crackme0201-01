.class Lcom/lzx/iteam/SkinList$2$2$1;
.super Ljava/lang/Object;
.source "SkinList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/SkinList$2$2;->onCancel(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/lzx/iteam/SkinList$2$2;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/SkinList$2$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/SkinList$2$2$1;->this$2:Lcom/lzx/iteam/SkinList$2$2;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/lzx/iteam/SkinList$2$2$1;->this$2:Lcom/lzx/iteam/SkinList$2$2;

    # getter for: Lcom/lzx/iteam/SkinList$2$2;->this$1:Lcom/lzx/iteam/SkinList$2;
    invoke-static {v0}, Lcom/lzx/iteam/SkinList$2$2;->access$0(Lcom/lzx/iteam/SkinList$2$2;)Lcom/lzx/iteam/SkinList$2;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;
    invoke-static {v0}, Lcom/lzx/iteam/SkinList$2;->access$0(Lcom/lzx/iteam/SkinList$2;)Lcom/lzx/iteam/SkinList;

    move-result-object v0

    iget-object v0, v0, Lcom/lzx/iteam/SkinList;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 176
    return-void
.end method
