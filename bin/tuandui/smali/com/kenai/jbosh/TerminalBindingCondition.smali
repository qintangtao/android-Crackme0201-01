.class final Lcom/kenai/jbosh/TerminalBindingCondition;
.super Ljava/lang/Object;
.source "TerminalBindingCondition.java"


# static fields
.field static final BAD_REQUEST:Lcom/kenai/jbosh/TerminalBindingCondition;

.field private static final CODE_TO_INSTANCE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/kenai/jbosh/TerminalBindingCondition;",
            ">;"
        }
    .end annotation
.end field

.field private static final COND_TO_INSTANCE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kenai/jbosh/TerminalBindingCondition;",
            ">;"
        }
    .end annotation
.end field

.field static final HOST_GONE:Lcom/kenai/jbosh/TerminalBindingCondition;

.field static final HOST_UNKNOWN:Lcom/kenai/jbosh/TerminalBindingCondition;

.field static final IMPROPER_ADDRESSING:Lcom/kenai/jbosh/TerminalBindingCondition;

.field static final INTERNAL_SERVER_ERROR:Lcom/kenai/jbosh/TerminalBindingCondition;

.field static final ITEM_NOT_FOUND:Lcom/kenai/jbosh/TerminalBindingCondition;

.field static final OTHER_REQUEST:Lcom/kenai/jbosh/TerminalBindingCondition;

.field static final POLICY_VIOLATION:Lcom/kenai/jbosh/TerminalBindingCondition;

.field static final REMOTE_CONNECTION_FAILED:Lcom/kenai/jbosh/TerminalBindingCondition;

.field static final REMOTE_STREAM_ERROR:Lcom/kenai/jbosh/TerminalBindingCondition;

.field static final SEE_OTHER_URI:Lcom/kenai/jbosh/TerminalBindingCondition;

.field static final SYSTEM_SHUTDOWN:Lcom/kenai/jbosh/TerminalBindingCondition;

.field static final UNDEFINED_CONDITION:Lcom/kenai/jbosh/TerminalBindingCondition;


# instance fields
.field private final cond:Ljava/lang/String;

.field private final msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kenai/jbosh/TerminalBindingCondition;->COND_TO_INSTANCE:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kenai/jbosh/TerminalBindingCondition;->CODE_TO_INSTANCE:Ljava/util/Map;

    .line 40
    const-string v0, "bad-request"

    const-string v1, "The format of an HTTP header or binding element received from the client is unacceptable (e.g., syntax error)."

    .line 42
    const/16 v2, 0x190

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 40
    invoke-static {v0, v1, v2}, Lcom/kenai/jbosh/TerminalBindingCondition;->createWithCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/kenai/jbosh/TerminalBindingCondition;

    move-result-object v0

    .line 39
    sput-object v0, Lcom/kenai/jbosh/TerminalBindingCondition;->BAD_REQUEST:Lcom/kenai/jbosh/TerminalBindingCondition;

    .line 45
    const-string v0, "host-gone"

    const-string v1, "The target domain specified in the \'to\' attribute or the target host or port specified in the \'route\' attribute is no longer serviced by the connection manager."

    invoke-static {v0, v1}, Lcom/kenai/jbosh/TerminalBindingCondition;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/TerminalBindingCondition;

    move-result-object v0

    .line 44
    sput-object v0, Lcom/kenai/jbosh/TerminalBindingCondition;->HOST_GONE:Lcom/kenai/jbosh/TerminalBindingCondition;

    .line 50
    const-string v0, "host-unknown"

    const-string v1, "The target domain specified in the \'to\' attribute or the target host or port specified in the \'route\' attribute is unknown to the connection manager."

    invoke-static {v0, v1}, Lcom/kenai/jbosh/TerminalBindingCondition;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/TerminalBindingCondition;

    move-result-object v0

    .line 49
    sput-object v0, Lcom/kenai/jbosh/TerminalBindingCondition;->HOST_UNKNOWN:Lcom/kenai/jbosh/TerminalBindingCondition;

    .line 55
    const-string v0, "improper-addressing"

    const-string v1, "The initialization element lacks a \'to\' or \'route\' attribute (or the attribute has no value) but the connection manager requires one."

    invoke-static {v0, v1}, Lcom/kenai/jbosh/TerminalBindingCondition;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/TerminalBindingCondition;

    move-result-object v0

    .line 54
    sput-object v0, Lcom/kenai/jbosh/TerminalBindingCondition;->IMPROPER_ADDRESSING:Lcom/kenai/jbosh/TerminalBindingCondition;

    .line 60
    const-string v0, "internal-server-error"

    const-string v1, "The connection manager has experienced an internal error that prevents it from servicing the request."

    invoke-static {v0, v1}, Lcom/kenai/jbosh/TerminalBindingCondition;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/TerminalBindingCondition;

    move-result-object v0

    .line 59
    sput-object v0, Lcom/kenai/jbosh/TerminalBindingCondition;->INTERNAL_SERVER_ERROR:Lcom/kenai/jbosh/TerminalBindingCondition;

    .line 65
    const-string v0, "item-not-found"

    const-string v1, "(1) \'sid\' is not valid, (2) \'stream\' is not valid, (3) \'rid\' is larger than the upper limit of the expected window, (4) connection manager is unable to resend response, (5) \'key\' sequence is invalid."

    .line 69
    const/16 v2, 0x194

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 65
    invoke-static {v0, v1, v2}, Lcom/kenai/jbosh/TerminalBindingCondition;->createWithCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/kenai/jbosh/TerminalBindingCondition;

    move-result-object v0

    .line 64
    sput-object v0, Lcom/kenai/jbosh/TerminalBindingCondition;->ITEM_NOT_FOUND:Lcom/kenai/jbosh/TerminalBindingCondition;

    .line 72
    const-string v0, "other-request"

    const-string v1, "Another request being processed at the same time as this request caused the session to terminate."

    invoke-static {v0, v1}, Lcom/kenai/jbosh/TerminalBindingCondition;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/TerminalBindingCondition;

    move-result-object v0

    .line 71
    sput-object v0, Lcom/kenai/jbosh/TerminalBindingCondition;->OTHER_REQUEST:Lcom/kenai/jbosh/TerminalBindingCondition;

    .line 76
    const-string v0, "policy-violation"

    const-string v1, "The client has broken the session rules (polling too frequently, requesting too frequently, sending too many simultaneous requests)."

    .line 79
    const/16 v2, 0x193

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 76
    invoke-static {v0, v1, v2}, Lcom/kenai/jbosh/TerminalBindingCondition;->createWithCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/kenai/jbosh/TerminalBindingCondition;

    move-result-object v0

    .line 75
    sput-object v0, Lcom/kenai/jbosh/TerminalBindingCondition;->POLICY_VIOLATION:Lcom/kenai/jbosh/TerminalBindingCondition;

    .line 82
    const-string v0, "remote-connection-failed"

    const-string v1, "The connection manager was unable to connect to, or unable to connect securely to, or has lost its connection to, the server."

    invoke-static {v0, v1}, Lcom/kenai/jbosh/TerminalBindingCondition;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/TerminalBindingCondition;

    move-result-object v0

    .line 81
    sput-object v0, Lcom/kenai/jbosh/TerminalBindingCondition;->REMOTE_CONNECTION_FAILED:Lcom/kenai/jbosh/TerminalBindingCondition;

    .line 87
    const-string v0, "remote-stream-error"

    const-string v1, "Encapsulated transport protocol error."

    invoke-static {v0, v1}, Lcom/kenai/jbosh/TerminalBindingCondition;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/TerminalBindingCondition;

    move-result-object v0

    .line 86
    sput-object v0, Lcom/kenai/jbosh/TerminalBindingCondition;->REMOTE_STREAM_ERROR:Lcom/kenai/jbosh/TerminalBindingCondition;

    .line 91
    const-string v0, "see-other-uri"

    const-string v1, "The connection manager does not operate at this URI (e.g., the connection manager accepts only SSL or TLS connections at some https: URI rather than the http: URI requested by the client)."

    invoke-static {v0, v1}, Lcom/kenai/jbosh/TerminalBindingCondition;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/TerminalBindingCondition;

    move-result-object v0

    .line 90
    sput-object v0, Lcom/kenai/jbosh/TerminalBindingCondition;->SEE_OTHER_URI:Lcom/kenai/jbosh/TerminalBindingCondition;

    .line 97
    const-string v0, "system-shutdown"

    const-string v1, "The connection manager is being shut down. All active HTTP sessions are being terminated. No new sessions can be created."

    invoke-static {v0, v1}, Lcom/kenai/jbosh/TerminalBindingCondition;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/TerminalBindingCondition;

    move-result-object v0

    .line 96
    sput-object v0, Lcom/kenai/jbosh/TerminalBindingCondition;->SYSTEM_SHUTDOWN:Lcom/kenai/jbosh/TerminalBindingCondition;

    .line 102
    const-string v0, "undefined-condition"

    const-string v1, "Unknown or undefined error condition."

    invoke-static {v0, v1}, Lcom/kenai/jbosh/TerminalBindingCondition;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/TerminalBindingCondition;

    move-result-object v0

    .line 101
    sput-object v0, Lcom/kenai/jbosh/TerminalBindingCondition;->UNDEFINED_CONDITION:Lcom/kenai/jbosh/TerminalBindingCondition;

    .line 103
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "condition"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/kenai/jbosh/TerminalBindingCondition;->cond:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Lcom/kenai/jbosh/TerminalBindingCondition;->msg:Ljava/lang/String;

    .line 123
    return-void
.end method

.method private static create(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/TerminalBindingCondition;
    .locals 1
    .param p0, "condition"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/kenai/jbosh/TerminalBindingCondition;->createWithCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/kenai/jbosh/TerminalBindingCondition;

    move-result-object v0

    return-object v0
.end method

.method private static createWithCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/kenai/jbosh/TerminalBindingCondition;
    .locals 4
    .param p0, "condition"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/Integer;

    .prologue
    .line 141
    if-nez p0, :cond_0

    .line 142
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 143
    const-string v2, "condition may not be null"

    .line 142
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_0
    if-nez p1, :cond_1

    .line 146
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 147
    const-string v2, "message may not be null"

    .line 146
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :cond_1
    sget-object v1, Lcom/kenai/jbosh/TerminalBindingCondition;->COND_TO_INSTANCE:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 150
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Multiple definitions of condition: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_2
    new-instance v0, Lcom/kenai/jbosh/TerminalBindingCondition;

    invoke-direct {v0, p0, p1}, Lcom/kenai/jbosh/TerminalBindingCondition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .local v0, "result":Lcom/kenai/jbosh/TerminalBindingCondition;
    sget-object v1, Lcom/kenai/jbosh/TerminalBindingCondition;->COND_TO_INSTANCE:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    if-eqz p2, :cond_4

    .line 157
    sget-object v1, Lcom/kenai/jbosh/TerminalBindingCondition;->CODE_TO_INSTANCE:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 158
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Multiple definitions of code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :cond_3
    sget-object v1, Lcom/kenai/jbosh/TerminalBindingCondition;->CODE_TO_INSTANCE:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_4
    return-object v0
.end method

.method static forHTTPResponseCode(I)Lcom/kenai/jbosh/TerminalBindingCondition;
    .locals 2
    .param p0, "httpRespCode"    # I

    .prologue
    .line 187
    sget-object v0, Lcom/kenai/jbosh/TerminalBindingCondition;->CODE_TO_INSTANCE:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kenai/jbosh/TerminalBindingCondition;

    return-object v0
.end method

.method static forString(Ljava/lang/String;)Lcom/kenai/jbosh/TerminalBindingCondition;
    .locals 1
    .param p0, "condStr"    # Ljava/lang/String;

    .prologue
    .line 175
    sget-object v0, Lcom/kenai/jbosh/TerminalBindingCondition;->COND_TO_INSTANCE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kenai/jbosh/TerminalBindingCondition;

    return-object v0
.end method


# virtual methods
.method getCondition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/kenai/jbosh/TerminalBindingCondition;->cond:Ljava/lang/String;

    return-object v0
.end method

.method getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/kenai/jbosh/TerminalBindingCondition;->msg:Ljava/lang/String;

    return-object v0
.end method
