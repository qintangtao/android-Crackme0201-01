.class Lcom/lzx/iteam/SkinList$2$2;
.super Ljava/lang/Object;
.source "SkinList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/SkinList$2;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/SkinList$2;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/SkinList$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/SkinList$2$2;->this$1:Lcom/lzx/iteam/SkinList$2;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/SkinList$2$2;)Lcom/lzx/iteam/SkinList$2;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/lzx/iteam/SkinList$2$2;->this$1:Lcom/lzx/iteam/SkinList$2;

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/lzx/iteam/SkinList$2$2;->this$1:Lcom/lzx/iteam/SkinList$2;

    # getter for: Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;
    invoke-static {v0}, Lcom/lzx/iteam/SkinList$2;->access$0(Lcom/lzx/iteam/SkinList$2;)Lcom/lzx/iteam/SkinList;

    move-result-object v0

    iget-object v0, v0, Lcom/lzx/iteam/SkinList;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lzx/iteam/SkinList$2$2$1;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/SkinList$2$2$1;-><init>(Lcom/lzx/iteam/SkinList$2$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 177
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 179
    :cond_0
    return-void
.end method
