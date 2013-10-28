.class Lcom/app/ads/AdsAct$6;
.super Ljava/lang/Object;
.source "AdsAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/ads/AdsAct;->execList()V
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
    iput-object p1, p0, Lcom/app/ads/AdsAct$6;->this$0:Lcom/app/ads/AdsAct;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/app/ads/AdsAct$6;->this$0:Lcom/app/ads/AdsAct;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/app/ads/AdsAct$6;->this$0:Lcom/app/ads/AdsAct;

    #getter for: Lcom/app/ads/AdsAct;->mSelf:Lcom/app/common/Activity;
    invoke-static {v2}, Lcom/app/ads/AdsAct;->access$3(Lcom/app/ads/AdsAct;)Lcom/app/common/Activity;

    move-result-object v2

    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/app/download/bean/DownloadManager;->getManagerAct()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/app/ads/AdsAct;->startActivity(Landroid/content/Intent;)V

    .line 209
    return-void
.end method
