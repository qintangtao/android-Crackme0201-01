.class public abstract Lcom/lzx/iteam/net/CcMsgStructure;
.super Ljava/lang/Object;
.source "CcMsgStructure.java"


# instance fields
.field public errorMessage:Ljava/lang/String;

.field public id:J

.field public mApi:Ljava/lang/String;

.field public mParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onError(ILjava/lang/Object;)V
.end method

.method public abstract onReceive(Lorg/json/JSONObject;)V
.end method
