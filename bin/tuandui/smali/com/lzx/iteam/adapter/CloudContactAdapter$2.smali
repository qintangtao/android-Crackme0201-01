.class Lcom/lzx/iteam/adapter/CloudContactAdapter$2;
.super Ljava/lang/Object;
.source "CloudContactAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/adapter/CloudContactAdapter;->getAmazingView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/adapter/CloudContactAdapter;

.field private final synthetic val$cloudContact:Lcom/lzx/iteam/bean/CloudContact;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/CloudContactAdapter;Lcom/lzx/iteam/bean/CloudContact;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter$2;->this$0:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    iput-object p2, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter$2;->val$cloudContact:Lcom/lzx/iteam/bean/CloudContact;

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter$2;->this$0:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    iget-object v1, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter$2;->val$cloudContact:Lcom/lzx/iteam/bean/CloudContact;

    iget-object v1, v1, Lcom/lzx/iteam/bean/CloudContact;->contactId:Ljava/lang/String;

    # invokes: Lcom/lzx/iteam/adapter/CloudContactAdapter;->inviteContact(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->access$5(Lcom/lzx/iteam/adapter/CloudContactAdapter;Ljava/lang/String;)V

    .line 400
    return-void
.end method
