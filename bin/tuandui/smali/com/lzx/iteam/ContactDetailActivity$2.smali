.class Lcom/lzx/iteam/ContactDetailActivity$2;
.super Ljava/lang/Object;
.source "ContactDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ContactDetailActivity;->confirmCopy(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ContactDetailActivity;

.field private final synthetic val$phoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ContactDetailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ContactDetailActivity$2;->this$0:Lcom/lzx/iteam/ContactDetailActivity;

    iput-object p2, p0, Lcom/lzx/iteam/ContactDetailActivity$2;->val$phoneNumber:Ljava/lang/String;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 194
    iget-object v1, p0, Lcom/lzx/iteam/ContactDetailActivity$2;->this$0:Lcom/lzx/iteam/ContactDetailActivity;

    # getter for: Lcom/lzx/iteam/ContactDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lzx/iteam/ContactDetailActivity;->access$3(Lcom/lzx/iteam/ContactDetailActivity;)Landroid/content/Context;

    move-result-object v1

    .line 195
    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 194
    check-cast v0, Landroid/text/ClipboardManager;

    .line 196
    .local v0, "cm":Landroid/text/ClipboardManager;
    iget-object v1, p0, Lcom/lzx/iteam/ContactDetailActivity$2;->val$phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 197
    return-void
.end method
