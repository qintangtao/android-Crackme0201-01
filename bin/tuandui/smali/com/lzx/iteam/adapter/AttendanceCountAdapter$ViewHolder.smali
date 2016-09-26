.class Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AttendanceCountAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/AttendanceCountAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field count1:Landroid/widget/TextView;

.field count2:Landroid/widget/TextView;

.field count3:Landroid/widget/TextView;

.field count4:Landroid/widget/TextView;

.field count5:Landroid/widget/TextView;

.field count6:Landroid/widget/TextView;

.field countAll:Landroid/widget/TextView;

.field name:Landroid/widget/TextView;

.field nameLayout:Landroid/widget/LinearLayout;

.field root:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/lzx/iteam/adapter/AttendanceCountAdapter;

.field vacationCount:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/AttendanceCountAdapter;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->this$0:Lcom/lzx/iteam/adapter/AttendanceCountAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
