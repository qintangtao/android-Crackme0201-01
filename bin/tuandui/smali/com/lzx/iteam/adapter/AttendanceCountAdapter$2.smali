.class Lcom/lzx/iteam/adapter/AttendanceCountAdapter$2;
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
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$2;->this$0:Lcom/lzx/iteam/adapter/AttendanceCountAdapter;

    iput-object p2, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$2;->val$attendanceCountData:Lcom/lzx/iteam/bean/AttendanceCountData;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 171
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$2;->this$0:Lcom/lzx/iteam/adapter/AttendanceCountAdapter;

    # getter for: Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->access$1(Lcom/lzx/iteam/adapter/AttendanceCountAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lzx/iteam/AttendanceCalendarActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "userId"

    iget-object v2, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$2;->val$attendanceCountData:Lcom/lzx/iteam/bean/AttendanceCountData;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/AttendanceCountData;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v1, "userName"

    iget-object v2, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$2;->val$attendanceCountData:Lcom/lzx/iteam/bean/AttendanceCountData;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/AttendanceCountData;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v1, "group_id"

    iget-object v2, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$2;->this$0:Lcom/lzx/iteam/adapter/AttendanceCountAdapter;

    # getter for: Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->mGroupId:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->access$2(Lcom/lzx/iteam/adapter/AttendanceCountAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v1, "form_id"

    iget-object v2, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$2;->this$0:Lcom/lzx/iteam/adapter/AttendanceCountAdapter;

    # getter for: Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->mAttendanceFormId:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->access$3(Lcom/lzx/iteam/adapter/AttendanceCountAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    iget-object v1, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$2;->this$0:Lcom/lzx/iteam/adapter/AttendanceCountAdapter;

    # getter for: Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->access$1(Lcom/lzx/iteam/adapter/AttendanceCountAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 177
    return-void
.end method
