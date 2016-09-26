.class Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TalkListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/TalkListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mGvImageGrid:Lcom/lzx/iteam/gridimg/MyGridView;

.field mIvComment:Landroid/widget/ImageView;

.field mIvPraise:Landroid/widget/ImageView;

.field mIvUserImage:Landroid/widget/ImageView;

.field mLlCommentLayout:Landroid/widget/LinearLayout;

.field mLlPraiseLayout:Landroid/widget/LinearLayout;

.field mLlReplyLayout:Landroid/widget/LinearLayout;

.field mTvAddOnePraise:Landroid/widget/TextView;

.field mTvContent:Landroid/widget/TextView;

.field mTvTime:Landroid/widget/TextView;

.field mTvUserName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/TalkListAdapter;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
