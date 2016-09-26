.class public Lcom/lzx/iteam/bean/AddressData;
.super Ljava/lang/Object;
.source "AddressData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field city:Ljava/lang/String;

.field district:Ljava/lang/String;

.field key:Ljava/lang/String;

.field latitude:D

.field longitude:D

.field uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lzx/iteam/bean/AddressData;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lzx/iteam/bean/AddressData;->district:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lzx/iteam/bean/AddressData;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/lzx/iteam/bean/AddressData;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/lzx/iteam/bean/AddressData;->longitude:D

    return-wide v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lzx/iteam/bean/AddressData;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/lzx/iteam/bean/AddressData;->city:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0
    .param p1, "district"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lzx/iteam/bean/AddressData;->district:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/lzx/iteam/bean/AddressData;->key:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/lzx/iteam/bean/AddressData;->latitude:D

    .line 65
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/lzx/iteam/bean/AddressData;->longitude:D

    .line 57
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lzx/iteam/bean/AddressData;->uid:Ljava/lang/String;

    .line 49
    return-void
.end method
