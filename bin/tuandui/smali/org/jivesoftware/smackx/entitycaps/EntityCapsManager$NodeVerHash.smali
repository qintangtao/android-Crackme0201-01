.class public Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;
.super Ljava/lang/Object;
.source "EntityCapsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NodeVerHash"
.end annotation


# instance fields
.field private hash:Ljava/lang/String;

.field private node:Ljava/lang/String;

.field private nodeVer:Ljava/lang/String;

.field private ver:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "ver"    # Ljava/lang/String;
    .param p3, "hash"    # Ljava/lang/String;

    .prologue
    .line 678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    iput-object p1, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;->node:Ljava/lang/String;

    .line 680
    iput-object p2, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;->ver:Ljava/lang/String;

    .line 681
    iput-object p3, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;->hash:Ljava/lang/String;

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;->nodeVer:Ljava/lang/String;

    .line 683
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;->nodeVer:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getNode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;->node:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;->nodeVer:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;->ver:Ljava/lang/String;

    return-object v0
.end method
