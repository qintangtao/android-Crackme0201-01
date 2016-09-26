.class public Lorg/jivesoftware/smackx/muc/RoomInfo;
.super Ljava/lang/Object;
.source "RoomInfo.java"


# instance fields
.field private description:Ljava/lang/String;

.field private membersOnly:Z

.field private moderated:Z

.field private nonanonymous:Z

.field private occupantsCount:I

.field private passwordProtected:Z

.field private persistent:Z

.field private room:Ljava/lang/String;

.field private subject:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/packet/DiscoverInfo;)V
    .locals 6
    .param p1, "info"    # Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    .prologue
    const/4 v5, -0x1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v4, ""

    iput-object v4, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->description:Ljava/lang/String;

    .line 49
    const-string v4, ""

    iput-object v4, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->subject:Ljava/lang/String;

    .line 53
    iput v5, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->occupantsCount:I

    .line 82
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getFrom()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->room:Ljava/lang/String;

    .line 84
    const-string v4, "muc_membersonly"

    invoke-virtual {p1, v4}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->containsFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->membersOnly:Z

    .line 85
    const-string v4, "muc_moderated"

    invoke-virtual {p1, v4}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->containsFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->moderated:Z

    .line 86
    const-string v4, "muc_nonanonymous"

    invoke-virtual {p1, v4}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->containsFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->nonanonymous:Z

    .line 87
    const-string v4, "muc_passwordprotected"

    invoke-virtual {p1, v4}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->containsFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->passwordProtected:Z

    .line 88
    const-string v4, "muc_persistent"

    invoke-virtual {p1, v4}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->containsFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->persistent:Z

    .line 90
    invoke-static {p1}, Lorg/jivesoftware/smackx/Form;->getFormFrom(Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/Form;

    move-result-object v1

    .line 91
    .local v1, "form":Lorg/jivesoftware/smackx/Form;
    if-eqz v1, :cond_2

    .line 92
    const-string v4, "muc#roominfo_description"

    invoke-virtual {v1, v4}, Lorg/jivesoftware/smackx/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/FormField;

    move-result-object v0

    .line 93
    .local v0, "descField":Lorg/jivesoftware/smackx/FormField;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getValues()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    const-string v4, ""

    :goto_0
    iput-object v4, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->description:Ljava/lang/String;

    .line 95
    const-string v4, "muc#roominfo_subject"

    invoke-virtual {v1, v4}, Lorg/jivesoftware/smackx/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/FormField;

    move-result-object v3

    .line 96
    .local v3, "subjField":Lorg/jivesoftware/smackx/FormField;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/FormField;->getValues()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_1
    const-string v4, ""

    :goto_1
    iput-object v4, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->subject:Ljava/lang/String;

    .line 98
    const-string v4, "muc#roominfo_occupants"

    invoke-virtual {v1, v4}, Lorg/jivesoftware/smackx/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/FormField;

    move-result-object v2

    .line 99
    .local v2, "occCountField":Lorg/jivesoftware/smackx/FormField;
    if-nez v2, :cond_5

    move v4, v5

    :goto_2
    iput v4, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->occupantsCount:I

    .line 102
    .end local v0    # "descField":Lorg/jivesoftware/smackx/FormField;
    .end local v2    # "occCountField":Lorg/jivesoftware/smackx/FormField;
    .end local v3    # "subjField":Lorg/jivesoftware/smackx/FormField;
    :cond_2
    return-void

    .line 93
    .restart local v0    # "descField":Lorg/jivesoftware/smackx/FormField;
    :cond_3
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getValues()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    .line 96
    .restart local v3    # "subjField":Lorg/jivesoftware/smackx/FormField;
    :cond_4
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/FormField;->getValues()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    .line 99
    .restart local v2    # "occCountField":Lorg/jivesoftware/smackx/FormField;
    :cond_5
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/FormField;->getValues()Ljava/util/Iterator;

    move-result-object v4

    .line 100
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 99
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_2
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getOccupantsCount()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->occupantsCount:I

    return v0
.end method

.method public getRoom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->room:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public isMembersOnly()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->membersOnly:Z

    return v0
.end method

.method public isModerated()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->moderated:Z

    return v0
.end method

.method public isNonanonymous()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->nonanonymous:Z

    return v0
.end method

.method public isPasswordProtected()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->passwordProtected:Z

    return v0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/muc/RoomInfo;->persistent:Z

    return v0
.end method
