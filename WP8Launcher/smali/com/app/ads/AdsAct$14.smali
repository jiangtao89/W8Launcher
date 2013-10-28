.class Lcom/app/ads/AdsAct$14;
.super Ljava/lang/Object;
.source "AdsAct.java"

# interfaces
.implements Lcom/app/common/net/UImageSever$LoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/ads/AdsAct;->loadImg(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/ads/AdsAct;


# direct methods
.method constructor <init>(Lcom/app/ads/AdsAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/ads/AdsAct$14;->this$0:Lcom/app/ads/AdsAct;

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "location"
    .parameter "url"
    .parameter "savePath"
    .parameter "isWellDone"

    .prologue
    .line 584
    iget-object v0, p0, Lcom/app/ads/AdsAct$14;->this$0:Lcom/app/ads/AdsAct;

    #getter for: Lcom/app/ads/AdsAct;->mPicAdapter:Lcom/app/ads/adapter/AdPicAdapter;
    invoke-static {v0}, Lcom/app/ads/AdsAct;->access$9(Lcom/app/ads/AdsAct;)Lcom/app/ads/adapter/AdPicAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/app/ads/adapter/AdPicAdapter;->notifyDataSetChanged()V

    .line 585
    iget-object v0, p0, Lcom/app/ads/AdsAct$14;->this$0:Lcom/app/ads/AdsAct;

    iget-object v0, v0, Lcom/app/ads/AdsAct;->mShowAdapter:Lcom/app/ads/adapter/AdPicAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/app/ads/AdsAct$14;->this$0:Lcom/app/ads/AdsAct;

    iget-object v0, v0, Lcom/app/ads/AdsAct;->mShowAdapter:Lcom/app/ads/adapter/AdPicAdapter;

    invoke-virtual {v0}, Lcom/app/ads/adapter/AdPicAdapter;->notifyDataSetChanged()V

    .line 586
    :cond_0
    return-void
.end method
