.class public interface abstract Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBookOrBuilder;
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
    name = "AddressBookOrBuilder"
.end annotation


# virtual methods
.method public abstract getPerson(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
.end method

.method public abstract getPersonCount()I
.end method

.method public abstract getPersonList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPersonOrBuilder(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$PersonOrBuilder;
.end method

.method public abstract getPersonOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$PersonOrBuilder;",
            ">;"
        }
    .end annotation
.end method
