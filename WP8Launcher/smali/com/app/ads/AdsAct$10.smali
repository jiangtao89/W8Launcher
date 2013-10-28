.class Lcom/app/ads/AdsAct$10;
.super Ljava/lang/Object;
.source "AdsAct.java"

# interfaces
.implements Lcom/app/ads/task/GetAdDetailTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/ads/AdsAct;->execDetail()V
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
    iput-object p1, p0, Lcom/app/ads/AdsAct$10;->this$0:Lcom/app/ads/AdsAct;

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/app/ads/bll/BllDetail;)V
    .locals 1
    .parameter "bll"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/app/ads/AdsAct$10;->this$0:Lcom/app/ads/AdsAct;

    #setter for: Lcom/app/ads/AdsAct;->mAdBll:Lcom/app/ads/bll/BllDetail;
    invoke-static {v0, p1}, Lcom/app/ads/AdsAct;->access$5(Lcom/app/ads/AdsAct;Lcom/app/ads/bll/BllDetail;)V

    .line 486
    iget-object v0, p0, Lcom/app/ads/AdsAct$10;->this$0:Lcom/app/ads/AdsAct;

    invoke-virtual {v0}, Lcom/app/ads/AdsAct;->showInfos()V

    .line 487
    return-void
.end method
