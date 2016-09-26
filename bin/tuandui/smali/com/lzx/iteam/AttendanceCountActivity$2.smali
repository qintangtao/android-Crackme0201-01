.class Lcom/lzx/iteam/AttendanceCountActivity$2;
.super Ljava/lang/Object;
.source "AttendanceCountActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/AttendanceCountActivity;->showMonthDialog()V
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
.field final synthetic this$0:Lcom/lzx/iteam/AttendanceCountActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/AttendanceCountActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceCountActivity$2;->this$0:Lcom/lzx/iteam/AttendanceCountActivity;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
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
    .line 193
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCountActivity$2;->this$0:Lcom/lzx/iteam/AttendanceCountActivity;

    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCountActivity$2;->this$0:Lcom/lzx/iteam/AttendanceCountActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCountActivity;->dateDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceCountActivity;->access$2(Lcom/lzx/iteam/AttendanceCountActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/DateData;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/DateData;->getMonth()I

    move-result v0

    invoke-static {v1, v0}, Lcom/lzx/iteam/AttendanceCountActivity;->access$3(Lcom/lzx/iteam/AttendanceCountActivity;I)V

    .line 194
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCountActivity$2;->this$0:Lcom/lzx/iteam/AttendanceCountActivity;

    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCountActivity$2;->this$0:Lcom/lzx/iteam/AttendanceCountActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCountActivity;->dateDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceCountActivity;->access$2(Lcom/lzx/iteam/AttendanceCountActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/DateData;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/DateData;->getYear()I

    move-result v0

    invoke-static {v1, v0}, Lcom/lzx/iteam/AttendanceCountActivity;->access$4(Lcom/lzx/iteam/AttendanceCountActivity;I)V

    .line 195
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCountActivity$2;->this$0:Lcom/lzx/iteam/AttendanceCountActivity;

    # invokes: Lcom/lzx/iteam/AttendanceCountActivity;->getAttendanceCountMsg()V
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceCountActivity;->access$5(Lcom/lzx/iteam/AttendanceCountActivity;)V

    .line 196
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCountActivity$2;->this$0:Lcom/lzx/iteam/AttendanceCountActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCountActivity;->mTvTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceCountActivity;->access$6(Lcom/lzx/iteam/AttendanceCountActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8003\u52e4\u7edf\u8ba1("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCountActivity$2;->this$0:Lcom/lzx/iteam/AttendanceCountActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCountActivity;->mMonth:I
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceCountActivity;->access$7(Lcom/lzx/iteam/AttendanceCountActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\u6708"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCountActivity$2;->this$0:Lcom/lzx/iteam/AttendanceCountActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCountActivity;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceCountActivity;->access$8(Lcom/lzx/iteam/AttendanceCountActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 198
    return-void
.end method
