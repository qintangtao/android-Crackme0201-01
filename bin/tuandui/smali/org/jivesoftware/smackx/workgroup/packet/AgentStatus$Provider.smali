.class public Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$Provider;
.super Ljava/lang/Object;
.source "AgentStatus.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseChatInfo(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 250
    const-string v0, ""

    const-string v7, "sessionID"

    invoke-interface {p1, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "sessionID":Ljava/lang/String;
    const-string v0, ""

    const-string v7, "userID"

    invoke-interface {p1, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "userID":Ljava/lang/String;
    const/4 v3, 0x0

    .line 254
    .local v3, "date":Ljava/util/Date;
    :try_start_0
    # getter for: Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->UTC_FORMAT:Ljava/text/SimpleDateFormat;
    invoke-static {}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->access$0()Ljava/text/SimpleDateFormat;

    move-result-object v0

    const-string v7, ""

    const-string v8, "startTime"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 259
    :goto_0
    const-string v0, ""

    const-string v7, "email"

    invoke-interface {p1, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, "email":Ljava/lang/String;
    const-string v0, ""

    const-string v7, "username"

    invoke-interface {p1, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 261
    .local v5, "username":Ljava/lang/String;
    const-string v0, ""

    const-string v7, "question"

    invoke-interface {p1, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 263
    .local v6, "question":Ljava/lang/String;
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;

    invoke-direct/range {v0 .. v6}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .end local v4    # "email":Ljava/lang/String;
    .end local v5    # "username":Ljava/lang/String;
    .end local v6    # "question":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 224
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;-><init>()V

    .line 226
    .local v0, "agentStatus":Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;
    const-string v3, ""

    const-string v4, "jid"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->access$1(Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;Ljava/lang/String;)V

    .line 228
    const/4 v1, 0x0

    .line 229
    .local v1, "done":Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 245
    return-object v0

    .line 230
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 232
    .local v2, "eventType":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 233
    const-string v3, "chat"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 234
    # getter for: Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->currentChats:Ljava/util/List;
    invoke-static {v0}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->access$2(Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$Provider;->parseChatInfo(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    :cond_2
    const-string v3, "max-chats"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->access$3(Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;I)V

    goto :goto_0

    .line 240
    :cond_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 241
    const-string v3, "agent-status"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    const/4 v1, 0x1

    goto :goto_0
.end method
