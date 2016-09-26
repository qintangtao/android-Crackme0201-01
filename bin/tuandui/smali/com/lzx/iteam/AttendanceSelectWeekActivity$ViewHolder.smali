.class Lcom/lzx/iteam/AttendanceSelectWeekActivity$ViewHolder;
.super Ljava/lang/Object;
.source "AttendanceSelectWeekActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/AttendanceSelectWeekActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public image_week:Landroid/widget/ImageView;

.field public text_week:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lzx/iteam/AttendanceSelectWeekActivity;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/AttendanceSelectWeekActivity;Landroid/view/View;)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceSelectWeekActivity$ViewHolder;->this$0:Lcom/lzx/iteam/AttendanceSelectWeekActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    const v0, 0x7f0e0483

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceSelectWeekActivity$ViewHolder;->text_week:Landroid/widget/TextView;

    .line 177
    const v0, 0x7f0e0484

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceSelectWeekActivity$ViewHolder;->image_week:Landroid/widget/ImageView;

    .line 178
    return-void
.end method
