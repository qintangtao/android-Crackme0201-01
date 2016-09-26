.class Lcom/lzx/iteam/ContactDetailActivity$4;
.super Ljava/lang/Object;
.source "ContactDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ContactDetailActivity;->getLocalPhoneItemView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
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
    iput-object p1, p0, Lcom/lzx/iteam/ContactDetailActivity$4;->this$0:Lcom/lzx/iteam/ContactDetailActivity;

    iput-object p2, p0, Lcom/lzx/iteam/ContactDetailActivity$4;->val$phoneNumber:Ljava/lang/String;

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 570
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity$4;->this$0:Lcom/lzx/iteam/ContactDetailActivity;

    iget-object v1, p0, Lcom/lzx/iteam/ContactDetailActivity$4;->val$phoneNumber:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lzx/iteam/util/CommonCodeUtil;->launchSendMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 571
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity$4;->this$0:Lcom/lzx/iteam/ContactDetailActivity;

    iget-object v1, p0, Lcom/lzx/iteam/ContactDetailActivity$4;->val$phoneNumber:Ljava/lang/String;

    # invokes: Lcom/lzx/iteam/ContactDetailActivity;->updataPerson(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lzx/iteam/ContactDetailActivity;->access$5(Lcom/lzx/iteam/ContactDetailActivity;Ljava/lang/String;)V

    .line 572
    return-void
.end method
