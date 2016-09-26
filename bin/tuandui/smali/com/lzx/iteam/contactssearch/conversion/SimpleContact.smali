.class public Lcom/lzx/iteam/contactssearch/conversion/SimpleContact;
.super Ljava/lang/Object;
.source "SimpleContact.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/contactssearch/conversion/SimpleContact$KeyValue;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public address:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public department:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field public emailArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/contactssearch/conversion/SimpleContact$KeyValue;",
            ">;"
        }
    .end annotation
.end field

.field public groupNameArray:[Ljava/lang/String;

.field public huidizi:Z

.field public jobTitle:Ljava/lang/String;

.field public note:Ljava/lang/String;

.field public organizationName:Ljava/lang/String;

.field public phoneArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/contactssearch/conversion/SimpleContact$KeyValue;",
            ">;"
        }
    .end annotation
.end field

.field public pic:[B

.field public senderName:Ljava/lang/String;

.field public sharedAddress:[Ljava/lang/String;

.field public urlArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/contactssearch/conversion/SimpleContact$KeyValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/SimpleContact;->displayName:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/SimpleContact;->senderName:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/SimpleContact;->note:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/SimpleContact;->jobTitle:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/SimpleContact;->department:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/SimpleContact;->organizationName:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/SimpleContact;->sharedAddress:[Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/contactssearch/conversion/SimpleContact;->huidizi:Z

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/SimpleContact;->phoneArray:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/SimpleContact;->emailArray:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/SimpleContact;->urlArray:Ljava/util/ArrayList;

    .line 75
    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/SimpleContact;->groupNameArray:[Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/SimpleContact;->address:Ljava/util/HashMap;

    .line 83
    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/SimpleContact;->pic:[B

    .line 10
    return-void
.end method
