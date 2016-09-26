.class public abstract Lorg/jivesoftware/smackx/commands/AdHocCommand;
.super Ljava/lang/Object;
.source "AdHocCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;,
        Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;,
        Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;
    }
.end annotation


# instance fields
.field private data:Lorg/jivesoftware/smackx/packet/AdHocCommandData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/packet/AdHocCommandData;

    .line 83
    return-void
.end method

.method public static getSpecificErrorCondition(Lorg/jivesoftware/smack/packet/XMPPError;)Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;
    .locals 6
    .param p0, "error"    # Lorg/jivesoftware/smack/packet/XMPPError;

    .prologue
    .line 96
    invoke-static {}, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->values()[Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 102
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 96
    :cond_1
    aget-object v0, v2, v1

    .line 97
    .local v0, "condition":Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->toString()Ljava/lang/String;

    move-result-object v4

    .line 98
    const-string v5, "http://jabber.org/protocol/commands"

    .line 97
    invoke-virtual {p0, v4, v5}, Lorg/jivesoftware/smack/packet/XMPPError;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v4

    if-nez v4, :cond_0

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected addActionAvailable(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V
    .locals 1
    .param p1, "action"    # Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    .prologue
    .line 280
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/packet/AdHocCommandData;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->addAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V

    .line 281
    return-void
.end method

.method protected addNote(Lorg/jivesoftware/smackx/commands/AdHocCommandNote;)V
    .locals 1
    .param p1, "note"    # Lorg/jivesoftware/smackx/commands/AdHocCommandNote;

    .prologue
    .line 170
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/packet/AdHocCommandData;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->addNote(Lorg/jivesoftware/smackx/commands/AdHocCommandNote;)V

    .line 171
    return-void
.end method

.method public abstract cancel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation
.end method

.method public abstract complete(Lorg/jivesoftware/smackx/Form;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation
.end method

.method public abstract execute()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation
.end method

.method protected getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/packet/AdHocCommandData;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->getActions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getData()Lorg/jivesoftware/smackx/packet/AdHocCommandData;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/packet/AdHocCommandData;

    return-object v0
.end method

.method protected getExecuteAction()Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/packet/AdHocCommandData;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->getExecuteAction()Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    move-result-object v0

    return-object v0
.end method

.method public getForm()Lorg/jivesoftware/smackx/Form;
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/packet/AdHocCommandData;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->getForm()Lorg/jivesoftware/smackx/packet/DataForm;

    move-result-object v0

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 192
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/Form;

    iget-object v1, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/packet/AdHocCommandData;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->getForm()Lorg/jivesoftware/smackx/packet/DataForm;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/Form;-><init>(Lorg/jivesoftware/smackx/packet/DataForm;)V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/packet/AdHocCommandData;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/packet/AdHocCommandData;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->getNode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/commands/AdHocCommandNote;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/packet/AdHocCommandData;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->getNotes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getOwnerJID()Ljava/lang/String;
.end method

.method public getRaw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/packet/AdHocCommandData;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->getChildElementXML()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/packet/AdHocCommandData;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->getStatus()Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    move-result-object v0

    return-object v0
.end method

.method protected isValidAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)Z
    .locals 1
    .param p1, "action"    # Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    .prologue
    .line 347
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/commands/AdHocCommand;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->cancel:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract next(Lorg/jivesoftware/smackx/Form;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation
.end method

.method public abstract prev()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation
.end method

.method setData(Lorg/jivesoftware/smackx/packet/AdHocCommandData;)V
    .locals 0
    .param p1, "data"    # Lorg/jivesoftware/smackx/packet/AdHocCommandData;

    .prologue
    .line 325
    iput-object p1, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/packet/AdHocCommandData;

    .line 326
    return-void
.end method

.method protected setExecuteAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V
    .locals 1
    .param p1, "action"    # Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    .prologue
    .line 307
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/packet/AdHocCommandData;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setExecuteAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V

    .line 308
    return-void
.end method

.method protected setForm(Lorg/jivesoftware/smackx/Form;)V
    .locals 2
    .param p1, "form"    # Lorg/jivesoftware/smackx/Form;

    .prologue
    .line 205
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/packet/AdHocCommandData;

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/Form;->getDataFormToSend()Lorg/jivesoftware/smackx/packet/DataForm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setForm(Lorg/jivesoftware/smackx/packet/DataForm;)V

    .line 206
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/packet/AdHocCommandData;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setName(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public setNode(Ljava/lang/String;)V
    .locals 1
    .param p1, "node"    # Ljava/lang/String;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand;->data:Lorg/jivesoftware/smackx/packet/AdHocCommandData;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setNode(Ljava/lang/String;)V

    .line 132
    return-void
.end method
