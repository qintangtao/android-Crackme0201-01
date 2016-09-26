.class final Lcom/kenai/jbosh/CMSessionParams;
.super Ljava/lang/Object;
.source "CMSessionParams.java"


# instance fields
.field private final accept:Lcom/kenai/jbosh/AttrAccept;

.field private final ack:Lcom/kenai/jbosh/AttrAck;

.field private final ackingRequests:Z

.field private final charsets:Lcom/kenai/jbosh/AttrCharsets;

.field private final hold:Lcom/kenai/jbosh/AttrHold;

.field private final inactivity:Lcom/kenai/jbosh/AttrInactivity;

.field private final maxPause:Lcom/kenai/jbosh/AttrMaxPause;

.field private final polling:Lcom/kenai/jbosh/AttrPolling;

.field private final requests:Lcom/kenai/jbosh/AttrRequests;

.field private final sid:Lcom/kenai/jbosh/AttrSessionID;

.field private final ver:Lcom/kenai/jbosh/AttrVersion;

.field private final wait:Lcom/kenai/jbosh/AttrWait;


# direct methods
.method private constructor <init>(Lcom/kenai/jbosh/AttrSessionID;Lcom/kenai/jbosh/AttrWait;Lcom/kenai/jbosh/AttrVersion;Lcom/kenai/jbosh/AttrPolling;Lcom/kenai/jbosh/AttrInactivity;Lcom/kenai/jbosh/AttrRequests;Lcom/kenai/jbosh/AttrHold;Lcom/kenai/jbosh/AttrAccept;Lcom/kenai/jbosh/AttrMaxPause;Lcom/kenai/jbosh/AttrAck;Lcom/kenai/jbosh/AttrCharsets;Z)V
    .locals 0
    .param p1, "aSid"    # Lcom/kenai/jbosh/AttrSessionID;
    .param p2, "aWait"    # Lcom/kenai/jbosh/AttrWait;
    .param p3, "aVer"    # Lcom/kenai/jbosh/AttrVersion;
    .param p4, "aPolling"    # Lcom/kenai/jbosh/AttrPolling;
    .param p5, "aInactivity"    # Lcom/kenai/jbosh/AttrInactivity;
    .param p6, "aRequests"    # Lcom/kenai/jbosh/AttrRequests;
    .param p7, "aHold"    # Lcom/kenai/jbosh/AttrHold;
    .param p8, "aAccept"    # Lcom/kenai/jbosh/AttrAccept;
    .param p9, "aMaxPause"    # Lcom/kenai/jbosh/AttrMaxPause;
    .param p10, "aAck"    # Lcom/kenai/jbosh/AttrAck;
    .param p11, "aCharsets"    # Lcom/kenai/jbosh/AttrCharsets;
    .param p12, "amAckingRequests"    # Z

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/kenai/jbosh/CMSessionParams;->sid:Lcom/kenai/jbosh/AttrSessionID;

    .line 67
    iput-object p2, p0, Lcom/kenai/jbosh/CMSessionParams;->wait:Lcom/kenai/jbosh/AttrWait;

    .line 68
    iput-object p3, p0, Lcom/kenai/jbosh/CMSessionParams;->ver:Lcom/kenai/jbosh/AttrVersion;

    .line 69
    iput-object p4, p0, Lcom/kenai/jbosh/CMSessionParams;->polling:Lcom/kenai/jbosh/AttrPolling;

    .line 70
    iput-object p5, p0, Lcom/kenai/jbosh/CMSessionParams;->inactivity:Lcom/kenai/jbosh/AttrInactivity;

    .line 71
    iput-object p6, p0, Lcom/kenai/jbosh/CMSessionParams;->requests:Lcom/kenai/jbosh/AttrRequests;

    .line 72
    iput-object p7, p0, Lcom/kenai/jbosh/CMSessionParams;->hold:Lcom/kenai/jbosh/AttrHold;

    .line 73
    iput-object p8, p0, Lcom/kenai/jbosh/CMSessionParams;->accept:Lcom/kenai/jbosh/AttrAccept;

    .line 74
    iput-object p9, p0, Lcom/kenai/jbosh/CMSessionParams;->maxPause:Lcom/kenai/jbosh/AttrMaxPause;

    .line 75
    iput-object p10, p0, Lcom/kenai/jbosh/CMSessionParams;->ack:Lcom/kenai/jbosh/AttrAck;

    .line 76
    iput-object p11, p0, Lcom/kenai/jbosh/CMSessionParams;->charsets:Lcom/kenai/jbosh/AttrCharsets;

    .line 77
    iput-boolean p12, p0, Lcom/kenai/jbosh/CMSessionParams;->ackingRequests:Z

    .line 78
    return-void
.end method

.method static fromSessionInit(Lcom/kenai/jbosh/AbstractBody;Lcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/CMSessionParams;
    .locals 14
    .param p0, "req"    # Lcom/kenai/jbosh/AbstractBody;
    .param p1, "resp"    # Lcom/kenai/jbosh/AbstractBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 85
    sget-object v0, Lcom/kenai/jbosh/Attributes;->ACK:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v0}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/kenai/jbosh/AttrAck;->createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrAck;

    move-result-object v10

    .line 86
    .local v10, "aAck":Lcom/kenai/jbosh/AttrAck;
    sget-object v0, Lcom/kenai/jbosh/Attributes;->RID:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p0, v0}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v13

    .line 87
    .local v13, "rid":Ljava/lang/String;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/kenai/jbosh/AttrAck;->getValue()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v12, 0x1

    .line 89
    .local v12, "acking":Z
    :goto_0
    new-instance v0, Lcom/kenai/jbosh/CMSessionParams;

    .line 91
    sget-object v1, Lcom/kenai/jbosh/Attributes;->SID:Lcom/kenai/jbosh/BodyQName;

    invoke-static {p1, v1}, Lcom/kenai/jbosh/CMSessionParams;->getRequiredAttribute(Lcom/kenai/jbosh/AbstractBody;Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v1}, Lcom/kenai/jbosh/AttrSessionID;->createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrSessionID;

    move-result-object v1

    .line 93
    sget-object v2, Lcom/kenai/jbosh/Attributes;->WAIT:Lcom/kenai/jbosh/BodyQName;

    invoke-static {p1, v2}, Lcom/kenai/jbosh/CMSessionParams;->getRequiredAttribute(Lcom/kenai/jbosh/AbstractBody;Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-static {v2}, Lcom/kenai/jbosh/AttrWait;->createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrWait;

    move-result-object v2

    .line 95
    sget-object v3, Lcom/kenai/jbosh/Attributes;->VER:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v3}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-static {v3}, Lcom/kenai/jbosh/AttrVersion;->createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrVersion;

    move-result-object v3

    .line 97
    sget-object v4, Lcom/kenai/jbosh/Attributes;->POLLING:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v4}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-static {v4}, Lcom/kenai/jbosh/AttrPolling;->createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrPolling;

    move-result-object v4

    .line 99
    sget-object v5, Lcom/kenai/jbosh/Attributes;->INACTIVITY:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v5}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v5

    .line 98
    invoke-static {v5}, Lcom/kenai/jbosh/AttrInactivity;->createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrInactivity;

    move-result-object v5

    .line 101
    sget-object v6, Lcom/kenai/jbosh/Attributes;->REQUESTS:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v6}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v6

    .line 100
    invoke-static {v6}, Lcom/kenai/jbosh/AttrRequests;->createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrRequests;

    move-result-object v6

    .line 103
    sget-object v7, Lcom/kenai/jbosh/Attributes;->HOLD:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v7}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v7

    .line 102
    invoke-static {v7}, Lcom/kenai/jbosh/AttrHold;->createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrHold;

    move-result-object v7

    .line 105
    sget-object v8, Lcom/kenai/jbosh/Attributes;->ACCEPT:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v8}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v8

    .line 104
    invoke-static {v8}, Lcom/kenai/jbosh/AttrAccept;->createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrAccept;

    move-result-object v8

    .line 107
    sget-object v9, Lcom/kenai/jbosh/Attributes;->MAXPAUSE:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v9}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v9

    .line 106
    invoke-static {v9}, Lcom/kenai/jbosh/AttrMaxPause;->createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrMaxPause;

    move-result-object v9

    .line 110
    sget-object v11, Lcom/kenai/jbosh/Attributes;->CHARSETS:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v11}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v11

    .line 109
    invoke-static {v11}, Lcom/kenai/jbosh/AttrCharsets;->createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrCharsets;

    move-result-object v11

    .line 89
    invoke-direct/range {v0 .. v12}, Lcom/kenai/jbosh/CMSessionParams;-><init>(Lcom/kenai/jbosh/AttrSessionID;Lcom/kenai/jbosh/AttrWait;Lcom/kenai/jbosh/AttrVersion;Lcom/kenai/jbosh/AttrPolling;Lcom/kenai/jbosh/AttrInactivity;Lcom/kenai/jbosh/AttrRequests;Lcom/kenai/jbosh/AttrHold;Lcom/kenai/jbosh/AttrAccept;Lcom/kenai/jbosh/AttrMaxPause;Lcom/kenai/jbosh/AttrAck;Lcom/kenai/jbosh/AttrCharsets;Z)V

    return-object v0

    .line 87
    .end local v12    # "acking":Z
    :cond_0
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private static getRequiredAttribute(Lcom/kenai/jbosh/AbstractBody;Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;
    .locals 4
    .param p0, "body"    # Lcom/kenai/jbosh/AbstractBody;
    .param p1, "name"    # Lcom/kenai/jbosh/BodyQName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "attrStr":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 121
    new-instance v1, Lcom/kenai/jbosh/BOSHException;

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connection Manager session creation response did not include required \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Lcom/kenai/jbosh/BodyQName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 124
    const-string v3, "\' attribute"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-direct {v1, v2}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_0
    return-object v0
.end method


# virtual methods
.method getAccept()Lcom/kenai/jbosh/AttrAccept;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/kenai/jbosh/CMSessionParams;->accept:Lcom/kenai/jbosh/AttrAccept;

    return-object v0
.end method

.method getAck()Lcom/kenai/jbosh/AttrAck;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/kenai/jbosh/CMSessionParams;->ack:Lcom/kenai/jbosh/AttrAck;

    return-object v0
.end method

.method getCharsets()Lcom/kenai/jbosh/AttrCharsets;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/kenai/jbosh/CMSessionParams;->charsets:Lcom/kenai/jbosh/AttrCharsets;

    return-object v0
.end method

.method getHold()Lcom/kenai/jbosh/AttrHold;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/kenai/jbosh/CMSessionParams;->hold:Lcom/kenai/jbosh/AttrHold;

    return-object v0
.end method

.method getInactivityPeriod()Lcom/kenai/jbosh/AttrInactivity;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/kenai/jbosh/CMSessionParams;->inactivity:Lcom/kenai/jbosh/AttrInactivity;

    return-object v0
.end method

.method getMaxPause()Lcom/kenai/jbosh/AttrMaxPause;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/kenai/jbosh/CMSessionParams;->maxPause:Lcom/kenai/jbosh/AttrMaxPause;

    return-object v0
.end method

.method getPollingInterval()Lcom/kenai/jbosh/AttrPolling;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/kenai/jbosh/CMSessionParams;->polling:Lcom/kenai/jbosh/AttrPolling;

    return-object v0
.end method

.method getRequests()Lcom/kenai/jbosh/AttrRequests;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/kenai/jbosh/CMSessionParams;->requests:Lcom/kenai/jbosh/AttrRequests;

    return-object v0
.end method

.method getSessionID()Lcom/kenai/jbosh/AttrSessionID;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/kenai/jbosh/CMSessionParams;->sid:Lcom/kenai/jbosh/AttrSessionID;

    return-object v0
.end method

.method getVersion()Lcom/kenai/jbosh/AttrVersion;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/kenai/jbosh/CMSessionParams;->ver:Lcom/kenai/jbosh/AttrVersion;

    return-object v0
.end method

.method getWait()Lcom/kenai/jbosh/AttrWait;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/kenai/jbosh/CMSessionParams;->wait:Lcom/kenai/jbosh/AttrWait;

    return-object v0
.end method

.method isAckingRequests()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/kenai/jbosh/CMSessionParams;->ackingRequests:Z

    return v0
.end method
