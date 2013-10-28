.class public Lcom/lx/launcher8/setting/bean/ShareInfo;
.super Ljava/lang/Object;
.source "ShareInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4de71ba3d17b59d5L


# instance fields
.field private mFriend:I

.field private mProPackage:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public getFriend()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/lx/launcher8/setting/bean/ShareInfo;->mFriend:I

    return v0
.end method

.method public getProPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/ShareInfo;->mProPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/ShareInfo;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setFriend(I)V
    .locals 0
    .parameter "friend"

    .prologue
    .line 20
    iput p1, p0, Lcom/lx/launcher8/setting/bean/ShareInfo;->mFriend:I

    .line 21
    return-void
.end method

.method public setProPackage(Ljava/lang/String;)V
    .locals 0
    .parameter "pk"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/ShareInfo;->mProPackage:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/ShareInfo;->mUrl:Ljava/lang/String;

    .line 29
    return-void
.end method
