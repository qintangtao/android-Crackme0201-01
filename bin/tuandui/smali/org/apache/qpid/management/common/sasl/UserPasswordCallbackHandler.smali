.class public Lorg/apache/qpid/management/common/sasl/UserPasswordCallbackHandler;
.super Ljava/lang/Object;
.source "UserPasswordCallbackHandler.java"

# interfaces
.implements Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;


# instance fields
.field private pwchars:[C

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/apache/qpid/management/common/sasl/UserPasswordCallbackHandler;->user:Ljava/lang/String;

    .line 37
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/qpid/management/common/sasl/UserPasswordCallbackHandler;->pwchars:[C

    .line 38
    return-void
.end method

.method private clearPassword()V
    .locals 3

    .prologue
    .line 63
    iget-object v1, p0, Lorg/apache/qpid/management/common/sasl/UserPasswordCallbackHandler;->pwchars:[C

    if-eqz v1, :cond_0

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/qpid/management/common/sasl/UserPasswordCallbackHandler;->pwchars:[C

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 69
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/qpid/management/common/sasl/UserPasswordCallbackHandler;->pwchars:[C

    .line 71
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 67
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/apache/qpid/management/common/sasl/UserPasswordCallbackHandler;->pwchars:[C

    const/4 v2, 0x0

    aput-char v2, v1, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/apache/qpid/management/common/sasl/UserPasswordCallbackHandler;->clearPassword()V

    .line 76
    return-void
.end method

.method public handle([Lorg/apache/harmony/javax/security/auth/callback/Callback;)V
    .locals 5
    .param p1, "callbacks"    # [Lorg/apache/harmony/javax/security/auth/callback/Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException;
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_0

    .line 59
    return-void

    .line 44
    :cond_0
    aget-object v3, p1, v0

    instance-of v3, v3, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;

    if-eqz v3, :cond_1

    .line 46
    aget-object v1, p1, v0

    check-cast v1, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;

    .line 47
    .local v1, "ncb":Lorg/apache/harmony/javax/security/auth/callback/NameCallback;
    iget-object v3, p0, Lorg/apache/qpid/management/common/sasl/UserPasswordCallbackHandler;->user:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;->setName(Ljava/lang/String;)V

    .line 42
    .end local v1    # "ncb":Lorg/apache/harmony/javax/security/auth/callback/NameCallback;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_1
    aget-object v3, p1, v0

    instance-of v3, v3, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;

    if-eqz v3, :cond_2

    .line 51
    aget-object v2, p1, v0

    check-cast v2, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;

    .line 52
    .local v2, "pcb":Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;
    iget-object v3, p0, Lorg/apache/qpid/management/common/sasl/UserPasswordCallbackHandler;->pwchars:[C

    invoke-virtual {v2, v3}, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->setPassword([C)V

    goto :goto_1

    .line 56
    .end local v2    # "pcb":Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;
    :cond_2
    new-instance v3, Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException;

    aget-object v4, p1, v0

    invoke-direct {v3, v4}, Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException;-><init>(Lorg/apache/harmony/javax/security/auth/callback/Callback;)V

    throw v3
.end method
