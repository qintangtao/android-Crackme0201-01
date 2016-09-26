.class public Lcom/koushikdutta/async/http/body/MultipartFormDataBody;
.super Lcom/koushikdutta/async/http/server/BoundaryEmitter;
.source "MultipartFormDataBody.java"

# interfaces
.implements Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/http/server/BoundaryEmitter;",
        "Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody",
        "<",
        "Lcom/koushikdutta/async/http/Multimap;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CONTENT_TYPE:Ljava/lang/String; = "multipart/form-data"


# instance fields
.field contentType:Ljava/lang/String;

.field formData:Lcom/koushikdutta/async/http/libcore/RawHeaders;

.field last:Lcom/koushikdutta/async/ByteBufferList;

.field lastName:Ljava/lang/String;

.field liner:Lcom/koushikdutta/async/LineEmitter;

.field mCallback:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;

.field private mParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/koushikdutta/async/http/body/Part;",
            ">;"
        }
    .end annotation
.end field

.field totalToWrite:I

.field written:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->$assertionsDisabled:Z

    .line 102
    return-void

    .line 22
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;-><init>()V

    .line 103
    const-string v0, "multipart/form-data"

    iput-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->contentType:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 7
    .param p1, "values"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 104
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;-><init>()V

    .line 103
    const-string v2, "multipart/form-data"

    iput-object v2, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->contentType:Ljava/lang/String;

    .line 105
    array-length v4, p1

    move v2, v3

    :goto_0
    if-lt v2, v4, :cond_0

    .line 114
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "No boundary found for multipart/form-data"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->report(Ljava/lang/Exception;)V

    .line 115
    :goto_1
    return-void

    .line 105
    :cond_0
    aget-object v1, p1, v2

    .line 106
    .local v1, "value":Ljava/lang/String;
    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "splits":[Ljava/lang/String;
    array-length v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    .line 105
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    :cond_2
    const-string v5, "boundary"

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 111
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setBoundary(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public addFilePart(Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 225
    new-instance v0, Lcom/koushikdutta/async/http/body/FilePart;

    invoke-direct {v0, p1, p2}, Lcom/koushikdutta/async/http/body/FilePart;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->addPart(Lcom/koushikdutta/async/http/body/Part;)V

    .line 226
    return-void
.end method

.method public addPart(Lcom/koushikdutta/async/http/body/Part;)V
    .locals 1
    .param p1, "part"    # Lcom/koushikdutta/async/http/body/Part;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mParts:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mParts:Ljava/util/ArrayList;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    return-void
.end method

.method public addStringPart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 229
    new-instance v0, Lcom/koushikdutta/async/http/body/StringPart;

    invoke-direct {v0, p1, p2}, Lcom/koushikdutta/async/http/body/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->addPart(Lcom/koushikdutta/async/http/body/Part;)V

    .line 230
    return-void
.end method

.method public get()Lcom/koushikdutta/async/http/Multimap;
    .locals 2

    .prologue
    .line 241
    new-instance v0, Lcom/koushikdutta/async/http/Multimap;

    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->formData:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/Multimap;-><init>(Lcom/koushikdutta/async/http/libcore/RawHeaders;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->get()Lcom/koushikdutta/async/http/Multimap;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->getBoundary()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "----------------------------"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setBoundary(Ljava/lang/String;)V

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "multipart/form-data; boundary="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->getBoundary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->formData:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->formData:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMultipartCallback()Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mCallback:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;

    return-object v0
.end method

.method handleLast()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 39
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->last:Lcom/koushikdutta/async/ByteBufferList;

    if-nez v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->formData:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    if-nez v0, :cond_1

    .line 43
    new-instance v0, Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/libcore/RawHeaders;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->formData:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->formData:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->lastName:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->last:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v2}, Lcom/koushikdutta/async/ByteBufferList;->peekString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iput-object v3, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->lastName:Ljava/lang/String;

    .line 48
    iput-object v3, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->last:Lcom/koushikdutta/async/ByteBufferList;

    goto :goto_0
.end method

.method public length()I
    .locals 10

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->getBoundary()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "----------------------------"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setBoundary(Ljava/lang/String;)V

    .line 206
    :cond_0
    const/4 v0, 0x0

    .line 207
    .local v0, "length":I
    iget-object v2, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->getBoundaryEnd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    .line 214
    iput v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->totalToWrite:I

    move v2, v0

    :goto_1
    return v2

    .line 207
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/body/Part;

    .line 208
    .local v1, "part":Lcom/koushikdutta/async/http/body/Part;
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/body/Part;->getRawHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v3

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->getBoundaryStart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/body/Part;->length()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 210
    const/4 v2, -0x1

    goto :goto_1

    .line 211
    :cond_2
    int-to-long v4, v0

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/body/Part;->length()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/body/Part;->getRawHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v3

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->toHeaderString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    int-to-long v8, v3

    add-long/2addr v6, v8

    const-string v3, "\r\n"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v8, v3

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    long-to-int v0, v4

    goto :goto_0
.end method

.method protected onBoundaryEnd()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->onBoundaryEnd()V

    .line 60
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->handleLast()V

    .line 61
    return-void
.end method

.method protected onBoundaryStart()V
    .locals 3

    .prologue
    .line 65
    new-instance v0, Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/libcore/RawHeaders;-><init>()V

    .line 66
    .local v0, "headers":Lcom/koushikdutta/async/http/libcore/RawHeaders;
    new-instance v1, Lcom/koushikdutta/async/LineEmitter;

    invoke-direct {v1}, Lcom/koushikdutta/async/LineEmitter;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->liner:Lcom/koushikdutta/async/LineEmitter;

    .line 67
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->liner:Lcom/koushikdutta/async/LineEmitter;

    new-instance v2, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/http/libcore/RawHeaders;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/LineEmitter;->setLineCallback(Lcom/koushikdutta/async/LineEmitter$StringCallback;)V

    .line 99
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->liner:Lcom/koushikdutta/async/LineEmitter;

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 100
    return-void
.end method

.method public parse(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "completed"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    .line 35
    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 36
    return-void
.end method

.method public readFullyOnRequest()Z
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->contentType:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setMultipartCallback(Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mCallback:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;

    .line 120
    return-void
.end method

.method public write(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 5
    .param p1, "request"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p2, "sink"    # Lcom/koushikdutta/async/DataSink;
    .param p3, "completed"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 129
    iget-object v2, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mParts:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 130
    invoke-interface {p2}, Lcom/koushikdutta/async/DataSink;->end()V

    .line 184
    :goto_0
    return-void

    .line 134
    :cond_0
    new-instance v0, Lcom/koushikdutta/async/future/Continuation;

    new-instance v2, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$2;

    invoke-direct {v2, p0, p3}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$2;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    invoke-direct {v0, v2}, Lcom/koushikdutta/async/future/Continuation;-><init>(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 145
    .local v0, "c":Lcom/koushikdutta/async/future/Continuation;
    iget-object v2, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 173
    new-instance v2, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$6;

    invoke-direct {v2, p0, p2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$6;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/DataSink;)V

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/future/Continuation;->add(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;

    .line 183
    invoke-virtual {v0}, Lcom/koushikdutta/async/future/Continuation;->start()Lcom/koushikdutta/async/future/Continuation;

    goto :goto_0

    .line 145
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/body/Part;

    .line 146
    .local v1, "part":Lcom/koushikdutta/async/http/body/Part;
    new-instance v3, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$3;

    invoke-direct {v3, p0, v1, p2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$3;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/http/body/Part;Lcom/koushikdutta/async/DataSink;)V

    invoke-virtual {v0, v3}, Lcom/koushikdutta/async/future/Continuation;->add(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;

    move-result-object v3

    .line 155
    new-instance v4, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;

    invoke-direct {v4, p0, v1, p2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/http/body/Part;Lcom/koushikdutta/async/DataSink;)V

    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/future/Continuation;->add(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;

    move-result-object v3

    .line 164
    new-instance v4, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;

    invoke-direct {v4, p0, p2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/DataSink;)V

    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/future/Continuation;->add(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;

    goto :goto_1
.end method
