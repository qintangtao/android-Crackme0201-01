.class Lcom/lzx/iteam/SkinList$2$1;
.super Ljava/lang/Object;
.source "SkinList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/lzx/iteam/SkinList$2$1;->this$1:Lcom/lzx/iteam/SkinList$2;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/SkinList$2$1;)Lcom/lzx/iteam/SkinList$2;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/lzx/iteam/SkinList$2$1;->this$1:Lcom/lzx/iteam/SkinList$2;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/lzx/iteam/SkinList$2$1;->this$1:Lcom/lzx/iteam/SkinList$2;

    # getter for: Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;
    invoke-static {v0}, Lcom/lzx/iteam/SkinList$2;->access$0(Lcom/lzx/iteam/SkinList$2;)Lcom/lzx/iteam/SkinList;

    move-result-object v0

    iget-object v0, v0, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 155
    iget-object v0, p0, Lcom/lzx/iteam/SkinList$2$1;->this$1:Lcom/lzx/iteam/SkinList$2;

    # getter for: Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;
    invoke-static {v0}, Lcom/lzx/iteam/SkinList$2;->access$0(Lcom/lzx/iteam/SkinList$2;)Lcom/lzx/iteam/SkinList;

    move-result-object v0

    iget-object v0, v0, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 156
    iget-object v0, p0, Lcom/lzx/iteam/SkinList$2$1;->this$1:Lcom/lzx/iteam/SkinList$2;

    # getter for: Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;
    invoke-static {v0}, Lcom/lzx/iteam/SkinList$2;->access$0(Lcom/lzx/iteam/SkinList$2;)Lcom/lzx/iteam/SkinList;

    move-result-object v0

    iget-object v0, v0, Lcom/lzx/iteam/SkinList;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lzx/iteam/SkinList$2$1$1;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/SkinList$2$1$1;-><init>(Lcom/lzx/iteam/SkinList$2$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 162
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 164
    :cond_0
    return-void
.end method
