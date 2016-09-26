.class Lcom/lzx/iteam/AttendanceCalendarActivity$2;
.super Ljava/lang/Object;
.source "AttendanceCalendarActivity.java"

# interfaces
.implements Lcom/lzx/iteam/schedulecalendar/ScrollableLayout$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/AttendanceCalendarActivity;->initProperty()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/AttendanceCalendarActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$2;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(II)V
    .locals 3
    .param p1, "currentY"    # I
    .param p2, "maxY"    # I

    .prologue
    .line 259
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$2;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCalendarActivity;->mGridView:Lcom/lzx/iteam/widget/CustomGridView;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$6(Lcom/lzx/iteam/AttendanceCalendarActivity;)Lcom/lzx/iteam/widget/CustomGridView;

    move-result-object v0

    int-to-float v1, p1

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$2;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCalendarActivity;->location:F
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$7(Lcom/lzx/iteam/AttendanceCalendarActivity;)F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 260
    return-void
.end method
