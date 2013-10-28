.class Lcom/app/ads/AdsAct$13;
.super Lcom/app/common/task/BaseTask;
.source "AdsAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/ads/AdsAct;->showInfos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/ads/AdsAct;


# direct methods
.method constructor <init>(Lcom/app/ads/AdsAct;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/ads/AdsAct$13;->this$0:Lcom/app/ads/AdsAct;

    .line 547
    invoke-direct {p0, p2}, Lcom/app/common/task/BaseTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "params"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/app/ads/AdsAct$13;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/app/common/config/BasePath;->getCachePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/app/ads/AdsAct$13;->this$0:Lcom/app/ads/AdsAct;

    #getter for: Lcom/app/ads/AdsAct;->mAdInfo:Lcom/app/ads/bean/AdInfo;
    invoke-static {v2}, Lcom/app/ads/AdsAct;->access$6(Lcom/app/ads/AdsAct;)Lcom/app/ads/bean/AdInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/app/ads/bean/AdInfo;->getAppid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "p"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/app/ads/AdsAct$13;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/app/ads/AdsAct$13;->this$0:Lcom/app/ads/AdsAct;

    #getter for: Lcom/app/ads/AdsAct;->mAdBll:Lcom/app/ads/bll/BllDetail;
    invoke-static {v3}, Lcom/app/ads/AdsAct;->access$7(Lcom/app/ads/AdsAct;)Lcom/app/ads/bll/BllDetail;

    move-result-object v3

    iget-object v3, v3, Lcom/app/ads/bll/BllDetail;->mPic:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/app/common/net/UHttp;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/app/common/net/UHttp;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/app/common/utils/UFile;->downFile(Landroid/content/Context;Ljava/lang/String;Lcom/app/common/net/UHttp;)Z

    .line 550
    const-string v0, ""

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 555
    invoke-super {p0, p1}, Lcom/app/common/task/BaseTask;->onPostExecute(Ljava/lang/String;)V

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/app/common/config/BasePath;->getCachePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/app/ads/AdsAct$13;->this$0:Lcom/app/ads/AdsAct;

    #getter for: Lcom/app/ads/AdsAct;->mAdInfo:Lcom/app/ads/bean/AdInfo;
    invoke-static {v2}, Lcom/app/ads/AdsAct;->access$6(Lcom/app/ads/AdsAct;)Lcom/app/ads/bean/AdInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/app/ads/bean/AdInfo;->getAppid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "p"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 557
    .local v0, bt:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/app/ads/AdsAct$13;->this$0:Lcom/app/ads/AdsAct;

    #getter for: Lcom/app/ads/AdsAct;->mIconView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/app/ads/AdsAct;->access$8(Lcom/app/ads/AdsAct;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 558
    iget-object v1, p0, Lcom/app/ads/AdsAct$13;->this$0:Lcom/app/ads/AdsAct;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/app/ads/AdsAct;->needRequestImg:Z

    .line 559
    return-void
.end method
