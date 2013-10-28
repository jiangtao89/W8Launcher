.class public Lcom/lx/launcher8/setting/bean/TopAppCateInfo;
.super Ljava/lang/Object;
.source "TopAppCateInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6101c2cf9fbf7082L


# instance fields
.field private mCateId:I

.field private mCateName:Ljava/lang/String;

.field private mEname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCateId()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/lx/launcher8/setting/bean/TopAppCateInfo;->mCateId:I

    return v0
.end method

.method public getCateName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/TopAppCateInfo;->mCateName:Ljava/lang/String;

    return-object v0
.end method

.method public getEName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/TopAppCateInfo;->mEname:Ljava/lang/String;

    return-object v0
.end method

.method public setCateId(I)V
    .locals 0
    .parameter "cateId"

    .prologue
    .line 16
    iput p1, p0, Lcom/lx/launcher8/setting/bean/TopAppCateInfo;->mCateId:I

    .line 17
    return-void
.end method

.method public setCateName(Ljava/lang/String;)V
    .locals 0
    .parameter "cateName"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/TopAppCateInfo;->mCateName:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setEName(Ljava/lang/String;)V
    .locals 0
    .parameter "eName"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/TopAppCateInfo;->mEname:Ljava/lang/String;

    .line 33
    return-void
.end method
