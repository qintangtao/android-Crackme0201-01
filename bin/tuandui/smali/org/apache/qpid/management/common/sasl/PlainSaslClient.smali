.class public Lorg/apache/qpid/management/common/sasl/PlainSaslClient;
.super Ljava/lang/Object;
.source "PlainSaslClient.java"

# interfaces
.implements Lorg/apache/harmony/javax/security/sasl/SaslClient;


# static fields
.field private static SEPARATOR:B


# instance fields
.field private authenticationID:Ljava/lang/String;

.field private authorizationID:Ljava/lang/String;

.field private cbh:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

.field private completed:Z

.field private password:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-byte v0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->SEPARATOR:B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V
    .locals 3
    .param p1, "authorizationID"    # Ljava/lang/String;
    .param p2, "cbh"    # Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v1, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->completed:Z

    .line 47
    iput-object p2, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->cbh:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    .line 48
    invoke-direct {p0}, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->getUserInfo()[Ljava/lang/Object;

    move-result-object v0

    .line 49
    .local v0, "userInfo":[Ljava/lang/Object;
    iput-object p1, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->authorizationID:Ljava/lang/String;

    .line 50
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->authenticationID:Ljava/lang/String;

    .line 51
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [B

    iput-object v1, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    .line 52
    iget-object v1, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->authenticationID:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    if-nez v1, :cond_1

    .line 54
    :cond_0
    new-instance v1, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v2, "PLAIN: authenticationID and password must be specified"

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_1
    return-void
.end method

.method private clearPassword()V
    .locals 3

    .prologue
    .line 158
    iget-object v1, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    if-eqz v1, :cond_0

    .line 160
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 164
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    .line 166
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 162
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getUserInfo()[Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 184
    :try_start_0
    new-instance v1, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;

    const-string v6, "PLAIN authentication id: "

    invoke-direct {v1, v6}, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;-><init>(Ljava/lang/String;)V

    .line 185
    .local v1, "nameCb":Lorg/apache/harmony/javax/security/auth/callback/NameCallback;
    new-instance v2, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;

    const-string v6, "PLAIN password: "

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7}, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;-><init>(Ljava/lang/String;Z)V

    .line 186
    .local v2, "passwordCb":Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;
    iget-object v6, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->cbh:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    const/4 v7, 0x2

    new-array v7, v7, [Lorg/apache/harmony/javax/security/auth/callback/Callback;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-interface {v6, v7}, Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;->handle([Lorg/apache/harmony/javax/security/auth/callback/Callback;)V

    .line 187
    invoke-virtual {v1}, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;->getName()Ljava/lang/String;

    move-result-object v5

    .line 188
    .local v5, "userid":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->getPassword()[C

    move-result-object v4

    .line 190
    .local v4, "pwchars":[C
    if-eqz v4, :cond_0

    .line 192
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([C)V

    const-string v7, "UTF8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 193
    .local v3, "pwbytes":[B
    invoke-virtual {v2}, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->clearPassword()V

    .line 199
    :goto_0
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v6

    .line 197
    .end local v3    # "pwbytes":[B
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "pwbytes":[B
    goto :goto_0

    .line 201
    .end local v1    # "nameCb":Lorg/apache/harmony/javax/security/auth/callback/NameCallback;
    .end local v2    # "passwordCb":Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;
    .end local v3    # "pwbytes":[B
    .end local v4    # "pwchars":[C
    .end local v5    # "userid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v7, "Cannot get password"

    invoke-direct {v6, v7, v0}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 205
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 207
    .local v0, "e":Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException;
    new-instance v6, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v7, "Cannot get userid/password"

    invoke-direct {v6, v7, v0}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method


# virtual methods
.method public dispose()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0}, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->clearPassword()V

    .line 171
    return-void
.end method

.method public evaluateChallenge([B)[B
    .locals 9
    .param p1, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 60
    iget-boolean v7, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->completed:Z

    if-eqz v7, :cond_0

    .line 62
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "PLAIN: authentication already completed"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 65
    :cond_0
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->completed:Z

    .line 69
    :try_start_0
    iget-object v7, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->authorizationID:Ljava/lang/String;

    if-nez v7, :cond_2

    const/4 v1, 0x0

    .line 70
    .local v1, "authzid":[B
    :goto_0
    iget-object v7, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->authenticationID:Ljava/lang/String;

    const-string v8, "UTF8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 73
    .local v0, "authnid":[B
    iget-object v7, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    array-length v7, v7

    .line 74
    array-length v8, v0

    .line 73
    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x2

    .line 76
    if-eqz v1, :cond_1

    array-length v6, v1

    .line 73
    :cond_1
    add-int/2addr v6, v7

    .line 72
    new-array v3, v6, [B

    .line 78
    .local v3, "response":[B
    const/4 v4, 0x0

    .line 79
    .local v4, "size":I
    if-eqz v1, :cond_3

    .line 80
    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v6, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    array-length v4, v1

    move v5, v4

    .line 83
    .end local v4    # "size":I
    .local v5, "size":I
    :goto_1
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "size":I
    .restart local v4    # "size":I
    sget-byte v6, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->SEPARATOR:B

    aput-byte v6, v3, v5

    .line 84
    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v0, v6, v3, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    array-length v6, v0

    add-int/2addr v4, v6

    .line 86
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "size":I
    .restart local v5    # "size":I
    sget-byte v6, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->SEPARATOR:B

    aput-byte v6, v3, v4

    .line 87
    iget-object v6, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    array-length v8, v8

    invoke-static {v6, v7, v3, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    invoke-direct {p0}, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->clearPassword()V

    .line 89
    return-object v3

    .line 69
    .end local v0    # "authnid":[B
    .end local v1    # "authzid":[B
    .end local v3    # "response":[B
    .end local v5    # "size":I
    :cond_2
    iget-object v7, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->authorizationID:Ljava/lang/String;

    const-string v8, "UTF8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 90
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v7, "PLAIN: Cannot get UTF-8 encoding of ids"

    invoke-direct {v6, v7, v2}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "authnid":[B
    .restart local v1    # "authzid":[B
    .restart local v3    # "response":[B
    .restart local v4    # "size":I
    :cond_3
    move v5, v4

    .end local v4    # "size":I
    .restart local v5    # "size":I
    goto :goto_1
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->clearPassword()V

    .line 176
    return-void
.end method

.method public getMechanismName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string v0, "PLAIN"

    return-object v0
.end method

.method public getNegotiatedProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "propName"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-boolean v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->completed:Z

    if-eqz v0, :cond_1

    .line 140
    const-string v0, "javax.security.sasl.qop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "auth"

    .line 146
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 151
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PLAIN: authentication not completed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasInitialResponse()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->completed:Z

    return v0
.end method

.method public unwrap([BII)[B
    .locals 2
    .param p1, "incoming"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 113
    iget-boolean v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->completed:Z

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PLAIN: this mechanism supports neither integrity nor privacy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PLAIN: authentication not completed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public wrap([BII)[B
    .locals 2
    .param p1, "outgoing"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 124
    iget-boolean v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->completed:Z

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PLAIN: this mechanism supports neither integrity nor privacy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PLAIN: authentication not completed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
