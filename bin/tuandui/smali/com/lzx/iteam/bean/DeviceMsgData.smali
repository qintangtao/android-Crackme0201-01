.class public Lcom/lzx/iteam/bean/DeviceMsgData;
.super Ljava/lang/Object;
.source "DeviceMsgData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field deviceId:Ljava/lang/String;

.field deviceName:Ljava/lang/String;

.field deviceType:Ljava/lang/String;

.field groupDefault:Ljava/lang/String;

.field id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lzx/iteam/bean/DeviceMsgData;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lzx/iteam/bean/DeviceMsgData;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lzx/iteam/bean/DeviceMsgData;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupDefault()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lzx/iteam/bean/DeviceMsgData;->groupDefault:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lzx/iteam/bean/DeviceMsgData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lzx/iteam/bean/DeviceMsgData;->deviceId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/lzx/iteam/bean/DeviceMsgData;->deviceName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceType"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lzx/iteam/bean/DeviceMsgData;->deviceType:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setGroupDefault(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupDefault"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lzx/iteam/bean/DeviceMsgData;->groupDefault:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/lzx/iteam/bean/DeviceMsgData;->id:Ljava/lang/String;

    .line 23
    return-void
.end method
