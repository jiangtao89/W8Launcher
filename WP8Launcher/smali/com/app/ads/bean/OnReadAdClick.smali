.class public abstract Lcom/app/ads/bean/OnReadAdClick;
.super Ljava/lang/Object;
.source "OnReadAdClick.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static ADCLS:Ljava/lang/Class;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/app/ads/AdsAct;

    sput-object v0, Lcom/app/ads/bean/OnReadAdClick;->ADCLS:Ljava/lang/Class;

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/app/ads/bean/OnReadAdClick;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public abstract getAdInfo()Lcom/app/ads/bean/AdInfo;
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/app/ads/bean/OnReadAdClick;->getAdInfo()Lcom/app/ads/bean/AdInfo;

    move-result-object v0

    .line 28
    .local v0, adInfo:Lcom/app/ads/bean/AdInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/app/ads/config/UrlConfig;->DownLoadCount:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "appid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/app/ads/bean/AdInfo;->getAppid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/app/common/net/UHttp;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, url:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/app/ads/bean/AdInfo;->isUrlToDownload()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    iget-object v2, p0, Lcom/app/ads/bean/OnReadAdClick;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/app/ads/bean/OnReadAdClick;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/app/ads/bean/OnReadAdClick;->ADCLS:Ljava/lang/Class;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    sget-object v4, Lcom/app/ads/AdsAct;->INTENT_KEY_VIEW_TYPE:Ljava/lang/String;

    const/4 v5, 0x1

    .line 31
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 33
    sget-object v4, Lcom/app/ads/AdsAct;->INTENT_KEY_APPINFO:Ljava/lang/String;

    .line 32
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v3

    .line 31
    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v2, p0, Lcom/app/ads/bean/OnReadAdClick;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/app/common/SimpleWebViewAct;->loadUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
