.class public final Lcom/kenai/jbosh/ComposableBody;
.super Lcom/kenai/jbosh/AbstractBody;
.source "ComposableBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kenai/jbosh/ComposableBody$Builder;
    }
.end annotation


# static fields
.field private static final BOSH_START:Ljava/util/regex/Pattern;


# instance fields
.field private final attrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/kenai/jbosh/BodyQName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final computed:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final payload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "<(?:(?:[^:\t\n\r >]+:)|(?:\\{[^\\}>]*?\\}))?body(?:[\t\n\r ][^>]*?)?(/>|>)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 60
    sput-object v0, Lcom/kenai/jbosh/ComposableBody;->BOSH_START:Ljava/util/regex/Pattern;

    .line 62
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p2, "payloadXML"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/kenai/jbosh/BodyQName;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "attrMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/kenai/jbosh/AbstractBody;-><init>()V

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/ComposableBody;->computed:Ljava/util/concurrent/atomic/AtomicReference;

    .line 199
    iput-object p1, p0, Lcom/kenai/jbosh/ComposableBody;->attrs:Ljava/util/Map;

    .line 200
    iput-object p2, p0, Lcom/kenai/jbosh/ComposableBody;->payload:Ljava/lang/String;

    .line 201
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ljava/lang/String;Lcom/kenai/jbosh/ComposableBody;)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0, p1, p2}, Lcom/kenai/jbosh/ComposableBody;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$0(Lcom/kenai/jbosh/ComposableBody;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kenai/jbosh/ComposableBody;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public static builder()Lcom/kenai/jbosh/ComposableBody$Builder;
    .locals 2

    .prologue
    .line 247
    new-instance v0, Lcom/kenai/jbosh/ComposableBody$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kenai/jbosh/ComposableBody$Builder;-><init>(Lcom/kenai/jbosh/ComposableBody$Builder;)V

    return-object v0
.end method

.method private computeXML()Ljava/lang/String;
    .locals 7

    .prologue
    .line 316
    invoke-static {}, Lcom/kenai/jbosh/ComposableBody;->getBodyQName()Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    .line 317
    .local v0, "bodyName":Lcom/kenai/jbosh/BodyQName;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v5, "<"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v0}, Lcom/kenai/jbosh/BodyQName;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    iget-object v5, p0, Lcom/kenai/jbosh/ComposableBody;->attrs:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 333
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string v5, "xmlns"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const-string v5, "=\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v0}, Lcom/kenai/jbosh/BodyQName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const-string v5, "\'>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    iget-object v5, p0, Lcom/kenai/jbosh/ComposableBody;->payload:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 339
    iget-object v5, p0, Lcom/kenai/jbosh/ComposableBody;->payload:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_0
    const-string v5, "</body>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 320
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 321
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;>;"
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kenai/jbosh/BodyQName;

    .line 323
    .local v3, "name":Lcom/kenai/jbosh/BodyQName;
    invoke-virtual {v3}, Lcom/kenai/jbosh/BodyQName;->getPrefix()Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, "prefix":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 325
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    :cond_2
    invoke-virtual {v3}, Lcom/kenai/jbosh/BodyQName;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const-string v5, "=\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/kenai/jbosh/ComposableBody;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    const-string v5, "\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 307
    const-string v0, "\'"

    const-string v1, "&apos;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static fromStaticBody(Lcom/kenai/jbosh/StaticBody;)Lcom/kenai/jbosh/ComposableBody;
    .locals 8
    .param p0, "body"    # Lcom/kenai/jbosh/StaticBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/kenai/jbosh/StaticBody;->toXML()Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, "raw":Ljava/lang/String;
    sget-object v5, Lcom/kenai/jbosh/ComposableBody;->BOSH_START:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 221
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_0

    .line 222
    new-instance v5, Lcom/kenai/jbosh/BOSHException;

    .line 223
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Could not locate \'body\' element in XML.  The raw XML did not match the pattern: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    sget-object v7, Lcom/kenai/jbosh/ComposableBody;->BOSH_START:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 223
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 222
    invoke-direct {v5, v6}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 227
    :cond_0
    const-string v5, ">"

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 228
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 229
    .local v0, "first":I
    const-string v5, "</"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 230
    .local v1, "last":I
    if-ge v1, v0, :cond_1

    .line 231
    move v1, v0

    .line 233
    :cond_1
    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 238
    .end local v0    # "first":I
    .end local v1    # "last":I
    .local v3, "payload":Ljava/lang/String;
    :goto_0
    new-instance v5, Lcom/kenai/jbosh/ComposableBody;

    invoke-virtual {p0}, Lcom/kenai/jbosh/StaticBody;->getAttributes()Ljava/util/Map;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/kenai/jbosh/ComposableBody;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    return-object v5

    .line 235
    .end local v3    # "payload":Ljava/lang/String;
    :cond_2
    const-string v3, ""

    .restart local v3    # "payload":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/kenai/jbosh/BodyQName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcom/kenai/jbosh/ComposableBody;->attrs:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPayloadXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/kenai/jbosh/ComposableBody;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public rebuild()Lcom/kenai/jbosh/ComposableBody$Builder;
    .locals 1

    .prologue
    .line 262
    # invokes: Lcom/kenai/jbosh/ComposableBody$Builder;->fromBody(Lcom/kenai/jbosh/ComposableBody;)Lcom/kenai/jbosh/ComposableBody$Builder;
    invoke-static {p0}, Lcom/kenai/jbosh/ComposableBody$Builder;->access$1(Lcom/kenai/jbosh/ComposableBody;)Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 2

    .prologue
    .line 279
    iget-object v1, p0, Lcom/kenai/jbosh/ComposableBody;->computed:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 280
    .local v0, "comp":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/kenai/jbosh/ComposableBody;->computeXML()Ljava/lang/String;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/kenai/jbosh/ComposableBody;->computed:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 284
    :cond_0
    return-object v0
.end method
