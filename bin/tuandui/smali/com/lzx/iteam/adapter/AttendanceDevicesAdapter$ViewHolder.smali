.class Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AttendanceDevicesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field mLlCurDeviceBind:Landroid/widget/LinearLayout;

.field mTvCurDeviceBind:Landroid/widget/TextView;

.field mTvCurDeviceId:Landroid/widget/TextView;

.field mTvCurDeviceName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;


# direct methods
.method private constructor <init>(Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter$ViewHolder;->this$0:Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;)V

    return-void
.end method
