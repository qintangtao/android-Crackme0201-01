.class Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;
.super Ljava/lang/Object;
.source "VCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/packet/VCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardWriter"
.end annotation


# instance fields
.field private final sb:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lorg/jivesoftware/smackx/packet/VCard;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/packet/VCard;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 718
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    iput-object p2, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuilder;

    .line 720
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)V
    .locals 0

    .prologue
    .line 730
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->buildActualContent()V

    return-void
.end method

.method static synthetic access$1(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 864
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 803
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendEmptyTag(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$4(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)Lorg/jivesoftware/smackx/packet/VCard;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    return-object v0
.end method

.method private appendAddress(Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .param p2, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 788
    .local p1, "addr":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 789
    const-string v0, "ADR"

    const/4 v1, 0x1

    new-instance v2, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$5;

    invoke-direct {v2, p0, p2, p1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$5;-><init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    .line 801
    :cond_0
    return-void
.end method

.method private appendEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 761
    if-eqz p1, :cond_0

    .line 762
    const-string v0, "EMAIL"

    const/4 v1, 0x1

    new-instance v2, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$3;

    invoke-direct {v2, p0, p2, p1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$3;-><init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    .line 771
    :cond_0
    return-void
.end method

.method private appendEmptyTag(Ljava/lang/Object;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 804
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    return-void
.end method

.method private appendGenericFields()V
    .locals 4

    .prologue
    .line 808
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    # getter for: Lorg/jivesoftware/smackx/packet/VCard;->otherSimpleFields:Ljava/util/Map;
    invoke-static {v2}, Lorg/jivesoftware/smackx/packet/VCard;->access$10(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 809
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 815
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    # getter for: Lorg/jivesoftware/smackx/packet/VCard;->otherUnescapableFields:Ljava/util/Map;
    invoke-static {v2}, Lorg/jivesoftware/smackx/packet/VCard;->access$11(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 816
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 820
    return-void

    .line 810
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 811
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 812
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 811
    invoke-direct {p0, v3, v2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 817
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 818
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private appendN()V
    .locals 3

    .prologue
    .line 834
    const-string v0, "N"

    const/4 v1, 0x1

    new-instance v2, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$7;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$7;-><init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    .line 841
    return-void
.end method

.method private appendOrganization()V
    .locals 3

    .prologue
    .line 823
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    # invokes: Lorg/jivesoftware/smackx/packet/VCard;->hasOrganizationFields()Z
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$12(Lorg/jivesoftware/smackx/packet/VCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    const-string v0, "ORG"

    const/4 v1, 0x1

    new-instance v2, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$6;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$6;-><init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    .line 831
    :cond_0
    return-void
.end method

.method private appendPhones(Ljava/util/Map;Ljava/lang/String;)V
    .locals 5
    .param p2, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 774
    .local p1, "phones":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 775
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 785
    return-void

    .line 776
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 777
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "TEL"

    const/4 v3, 0x1

    new-instance v4, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$4;

    invoke-direct {v4, p0, v0, p2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$4;-><init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/util/Map$Entry;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3, v4}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    goto :goto_0
.end method

.method private appendPhoto()V
    .locals 3

    .prologue
    .line 750
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    # getter for: Lorg/jivesoftware/smackx/packet/VCard;->photoBinval:Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$8(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 759
    :goto_0
    return-void

    .line 753
    :cond_0
    const-string v0, "PHOTO"

    const/4 v1, 0x1

    new-instance v2, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$2;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$2;-><init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    goto :goto_0
.end method

.method private appendTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tagText"    # Ljava/lang/String;

    .prologue
    .line 865
    if-nez p2, :cond_0

    .line 872
    :goto_0
    return-void

    .line 866
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$8;

    invoke-direct {v0, p0, p2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$8;-><init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/String;)V

    .line 871
    .local v0, "contentBuilder":Lorg/jivesoftware/smackx/packet/VCard$ContentBuilder;
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    goto :goto_0
.end method

.method private appendTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "attrValue"    # Ljava/lang/String;
    .param p4, "hasContent"    # Z
    .param p5, "builder"    # Lorg/jivesoftware/smackx/packet/VCard$ContentBuilder;

    .prologue
    const/16 v2, 0x27

    .line 845
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    if-eqz p2, :cond_0

    .line 847
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 850
    :cond_0
    if-eqz p4, :cond_1

    .line 851
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 852
    invoke-interface {p5}, Lorg/jivesoftware/smackx/packet/VCard$ContentBuilder;->addTagContent()V

    .line 853
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuilder;

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    :goto_0
    return-void

    .line 856
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuilder;

    const-string v1, "/>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private appendTag(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "hasContent"    # Z
    .param p3, "builder"    # Lorg/jivesoftware/smackx/packet/VCard$ContentBuilder;

    .prologue
    const/4 v2, 0x0

    .line 861
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    .line 862
    return-void
.end method

.method private buildActualContent()V
    .locals 2

    .prologue
    .line 731
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    # invokes: Lorg/jivesoftware/smackx/packet/VCard;->hasNameField()Z
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$1(Lorg/jivesoftware/smackx/packet/VCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendN()V

    .line 735
    :cond_0
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendOrganization()V

    .line 736
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendGenericFields()V

    .line 737
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendPhoto()V

    .line 739
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    # getter for: Lorg/jivesoftware/smackx/packet/VCard;->emailWork:Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$2(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WORK"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendEmail(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    # getter for: Lorg/jivesoftware/smackx/packet/VCard;->emailHome:Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$3(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HOME"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendEmail(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    # getter for: Lorg/jivesoftware/smackx/packet/VCard;->workPhones:Ljava/util/Map;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$4(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "WORK"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendPhones(Ljava/util/Map;Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    # getter for: Lorg/jivesoftware/smackx/packet/VCard;->homePhones:Ljava/util/Map;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$5(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "HOME"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendPhones(Ljava/util/Map;Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    # getter for: Lorg/jivesoftware/smackx/packet/VCard;->workAddr:Ljava/util/Map;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$6(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "WORK"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendAddress(Ljava/util/Map;Ljava/lang/String;)V

    .line 746
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    # getter for: Lorg/jivesoftware/smackx/packet/VCard;->homeAddr:Ljava/util/Map;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$7(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "HOME"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendAddress(Ljava/util/Map;Ljava/lang/String;)V

    .line 747
    return-void
.end method


# virtual methods
.method public write()V
    .locals 6

    .prologue
    .line 723
    const-string v1, "vCard"

    const-string v2, "xmlns"

    const-string v3, "vcard-temp"

    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    # invokes: Lorg/jivesoftware/smackx/packet/VCard;->hasContent()Z
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$0(Lorg/jivesoftware/smackx/packet/VCard;)Z

    move-result v4

    new-instance v5, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$1;

    invoke-direct {v5, p0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$1;-><init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    .line 728
    return-void
.end method
