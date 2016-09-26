.class Lcom/lzx/iteam/adapter/AttendanceCountAdapter$1;
.super Ljava/lang/Object;
.source "AttendanceCountAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/adapter/AttendanceCountAdapter;

.field private final synthetic val$attendanceCountData:Lcom/lzx/iteam/bean/AttendanceCountData;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/AttendanceCountAdapter;Lcom/lzx/iteam/bean/AttendanceCountData;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$1;->this$0:Lcom/lzx/iteam/adapter/AttendanceCountAdapter;

    iput-object p2, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$1;->val$attendanceCountData:Lcom/lzx/iteam/bean/AttendanceCountData;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "0"

    iget-object v2, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$1;->val$attendanceCountData:Lcom/lzx/iteam/bean/AttendanceCountData;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/AttendanceCountData;->getLeaveDay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 148
    const-string v1, "0"

    iget-object v2, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$1;->val$attendanceCountData:Lcom/lzx/iteam/bean/AttendanceCountData;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/AttendanceCountData;->getLeaveType0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e8b\u5047"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$1;->val$attendanceCountData:Lcom/lzx/iteam/bean/AttendanceCountData;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/AttendanceCountData;->getLeaveType0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5929\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_0
    const-string v1, "0"

    iget-object v2, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$1;->val$attendanceCountData:Lcom/lzx/iteam/bean/AttendanceCountData;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/AttendanceCountData;->getLeaveType1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u75c5\u5047"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$1;->val$attendanceCountData:Lcom/lzx/iteam/bean/AttendanceCountData;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/AttendanceCountData;->getLeaveType1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5929\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_1
    const-string v1, "0"

    iget-object v2, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$1;->val$attendanceCountData:Lcom/lzx/iteam/bean/AttendanceCountData;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/AttendanceCountData;->getLeaveType2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5e74\u5047"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$1;->val$attendanceCountData:Lcom/lzx/iteam/bean/AttendanceCountData;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/AttendanceCountData;->getLeaveType2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5929\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_2
    const-string v1, "0"

    iget-object v2, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$1;->val$attendanceCountData:Lcom/lzx/iteam/bean/AttendanceCountData;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/AttendanceCountData;->getLeaveType3()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5a5a\u5047"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$1;->val$attendanceCountData:Lcom/lzx/iteam/bean/AttendanceCountData;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/AttendanceCountData;->getLeaveType3()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5929\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_3
    const-string v1, "0"

    iget-object v2, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$1;->val$attendanceCountData:Lcom/lzx/iteam/bean/AttendanceCountData;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/AttendanceCountData;->getLeaveType4()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4ea7\u5047"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$1;->val$attendanceCountData:Lcom/lzx/iteam/bean/AttendanceCountData;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/AttendanceCountData;->getLeaveType4()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5929/n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_4
    iget-object v1, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$1;->this$0:Lcom/lzx/iteam/adapter/AttendanceCountAdapter;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->showVacationDay(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->access$0(Lcom/lzx/iteam/adapter/AttendanceCountAdapter;Ljava/lang/String;)V

    .line 165
    :cond_5
    return-void
.end method
