.class final Lcom/kenai/jbosh/BodyParserSAX$Handler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "BodyParserSAX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kenai/jbosh/BodyParserSAX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Handler"
.end annotation


# instance fields
.field private defaultNS:Ljava/lang/String;

.field private final parser:Ljavax/xml/parsers/SAXParser;

.field private final result:Lcom/kenai/jbosh/BodyParserResults;


# direct methods
.method private constructor <init>(Ljavax/xml/parsers/SAXParser;Lcom/kenai/jbosh/BodyParserResults;)V
    .locals 1
    .param p1, "theParser"    # Ljavax/xml/parsers/SAXParser;
    .param p2, "results"    # Lcom/kenai/jbosh/BodyParserResults;

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kenai/jbosh/BodyParserSAX$Handler;->defaultNS:Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lcom/kenai/jbosh/BodyParserSAX$Handler;->parser:Ljavax/xml/parsers/SAXParser;

    .line 80
    iput-object p2, p0, Lcom/kenai/jbosh/BodyParserSAX$Handler;->result:Lcom/kenai/jbosh/BodyParserResults;

    .line 81
    return-void
.end method

.method synthetic constructor <init>(Ljavax/xml/parsers/SAXParser;Lcom/kenai/jbosh/BodyParserResults;Lcom/kenai/jbosh/BodyParserSAX$Handler;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/kenai/jbosh/BodyParserSAX$Handler;-><init>(Ljavax/xml/parsers/SAXParser;Lcom/kenai/jbosh/BodyParserResults;)V

    return-void
.end method


# virtual methods
.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 9
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 92
    # getter for: Lcom/kenai/jbosh/BodyParserSAX;->LOG:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/kenai/jbosh/BodyParserSAX;->access$0()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 93
    # getter for: Lcom/kenai/jbosh/BodyParserSAX;->LOG:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/kenai/jbosh/BodyParserSAX;->access$0()Ljava/util/logging/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Start element: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 94
    # getter for: Lcom/kenai/jbosh/BodyParserSAX;->LOG:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/kenai/jbosh/BodyParserSAX;->access$0()Ljava/util/logging/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "    URI: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 95
    # getter for: Lcom/kenai/jbosh/BodyParserSAX;->LOG:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/kenai/jbosh/BodyParserSAX;->access$0()Ljava/util/logging/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "    local: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 98
    :cond_0
    invoke-static {}, Lcom/kenai/jbosh/AbstractBody;->getBodyQName()Lcom/kenai/jbosh/BodyQName;

    move-result-object v4

    .line 100
    .local v4, "bodyName":Lcom/kenai/jbosh/BodyQName;
    invoke-virtual {v4}, Lcom/kenai/jbosh/BodyQName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 101
    invoke-virtual {v4}, Lcom/kenai/jbosh/BodyQName;->getLocalPart()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 102
    :cond_1
    new-instance v6, Ljava/lang/IllegalStateException;

    .line 103
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Root element was not \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/kenai/jbosh/BodyQName;->getLocalPart()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 104
    const-string v8, "\' in the \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/kenai/jbosh/BodyQName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 105
    const-string v8, "\' namespace.  (Was \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' in \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 106
    const-string v8, "\')"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 103
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 102
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 111
    :cond_2
    const/4 v5, 0x0

    .local v5, "idx":I
    :goto_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v6

    if-lt v5, v6, :cond_3

    .line 127
    iget-object v6, p0, Lcom/kenai/jbosh/BodyParserSAX$Handler;->parser:Ljavax/xml/parsers/SAXParser;

    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParser;->reset()V

    .line 128
    return-void

    .line 112
    :cond_3
    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "attrURI":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 114
    iget-object v2, p0, Lcom/kenai/jbosh/BodyParserSAX$Handler;->defaultNS:Ljava/lang/String;

    .line 116
    :cond_4
    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "attrLN":Ljava/lang/String;
    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "attrVal":Ljava/lang/String;
    # getter for: Lcom/kenai/jbosh/BodyParserSAX;->LOG:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/kenai/jbosh/BodyParserSAX;->access$0()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 119
    # getter for: Lcom/kenai/jbosh/BodyParserSAX;->LOG:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/kenai/jbosh/BodyParserSAX;->access$0()Ljava/util/logging/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "    Attribute: {"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 120
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 119
    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 123
    :cond_5
    invoke-static {v2, v1}, Lcom/kenai/jbosh/BodyQName;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    .line 124
    .local v0, "aqn":Lcom/kenai/jbosh/BodyQName;
    iget-object v6, p0, Lcom/kenai/jbosh/BodyParserSAX$Handler;->result:Lcom/kenai/jbosh/BodyParserResults;

    invoke-virtual {v6, v0, v3}, Lcom/kenai/jbosh/BodyParserResults;->addBodyAttributeValue(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)V

    .line 111
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 141
    # getter for: Lcom/kenai/jbosh/BodyParserSAX;->LOG:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/kenai/jbosh/BodyParserSAX;->access$0()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    # getter for: Lcom/kenai/jbosh/BodyParserSAX;->LOG:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/kenai/jbosh/BodyParserSAX;->access$0()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Prefix mapping: <DEFAULT> => "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 144
    :cond_0
    iput-object p2, p0, Lcom/kenai/jbosh/BodyParserSAX$Handler;->defaultNS:Ljava/lang/String;

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 146
    :cond_2
    # getter for: Lcom/kenai/jbosh/BodyParserSAX;->LOG:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/kenai/jbosh/BodyParserSAX;->access$0()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    # getter for: Lcom/kenai/jbosh/BodyParserSAX;->LOG:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/kenai/jbosh/BodyParserSAX;->access$0()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Prefix mapping: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method
