.class Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter$1;
.super Ljava/lang/Object;
.source "AttendanceDevicesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;

.field private final synthetic val$deviceMsgData:Lcom/lzx/iteam/bean/DeviceMsgData;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;Lcom/lzx/iteam/bean/DeviceMsgData;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter$1;->this$0:Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;

    iput-object p2, p0, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter$1;->val$deviceMsgData:Lcom/lzx/iteam/bean/DeviceMsgData;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter$1;->this$0:Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;

    # getter for: Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;->access$0(Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/AttendanceDevicesActivity;

    iget-object v1, p0, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter$1;->val$deviceMsgData:Lcom/lzx/iteam/bean/DeviceMsgData;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/DeviceMsgData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/AttendanceDevicesActivity;->setMyDeviceMsg(Ljava/lang/String;)V

    .line 84
    return-void
.end method
