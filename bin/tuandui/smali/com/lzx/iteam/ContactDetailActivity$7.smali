.class Lcom/lzx/iteam/ContactDetailActivity$7;
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
    iput-object p1, p0, Lcom/lzx/iteam/ContactDetailActivity$7;->this$0:Lcom/lzx/iteam/ContactDetailActivity;

    iput-object p2, p0, Lcom/lzx/iteam/ContactDetailActivity$7;->val$phoneNumber:Ljava/lang/String;

    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 598
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity$7;->this$0:Lcom/lzx/iteam/ContactDetailActivity;

    iget-object v1, p0, Lcom/lzx/iteam/ContactDetailActivity$7;->val$phoneNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/CommonCodeUtil;->launchCallByNumber(Landroid/content/Context;Ljava/lang/String;)Z

    .line 599
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity$7;->this$0:Lcom/lzx/iteam/ContactDetailActivity;

    iget-object v1, p0, Lcom/lzx/iteam/ContactDetailActivity$7;->val$phoneNumber:Ljava/lang/String;

    # invokes: Lcom/lzx/iteam/ContactDetailActivity;->updataPerson(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lzx/iteam/ContactDetailActivity;->access$5(Lcom/lzx/iteam/ContactDetailActivity;Ljava/lang/String;)V

    .line 600
    return-void
.end method
