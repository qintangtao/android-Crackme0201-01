.class final Lcom/kenai/jbosh/BodyParserSAX;
.super Ljava/lang/Object;
.source "BodyParserSAX.java"

# interfaces
.implements Lcom/kenai/jbosh/BodyParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kenai/jbosh/BodyParserSAX$Handler;
    }
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final PARSER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljavax/xml/parsers/SAXParser;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SAX_FACTORY:Ljavax/xml/parsers/SAXParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-class v0, Lcom/kenai/jbosh/BodyParserSAX;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 44
    sput-object v0, Lcom/kenai/jbosh/BodyParserSAX;->LOG:Ljava/util/logging/Logger;

    .line 52
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/BodyParserSAX;->SAX_FACTORY:Ljavax/xml/parsers/SAXParserFactory;

    .line 53
    sget-object v0, Lcom/kenai/jbosh/BodyParserSAX;->SAX_FACTORY:Ljavax/xml/parsers/SAXParserFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 54
    sget-object v0, Lcom/kenai/jbosh/BodyParserSAX;->SAX_FACTORY:Ljavax/xml/parsers/SAXParserFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 64
    new-instance v0, Lcom/kenai/jbosh/BodyParserSAX$1;

    invoke-direct {v0}, Lcom/kenai/jbosh/BodyParserSAX$1;-><init>()V

    .line 63
    sput-object v0, Lcom/kenai/jbosh/BodyParserSAX;->PARSER:Ljava/lang/ThreadLocal;

    .line 68
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/kenai/jbosh/BodyParserSAX;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private static getSAXParser()Ljavax/xml/parsers/SAXParser;
    .locals 8

    .prologue
    .line 184
    sget-object v6, Lcom/kenai/jbosh/BodyParserSAX;->PARSER:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 185
    .local v1, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljavax/xml/parsers/SAXParser;>;"
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/xml/parsers/SAXParser;

    .line 186
    .local v3, "result":Ljavax/xml/parsers/SAXParser;
    if-nez v3, :cond_0

    .line 189
    :try_start_0
    sget-object v6, Lcom/kenai/jbosh/BodyParserSAX;->SAX_FACTORY:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 190
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    .end local v1    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljavax/xml/parsers/SAXParser;>;"
    .local v2, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljavax/xml/parsers/SAXParser;>;"
    :try_start_1
    sget-object v6, Lcom/kenai/jbosh/BodyParserSAX;->PARSER:Ljava/lang/ThreadLocal;

    invoke-virtual {v6, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v3

    .line 202
    .end local v2    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljavax/xml/parsers/SAXParser;>;"
    .end local v3    # "result":Ljavax/xml/parsers/SAXParser;
    .local v4, "result":Ljavax/xml/parsers/SAXParser;
    :goto_0
    return-object v4

    .line 193
    .end local v4    # "result":Ljavax/xml/parsers/SAXParser;
    .restart local v1    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljavax/xml/parsers/SAXParser;>;"
    .restart local v3    # "result":Ljavax/xml/parsers/SAXParser;
    :catch_0
    move-exception v0

    .line 194
    .local v0, "ex":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_1
    move-object v5, v0

    .line 198
    .end local v0    # "ex":Ljavax/xml/parsers/ParserConfigurationException;
    .local v5, "thrown":Ljava/lang/Exception;
    :goto_2
    new-instance v6, Ljava/lang/IllegalStateException;

    .line 199
    const-string v7, "Could not create SAX parser"

    .line 198
    invoke-direct {v6, v7, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 195
    .end local v5    # "thrown":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 196
    .local v0, "ex":Lorg/xml/sax/SAXException;
    :goto_3
    move-object v5, v0

    .restart local v5    # "thrown":Ljava/lang/Exception;
    goto :goto_2

    .line 201
    .end local v0    # "ex":Lorg/xml/sax/SAXException;
    .end local v5    # "thrown":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->reset()V

    move-object v4, v3

    .line 202
    .end local v3    # "result":Ljavax/xml/parsers/SAXParser;
    .restart local v4    # "result":Ljavax/xml/parsers/SAXParser;
    goto :goto_0

    .line 195
    .end local v1    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljavax/xml/parsers/SAXParser;>;"
    .end local v4    # "result":Ljavax/xml/parsers/SAXParser;
    .restart local v2    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljavax/xml/parsers/SAXParser;>;"
    .restart local v3    # "result":Ljavax/xml/parsers/SAXParser;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljavax/xml/parsers/SAXParser;>;"
    .restart local v1    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljavax/xml/parsers/SAXParser;>;"
    goto :goto_3

    .line 193
    .end local v1    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljavax/xml/parsers/SAXParser;>;"
    .restart local v2    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljavax/xml/parsers/SAXParser;>;"
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljavax/xml/parsers/SAXParser;>;"
    .restart local v1    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljavax/xml/parsers/SAXParser;>;"
    goto :goto_1
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcom/kenai/jbosh/BodyParserResults;
    .locals 9
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 160
    new-instance v3, Lcom/kenai/jbosh/BodyParserResults;

    invoke-direct {v3}, Lcom/kenai/jbosh/BodyParserResults;-><init>()V

    .line 163
    .local v3, "result":Lcom/kenai/jbosh/BodyParserResults;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 164
    .local v0, "inStream":Ljava/io/InputStream;
    invoke-static {}, Lcom/kenai/jbosh/BodyParserSAX;->getSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 165
    .local v2, "parser":Ljavax/xml/parsers/SAXParser;
    new-instance v6, Lcom/kenai/jbosh/BodyParserSAX$Handler;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v3, v7}, Lcom/kenai/jbosh/BodyParserSAX$Handler;-><init>(Ljavax/xml/parsers/SAXParser;Lcom/kenai/jbosh/BodyParserResults;Lcom/kenai/jbosh/BodyParserSAX$Handler;)V

    invoke-virtual {v2, v0, v6}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 166
    return-object v3

    .line 167
    .end local v0    # "inStream":Ljava/io/InputStream;
    .end local v2    # "parser":Ljavax/xml/parsers/SAXParser;
    :catch_0
    move-exception v4

    .line 168
    .local v4, "saxx":Lorg/xml/sax/SAXException;
    move-object v5, v4

    .line 172
    .end local v4    # "saxx":Lorg/xml/sax/SAXException;
    .local v5, "thrown":Ljava/lang/Exception;
    :goto_0
    new-instance v6, Lcom/kenai/jbosh/BOSHException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Could not parse body:\n"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 169
    .end local v5    # "thrown":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 170
    .local v1, "iox":Ljava/io/IOException;
    move-object v5, v1

    .restart local v5    # "thrown":Ljava/lang/Exception;
    goto :goto_0
.end method
