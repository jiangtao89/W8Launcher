.class Lcom/app/ads/view/AdsBar$3;
.super Lcom/app/ads/bean/OnReadAdClick;
.source "AdsBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/ads/view/AdsBar;->initAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/ads/view/AdsBar;


# direct methods
.method constructor <init>(Lcom/app/ads/view/AdsBar;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/ads/view/AdsBar$3;->this$0:Lcom/app/ads/view/AdsBar;

    .line 138
    invoke-direct {p0, p2}, Lcom/app/ads/bean/OnReadAdClick;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getAdInfo()Lcom/app/ads/bean/AdInfo;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/app/ads/view/AdsBar$3;->this$0:Lcom/app/ads/view/AdsBar;

    #getter for: Lcom/app/ads/view/AdsBar;->mAdInfoAdapter:Lcom/app/ads/adapter/AdInfoAdapter;
    invoke-static {v0}, Lcom/app/ads/view/AdsBar;->access$0(Lcom/app/ads/view/AdsBar;)Lcom/app/ads/adapter/AdInfoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/app/ads/adapter/AdInfoAdapter;->getBll()Lcom/app/common/bll/BllXmlPull;

    move-result-object v0

    check-cast v0, Lcom/app/ads/bll/BllAds;

    iget-object v0, v0, Lcom/app/ads/bll/BllAds;->mAdInfoList:Ljava/util/List;

    iget-object v1, p0, Lcom/app/ads/view/AdsBar$3;->this$0:Lcom/app/ads/view/AdsBar;

    invoke-virtual {v1}, Lcom/app/ads/view/AdsBar;->getAdShowingPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/ads/bean/AdInfo;

    return-object v0
.end method
