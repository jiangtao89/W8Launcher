.class Lcom/app/ads/AdsAct$12$1;
.super Lcom/app/ads/bean/OnAdClick;
.source "AdsAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/ads/AdsAct$12;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/app/ads/AdsAct$12;


# direct methods
.method constructor <init>(Lcom/app/ads/AdsAct$12;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/ads/AdsAct$12$1;->this$1:Lcom/app/ads/AdsAct$12;

    .line 505
    invoke-direct {p0, p2}, Lcom/app/ads/bean/OnAdClick;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getAdInfo()Lcom/app/ads/bean/AdInfo;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/app/ads/AdsAct$12$1;->this$1:Lcom/app/ads/AdsAct$12;

    #getter for: Lcom/app/ads/AdsAct$12;->this$0:Lcom/app/ads/AdsAct;
    invoke-static {v0}, Lcom/app/ads/AdsAct$12;->access$0(Lcom/app/ads/AdsAct$12;)Lcom/app/ads/AdsAct;

    move-result-object v0

    #getter for: Lcom/app/ads/AdsAct;->mAdInfo:Lcom/app/ads/bean/AdInfo;
    invoke-static {v0}, Lcom/app/ads/AdsAct;->access$6(Lcom/app/ads/AdsAct;)Lcom/app/ads/bean/AdInfo;

    move-result-object v0

    return-object v0
.end method
