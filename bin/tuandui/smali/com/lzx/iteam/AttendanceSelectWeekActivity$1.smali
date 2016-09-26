.class Lcom/lzx/iteam/AttendanceSelectWeekActivity$1;
.super Ljava/lang/Object;
.source "AttendanceSelectWeekActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/AttendanceSelectWeekActivity;->initViews()V
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
.field final synthetic this$0:Lcom/lzx/iteam/AttendanceSelectWeekActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/AttendanceSelectWeekActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceSelectWeekActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSelectWeekActivity;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 46
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSelectWeekActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSelectWeekActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSelectWeekActivity;->isSelected:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceSelectWeekActivity;->access$1(Lcom/lzx/iteam/AttendanceSelectWeekActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSelectWeekActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSelectWeekActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSelectWeekActivity;->isSelected:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceSelectWeekActivity;->access$1(Lcom/lzx/iteam/AttendanceSelectWeekActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSelectWeekActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSelectWeekActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSelectWeekActivity;->adapter:Lcom/lzx/iteam/AttendanceSelectWeekActivity$WeekAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceSelectWeekActivity;->access$2(Lcom/lzx/iteam/AttendanceSelectWeekActivity;)Lcom/lzx/iteam/AttendanceSelectWeekActivity$WeekAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/AttendanceSelectWeekActivity$WeekAdapter;->notifyDataSetChanged()V

    .line 52
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSelectWeekActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSelectWeekActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSelectWeekActivity;->isSelected:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceSelectWeekActivity;->access$1(Lcom/lzx/iteam/AttendanceSelectWeekActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
