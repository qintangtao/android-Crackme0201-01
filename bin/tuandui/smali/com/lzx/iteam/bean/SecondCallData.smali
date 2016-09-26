.class public Lcom/lzx/iteam/bean/SecondCallData;
.super Ljava/lang/Object;
.source "SecondCallData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private balance:Ljava/lang/String;

.field private bind_number:Ljava/lang/String;

.field private bind_number_status:Ljava/lang/String;

.field private effect_date:Ljava/lang/String;

.field private host_number:Ljava/lang/String;

.field private time_stamp:J

.field private user_id:Ljava/lang/String;

.field private user_status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lzx/iteam/bean/SecondCallData;->balance:Ljava/lang/String;

    return-object v0
.end method

.method public getBind_number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lzx/iteam/bean/SecondCallData;->bind_number:Ljava/lang/String;

    return-object v0
.end method

.method public getBind_number_status()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lzx/iteam/bean/SecondCallData;->bind_number_status:Ljava/lang/String;

    return-object v0
.end method

.method public getEffect_date()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lzx/iteam/bean/SecondCallData;->effect_date:Ljava/lang/String;

    return-object v0
.end method

.method public getHost_number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lzx/iteam/bean/SecondCallData;->host_number:Ljava/lang/String;

    return-object v0
.end method

.method public getTime_stamp()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/lzx/iteam/bean/SecondCallData;->time_stamp:J

    return-wide v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lzx/iteam/bean/SecondCallData;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_status()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lzx/iteam/bean/SecondCallData;->user_status:Ljava/lang/String;

    return-object v0
.end method

.method public setBalance(Ljava/lang/String;)V
    .locals 0
    .param p1, "balance"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/lzx/iteam/bean/SecondCallData;->balance:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setBind_number(Ljava/lang/String;)V
    .locals 0
    .param p1, "bind_number"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/lzx/iteam/bean/SecondCallData;->bind_number:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setBind_number_status(Ljava/lang/String;)V
    .locals 0
    .param p1, "bind_number_status"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lzx/iteam/bean/SecondCallData;->bind_number_status:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setEffect_date(Ljava/lang/String;)V
    .locals 0
    .param p1, "effect_date"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lzx/iteam/bean/SecondCallData;->effect_date:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setHost_number(Ljava/lang/String;)V
    .locals 0
    .param p1, "host_number"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lzx/iteam/bean/SecondCallData;->host_number:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setTime_stamp(J)V
    .locals 1
    .param p1, "time_stamp"    # J

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/lzx/iteam/bean/SecondCallData;->time_stamp:J

    .line 81
    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "user_id"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lzx/iteam/bean/SecondCallData;->user_id:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setUser_status(Ljava/lang/String;)V
    .locals 0
    .param p1, "user_status"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lzx/iteam/bean/SecondCallData;->user_status:Ljava/lang/String;

    .line 73
    return-void
.end method
