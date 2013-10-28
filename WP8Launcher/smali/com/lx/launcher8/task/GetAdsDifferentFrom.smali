.class public Lcom/lx/launcher8/task/GetAdsDifferentFrom;
.super Lcom/app/common/task/BaseTask;
.source "GetAdsDifferentFrom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/task/GetAdsDifferentFrom$OnDisplayAds;
    }
.end annotation


# instance fields
.field public mBll:Lcom/lx/launcher8/task/BllWP8Init;

.field private mDisplayListener:Lcom/lx/launcher8/task/GetAdsDifferentFrom$OnDisplayAds;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/lx/launcher8/task/GetAdsDifferentFrom$OnDisplayAds;)V
    .locals 0
    .parameter "act"
    .parameter "onDisplayAds"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/app/common/task/BaseTask;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object p2, p0, Lcom/lx/launcher8/task/GetAdsDifferentFrom;->mDisplayListener:Lcom/lx/launcher8/task/GetAdsDifferentFrom$OnDisplayAds;

    .line 21
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "params"

    .prologue
    .line 25
    new-instance v0, Lcom/lx/launcher8/task/BllWP8Init;

    invoke-direct {v0}, Lcom/lx/launcher8/task/BllWP8Init;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/task/GetAdsDifferentFrom;->mBll:Lcom/lx/launcher8/task/BllWP8Init;

    .line 26
    iget-object v0, p0, Lcom/lx/launcher8/task/GetAdsDifferentFrom;->mBll:Lcom/lx/launcher8/task/BllWP8Init;

    iget-object v1, p0, Lcom/lx/launcher8/task/GetAdsDifferentFrom;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/app/common/config/BaseGlobal;->getSoftId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/task/BllWP8Init;->getInitInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/lx/launcher8/task/GetAdsDifferentFrom;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lx/launcher8/task/GetAdsDifferentFrom;->mBll:Lcom/lx/launcher8/task/BllWP8Init;

    invoke-virtual {v1}, Lcom/lx/launcher8/task/BllWP8Init;->isToCheckScore()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/app/ads/config/AdGlobal;->setToCheckScore(Landroid/content/Context;Z)V

    .line 28
    iget-object v0, p0, Lcom/lx/launcher8/task/GetAdsDifferentFrom;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lx/launcher8/task/GetAdsDifferentFrom;->mBll:Lcom/lx/launcher8/task/BllWP8Init;

    invoke-virtual {v1}, Lcom/lx/launcher8/task/BllWP8Init;->isDisplay()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/app/ads/config/AdGlobal;->setDisplay(Landroid/content/Context;Z)V

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lx/launcher8/task/GetAdsDifferentFrom;->mBll:Lcom/lx/launcher8/task/BllWP8Init;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/task/GetAdsDifferentFrom;->mBll:Lcom/lx/launcher8/task/BllWP8Init;

    invoke-virtual {v0}, Lcom/lx/launcher8/task/BllWP8Init;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/lx/launcher8/task/GetAdsDifferentFrom;->mContext:Landroid/content/Context;

    const-string v1, "servermsg"

    iget-object v2, p0, Lcom/lx/launcher8/task/GetAdsDifferentFrom;->mBll:Lcom/lx/launcher8/task/BllWP8Init;

    iget-object v2, v2, Lcom/lx/launcher8/task/BllWP8Init;->myShowInfo:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/app/common/utils/UPreference;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/task/GetAdsDifferentFrom;->mDisplayListener:Lcom/lx/launcher8/task/GetAdsDifferentFrom$OnDisplayAds;

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/lx/launcher8/task/GetAdsDifferentFrom;->mDisplayListener:Lcom/lx/launcher8/task/GetAdsDifferentFrom$OnDisplayAds;

    iget-object v1, p0, Lcom/lx/launcher8/task/GetAdsDifferentFrom;->mBll:Lcom/lx/launcher8/task/BllWP8Init;

    invoke-interface {v0, v1}, Lcom/lx/launcher8/task/GetAdsDifferentFrom$OnDisplayAds;->displayAds(Lcom/lx/launcher8/task/BllWP8Init;)V

    .line 40
    :cond_1
    return-void
.end method
