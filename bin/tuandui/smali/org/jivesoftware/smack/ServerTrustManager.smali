.class Lorg/jivesoftware/smack/ServerTrustManager;
.super Ljava/lang/Object;
.source "ServerTrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;
    }
.end annotation


# static fields
.field private static cnPattern:Ljava/util/regex/Pattern;

.field private static stores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;",
            "Ljava/security/KeyStore;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private configuration:Lorg/jivesoftware/smack/ConnectionConfiguration;

.field private server:Ljava/lang/String;

.field private trustStore:Ljava/security/KeyStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "(?i)(cn=)([^,]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/ServerTrustManager;->cnPattern:Ljava/util/regex/Pattern;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/ServerTrustManager;->stores:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smack/ConnectionConfiguration;)V
    .locals 9
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "configuration"    # Lorg/jivesoftware/smack/ConnectionConfiguration;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p2, p0, Lorg/jivesoftware/smack/ServerTrustManager;->configuration:Lorg/jivesoftware/smack/ConnectionConfiguration;

    .line 60
    iput-object p1, p0, Lorg/jivesoftware/smack/ServerTrustManager;->server:Ljava/lang/String;

    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 64
    .local v4, "password":[C
    sget-object v6, Lorg/jivesoftware/smack/ServerTrustManager;->stores:Ljava/util/Map;

    monitor-enter v6

    .line 65
    :try_start_0
    new-instance v3, Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;

    invoke-virtual {p2}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getTruststoreType()Ljava/lang/String;

    move-result-object v5

    .line 66
    invoke-virtual {p2}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getTruststorePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getTruststorePassword()Ljava/lang/String;

    move-result-object v8

    .line 65
    invoke-direct {v3, v5, v7, v8}, Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .local v3, "options":Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;
    sget-object v5, Lorg/jivesoftware/smack/ServerTrustManager;->stores:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 68
    sget-object v5, Lorg/jivesoftware/smack/ServerTrustManager;->stores:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/KeyStore;

    iput-object v5, p0, Lorg/jivesoftware/smack/ServerTrustManager;->trustStore:Ljava/security/KeyStore;

    .line 98
    :goto_0
    iget-object v5, p0, Lorg/jivesoftware/smack/ServerTrustManager;->trustStore:Ljava/security/KeyStore;

    if-nez v5, :cond_0

    .line 100
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setVerifyRootCAEnabled(Z)V

    .line 64
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    return-void

    .line 71
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    iput-object v5, p0, Lorg/jivesoftware/smack/ServerTrustManager;->trustStore:Ljava/security/KeyStore;

    .line 72
    invoke-virtual {v3}, Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;->getPassword()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 73
    invoke-virtual {v3}, Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 76
    :cond_2
    invoke-virtual {v3}, Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;->getPath()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    .line 77
    iget-object v5, p0, Lorg/jivesoftware/smack/ServerTrustManager;->trustStore:Ljava/security/KeyStore;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    :goto_1
    if-eqz v1, :cond_3

    .line 90
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    :cond_3
    :goto_2
    :try_start_3
    sget-object v5, Lorg/jivesoftware/smack/ServerTrustManager;->stores:Ljava/util/Map;

    iget-object v7, p0, Lorg/jivesoftware/smack/ServerTrustManager;->trustStore:Ljava/security/KeyStore;

    invoke-interface {v5, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 64
    .end local v3    # "options":Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 80
    .restart local v3    # "options":Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;
    :cond_4
    :try_start_4
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 81
    .end local v1    # "in":Ljava/io/InputStream;
    .local v2, "in":Ljava/io/InputStream;
    :try_start_5
    iget-object v5, p0, Lorg/jivesoftware/smack/ServerTrustManager;->trustStore:Ljava/security/KeyStore;

    invoke-virtual {v5, v2, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v1, v2

    .line 84
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    goto :goto_1

    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    const/4 v5, 0x0

    :try_start_6
    iput-object v5, p0, Lorg/jivesoftware/smack/ServerTrustManager;->trustStore:Ljava/security/KeyStore;

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 88
    if-eqz v1, :cond_3

    .line 90
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 91
    :catch_1
    move-exception v5

    goto :goto_2

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    .line 88
    :goto_4
    if-eqz v1, :cond_5

    .line 90
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 95
    :cond_5
    :goto_5
    :try_start_9
    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catch_2
    move-exception v7

    goto :goto_5

    :catch_3
    move-exception v5

    goto :goto_2

    .line 87
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :catchall_2
    move-exception v5

    move-object v1, v2

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    goto :goto_4

    .line 84
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    goto :goto_3
.end method

.method public static getPeerIdentity(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .locals 4
    .param p0, "x509Certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    invoke-static {p0}, Lorg/jivesoftware/smack/ServerTrustManager;->getSubjectAlternativeNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v2

    .line 216
    .local v2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 217
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "name":Ljava/lang/String;
    sget-object v3, Lorg/jivesoftware/smack/ServerTrustManager;->cnPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 219
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 223
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .restart local v2    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private static getSubjectAlternativeNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .locals 3
    .param p0, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v2, "identities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v0

    .line 242
    .local v0, "altNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    if-nez v0, :cond_0

    .line 243
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 278
    .end local v0    # "altNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    .end local v2    # "identities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v2

    .line 275
    .restart local v2    # "identities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 276
    .local v1, "e":Ljava/security/cert/CertificateParsingException;
    invoke-virtual {v1}, Ljava/security/cert/CertificateParsingException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # [Ljava/security/cert/X509Certificate;
    .param p2, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 110
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 16
    .param p1, "x509Certificates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 115
    move-object/from16 v0, p1

    array-length v4, v0

    .line 117
    .local v4, "nSize":I
    const/4 v13, 0x0

    aget-object v13, p1, v13

    invoke-static {v13}, Lorg/jivesoftware/smack/ServerTrustManager;->getPeerIdentity(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v5

    .line 119
    .local v5, "peerIdentities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jivesoftware/smack/ServerTrustManager;->configuration:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v13}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isVerifyChainEnabled()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 123
    const/4 v8, 0x0

    .line 124
    .local v8, "principalLast":Ljava/security/Principal;
    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-gez v3, :cond_2

    .line 149
    .end local v3    # "i":I
    .end local v8    # "principalLast":Ljava/security/Principal;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jivesoftware/smack/ServerTrustManager;->configuration:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v13}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isVerifyRootCAEnabled()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 152
    const/4 v11, 0x0

    .line 154
    .local v11, "trusted":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jivesoftware/smack/ServerTrustManager;->trustStore:Ljava/security/KeyStore;

    add-int/lit8 v14, v4, -0x1

    aget-object v14, p1, v14

    invoke-virtual {v13, v14}, Ljava/security/KeyStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_5

    const/4 v11, 0x1

    .line 155
    :goto_1
    if-nez v11, :cond_1

    const/4 v13, 0x1

    if-ne v4, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jivesoftware/smack/ServerTrustManager;->configuration:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v13}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isSelfSignedCertificateEnabled()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 157
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Accepting self-signed certificate of remote server: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 157
    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    .line 159
    const/4 v11, 0x1

    .line 165
    :cond_1
    :goto_2
    if-nez v11, :cond_6

    .line 166
    new-instance v13, Ljava/security/cert/CertificateException;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "root certificate not trusted of "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 125
    .end local v11    # "trusted":Z
    .restart local v3    # "i":I
    .restart local v8    # "principalLast":Ljava/security/Principal;
    :cond_2
    aget-object v12, p1, v3

    .line 126
    .local v12, "x509certificate":Ljava/security/cert/X509Certificate;
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v7

    .line 127
    .local v7, "principalIssuer":Ljava/security/Principal;
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v9

    .line 128
    .local v9, "principalSubject":Ljava/security/Principal;
    if-eqz v8, :cond_3

    .line 129
    invoke-interface {v7, v8}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 132
    add-int/lit8 v13, v3, 0x1

    :try_start_1
    aget-object v13, p1, v13

    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    .line 133
    .local v10, "publickey":Ljava/security/PublicKey;
    aget-object v13, p1, v3

    invoke-virtual {v13, v10}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    .end local v10    # "publickey":Ljava/security/PublicKey;
    :cond_3
    move-object v8, v9

    .line 124
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 136
    :catch_0
    move-exception v13

    new-instance v13, Ljava/security/cert/CertificateException;

    .line 137
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "signature verification failed of "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 136
    invoke-direct {v13, v14}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 141
    :cond_4
    new-instance v13, Ljava/security/cert/CertificateException;

    .line 142
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "subject/issuer verification failed of "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 141
    invoke-direct {v13, v14}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 154
    .end local v3    # "i":I
    .end local v7    # "principalIssuer":Ljava/security/Principal;
    .end local v8    # "principalLast":Ljava/security/Principal;
    .end local v9    # "principalSubject":Ljava/security/Principal;
    .end local v12    # "x509certificate":Ljava/security/cert/X509Certificate;
    .restart local v11    # "trusted":Z
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 162
    :catch_1
    move-exception v2

    .line 163
    .local v2, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v2}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_2

    .line 170
    .end local v2    # "e":Ljava/security/KeyStoreException;
    .end local v11    # "trusted":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jivesoftware/smack/ServerTrustManager;->configuration:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v13}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isNotMatchingDomainCheckEnabled()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 174
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    const/4 v13, 0x0

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "*."

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 176
    const/4 v13, 0x0

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "*."

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 178
    .local v6, "peerIdentity":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jivesoftware/smack/ServerTrustManager;->server:Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 179
    new-instance v13, Ljava/security/cert/CertificateException;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "target verification failed of "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 182
    .end local v6    # "peerIdentity":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jivesoftware/smack/ServerTrustManager;->server:Ljava/lang/String;

    invoke-interface {v5, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 183
    new-instance v13, Ljava/security/cert/CertificateException;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "target verification failed of "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 187
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jivesoftware/smack/ServerTrustManager;->configuration:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v13}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isExpiredCertificatesCheckEnabled()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 190
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 191
    .local v1, "date":Ljava/util/Date;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-lt v3, v4, :cond_a

    .line 201
    .end local v1    # "date":Ljava/util/Date;
    .end local v3    # "i":I
    :cond_9
    return-void

    .line 193
    .restart local v1    # "date":Ljava/util/Date;
    .restart local v3    # "i":I
    :cond_a
    :try_start_2
    aget-object v13, p1, v3

    invoke-virtual {v13, v1}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 191
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 196
    :catch_2
    move-exception v13

    new-instance v13, Ljava/security/cert/CertificateException;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "invalid date of "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jivesoftware/smack/ServerTrustManager;->server:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v13
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
