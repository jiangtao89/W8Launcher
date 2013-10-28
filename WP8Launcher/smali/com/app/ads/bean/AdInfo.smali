.class public Lcom/app/ads/bean/AdInfo;
.super Ljava/lang/Object;
.source "AdInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x54ce08dd847ac2dbL


# instance fields
.field private isAd:I

.field private mAddTime:Ljava/lang/String;

.field private mAppId:I

.field private mDownCount:I

.field private mFileName:Ljava/lang/String;

.field private mFileSize:Ljava/lang/String;

.field private mIsFee:I

.field private mPic:Ljava/lang/String;

.field private mPosition:I

.field private mScore:I

.field private mSorceAward:I

.field private mTitle:Ljava/lang/String;

.field private mUrlType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v1, p0, Lcom/app/ads/bean/AdInfo;->mAppId:I

    .line 19
    iput v1, p0, Lcom/app/ads/bean/AdInfo;->mDownCount:I

    .line 24
    iput v1, p0, Lcom/app/ads/bean/AdInfo;->mIsFee:I

    .line 29
    iput v1, p0, Lcom/app/ads/bean/AdInfo;->mScore:I

    .line 34
    iput v1, p0, Lcom/app/ads/bean/AdInfo;->mPosition:I

    .line 39
    iput v1, p0, Lcom/app/ads/bean/AdInfo;->mUrlType:I

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/app/ads/bean/AdInfo;->mAddTime:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/app/ads/bean/AdInfo;->mFileSize:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/app/ads/bean/AdInfo;->mTitle:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/app/ads/bean/AdInfo;->mFileName:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/app/ads/bean/AdInfo;->mPic:Ljava/lang/String;

    .line 69
    iput v1, p0, Lcom/app/ads/bean/AdInfo;->mSorceAward:I

    .line 74
    iput v1, p0, Lcom/app/ads/bean/AdInfo;->isAd:I

    .line 5
    return-void
.end method


# virtual methods
.method public getAddTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/app/ads/bean/AdInfo;->mAddTime:Ljava/lang/String;

    return-object v0
.end method

.method public getAppid()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/app/ads/bean/AdInfo;->mAppId:I

    return v0
.end method

.method public getDownCount()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/app/ads/bean/AdInfo;->mDownCount:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/app/ads/bean/AdInfo;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/app/ads/bean/AdInfo;->mFileSize:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAd()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/app/ads/bean/AdInfo;->isAd:I

    return v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/app/ads/bean/AdInfo;->mPic:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/app/ads/bean/AdInfo;->mPosition:I

    return v0
.end method

.method public getScore()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/app/ads/bean/AdInfo;->mScore:I

    return v0
.end method

.method public getSorceAward()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/app/ads/bean/AdInfo;->mSorceAward:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/app/ads/bean/AdInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlType()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/app/ads/bean/AdInfo;->mUrlType:I

    return v0
.end method

.method public isFee()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 114
    iget v1, p0, Lcom/app/ads/bean/AdInfo;->mIsFee:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUrlToDownload()Z
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/app/ads/bean/AdInfo;->getUrlType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAddTime(Ljava/lang/String;)V
    .locals 0
    .parameter "addtime"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/app/ads/bean/AdInfo;->mAddTime:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setAppId(I)V
    .locals 0
    .parameter "appid"

    .prologue
    .line 79
    iput p1, p0, Lcom/app/ads/bean/AdInfo;->mAppId:I

    .line 80
    return-void
.end method

.method public setDowncount(I)V
    .locals 0
    .parameter "downcount"

    .prologue
    .line 93
    iput p1, p0, Lcom/app/ads/bean/AdInfo;->mDownCount:I

    .line 94
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/app/ads/bean/AdInfo;->mFileName:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setFileSize(Ljava/lang/String;)V
    .locals 0
    .parameter "filesize"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/app/ads/bean/AdInfo;->mFileSize:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setIsAd(I)V
    .locals 0
    .parameter "isAd"

    .prologue
    .line 246
    iput p1, p0, Lcom/app/ads/bean/AdInfo;->isAd:I

    .line 247
    return-void
.end method

.method public setIsFee(I)V
    .locals 0
    .parameter "isFee"

    .prologue
    .line 107
    iput p1, p0, Lcom/app/ads/bean/AdInfo;->mIsFee:I

    .line 108
    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0
    .parameter "pic"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/app/ads/bean/AdInfo;->mPic:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 135
    iput p1, p0, Lcom/app/ads/bean/AdInfo;->mPosition:I

    .line 136
    return-void
.end method

.method public setScore(I)V
    .locals 0
    .parameter "score"

    .prologue
    .line 121
    iput p1, p0, Lcom/app/ads/bean/AdInfo;->mScore:I

    .line 122
    return-void
.end method

.method public setSorceAward(I)V
    .locals 0
    .parameter "sorceAward"

    .prologue
    .line 234
    iput p1, p0, Lcom/app/ads/bean/AdInfo;->mSorceAward:I

    .line 235
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/app/ads/bean/AdInfo;->mTitle:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setUrlType(I)V
    .locals 0
    .parameter "urltype"

    .prologue
    .line 149
    iput p1, p0, Lcom/app/ads/bean/AdInfo;->mUrlType:I

    .line 150
    return-void
.end method
