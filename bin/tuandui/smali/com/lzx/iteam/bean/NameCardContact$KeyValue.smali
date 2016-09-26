.class public Lcom/lzx/iteam/bean/NameCardContact$KeyValue;
.super Ljava/lang/Object;
.source "NameCardContact.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/bean/NameCardContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyValue"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7f41341e660f707bL


# instance fields
.field public key:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
