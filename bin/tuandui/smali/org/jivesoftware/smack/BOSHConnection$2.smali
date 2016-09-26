.class Lorg/jivesoftware/smack/BOSHConnection$2;
.super Ljava/io/Writer;
.source "BOSHConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/BOSHConnection;->initDebugger()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/BOSHConnection;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/BOSHConnection;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smack/BOSHConnection$2;->this$0:Lorg/jivesoftware/smack/BOSHConnection;

    .line 587
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 589
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 590
    return-void
.end method

.method public write([CII)V
    .locals 0
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 588
    return-void
.end method
