.class Lcom/lzx/iteam/AttendanceDeviationActivity$1;
.super Ljava/lang/Object;
.source "AttendanceDeviationActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/AttendanceDeviationActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/AttendanceDeviationActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/AttendanceDeviationActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceDeviationActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDeviationActivity;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceDeviationActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDeviationActivity;

    invoke-static {v0, p3}, Lcom/lzx/iteam/AttendanceDeviationActivity;->access$2(Lcom/lzx/iteam/AttendanceDeviationActivity;I)V

    .line 45
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceDeviationActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDeviationActivity;

    # getter for: Lcom/lzx/iteam/AttendanceDeviationActivity;->adapter:Lcom/lzx/iteam/AttendanceDeviationActivity$DeviationAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceDeviationActivity;->access$3(Lcom/lzx/iteam/AttendanceDeviationActivity;)Lcom/lzx/iteam/AttendanceDeviationActivity$DeviationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/AttendanceDeviationActivity$DeviationAdapter;->notifyDataSetChanged()V

    .line 46
    return-void
.end method
