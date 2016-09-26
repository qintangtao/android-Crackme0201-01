.class Lcom/lzx/iteam/util/NetworkUtil$2;
.super Ljava/lang/Object;
.source "NetworkUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/util/NetworkUtil;->checkNetworkDialog()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/util/NetworkUtil;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/util/NetworkUtil;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/util/NetworkUtil$2;->this$0:Lcom/lzx/iteam/util/NetworkUtil;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 62
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 63
    return-void
.end method
