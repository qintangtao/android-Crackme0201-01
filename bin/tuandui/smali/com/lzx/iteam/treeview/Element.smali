.class public Lcom/lzx/iteam/treeview/Element;
.super Ljava/lang/Object;
.source "Element.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NO_PARENT:I = -0x1

.field public static final TOP_LEVEL:I


# instance fields
.field public contactCount:I

.field public contactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/CloudContact;",
            ">;"
        }
    .end annotation
.end field

.field public contentText:Ljava/lang/String;

.field public groupId:I

.field public hasChildren:Z

.field public id:I

.field public isExpanded:Z

.field public level:I

.field public parendId:I

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIZZ)V
    .locals 0
    .param p1, "contentText"    # Ljava/lang/String;
    .param p2, "level"    # I
    .param p3, "id"    # I
    .param p4, "parendId"    # I
    .param p5, "hasChildren"    # Z
    .param p6, "isExpanded"    # Z

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/lzx/iteam/treeview/Element;->contentText:Ljava/lang/String;

    .line 66
    iput p2, p0, Lcom/lzx/iteam/treeview/Element;->level:I

    .line 67
    iput p3, p0, Lcom/lzx/iteam/treeview/Element;->id:I

    .line 68
    iput p4, p0, Lcom/lzx/iteam/treeview/Element;->parendId:I

    .line 69
    iput-boolean p5, p0, Lcom/lzx/iteam/treeview/Element;->hasChildren:Z

    .line 70
    iput-boolean p6, p0, Lcom/lzx/iteam/treeview/Element;->isExpanded:Z

    .line 71
    return-void
.end method


# virtual methods
.method public getContactCount()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/lzx/iteam/treeview/Element;->contactCount:I

    return v0
.end method

.method public getContentText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lzx/iteam/treeview/Element;->contentText:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/lzx/iteam/treeview/Element;->groupId:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/lzx/iteam/treeview/Element;->id:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/lzx/iteam/treeview/Element;->level:I

    return v0
.end method

.method public getParendId()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/lzx/iteam/treeview/Element;->parendId:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/lzx/iteam/treeview/Element;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/lzx/iteam/treeview/Element;->isExpanded:Z

    return v0
.end method

.method public isHasChildren()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/lzx/iteam/treeview/Element;->hasChildren:Z

    return v0
.end method

.method public setContactCount(I)V
    .locals 0
    .param p1, "contactCount"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/lzx/iteam/treeview/Element;->contactCount:I

    .line 132
    return-void
.end method

.method public setContentText(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentText"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/lzx/iteam/treeview/Element;->contentText:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setExpanded(Z)V
    .locals 0
    .param p1, "isExpanded"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/lzx/iteam/treeview/Element;->isExpanded:Z

    .line 84
    return-void
.end method

.method public setGroupId(I)V
    .locals 0
    .param p1, "groupId"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/lzx/iteam/treeview/Element;->groupId:I

    .line 140
    return-void
.end method

.method public setHasChildren(Z)V
    .locals 0
    .param p1, "hasChildren"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/lzx/iteam/treeview/Element;->hasChildren:Z

    .line 124
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/lzx/iteam/treeview/Element;->id:I

    .line 108
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/lzx/iteam/treeview/Element;->level:I

    .line 100
    return-void
.end method

.method public setParendId(I)V
    .locals 0
    .param p1, "parendId"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/lzx/iteam/treeview/Element;->parendId:I

    .line 116
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/lzx/iteam/treeview/Element;->type:Ljava/lang/String;

    .line 156
    return-void
.end method
