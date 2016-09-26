.class Lorg/jivesoftware/smackx/carbons/CarbonManager$1;
.super Ljava/lang/Object;
.source "CarbonManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionCreationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/carbons/CarbonManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public connectionCreated(Lorg/jivesoftware/smack/Connection;)V
    .locals 0
    .param p1, "connection"    # Lorg/jivesoftware/smack/Connection;

    .prologue
    .line 54
    invoke-static {p1}, Lorg/jivesoftware/smackx/carbons/CarbonManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/carbons/CarbonManager;

    .line 55
    return-void
.end method
