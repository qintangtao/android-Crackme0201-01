.class public Lorg/jivesoftware/smackx/provider/DelayInformationProvider;
.super Ljava/lang/Object;
.source "DelayInformationProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    const-string v4, ""

    const-string v5, "stamp"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, "stampString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 46
    .local v2, "stamp":Ljava/util/Date;
    :try_start_0
    invoke-static {v3}, Lorg/jivesoftware/smack/util/StringUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 60
    :cond_0
    :goto_0
    new-instance v0, Lorg/jivesoftware/smackx/packet/DelayInformation;

    invoke-direct {v0, v2}, Lorg/jivesoftware/smackx/packet/DelayInformation;-><init>(Ljava/util/Date;)V

    .line 61
    .local v0, "delayInformation":Lorg/jivesoftware/smackx/packet/DelayInformation;
    const-string v4, ""

    const-string v5, "from"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jivesoftware/smackx/packet/DelayInformation;->setFrom(Ljava/lang/String;)V

    .line 62
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "reason":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    .line 70
    :cond_1
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/DelayInformation;->setReason(Ljava/lang/String;)V

    .line 72
    return-object v0

    .line 54
    .end local v0    # "delayInformation":Lorg/jivesoftware/smackx/packet/DelayInformation;
    .end local v1    # "reason":Ljava/lang/String;
    :catch_0
    move-exception v4

    if-nez v2, :cond_0

    .line 55
    new-instance v2, Ljava/util/Date;

    .end local v2    # "stamp":Ljava/util/Date;
    const-wide/16 v4, 0x0

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .restart local v2    # "stamp":Ljava/util/Date;
    goto :goto_0
.end method
