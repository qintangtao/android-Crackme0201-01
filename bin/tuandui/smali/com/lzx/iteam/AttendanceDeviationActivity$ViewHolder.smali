.class Lcom/lzx/iteam/AttendanceDeviationActivity$ViewHolder;
.super Ljava/lang/Object;
.source "AttendanceDeviationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/AttendanceDeviationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public image:Landroid/widget/ImageView;

.field public text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lzx/iteam/AttendanceDeviationActivity;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/AttendanceDeviationActivity;Landroid/view/View;)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceDeviationActivity$ViewHolder;->this$0:Lcom/lzx/iteam/AttendanceDeviationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const v0, 0x7f0e046f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceDeviationActivity$ViewHolder;->text:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f0e0470

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceDeviationActivity$ViewHolder;->image:Landroid/widget/ImageView;

    .line 125
    return-void
.end method
