.class Lcom/lzx/iteam/adapter/CalendarListAdapter$1;
.super Ljava/lang/Object;
.source "CalendarListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/adapter/CalendarListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/adapter/CalendarListAdapter;

.field private final synthetic val$data:Lcom/lzx/iteam/bean/ScheduleData;

.field private final synthetic val$finalDone:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/CalendarListAdapter;Lcom/lzx/iteam/bean/ScheduleData;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/CalendarListAdapter;

    iput-object p2, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter$1;->val$data:Lcom/lzx/iteam/bean/ScheduleData;

    iput-object p3, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter$1;->val$finalDone:Ljava/lang/String;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/CalendarListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/CalendarListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lzx/iteam/adapter/CalendarListAdapter;->access$0(Lcom/lzx/iteam/adapter/CalendarListAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/ScheduleCalendarActivity;

    iget-object v1, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter$1;->val$data:Lcom/lzx/iteam/bean/ScheduleData;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ScheduleData;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter$1;->val$finalDone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/ScheduleCalendarActivity;->setDone(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method
