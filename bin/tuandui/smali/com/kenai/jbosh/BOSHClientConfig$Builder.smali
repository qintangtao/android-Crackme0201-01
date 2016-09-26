.class public final Lcom/kenai/jbosh/BOSHClientConfig$Builder;
.super Ljava/lang/Object;
.source "BOSHClientConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kenai/jbosh/BOSHClientConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bCompression:Ljava/lang/Boolean;

.field private final bDomain:Ljava/lang/String;

.field private bFrom:Ljava/lang/String;

.field private bLang:Ljava/lang/String;

.field private bProxyHost:Ljava/lang/String;

.field private bProxyPort:I

.field private bRoute:Ljava/lang/String;

.field private bSSLContext:Ljavax/net/ssl/SSLContext;

.field private final bURI:Ljava/net/URI;


# direct methods
.method private constructor <init>(Ljava/net/URI;Ljava/lang/String;)V
    .locals 0
    .param p1, "cmURI"    # Ljava/net/URI;
    .param p2, "domain"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bURI:Ljava/net/URI;

    .line 111
    iput-object p2, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bDomain:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public static create(Lcom/kenai/jbosh/BOSHClientConfig;)Lcom/kenai/jbosh/BOSHClientConfig$Builder;
    .locals 3
    .param p0, "cfg"    # Lcom/kenai/jbosh/BOSHClientConfig;

    .prologue
    .line 147
    new-instance v0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;

    invoke-virtual {p0}, Lcom/kenai/jbosh/BOSHClientConfig;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kenai/jbosh/BOSHClientConfig;->getTo()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kenai/jbosh/BOSHClientConfig$Builder;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    .line 148
    .local v0, "result":Lcom/kenai/jbosh/BOSHClientConfig$Builder;
    invoke-virtual {p0}, Lcom/kenai/jbosh/BOSHClientConfig;->getFrom()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bFrom:Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Lcom/kenai/jbosh/BOSHClientConfig;->getLang()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bLang:Ljava/lang/String;

    .line 150
    invoke-virtual {p0}, Lcom/kenai/jbosh/BOSHClientConfig;->getRoute()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bRoute:Ljava/lang/String;

    .line 151
    invoke-virtual {p0}, Lcom/kenai/jbosh/BOSHClientConfig;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bProxyHost:Ljava/lang/String;

    .line 152
    invoke-virtual {p0}, Lcom/kenai/jbosh/BOSHClientConfig;->getProxyPort()I

    move-result v1

    iput v1, v0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bProxyPort:I

    .line 153
    invoke-virtual {p0}, Lcom/kenai/jbosh/BOSHClientConfig;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    iput-object v1, v0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bSSLContext:Ljavax/net/ssl/SSLContext;

    .line 154
    invoke-virtual {p0}, Lcom/kenai/jbosh/BOSHClientConfig;->isCompressionEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bCompression:Ljava/lang/Boolean;

    .line 155
    return-object v0
.end method

.method public static create(Ljava/net/URI;Ljava/lang/String;)Lcom/kenai/jbosh/BOSHClientConfig$Builder;
    .locals 3
    .param p0, "cmURI"    # Ljava/net/URI;
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 123
    if-nez p0, :cond_0

    .line 124
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 125
    const-string v2, "Connection manager URI must not be null"

    .line 124
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_0
    if-nez p1, :cond_1

    .line 128
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 129
    const-string v2, "Target domain must not be null"

    .line 128
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :cond_1
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "scheme":Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 133
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 134
    const-string v2, "Only \'http\' and \'https\' URI are allowed"

    .line 133
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_2
    new-instance v1, Lcom/kenai/jbosh/BOSHClientConfig$Builder;

    invoke-direct {v1, p0, p1}, Lcom/kenai/jbosh/BOSHClientConfig$Builder;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public build()Lcom/kenai/jbosh/BOSHClientConfig;
    .locals 11

    .prologue
    .line 287
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bLang:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 288
    const-string v4, "en"

    .line 295
    .local v4, "lang":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bProxyHost:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 296
    const/4 v7, 0x0

    .line 303
    .local v7, "port":I
    :goto_1
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bCompression:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 304
    const/4 v9, 0x0

    .line 309
    .local v9, "compression":Z
    :goto_2
    new-instance v0, Lcom/kenai/jbosh/BOSHClientConfig;

    .line 310
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bURI:Ljava/net/URI;

    .line 311
    iget-object v2, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bDomain:Ljava/lang/String;

    .line 312
    iget-object v3, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bFrom:Ljava/lang/String;

    .line 314
    iget-object v5, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bRoute:Ljava/lang/String;

    .line 315
    iget-object v6, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bProxyHost:Ljava/lang/String;

    .line 317
    iget-object v8, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bSSLContext:Ljavax/net/ssl/SSLContext;

    .line 309
    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/kenai/jbosh/BOSHClientConfig;-><init>(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjavax/net/ssl/SSLContext;ZLcom/kenai/jbosh/BOSHClientConfig;)V

    return-object v0

    .line 290
    .end local v4    # "lang":Ljava/lang/String;
    .end local v7    # "port":I
    .end local v9    # "compression":Z
    :cond_0
    iget-object v4, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bLang:Ljava/lang/String;

    .restart local v4    # "lang":Ljava/lang/String;
    goto :goto_0

    .line 298
    :cond_1
    iget v7, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bProxyPort:I

    .restart local v7    # "port":I
    goto :goto_1

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bCompression:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .restart local v9    # "compression":Z
    goto :goto_2
.end method

.method public setCompressionEnabled(Z)Lcom/kenai/jbosh/BOSHClientConfig$Builder;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 275
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bCompression:Ljava/lang/Boolean;

    .line 276
    return-object p0
.end method

.method public setFrom(Ljava/lang/String;)Lcom/kenai/jbosh/BOSHClientConfig$Builder;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 168
    const-string v1, "Client ID must not be null"

    .line 167
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iput-object p1, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bFrom:Ljava/lang/String;

    .line 171
    return-object p0
.end method

.method public setProxy(Ljava/lang/String;I)Lcom/kenai/jbosh/BOSHClientConfig$Builder;
    .locals 2
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 237
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 239
    const-string v1, "Proxy host name cannot be null or empty"

    .line 238
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_1
    if-gtz p2, :cond_2

    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 243
    const-string v1, "Proxy port must be > 0"

    .line 242
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_2
    iput-object p1, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bProxyHost:Ljava/lang/String;

    .line 246
    iput p2, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bProxyPort:I

    .line 247
    return-object p0
.end method

.method public setRoute(Ljava/lang/String;Ljava/lang/String;I)Lcom/kenai/jbosh/BOSHClientConfig$Builder;
    .locals 2
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 208
    if-nez p1, :cond_0

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Protocol cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 213
    const-string v1, "Protocol cannot contain the \':\' character"

    .line 212
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_1
    if-nez p2, :cond_2

    .line 216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_2
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 220
    const-string v1, "Host cannot contain the \':\' character"

    .line 219
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_3
    if-gtz p3, :cond_4

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Port number must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bRoute:Ljava/lang/String;

    .line 226
    return-object p0
.end method

.method public setSSLContext(Ljavax/net/ssl/SSLContext;)Lcom/kenai/jbosh/BOSHClientConfig$Builder;
    .locals 2
    .param p1, "ctx"    # Ljavax/net/ssl/SSLContext;

    .prologue
    .line 258
    if-nez p1, :cond_0

    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 260
    const-string v1, "SSL context cannot be null"

    .line 259
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    iput-object p1, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bSSLContext:Ljavax/net/ssl/SSLContext;

    .line 263
    return-object p0
.end method

.method public setXMLLang(Ljava/lang/String;)Lcom/kenai/jbosh/BOSHClientConfig$Builder;
    .locals 2
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 184
    const-string v1, "Default language ID must not be null"

    .line 183
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    iput-object p1, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bLang:Ljava/lang/String;

    .line 187
    return-object p0
.end method
