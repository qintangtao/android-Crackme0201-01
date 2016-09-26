.class Lcom/lzx/iteam/EventDetailContentActivity$9;
.super Ljava/lang/Object;
.source "EventDetailContentActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/EventDetailContentActivity;->showCopyPop(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/EventDetailContentActivity;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/EventDetailContentActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/EventDetailContentActivity$9;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    iput-object p2, p0, Lcom/lzx/iteam/EventDetailContentActivity$9;->val$v:Landroid/view/View;

    .line 847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 850
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity$9;->val$v:Landroid/view/View;

    const v1, 0x7f0a000a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 851
    return-void
.end method
