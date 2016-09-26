.class Lcom/lzx/iteam/adapter/EventReplyAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "EventReplyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/EventReplyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field avatar:Landroid/widget/ImageView;

.field content:Landroid/widget/TextView;

.field image:Landroid/widget/ImageView;

.field name:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lzx/iteam/adapter/EventReplyAdapter;

.field time:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/EventReplyAdapter;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/lzx/iteam/adapter/EventReplyAdapter$ViewHolder;->this$0:Lcom/lzx/iteam/adapter/EventReplyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
