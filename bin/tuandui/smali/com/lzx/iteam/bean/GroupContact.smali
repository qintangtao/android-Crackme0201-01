.class public Lcom/lzx/iteam/bean/GroupContact;
.super Ljava/lang/Object;
.source "GroupContact.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public contact_id:I

.field public contact_name:Ljava/lang/String;

.field public group_id:I

.field public has_tag:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContact_id()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/lzx/iteam/bean/GroupContact;->contact_id:I

    return v0
.end method

.method public getContact_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lzx/iteam/bean/GroupContact;->contact_name:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup_id()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/lzx/iteam/bean/GroupContact;->group_id:I

    return v0
.end method

.method public isHas_tag()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/lzx/iteam/bean/GroupContact;->has_tag:Z

    return v0
.end method

.method public setContact_id(I)V
    .locals 0
    .param p1, "contact_id"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/lzx/iteam/bean/GroupContact;->contact_id:I

    .line 20
    return-void
.end method

.method public setContact_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "contact_name"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lzx/iteam/bean/GroupContact;->contact_name:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setGroup_id(I)V
    .locals 0
    .param p1, "group_id"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/lzx/iteam/bean/GroupContact;->group_id:I

    .line 44
    return-void
.end method

.method public setHas_tag(Z)V
    .locals 0
    .param p1, "has_tag"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/lzx/iteam/bean/GroupContact;->has_tag:Z

    .line 28
    return-void
.end method
