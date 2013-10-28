.class public abstract Lcom/app/ads/bean/OnAdClick;
.super Ljava/lang/Object;
.source "OnAdClick.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/app/ads/bean/OnAdClick;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public abstract getAdInfo()Lcom/app/ads/bean/AdInfo;
.end method

.method getDownloadUrl(Lcom/app/ads/bean/AdInfo;)Ljava/lang/String;
    .locals 3
    .parameter "adInfo"

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/app/ads/config/UrlConfig;->DownLoadCount:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/app/ads/bean/AdInfo;->getAppid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/app/common/net/UHttp;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 25
    invoke-virtual {p0}, Lcom/app/ads/bean/OnAdClick;->getAdInfo()Lcom/app/ads/bean/AdInfo;

    move-result-object v0

    .line 26
    .local v0, adInfo:Lcom/app/ads/bean/AdInfo;
    invoke-virtual {p0, v0}, Lcom/app/ads/bean/OnAdClick;->getDownloadUrl(Lcom/app/ads/bean/AdInfo;)Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, url:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/app/ads/bean/AdInfo;->isUrlToDownload()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 29
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v3

    iget-object v3, v3, Lcom/app/download/bean/DownloadManager;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    invoke-virtual {v3, v2}, Lcom/app/download/bean/RecodeInfo;->isExisted(Ljava/lang/String;)Lcom/app/download/bean/FileSeed;

    move-result-object v1

    .local v1, fs:Lcom/app/download/bean/FileSeed;
    if-eqz v1, :cond_4

    .line 30
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Lcom/app/download/bean/FileSeed;->isState(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/app/download/bean/FileSeed;->isState(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 31
    :cond_0
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v3

    iget-object v4, p0, Lcom/app/ads/bean/OnAdClick;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v1}, Lcom/app/download/bean/DownloadManager;->reLoad(Landroid/content/Context;Lcom/app/download/bean/FileSeed;)V

    .line 44
    .end local v1           #fs:Lcom/app/download/bean/FileSeed;
    :cond_1
    :goto_0
    return-void

    .line 32
    .restart local v1       #fs:Lcom/app/download/bean/FileSeed;
    :cond_2
    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Lcom/app/download/bean/FileSeed;->isState(I)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/app/download/bean/FileSeed;->isState(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 33
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/app/download/bean/FileSeed;->isState(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 34
    :cond_3
    iget-object v3, p0, Lcom/app/ads/bean/OnAdClick;->mContext:Landroid/content/Context;

    const-string v4, "%s\u6b63\u5728\u4e0b\u8f7d\u4e2d..."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_4
    new-instance v1, Lcom/app/download/bean/FileSeed;

    .end local v1           #fs:Lcom/app/download/bean/FileSeed;
    invoke-virtual {v0}, Lcom/app/ads/bean/AdInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/app/download/bean/FileSeed;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .restart local v1       #fs:Lcom/app/download/bean/FileSeed;
    invoke-virtual {v0}, Lcom/app/ads/bean/AdInfo;->getSorceAward()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/app/download/bean/FileSeed;->setTag(Ljava/lang/Object;)V

    .line 39
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v3

    iget-object v4, p0, Lcom/app/ads/bean/OnAdClick;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v1, v5}, Lcom/app/download/bean/DownloadManager;->downLoad(Landroid/content/Context;Lcom/app/download/bean/FileSeed;Z)V

    .line 40
    iget-object v3, p0, Lcom/app/ads/bean/OnAdClick;->mContext:Landroid/content/Context;

    const-string v4, "\u5f00\u59cb\u4e0b\u8f7d%s..."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/app/download/bean/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    .end local v1           #fs:Lcom/app/download/bean/FileSeed;
    :cond_5
    iget-object v3, p0, Lcom/app/ads/bean/OnAdClick;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/app/common/SimpleWebViewAct;->loadUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
