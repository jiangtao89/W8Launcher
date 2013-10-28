.class public Lcom/app/ads/task/GetAdDetailTask;
.super Lcom/app/common/task/BaseTask;
.source "GetAdDetailTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/ads/task/GetAdDetailTask$Callback;
    }
.end annotation


# instance fields
.field private isAd:I

.field private mAppId:I

.field private mBll:Lcom/app/ads/bll/BllDetail;

.field private mCallback:Lcom/app/ads/task/GetAdDetailTask$Callback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;IILcom/app/ads/task/GetAdDetailTask$Callback;)V
    .locals 0
    .parameter "act"
    .parameter "appid"
    .parameter "isAd"
    .parameter "call"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/app/common/task/BaseTask;-><init>(Landroid/content/Context;)V

    .line 21
    iput p2, p0, Lcom/app/ads/task/GetAdDetailTask;->mAppId:I

    .line 22
    iput p3, p0, Lcom/app/ads/task/GetAdDetailTask;->isAd:I

    .line 23
    iput-object p4, p0, Lcom/app/ads/task/GetAdDetailTask;->mCallback:Lcom/app/ads/task/GetAdDetailTask$Callback;

    .line 24
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "params"

    .prologue
    .line 28
    new-instance v0, Lcom/app/ads/bll/BllDetail;

    invoke-direct {v0}, Lcom/app/ads/bll/BllDetail;-><init>()V

    iput-object v0, p0, Lcom/app/ads/task/GetAdDetailTask;->mBll:Lcom/app/ads/bll/BllDetail;

    .line 29
    iget-object v0, p0, Lcom/app/ads/task/GetAdDetailTask;->mBll:Lcom/app/ads/bll/BllDetail;

    iget-object v1, p0, Lcom/app/ads/task/GetAdDetailTask;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/app/ads/task/GetAdDetailTask;->mAppId:I

    iget v3, p0, Lcom/app/ads/task/GetAdDetailTask;->isAd:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/app/ads/bll/BllDetail;->getAdDetail(Landroid/content/Context;II)Z

    .line 30
    invoke-super {p0, p1}, Lcom/app/common/task/BaseTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/app/common/task/BaseTask;->onPostExecute(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/app/ads/task/GetAdDetailTask;->mCallback:Lcom/app/ads/task/GetAdDetailTask$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/app/ads/task/GetAdDetailTask;->mCallback:Lcom/app/ads/task/GetAdDetailTask$Callback;

    iget-object v1, p0, Lcom/app/ads/task/GetAdDetailTask;->mBll:Lcom/app/ads/bll/BllDetail;

    invoke-interface {v0, v1}, Lcom/app/ads/task/GetAdDetailTask$Callback;->callBack(Lcom/app/ads/bll/BllDetail;)V

    .line 37
    :cond_0
    return-void
.end method
