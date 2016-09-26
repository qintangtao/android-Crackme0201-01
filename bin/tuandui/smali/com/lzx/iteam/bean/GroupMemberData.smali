.class public Lcom/lzx/iteam/bean/GroupMemberData;
.super Ljava/lang/Object;
.source "GroupMemberData.java"


# instance fields
.field public contact_id:Ljava/lang/String;

.field public contact_name:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public user_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public getContact_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lzx/iteam/bean/GroupMemberData;->contact_id:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lzx/iteam/bean/GroupMemberData;->contact_name:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lzx/iteam/bean/GroupMemberData;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lzx/iteam/bean/GroupMemberData;->user_id:Ljava/lang/String;

    return-object v0
.end method
