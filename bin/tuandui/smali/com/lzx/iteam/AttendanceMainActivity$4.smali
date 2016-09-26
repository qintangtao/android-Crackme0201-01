.class Lcom/lzx/iteam/AttendanceMainActivity$4;
.super Ljava/lang/Object;
.source "AttendanceMainActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/LocationUtil$LocationStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/AttendanceMainActivity;->refreshLoction(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/AttendanceMainActivity;

.field private final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/AttendanceMainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceMainActivity$4;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    iput-object p2, p0, Lcom/lzx/iteam/AttendanceMainActivity$4;->val$type:Ljava/lang/String;

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocated(Lcom/baidu/location/BDLocation;)V
    .locals 8
    .param p1, "location"    # Lcom/baidu/location/BDLocation;

    .prologue
    .line 367
    if-nez p1, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity$4;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

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

    .line 372
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity$4;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/lzx/iteam/AttendanceMainActivity;->access$16(Lcom/lzx/iteam/AttendanceMainActivity;D)V

    .line 373
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity$4;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/lzx/iteam/AttendanceMainActivity;->access$17(Lcom/lzx/iteam/AttendanceMainActivity;D)V

    .line 374
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity$4;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceMainActivity;->access$7(Lcom/lzx/iteam/AttendanceMainActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity$4;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->mTvLocation:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceMainActivity;->access$19(Lcom/lzx/iteam/AttendanceMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u5b9a\u4f4d\u8ddd\u79bb\u8003\u52e4\u5730\u70b9"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceMainActivity$4;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceMainActivity$4;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v3}, Lcom/lzx/iteam/AttendanceMainActivity;->access$7(Lcom/lzx/iteam/AttendanceMainActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/AttendanceData;->getLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceMainActivity$4;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v3}, Lcom/lzx/iteam/AttendanceMainActivity;->access$7(Lcom/lzx/iteam/AttendanceMainActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/AttendanceData;->getLongitude()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    # invokes: Lcom/lzx/iteam/AttendanceMainActivity;->getDistance(DD)Ljava/lang/String;
    invoke-static {v2, v4, v5, v6, v7}, Lcom/lzx/iteam/AttendanceMainActivity;->access$20(Lcom/lzx/iteam/AttendanceMainActivity;DD)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7c73"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity$4;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    iget-object v1, p0, Lcom/lzx/iteam/AttendanceMainActivity$4;->val$type:Ljava/lang/String;

    # invokes: Lcom/lzx/iteam/AttendanceMainActivity;->getAttendanceDoMsg(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lzx/iteam/AttendanceMainActivity;->access$21(Lcom/lzx/iteam/AttendanceMainActivity;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
