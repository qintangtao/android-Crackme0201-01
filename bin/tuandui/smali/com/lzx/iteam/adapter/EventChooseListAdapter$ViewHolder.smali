.class Lcom/lzx/iteam/adapter/EventChooseListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "EventChooseListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/EventChooseListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field ivChoose:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/lzx/iteam/adapter/EventChooseListAdapter;

.field tvItem:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/lzx/iteam/adapter/EventChooseListAdapter;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lzx/iteam/adapter/EventChooseListAdapter$ViewHolder;->this$0:Lcom/lzx/iteam/adapter/EventChooseListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lzx/iteam/adapter/EventChooseListAdapter;Lcom/lzx/iteam/adapter/EventChooseListAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/lzx/iteam/adapter/EventChooseListAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/EventChooseListAdapter;)V

    return-void
.end method
