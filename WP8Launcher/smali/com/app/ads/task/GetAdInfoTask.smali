.class public Lcom/app/ads/task/GetAdInfoTask;
.super Lcom/app/common/gy/GyTask;
.source "GetAdInfoTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/app/common/gy/GyTask",
        "<",
        "Lcom/app/ads/adapter/AdInfoAdapter;",
        "Lcom/app/ads/bll/BllAds;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsMessageShow:Z

.field private mOrder:I

.field private mPosition:I


# direct methods
.method public constructor <init>(Lcom/app/common/Activity;Lcom/app/common/view/ListViewLM;ZZIIZ)V
    .locals 1
    .parameter "activity"
    .parameter "lvwlm"
    .parameter "isReadFile"
    .parameter "isRefresh"
    .parameter "order"
    .parameter "position"
    .parameter "isMessageShow"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/app/common/gy/GyTask;-><init>(Landroid/app/Activity;Lcom/app/common/view/ListViewLM;ZZ)V

    .line 17
    const/4 v0, 0x2

    iput v0, p0, Lcom/app/ads/task/GetAdInfoTask;->mOrder:I

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/app/ads/task/GetAdInfoTask;->mIsMessageShow:Z

    .line 36
    iput p5, p0, Lcom/app/ads/task/GetAdInfoTask;->mOrder:I

    .line 37
    iput p6, p0, Lcom/app/ads/task/GetAdInfoTask;->mPosition:I

    .line 38
    iput-boolean p7, p0, Lcom/app/ads/task/GetAdInfoTask;->mIsMessageShow:Z

    .line 39
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "params"

    .prologue
    .line 43
    new-instance v0, Lcom/app/ads/bll/BllAds;

    invoke-direct {v0}, Lcom/app/ads/bll/BllAds;-><init>()V

    iput-object v0, p0, Lcom/app/ads/task/GetAdInfoTask;->mBll:Lcom/app/common/bll/BllXmlPull;

    .line 44
    iget-object v0, p0, Lcom/app/ads/task/GetAdInfoTask;->mBll:Lcom/app/common/bll/BllXmlPull;

    check-cast v0, Lcom/app/ads/bll/BllAds;

    iget-object v1, p0, Lcom/app/ads/task/GetAdInfoTask;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/app/ads/task/GetAdInfoTask;->mOrder:I

    iget v3, p0, Lcom/app/ads/task/GetAdInfoTask;->mPosition:I

    invoke-virtual {p0}, Lcom/app/ads/task/GetAdInfoTask;->getPage()Lcom/app/common/bll/CPage;

    move-result-object v4

    iget-boolean v5, p0, Lcom/app/ads/task/GetAdInfoTask;->mIsMessageShow:Z

    invoke-virtual/range {v0 .. v5}, Lcom/app/ads/bll/BllAds;->getBllAds(Landroid/content/Context;IILcom/app/common/bll/CPage;Z)Lcom/app/ads/bll/BllAds;

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method
