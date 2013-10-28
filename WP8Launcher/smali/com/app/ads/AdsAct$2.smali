.class Lcom/app/ads/AdsAct$2;
.super Ljava/lang/Object;
.source "AdsAct.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/ads/AdsAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/ads/AdsAct;


# direct methods
.method constructor <init>(Lcom/app/ads/AdsAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/ads/AdsAct$2;->this$0:Lcom/app/ads/AdsAct;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/app/ads/AdsAct$2;->this$0:Lcom/app/ads/AdsAct;

    sget-object v1, Lcom/app/ads/AdsAct$ViewType;->AD_DETAIL:Lcom/app/ads/AdsAct$ViewType;

    iput-object v1, v0, Lcom/app/ads/AdsAct;->mShowType:Lcom/app/ads/AdsAct$ViewType;

    .line 262
    iget-object v1, p0, Lcom/app/ads/AdsAct$2;->this$0:Lcom/app/ads/AdsAct;

    iget-object v0, p0, Lcom/app/ads/AdsAct$2;->this$0:Lcom/app/ads/AdsAct;

    invoke-virtual {v0}, Lcom/app/ads/AdsAct;->getCurGyAdapter()Lcom/app/common/gy/GyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/app/common/gy/GyAdapter;->getBll()Lcom/app/common/bll/BllXmlPull;

    move-result-object v0

    check-cast v0, Lcom/app/ads/bll/BllAds;

    iget-object v0, v0, Lcom/app/ads/bll/BllAds;->mAdInfoList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/ads/bean/AdInfo;

    #setter for: Lcom/app/ads/AdsAct;->mAdInfo:Lcom/app/ads/bean/AdInfo;
    invoke-static {v1, v0}, Lcom/app/ads/AdsAct;->access$0(Lcom/app/ads/AdsAct;Lcom/app/ads/bean/AdInfo;)V

    .line 263
    iget-object v0, p0, Lcom/app/ads/AdsAct$2;->this$0:Lcom/app/ads/AdsAct;

    invoke-virtual {v0}, Lcom/app/ads/AdsAct;->switchViews()V

    .line 265
    return-void
.end method
