.class Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CalendarListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/CalendarListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field currentTime:Landroid/widget/TextView;

.field dayTime:Landroid/widget/ImageView;

.field done:Landroid/widget/ImageView;

.field doneLayout:Landroid/widget/LinearLayout;

.field mRedLine:Landroid/widget/RelativeLayout;

.field status:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/lzx/iteam/adapter/CalendarListAdapter;

.field time:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;

.field type:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/CalendarListAdapter;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->this$0:Lcom/lzx/iteam/adapter/CalendarListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
