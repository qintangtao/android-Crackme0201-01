.class public Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchKey;
.super Ljava/lang/Object;
.source "ContactsSearchEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchKey"
.end annotation


# instance fields
.field private mIsAllWord:Z

.field private mIsInvalid:Z

.field private mKey:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 883
    iput-boolean v2, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchKey;->mIsAllWord:Z

    .line 888
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchKey;->mKey:Ljava/lang/String;

    .line 889
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchKey;->mKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchKey;->mIsInvalid:Z

    .line 890
    iget-boolean v1, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchKey;->mIsInvalid:Z

    if-nez v1, :cond_0

    .line 891
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchKey;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 893
    .local v0, "fistCharacter":C
    const/16 v1, 0x61

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_0

    .line 894
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchKey;->mIsAllWord:Z

    .line 897
    .end local v0    # "fistCharacter":C
    :cond_0
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchKey;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchKey;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public isAllWord()Z
    .locals 1

    .prologue
    .line 900
    iget-boolean v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchKey;->mIsAllWord:Z

    return v0
.end method

.method public isInvalid()Z
    .locals 1

    .prologue
    .line 904
    iget-boolean v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchKey;->mIsInvalid:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine$SearchKey;->mKey:Ljava/lang/String;

    return-object v0
.end method
