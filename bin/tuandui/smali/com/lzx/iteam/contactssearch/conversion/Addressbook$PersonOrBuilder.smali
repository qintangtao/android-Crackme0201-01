.class public interface abstract Lcom/lzx/iteam/contactssearch/conversion/Addressbook$PersonOrBuilder;
.super Ljava/lang/Object;
.source "Addressbook.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/contactssearch/conversion/Addressbook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PersonOrBuilder"
.end annotation


# virtual methods
.method public abstract getContactedNumber()I
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getEmail()Ljava/lang/String;
.end method

.method public abstract getFuzzyString()Ljava/lang/String;
.end method

.method public abstract getGroupIdSet(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
.end method

.method public abstract getGroupIdSetCount()I
.end method

.method public abstract getGroupIdSetList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGroupIdSetOrBuilder(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSetOrBuilder;
.end method

.method public abstract getGroupIdSetOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSetOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNote()Ljava/lang/String;
.end method

.method public abstract getOrganization()Ljava/lang/String;
.end method

.method public abstract getPhone(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
.end method

.method public abstract getPhoneCount()I
.end method

.method public abstract getPhoneList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPhoneNumberArea(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;
.end method

.method public abstract getPhoneNumberAreaCount()I
.end method

.method public abstract getPhoneNumberAreaList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPhoneNumberAreaOrBuilder(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberAreaOrBuilder;
.end method

.method public abstract getPhoneNumberAreaOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberAreaOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPhoneOrBuilder(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberOrBuilder;
.end method

.method public abstract getPhoneOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPhotoId()J
.end method

.method public abstract getRawId()J
.end method

.method public abstract getVersion()J
.end method

.method public abstract hasContactedNumber()Z
.end method

.method public abstract hasDisplayName()Z
.end method

.method public abstract hasEmail()Z
.end method

.method public abstract hasFuzzyString()Z
.end method

.method public abstract hasNote()Z
.end method

.method public abstract hasOrganization()Z
.end method

.method public abstract hasPhotoId()Z
.end method

.method public abstract hasRawId()Z
.end method

.method public abstract hasVersion()Z
.end method
