.class Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "EventsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/EventsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field event_activity_site:Landroid/widget/TextView;

.field event_activity_time:Landroid/widget/TextView;

.field event_content:Landroid/widget/TextView;

.field event_image_count:Landroid/widget/TextView;

.field event_image_layout:Landroid/widget/LinearLayout;

.field event_img:Landroid/widget/ImageView;

.field event_ll_layout:Landroid/widget/LinearLayout;

.field event_ll_note:Landroid/widget/LinearLayout;

.field event_new_msg:Landroid/widget/ImageView;

.field event_reply:Landroid/widget/TextView;

.field event_reply_count:Landroid/widget/TextView;

.field event_reply_count_layout:Landroid/widget/LinearLayout;

.field event_reply_layout:Landroid/widget/RelativeLayout;

.field event_time:Landroid/widget/TextView;

.field event_title:Landroid/widget/TextView;

.field mGvImageGrid:Lcom/lzx/iteam/gridimg/MyGridView;

.field final synthetic this$0:Lcom/lzx/iteam/adapter/EventsListAdapter;


# direct methods
.method private constructor <init>(Lcom/lzx/iteam/adapter/EventsListAdapter;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->this$0:Lcom/lzx/iteam/adapter/EventsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lzx/iteam/adapter/EventsListAdapter;Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/EventsListAdapter;)V

    return-void
.end method
