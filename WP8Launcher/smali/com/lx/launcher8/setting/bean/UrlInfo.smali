.class public Lcom/lx/launcher8/setting/bean/UrlInfo;
.super Ljava/lang/Object;
.source "UrlInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6f072f2790c3cfd8L


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mLinkName:Ljava/lang/String;

.field private mLinkUrl:Ljava/lang/String;

.field private mRid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/UrlInfo;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/UrlInfo;->mLinkName:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/UrlInfo;->mLinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRid()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/lx/launcher8/setting/bean/UrlInfo;->mRid:I

    return v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .parameter "className"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/UrlInfo;->mClassName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setLinkName(Ljava/lang/String;)V
    .locals 0
    .parameter "linkName"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/UrlInfo;->mLinkName:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setLinkUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "linkUrl"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/UrlInfo;->mLinkUrl:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setRid(I)V
    .locals 0
    .parameter "rid"

    .prologue
    .line 21
    iput p1, p0, Lcom/lx/launcher8/setting/bean/UrlInfo;->mRid:I

    .line 22
    return-void
.end method
