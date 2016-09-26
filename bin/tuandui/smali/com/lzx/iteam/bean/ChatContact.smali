.class public Lcom/lzx/iteam/bean/ChatContact;
.super Ljava/lang/Object;
.source "ChatContact.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lzx/iteam/bean/ChatContact;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public contactId:Ljava/lang/String;

.field public userId:Ljava/lang/String;

.field public userImg:Ljava/lang/String;

.field public userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/lzx/iteam/bean/ChatContact$1;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/ChatContact$1;-><init>()V

    sput-object v0, Lcom/lzx/iteam/bean/ChatContact;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 100
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/bean/ChatContact;->userId:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/bean/ChatContact;->userName:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/bean/ChatContact;->contactId:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/bean/ChatContact;->userImg:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "contactId"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/lzx/iteam/bean/ChatContact;->userId:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/lzx/iteam/bean/ChatContact;->userName:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/lzx/iteam/bean/ChatContact;->contactId:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "contactId"    # Ljava/lang/String;
    .param p4, "contactImg"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/lzx/iteam/bean/ChatContact;->userId:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/lzx/iteam/bean/ChatContact;->userName:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/lzx/iteam/bean/ChatContact;->contactId:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/lzx/iteam/bean/ChatContact;->userImg:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 65
    instance-of v1, p1, Lcom/lzx/iteam/bean/ChatContact;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 66
    check-cast v0, Lcom/lzx/iteam/bean/ChatContact;

    .line 67
    .local v0, "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    iget-object v1, p0, Lcom/lzx/iteam/bean/ChatContact;->contactId:Ljava/lang/String;

    iget-object v2, v0, Lcom/lzx/iteam/bean/ChatContact;->contactId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lzx/iteam/bean/ChatContact;->userName:Ljava/lang/String;

    iget-object v2, v0, Lcom/lzx/iteam/bean/ChatContact;->userName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 69
    .end local v0    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    :goto_0
    return v1

    .line 67
    .restart local v0    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 69
    .end local v0    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getContactId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatContact;->contactId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatContact;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatContact;->userImg:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatContact;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatContact;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatContact;->userName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatContact;->contactId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatContact;->userImg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    return-void
.end method
