.class Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ChatGroupMemberAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field delete:Landroid/widget/ImageView;

.field img:Landroid/widget/ImageView;

.field name:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;


# direct methods
.method private constructor <init>(Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter$ViewHolder;->this$0:Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;)V

    return-void
.end method
