.class Lcom/lzx/iteam/CompanyCustomActivity$1;
.super Ljava/lang/Object;
.source "CompanyCustomActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CompanyCustomActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CompanyCustomActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CompanyCustomActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CompanyCustomActivity$1;->this$0:Lcom/lzx/iteam/CompanyCustomActivity;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lzx/iteam/CompanyCustomActivity$1;->this$0:Lcom/lzx/iteam/CompanyCustomActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/CompanyCustomActivity;->finish()V

    .line 24
    return-void
.end method
