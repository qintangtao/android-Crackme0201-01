.class Lcom/lzx/iteam/ApprovalCreateActivity$4;
.super Ljava/lang/Object;
.source "ApprovalCreateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ApprovalCreateActivity;->showMorningAndAfter(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

.field private final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ApprovalCreateActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ApprovalCreateActivity$4;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    iput-object p2, p0, Lcom/lzx/iteam/ApprovalCreateActivity$4;->val$dialog:Landroid/app/AlertDialog;

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 653
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 654
    return-void
.end method
