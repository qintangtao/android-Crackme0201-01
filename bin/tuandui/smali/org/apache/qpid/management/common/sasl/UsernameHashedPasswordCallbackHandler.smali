.class public Lorg/apache/qpid/management/common/sasl/UsernameHashedPasswordCallbackHandler;
.super Ljava/lang/Object;
.source "UsernameHashedPasswordCallbackHandler.java"

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/qpid/management/common/sasl/UsernameHashedPasswordCallbackHandler;->user:Ljava/lang/String;

    .line 42
    invoke-static {p2}, Lorg/apache/qpid/management/common/sasl/UsernameHashedPasswordCallbackHandler;->getHash(Ljava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/qpid/management/common/sasl/UsernameHashedPasswordCallbackHandler;->pwchars:[C

    .line 43
    return-void
.end method

.method private clearPassword()V
    .locals 3

    .prologue
    .line 69
    iget-object v1, p0, Lorg/apache/qpid/management/common/sasl/UsernameHashedPasswordCallbackHandler;->pwchars:[C

    if-eqz v1, :cond_0

    .line 71
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/qpid/management/common/sasl/UsernameHashedPasswordCallbackHandler;->pwchars:[C

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 75
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/qpid/management/common/sasl/UsernameHashedPasswordCallbackHandler;->pwchars:[C

    .line 77
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 73
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/apache/qpid/management/common/sasl/UsernameHashedPasswordCallbackHandler;->pwchars:[C

    const/4 v2, 0x0

    aput-char v2, v1, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getHash(Ljava/lang/String;)[C
    .locals 10
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 86
    const-string v8, "utf-8"

    invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 88
    .local v1, "data":[B
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 90
    .local v6, "md":Ljava/security/MessageDigest;
    array-length v9, v1

    move v8, v7

    :goto_0
    if-lt v8, v9, :cond_0

    .line 95
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 97
    .local v2, "digest":[B
    array-length v8, v2

    new-array v3, v8, [C

    .line 99
    .local v3, "hash":[C
    const/4 v4, 0x0

    .line 100
    .local v4, "index":I
    array-length v8, v2

    move v5, v4

    .end local v4    # "index":I
    .local v5, "index":I
    :goto_1
    if-lt v7, v8, :cond_1

    .line 105
    return-object v3

    .line 90
    .end local v2    # "digest":[B
    .end local v3    # "hash":[C
    .end local v5    # "index":I
    :cond_0
    aget-byte v0, v1, v8

    .line 92
    .local v0, "b":B
    invoke-virtual {v6, v0}, Ljava/security/MessageDigest;->update(B)V

    .line 90
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 100
    .end local v0    # "b":B
    .restart local v2    # "digest":[B
    .restart local v3    # "hash":[C
    .restart local v5    # "index":I
    :cond_1
    aget-byte v0, v2, v7

    .line 102
    .restart local v0    # "b":B
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    int-to-char v9, v0

    aput-char v9, v3, v5

    .line 100
    add-int/lit8 v7, v7, 0x1

    move v5, v4

    .end local v4    # "index":I
    .restart local v5    # "index":I
    goto :goto_1
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/apache/qpid/management/common/sasl/UsernameHashedPasswordCallbackHandler;->clearPassword()V

    .line 82
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
    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_0

    .line 64
    return-void

    .line 49
    :cond_0
    aget-object v3, p1, v0

    instance-of v3, v3, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;

    if-eqz v3, :cond_1

    .line 51
    aget-object v1, p1, v0

    check-cast v1, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;

    .line 52
    .local v1, "ncb":Lorg/apache/harmony/javax/security/auth/callback/NameCallback;
    iget-object v3, p0, Lorg/apache/qpid/management/common/sasl/UsernameHashedPasswordCallbackHandler;->user:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;->setName(Ljava/lang/String;)V

    .line 47
    .end local v1    # "ncb":Lorg/apache/harmony/javax/security/auth/callback/NameCallback;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_1
    aget-object v3, p1, v0

    instance-of v3, v3, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;

    if-eqz v3, :cond_2

    .line 56
    aget-object v2, p1, v0

    check-cast v2, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;

    .line 57
    .local v2, "pcb":Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;
    iget-object v3, p0, Lorg/apache/qpid/management/common/sasl/UsernameHashedPasswordCallbackHandler;->pwchars:[C

    invoke-virtual {v2, v3}, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->setPassword([C)V

    goto :goto_1

    .line 61
    .end local v2    # "pcb":Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;
    :cond_2
    new-instance v3, Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException;

    aget-object v4, p1, v0

    invoke-direct {v3, v4}, Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException;-><init>(Lorg/apache/harmony/javax/security/auth/callback/Callback;)V

    throw v3
.end method
