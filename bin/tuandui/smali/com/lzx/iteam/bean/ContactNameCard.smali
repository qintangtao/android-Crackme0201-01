.class public Lcom/lzx/iteam/bean/ContactNameCard;
.super Ljava/lang/Object;
.source "ContactNameCard.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public avatar:Ljava/lang/String;

.field public groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/CloudContact;",
            ">;"
        }
    .end annotation
.end field

.field public sex:I

.field public userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/bean/ContactNameCard;->groups:Ljava/util/ArrayList;

    .line 9
    return-void
.end method
