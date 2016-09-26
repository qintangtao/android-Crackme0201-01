.class Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AttendanceCalendarListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field approval:Landroid/widget/TextView;

.field approvalLayout:Landroid/widget/LinearLayout;

.field arrow:Landroid/widget/ImageView;

.field msg:Landroid/widget/TextView;

.field note:Landroid/widget/TextView;

.field text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;

.field time:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->this$0:Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
