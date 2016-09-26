.class Lcom/lzx/iteam/ShowImagesActivity$BackListener;
.super Ljava/lang/Object;
.source "ShowImagesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ShowImagesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackListener"
.end annotation


# instance fields
.field intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/lzx/iteam/ShowImagesActivity;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/ShowImagesActivity;Landroid/content/Intent;)V
    .locals 0
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/lzx/iteam/ShowImagesActivity$BackListener;->this$0:Lcom/lzx/iteam/ShowImagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p2, p0, Lcom/lzx/iteam/ShowImagesActivity$BackListener;->intent:Landroid/content/Intent;

    .line 95
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lzx/iteam/ShowImagesActivity$BackListener;->this$0:Lcom/lzx/iteam/ShowImagesActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/ShowImagesActivity;->finish()V

    .line 99
    return-void
.end method
