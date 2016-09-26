.class Lcom/lzx/iteam/AttendanceMainActivity$2;
.super Ljava/lang/Object;
.source "AttendanceMainActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/LocationUtil$LocationStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/AttendanceMainActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/AttendanceMainActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/AttendanceMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceMainActivity$2;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocated(Lcom/baidu/location/BDLocation;)V
    .locals 4
    .param p1, "location"    # Lcom/baidu/location/BDLocation;

    .prologue
    .line 212
    if-nez p1, :cond_0

    .line 220
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity$2;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->Tag:Ljava/lang/String;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceMainActivity;->access$15(Lcom/lzx/iteam/AttendanceMainActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u4f4d\u7f6e\u7ecf\u7eac\u5ea6\uff1alatitude="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",longitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",address"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddress()Lcom/baidu/location/Address;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",addrStr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity$2;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/lzx/iteam/AttendanceMainActivity;->access$16(Lcom/lzx/iteam/AttendanceMainActivity;D)V

    .line 217
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity$2;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/lzx/iteam/AttendanceMainActivity;->access$17(Lcom/lzx/iteam/AttendanceMainActivity;D)V

    .line 218
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity$2;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # invokes: Lcom/lzx/iteam/AttendanceMainActivity;->waitDlgDismiss()V
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceMainActivity;->access$12(Lcom/lzx/iteam/AttendanceMainActivity;)V

    .line 219
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity$2;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # invokes: Lcom/lzx/iteam/AttendanceMainActivity;->getAttendanceFace()V
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceMainActivity;->access$18(Lcom/lzx/iteam/AttendanceMainActivity;)V

    goto :goto_0
.end method
