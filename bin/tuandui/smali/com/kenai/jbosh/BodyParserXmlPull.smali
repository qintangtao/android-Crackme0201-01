.class final Lcom/kenai/jbosh/BodyParserXmlPull;
.super Ljava/lang/Object;
.source "BodyParserXmlPull.java"

# interfaces
.implements Lcom/kenai/jbosh/BodyParser;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final XPP_PARSER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/kenai/jbosh/BodyParserXmlPull;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 39
    sput-object v0, Lcom/kenai/jbosh/BodyParserXmlPull;->LOG:Ljava/util/logging/Logger;

    .line 49
    new-instance v0, Lcom/kenai/jbosh/BodyParserXmlPull$1;

    invoke-direct {v0}, Lcom/kenai/jbosh/BodyParserXmlPull$1;-><init>()V

    .line 48
    sput-object v0, Lcom/kenai/jbosh/BodyParserXmlPull;->XPP_PARSER:Ljava/lang/ThreadLocal;

    .line 53
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getXmlPullParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 9

    .prologue
    .line 143
    sget-object v7, Lcom/kenai/jbosh/BodyParserXmlPull;->XPP_PARSER:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 144
    .local v2, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lorg/xmlpull/v1/XmlPullParser;>;"
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xmlpull/v1/XmlPullParser;

    .line 145
    .local v4, "result":Lorg/xmlpull/v1/XmlPullParser;
    if-nez v4, :cond_0

    .line 148
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 149
    .local v1, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 150
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->setValidating(Z)V

    .line 151
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 152
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v2    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lorg/xmlpull/v1/XmlPullParser;>;"
    .local v3, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lorg/xmlpull/v1/XmlPullParser;>;"
    :try_start_1
    sget-object v7, Lcom/kenai/jbosh/BodyParserXmlPull;->XPP_PARSER:Ljava/lang/ThreadLocal;

    invoke-virtual {v7, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v4

    .line 161
    .end local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lorg/xmlpull/v1/XmlPullParser;>;"
    .end local v4    # "result":Lorg/xmlpull/v1/XmlPullParser;
    .local v5, "result":Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    return-object v5

    .line 155
    .end local v5    # "result":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lorg/xmlpull/v1/XmlPullParser;>;"
    .restart local v4    # "result":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 156
    .local v0, "ex":Ljava/lang/Exception;
    :goto_1
    move-object v6, v0

    .line 158
    .local v6, "thrown":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/IllegalStateException;

    .line 159
    const-string v8, "Could not create XmlPull parser"

    .line 158
    invoke-direct {v7, v8, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v6    # "thrown":Ljava/lang/Exception;
    :cond_0
    move-object v5, v4

    .line 161
    .end local v4    # "result":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "result":Lorg/xmlpull/v1/XmlPullParser;
    goto :goto_0

    .line 155
    .end local v2    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lorg/xmlpull/v1/XmlPullParser;>;"
    .end local v5    # "result":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v3    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lorg/xmlpull/v1/XmlPullParser;>;"
    .restart local v4    # "result":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lorg/xmlpull/v1/XmlPullParser;>;"
    .restart local v2    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lorg/xmlpull/v1/XmlPullParser;>;"
    goto :goto_1
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcom/kenai/jbosh/BodyParserResults;
    .locals 24
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v15, Lcom/kenai/jbosh/BodyParserResults;

    invoke-direct {v15}, Lcom/kenai/jbosh/BodyParserResults;-><init>()V

    .line 65
    .local v15, "result":Lcom/kenai/jbosh/BodyParserResults;
    :try_start_0
    invoke-static {}, Lcom/kenai/jbosh/BodyParserXmlPull;->getXmlPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v20

    .line 67
    .local v20, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v21, Ljava/io/StringReader;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v20 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 68
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 69
    .local v9, "eventType":I
    :goto_0
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v9, v0, :cond_1

    .line 123
    :cond_0
    return-object v15

    .line 70
    :cond_1
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v9, v0, :cond_5

    .line 71
    sget-object v21, Lcom/kenai/jbosh/BodyParserXmlPull;->LOG:Ljava/util/logging/Logger;

    sget-object v22, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual/range {v21 .. v22}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 72
    sget-object v21, Lcom/kenai/jbosh/BodyParserXmlPull;->LOG:Ljava/util/logging/Logger;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Start tag: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 79
    :cond_2
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v14

    .line 80
    .local v14, "prefix":Ljava/lang/String;
    if-nez v14, :cond_3

    .line 81
    const-string v14, ""

    .line 83
    :cond_3
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v18

    .line 84
    .local v18, "uri":Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 85
    .local v12, "localName":Ljava/lang/String;
    new-instance v13, Lcom/kenai/jbosh/QName;

    move-object/from16 v0, v18

    invoke-direct {v13, v0, v12, v14}, Lcom/kenai/jbosh/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .local v13, "name":Lcom/kenai/jbosh/QName;
    sget-object v21, Lcom/kenai/jbosh/BodyParserXmlPull;->LOG:Ljava/util/logging/Logger;

    sget-object v22, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual/range {v21 .. v22}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 87
    sget-object v21, Lcom/kenai/jbosh/BodyParserXmlPull;->LOG:Ljava/util/logging/Logger;

    const-string v22, "Start element: "

    invoke-virtual/range {v21 .. v22}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 88
    sget-object v21, Lcom/kenai/jbosh/BodyParserXmlPull;->LOG:Ljava/util/logging/Logger;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "    prefix: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 89
    sget-object v21, Lcom/kenai/jbosh/BodyParserXmlPull;->LOG:Ljava/util/logging/Logger;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "    URI: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 90
    sget-object v21, Lcom/kenai/jbosh/BodyParserXmlPull;->LOG:Ljava/util/logging/Logger;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "    local: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 93
    :cond_4
    invoke-static {}, Lcom/kenai/jbosh/AbstractBody;->getBodyQName()Lcom/kenai/jbosh/BodyQName;

    move-result-object v8

    .line 94
    .local v8, "bodyName":Lcom/kenai/jbosh/BodyQName;
    invoke-virtual {v8, v13}, Lcom/kenai/jbosh/BodyQName;->equalsQName(Lcom/kenai/jbosh/QName;)Z

    move-result v21

    if-nez v21, :cond_6

    .line 95
    new-instance v21, Ljava/lang/IllegalStateException;

    .line 96
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Root element was not \'"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/kenai/jbosh/BodyQName;->getLocalPart()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 97
    const-string v23, "\' in the \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v8}, Lcom/kenai/jbosh/BodyQName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 98
    const-string v23, "\' namespace.  (Was \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 99
    const-string v23, "\' in \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\')"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 96
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 95
    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 124
    .end local v8    # "bodyName":Lcom/kenai/jbosh/BodyQName;
    .end local v9    # "eventType":I
    .end local v12    # "localName":Ljava/lang/String;
    .end local v13    # "name":Lcom/kenai/jbosh/QName;
    .end local v14    # "prefix":Ljava/lang/String;
    .end local v18    # "uri":Ljava/lang/String;
    .end local v20    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v16

    .line 125
    .local v16, "rtx":Ljava/lang/RuntimeException;
    move-object/from16 v17, v16

    .line 131
    .end local v16    # "rtx":Ljava/lang/RuntimeException;
    .local v17, "thrown":Ljava/lang/Exception;
    :goto_1
    new-instance v21, Lcom/kenai/jbosh/BOSHException;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Could not parse body:\n"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21

    .line 75
    .end local v17    # "thrown":Ljava/lang/Exception;
    .restart local v9    # "eventType":I
    .restart local v20    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_5
    :try_start_1
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 76
    goto/16 :goto_0

    .line 102
    .restart local v8    # "bodyName":Lcom/kenai/jbosh/BodyQName;
    .restart local v12    # "localName":Ljava/lang/String;
    .restart local v13    # "name":Lcom/kenai/jbosh/QName;
    .restart local v14    # "prefix":Ljava/lang/String;
    .restart local v18    # "uri":Ljava/lang/String;
    :cond_6
    const/4 v10, 0x0

    .local v10, "idx":I
    :goto_2
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v21

    move/from16 v0, v21

    if-ge v10, v0, :cond_0

    .line 103
    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v6

    .line 104
    .local v6, "attrURI":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v21

    if-nez v21, :cond_7

    .line 105
    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 107
    :cond_7
    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, "attrPrefix":Ljava/lang/String;
    if-nez v5, :cond_8

    .line 109
    const-string v5, ""

    .line 111
    :cond_8
    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, "attrLN":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    .line 113
    .local v7, "attrVal":Ljava/lang/String;
    invoke-static {v6, v4, v5}, Lcom/kenai/jbosh/BodyQName;->createWithPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v3

    .line 115
    .local v3, "aqn":Lcom/kenai/jbosh/BodyQName;
    sget-object v21, Lcom/kenai/jbosh/BodyParserXmlPull;->LOG:Ljava/util/logging/Logger;

    sget-object v22, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual/range {v21 .. v22}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 116
    sget-object v21, Lcom/kenai/jbosh/BodyParserXmlPull;->LOG:Ljava/util/logging/Logger;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "        Attribute: {"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "}"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 117
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " = \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 116
    invoke-virtual/range {v21 .. v22}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 119
    :cond_9
    invoke-virtual {v15, v3, v7}, Lcom/kenai/jbosh/BodyParserResults;->addBodyAttributeValue(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 102
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 126
    .end local v3    # "aqn":Lcom/kenai/jbosh/BodyQName;
    .end local v4    # "attrLN":Ljava/lang/String;
    .end local v5    # "attrPrefix":Ljava/lang/String;
    .end local v6    # "attrURI":Ljava/lang/String;
    .end local v7    # "attrVal":Ljava/lang/String;
    .end local v8    # "bodyName":Lcom/kenai/jbosh/BodyQName;
    .end local v9    # "eventType":I
    .end local v10    # "idx":I
    .end local v12    # "localName":Ljava/lang/String;
    .end local v13    # "name":Lcom/kenai/jbosh/QName;
    .end local v14    # "prefix":Ljava/lang/String;
    .end local v18    # "uri":Ljava/lang/String;
    .end local v20    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v19

    .line 127
    .local v19, "xmlppx":Lorg/xmlpull/v1/XmlPullParserException;
    move-object/from16 v17, v19

    .restart local v17    # "thrown":Ljava/lang/Exception;
    goto/16 :goto_1

    .line 128
    .end local v17    # "thrown":Ljava/lang/Exception;
    .end local v19    # "xmlppx":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v11

    .line 129
    .local v11, "iox":Ljava/io/IOException;
    move-object/from16 v17, v11

    .restart local v17    # "thrown":Ljava/lang/Exception;
    goto/16 :goto_1
.end method
