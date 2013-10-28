.class public Lcom/app/ads/bll/BllAds;
.super Lcom/app/common/bll/BllXmlPull;
.source "BllAds.java"


# static fields
.field private static final serialVersionUID:J = 0xfca91a0e4174594L


# instance fields
.field public mAdInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/app/ads/bean/AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mTime:J

.field private transient mTmp:Lcom/app/ads/bean/AdInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/app/common/bll/BllXmlPull;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/app/ads/bll/BllAds;->mAdInfoList:Ljava/util/List;

    .line 16
    return-void
.end method

.method public static getCacheFilePath(I)Ljava/lang/String;
    .locals 2
    .parameter "order"

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ad/"

    invoke-static {v1}, Lcom/app/common/config/BasePath;->getInternalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "listAd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public endTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/app/ads/bll/BllAds;->mTmp:Lcom/app/ads/bean/AdInfo;

    if-eqz v0, :cond_0

    const-string v0, "adinfo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/app/ads/bll/BllAds;->mAdInfoList:Ljava/util/List;

    iget-object v1, p0, Lcom/app/ads/bll/BllAds;->mTmp:Lcom/app/ads/bean/AdInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/app/ads/bll/BllAds;->mTmp:Lcom/app/ads/bean/AdInfo;

    .line 67
    :cond_0
    return-void
.end method

.method public getBllAds(Landroid/content/Context;IILcom/app/common/bll/CPage;Z)Lcom/app/ads/bll/BllAds;
    .locals 4
    .parameter "context"
    .parameter "order"
    .parameter "position"
    .parameter "page"
    .parameter "isShowMessage"

    .prologue
    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "order="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&pos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, params:Ljava/lang/String;
    sget-object v2, Lcom/app/ads/config/UrlConfig;->AdListUrl:Ljava/lang/String;

    invoke-static {p0, p1, v2, v1, p4}, Lcom/app/common/bll/BllObject;->Get(Lcom/app/common/bll/BllXmlPull;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;)Lcom/app/common/bll/BllXmlPull;

    move-result-object v0

    check-cast v0, Lcom/app/ads/bll/BllAds;

    .line 83
    .local v0, ba:Lcom/app/ads/bll/BllAds;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/app/ads/bll/BllAds;->mTime:J

    .line 85
    return-object v0
.end method

.method public getBllAds2(Landroid/content/Context;IILcom/app/common/bll/CPage;Z)Lcom/app/ads/bll/BllAds;
    .locals 9
    .parameter "context"
    .parameter "order"
    .parameter "position"
    .parameter "page"
    .parameter "isShowMessage"

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "order="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&softid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/app/ads/config/AdGlobal;->getSoftId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, params:Ljava/lang/String;
    sget-object v2, Lcom/app/ads/config/UrlConfig;->AdListUrl:Ljava/lang/String;

    invoke-static {p2}, Lcom/app/ads/bll/BllAds;->getCacheFilePath(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lcom/app/common/bll/BllObject;->Get(Lcom/app/common/bll/BllXmlPull;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;Ljava/lang/String;ZZ)Lcom/app/common/bll/BllXmlPull;

    move-result-object v8

    check-cast v8, Lcom/app/ads/bll/BllAds;

    .line 103
    .local v8, ba:Lcom/app/ads/bll/BllAds;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/app/ads/bll/BllAds;->mTime:J

    .line 104
    return-object v8
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/app/ads/bll/BllAds;->mAdInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/app/ads/bll/BllAds;->mAdInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOutOfData()Z
    .locals 4

    .prologue
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/app/ads/bll/BllAds;->mTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startTag(Ljava/lang/String;)V
    .locals 4
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    const-string v2, "adinfo"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    new-instance v2, Lcom/app/ads/bean/AdInfo;

    invoke-direct {v2}, Lcom/app/ads/bean/AdInfo;-><init>()V

    iput-object v2, p0, Lcom/app/ads/bll/BllAds;->mTmp:Lcom/app/ads/bean/AdInfo;

    .line 35
    invoke-virtual {p0}, Lcom/app/ads/bll/BllAds;->getAttributeCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, i:I
    iget-object v2, p0, Lcom/app/ads/bll/BllAds;->mTmp:Lcom/app/ads/bean/AdInfo;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {p0, v0}, Lcom/app/ads/bll/BllAds;->getAttributeValueInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/app/ads/bean/AdInfo;->setAppId(I)V

    .line 38
    iget-object v2, p0, Lcom/app/ads/bll/BllAds;->mTmp:Lcom/app/ads/bean/AdInfo;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {p0, v1}, Lcom/app/ads/bll/BllAds;->getAttributeValueInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/app/ads/bean/AdInfo;->setDowncount(I)V

    .line 39
    iget-object v2, p0, Lcom/app/ads/bll/BllAds;->mTmp:Lcom/app/ads/bean/AdInfo;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0, v0}, Lcom/app/ads/bll/BllAds;->getAttributeValueInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/app/ads/bean/AdInfo;->setIsFee(I)V

    .line 40
    iget-object v2, p0, Lcom/app/ads/bll/BllAds;->mTmp:Lcom/app/ads/bean/AdInfo;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {p0, v1}, Lcom/app/ads/bll/BllAds;->getAttributeValueInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/app/ads/bean/AdInfo;->setScore(I)V

    .line 41
    iget-object v2, p0, Lcom/app/ads/bll/BllAds;->mTmp:Lcom/app/ads/bean/AdInfo;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0, v0}, Lcom/app/ads/bll/BllAds;->getAttributeValueInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/app/ads/bean/AdInfo;->setPosition(I)V

    .line 42
    iget-object v2, p0, Lcom/app/ads/bll/BllAds;->mTmp:Lcom/app/ads/bean/AdInfo;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {p0, v1}, Lcom/app/ads/bll/BllAds;->getAttributeValueInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/app/ads/bean/AdInfo;->setUrlType(I)V

    .line 43
    iget-object v2, p0, Lcom/app/ads/bll/BllAds;->mTmp:Lcom/app/ads/bean/AdInfo;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0, v0}, Lcom/app/ads/bll/BllAds;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/app/ads/bean/AdInfo;->setAddTime(Ljava/lang/String;)V

    .line 44
    iget-object v2, p0, Lcom/app/ads/bll/BllAds;->mTmp:Lcom/app/ads/bean/AdInfo;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {p0, v1}, Lcom/app/ads/bll/BllAds;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/app/ads/bean/AdInfo;->setFileSize(Ljava/lang/String;)V

    .line 45
    iget-object v2, p0, Lcom/app/ads/bll/BllAds;->mTmp:Lcom/app/ads/bean/AdInfo;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0, v0}, Lcom/app/ads/bll/BllAds;->getAttributeValueInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/app/ads/bean/AdInfo;->setSorceAward(I)V

    .line 59
    .end local v1           #i:I
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    const-string v2, "title"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 48
    iget-object v2, p0, Lcom/app/ads/bll/BllAds;->mTmp:Lcom/app/ads/bean/AdInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/app/ads/bll/BllAds;->mTmp:Lcom/app/ads/bean/AdInfo;

    invoke-virtual {p0}, Lcom/app/ads/bll/BllAds;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/app/ads/bean/AdInfo;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_2
    const-string v2, "filename"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 50
    iget-object v2, p0, Lcom/app/ads/bll/BllAds;->mTmp:Lcom/app/ads/bean/AdInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/app/ads/bll/BllAds;->mTmp:Lcom/app/ads/bean/AdInfo;

    invoke-virtual {p0}, Lcom/app/ads/bll/BllAds;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/app/ads/bean/AdInfo;->setFileName(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_3
    const-string v2, "icon"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 52
    iget-object v2, p0, Lcom/app/ads/bll/BllAds;->mTmp:Lcom/app/ads/bean/AdInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/app/ads/bll/BllAds;->mTmp:Lcom/app/ads/bean/AdInfo;

    invoke-virtual {p0}, Lcom/app/ads/bll/BllAds;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/app/ads/bean/AdInfo;->setPic(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_4
    const-string v2, "isad"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 54
    iget-object v2, p0, Lcom/app/ads/bll/BllAds;->mTmp:Lcom/app/ads/bean/AdInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/app/ads/bll/BllAds;->mTmp:Lcom/app/ads/bean/AdInfo;

    invoke-virtual {p0}, Lcom/app/ads/bll/BllAds;->getTextInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/app/ads/bean/AdInfo;->setIsAd(I)V

    goto :goto_0

    .line 56
    :cond_5
    invoke-super {p0, p1}, Lcom/app/common/bll/BllXmlPull;->startTag(Ljava/lang/String;)V

    goto :goto_0
.end method
