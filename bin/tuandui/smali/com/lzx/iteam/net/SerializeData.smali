.class public Lcom/lzx/iteam/net/SerializeData;
.super Ljava/lang/Object;
.source "SerializeData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x259bdbca0f416364L


# instance fields
.field public mSid:Ljava/lang/String;

.field public number:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "mSid"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/lzx/iteam/net/SerializeData;->number:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/lzx/iteam/net/SerializeData;->mSid:Ljava/lang/String;

    .line 16
    return-void
.end method
