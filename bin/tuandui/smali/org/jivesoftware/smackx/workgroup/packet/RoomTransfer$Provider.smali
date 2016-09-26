.class public Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Provider;
.super Ljava/lang/Object;
.source "RoomTransfer.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    .line 146
    new-instance v2, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;-><init>(Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;)V

    .line 147
    .local v2, "invitation":Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;
    const-string v3, ""

    const-string v4, "type"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;->access$1(Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;)V

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 174
    return-object v2

    .line 151
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 152
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "elementName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 154
    const-string v3, "session"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    const-string v3, ""

    const-string v4, "id"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;->access$2(Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_2
    const-string v3, "invitee"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 158
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;->access$3(Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_3
    const-string v3, "inviter"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 161
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;->access$4(Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_4
    const-string v3, "reason"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 164
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;->access$5(Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_5
    const-string v3, "room"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;->access$6(Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const-string v3, "transfer"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    const/4 v0, 0x1

    goto :goto_0
.end method
