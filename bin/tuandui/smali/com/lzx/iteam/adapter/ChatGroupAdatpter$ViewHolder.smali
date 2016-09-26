.class Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;
.super Ljava/lang/Object;
.source "ChatGroupAdatpter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/ChatGroupAdatpter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field chatgroup_name:Landroid/widget/TextView;

.field chatgroup_photo:Landroid/widget/ImageView;

.field chatgroup_unread:Landroid/widget/TextView;

.field last_content:Landroid/widget/TextView;

.field last_uplate_time:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lzx/iteam/adapter/ChatGroupAdatpter;


# direct methods
.method private constructor <init>(Lcom/lzx/iteam/adapter/ChatGroupAdatpter;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->this$0:Lcom/lzx/iteam/adapter/ChatGroupAdatpter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lzx/iteam/adapter/ChatGroupAdatpter;Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/ChatGroupAdatpter;)V

    return-void
.end method
