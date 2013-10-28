.class public Lcom/lx/launcher8/setting/bean/WpAdInfo;
.super Ljava/lang/Object;
.source "WpAdInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x59bd6fdbf054ff60L


# instance fields
.field private mImgUrl:Ljava/lang/String;

.field private mPost:I

.field private mShowType:I

.field private mUrl:Ljava/lang/String;


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
.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/WpAdInfo;->mImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPos()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/lx/launcher8/setting/bean/WpAdInfo;->mPost:I

    return v0
.end method

.method public getShowType()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/lx/launcher8/setting/bean/WpAdInfo;->mShowType:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lx/launcher8/setting/bean/WpAdInfo;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/WpAdInfo;->mImgUrl:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setPos(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 37
    iput p1, p0, Lcom/lx/launcher8/setting/bean/WpAdInfo;->mPost:I

    .line 38
    return-void
.end method

.method public setShowType(I)V
    .locals 0
    .parameter "showType"

    .prologue
    .line 45
    iput p1, p0, Lcom/lx/launcher8/setting/bean/WpAdInfo;->mShowType:I

    .line 46
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/lx/launcher8/setting/bean/WpAdInfo;->mUrl:Ljava/lang/String;

    .line 22
    return-void
.end method
