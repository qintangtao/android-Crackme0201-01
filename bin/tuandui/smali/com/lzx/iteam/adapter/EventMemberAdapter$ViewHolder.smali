.class Lcom/lzx/iteam/adapter/EventMemberAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "EventMemberAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/EventMemberAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field img:Landroid/widget/ImageView;

.field name:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lzx/iteam/adapter/EventMemberAdapter;


# direct methods
.method private constructor <init>(Lcom/lzx/iteam/adapter/EventMemberAdapter;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/lzx/iteam/adapter/EventMemberAdapter$ViewHolder;->this$0:Lcom/lzx/iteam/adapter/EventMemberAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lzx/iteam/adapter/EventMemberAdapter;Lcom/lzx/iteam/adapter/EventMemberAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/lzx/iteam/adapter/EventMemberAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/EventMemberAdapter;)V

    return-void
.end method
