.class Lorg/jivesoftware/smack/AndroidConnectionConfiguration$1DnsSrvLookupRunnable;
.super Ljava/lang/Object;
.source "AndroidConnectionConfiguration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/AndroidConnectionConfiguration;->AndroidInit(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DnsSrvLookupRunnable"
.end annotation


# instance fields
.field addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/util/dns/HostAddress;",
            ">;"
        }
    .end annotation
.end field

.field serviceName:Ljava/lang/String;

.field final synthetic this$0:Lorg/jivesoftware/smack/AndroidConnectionConfiguration;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/AndroidConnectionConfiguration;Ljava/lang/String;)V
    .locals 0
    .param p2, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/jivesoftware/smack/AndroidConnectionConfiguration$1DnsSrvLookupRunnable;->this$0:Lorg/jivesoftware/smack/AndroidConnectionConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lorg/jivesoftware/smack/AndroidConnectionConfiguration$1DnsSrvLookupRunnable;->serviceName:Ljava/lang/String;

    .line 83
    return-void
.end method


# virtual methods
.method public getHostAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/util/dns/HostAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jivesoftware/smack/AndroidConnectionConfiguration$1DnsSrvLookupRunnable;->addresses:Ljava/util/List;

    return-object v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/jivesoftware/smack/AndroidConnectionConfiguration$1DnsSrvLookupRunnable;->serviceName:Ljava/lang/String;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/DNSUtil;->resolveXMPPDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/AndroidConnectionConfiguration$1DnsSrvLookupRunnable;->addresses:Ljava/util/List;

    .line 88
    return-void
.end method
