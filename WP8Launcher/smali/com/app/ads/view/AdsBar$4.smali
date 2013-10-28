.class Lcom/app/ads/view/AdsBar$4;
.super Lcom/app/common/task/BaseTask;
.source "AdsBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/ads/view/AdsBar;->loadAds(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/ads/view/AdsBar;

.field private final synthetic val$isImgRequest:Z


# direct methods
.method constructor <init>(Lcom/app/ads/view/AdsBar;Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/ads/view/AdsBar$4;->this$0:Lcom/app/ads/view/AdsBar;

    iput-boolean p3, p0, Lcom/app/ads/view/AdsBar$4;->val$isImgRequest:Z

    .line 158
    invoke-direct {p0, p2}, Lcom/app/common/task/BaseTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 161
    const/4 v6, 0x0

    .line 163
    .local v6, bll:Lcom/app/ads/bll/BllAds;
    sget-object v0, Lcom/app/ads/view/AdsBar;->ADS_CACHE_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/app/common/utils/UObjectIO;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #bll:Lcom/app/ads/bll/BllAds;
    check-cast v6, Lcom/app/ads/bll/BllAds;

    .line 165
    .restart local v6       #bll:Lcom/app/ads/bll/BllAds;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/app/ads/bll/BllAds;->isOutOfData()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v6}, Lcom/app/ads/bll/BllAds;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    new-instance v0, Lcom/app/ads/bll/BllAds;

    invoke-direct {v0}, Lcom/app/ads/bll/BllAds;-><init>()V

    iget-object v1, p0, Lcom/app/ads/view/AdsBar$4;->this$0:Lcom/app/ads/view/AdsBar;

    invoke-virtual {v1}, Lcom/app/ads/view/AdsBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/app/ads/bll/BllAds;->getBllAds(Landroid/content/Context;IILcom/app/common/bll/CPage;Z)Lcom/app/ads/bll/BllAds;

    move-result-object v6

    .line 169
    sget-object v0, Lcom/app/ads/view/AdsBar;->ADS_CACHE_PATH:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/app/common/utils/UObjectIO;->saveObject(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/app/ads/view/AdsBar$4;->this$0:Lcom/app/ads/view/AdsBar;

    #getter for: Lcom/app/ads/view/AdsBar;->mAdInfoAdapter:Lcom/app/ads/adapter/AdInfoAdapter;
    invoke-static {v0}, Lcom/app/ads/view/AdsBar;->access$0(Lcom/app/ads/view/AdsBar;)Lcom/app/ads/adapter/AdInfoAdapter;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/app/ads/adapter/AdInfoAdapter;->addBll(Lcom/app/ads/bll/BllAds;)V

    .line 172
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/app/ads/bll/BllAds;->getSize()I

    move-result v0

    if-lez v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/app/ads/view/AdsBar$4;->this$0:Lcom/app/ads/view/AdsBar;

    invoke-virtual {v0}, Lcom/app/ads/view/AdsBar;->show()V

    .line 174
    :cond_2
    return-object v4
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/app/ads/view/AdsBar$4;->val$isImgRequest:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/app/ads/view/AdsBar$4;->this$0:Lcom/app/ads/view/AdsBar;

    #getter for: Lcom/app/ads/view/AdsBar;->mAdInfoAdapter:Lcom/app/ads/adapter/AdInfoAdapter;
    invoke-static {v0}, Lcom/app/ads/view/AdsBar;->access$0(Lcom/app/ads/view/AdsBar;)Lcom/app/ads/adapter/AdInfoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/app/ads/adapter/AdInfoAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/app/ads/view/AdsBar$4;->this$0:Lcom/app/ads/view/AdsBar;

    #getter for: Lcom/app/ads/view/AdsBar;->mAdInfoAdapter:Lcom/app/ads/adapter/AdInfoAdapter;
    invoke-static {v0}, Lcom/app/ads/view/AdsBar;->access$0(Lcom/app/ads/view/AdsBar;)Lcom/app/ads/adapter/AdInfoAdapter;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/app/ads/view/AdsBar$4;->this$0:Lcom/app/ads/view/AdsBar;

    #getter for: Lcom/app/ads/view/AdsBar;->mAdInfoAdapter:Lcom/app/ads/adapter/AdInfoAdapter;
    invoke-static {v2}, Lcom/app/ads/view/AdsBar;->access$0(Lcom/app/ads/view/AdsBar;)Lcom/app/ads/adapter/AdInfoAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/app/ads/adapter/AdInfoAdapter;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/app/ads/adapter/AdInfoAdapter;->loadImage(II)V

    .line 181
    :cond_0
    return-void
.end method
