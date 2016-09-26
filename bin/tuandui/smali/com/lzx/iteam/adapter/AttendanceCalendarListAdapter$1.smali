.class Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$1;
.super Ljava/lang/Object;
.source "AttendanceCalendarListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;

.field private final synthetic val$attendanceCalendarMsgData:Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;

    iput-object p2, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$1;->val$attendanceCalendarMsgData:Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 172
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->access$0(Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lzx/iteam/AttendanceDeviceErrorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "groupId"

    iget-object v2, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$1;->val$attendanceCalendarMsgData:Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->getGroup_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v1, "deviceId"

    iget-object v2, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$1;->val$attendanceCalendarMsgData:Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->getCheat_device_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v1, "setUid"

    iget-object v2, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->userId:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->access$1(Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    iget-object v1, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->access$0(Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 177
    return-void
.end method
