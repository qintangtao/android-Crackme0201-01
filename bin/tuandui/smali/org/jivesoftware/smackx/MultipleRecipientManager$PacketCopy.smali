.class Lorg/jivesoftware/smackx/MultipleRecipientManager$PacketCopy;
.super Lorg/jivesoftware/smack/packet/Packet;
.source "MultipleRecipientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/MultipleRecipientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PacketCopy"
.end annotation


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 343
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Packet;-><init>()V

    .line 344
    iput-object p1, p0, Lorg/jivesoftware/smackx/MultipleRecipientManager$PacketCopy;->text:Ljava/lang/String;

    .line 345
    return-void
.end method


# virtual methods
.method public toXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lorg/jivesoftware/smackx/MultipleRecipientManager$PacketCopy;->text:Ljava/lang/String;

    return-object v0
.end method
