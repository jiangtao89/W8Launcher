.class public Lcom/lx/launcher8/setting/bean/SearchEngineInfo;
.super Ljava/lang/Object;
.source "SearchEngineInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x478993f14d3b3d21L


# instance fields
.field private mImgUrl:Ljava/lang/String;

.field private mName:Ljava/lang/String;

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
.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/SearchEngineInfo;->mImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/SearchEngineInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/SearchEngineInfo;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "imgUrl"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/SearchEngineInfo;->mImgUrl:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/SearchEngineInfo;->mName:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/SearchEngineInfo;->mUrl:Ljava/lang/String;

    .line 29
    return-void
.end method
