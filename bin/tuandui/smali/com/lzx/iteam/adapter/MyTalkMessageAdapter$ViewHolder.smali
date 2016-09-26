.class Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MyTalkMessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field oriContent:Landroid/widget/TextView;

.field oriImage:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;

.field userComment:Landroid/widget/TextView;

.field userImage:Landroid/widget/ImageView;

.field userName:Landroid/widget/TextView;

.field userTime:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;->this$0:Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;)V

    return-void
.end method
