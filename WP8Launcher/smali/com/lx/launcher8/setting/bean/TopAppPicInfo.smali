.class public Lcom/lx/launcher8/setting/bean/TopAppPicInfo;
.super Ljava/lang/Object;
.source "TopAppPicInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x41258119b023b71aL


# instance fields
.field private mActUrl:Ljava/lang/String;

.field private mPrevUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/TopAppPicInfo;->mActUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPrevUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/TopAppPicInfo;->mPrevUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setActUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "actUrl"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/TopAppPicInfo;->mActUrl:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setPrevUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "prevUrl"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/TopAppPicInfo;->mPrevUrl:Ljava/lang/String;

    .line 16
    return-void
.end method
