.class public Lcom/lx/launcher8/task/UrlTask;
.super Lcom/app/common/task/BaseTask;
.source "UrlTask.java"


# instance fields
.field private mListener:Lcom/lx/launcher8/task/OnLoadingOverListener;

.field private mParams:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mUrlBll:Lcom/lx/launcher8/bll/UrlBll;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/app/common/task/BaseTask;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "params"

    .prologue
    .line 21
    invoke-static {}, Lcom/lx/launcher8/bll/UrlBll;->getInstance()Lcom/lx/launcher8/bll/UrlBll;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/task/UrlTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lx/launcher8/task/UrlTask;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/lx/launcher8/task/UrlTask;->mParams:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lx/launcher8/bll/UrlBll;->getInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/lx/launcher8/bll/UrlBll;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/task/UrlTask;->mUrlBll:Lcom/lx/launcher8/bll/UrlBll;

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/app/common/task/BaseTask;->onPostExecute(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/lx/launcher8/task/UrlTask;->mUrlBll:Lcom/lx/launcher8/bll/UrlBll;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/task/UrlTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lx/launcher8/task/UrlTask;->mUrlBll:Lcom/lx/launcher8/bll/UrlBll;

    iget-object v1, v1, Lcom/lx/launcher8/bll/UrlBll;->mResult:Lcom/app/common/bll/CResult;

    invoke-static {v0, v1}, Lcom/app/common/bll/CResult;->isSuccess(Landroid/content/Context;Lcom/app/common/bll/CResult;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/task/UrlTask;->mListener:Lcom/lx/launcher8/task/OnLoadingOverListener;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/lx/launcher8/task/UrlTask;->mListener:Lcom/lx/launcher8/task/OnLoadingOverListener;

    iget-object v1, p0, Lcom/lx/launcher8/task/UrlTask;->mUrlBll:Lcom/lx/launcher8/bll/UrlBll;

    invoke-interface {v0, v1}, Lcom/lx/launcher8/task/OnLoadingOverListener;->onLoadingOver(Lcom/app/common/bll/BllXmlPull;)V

    goto :goto_0
.end method

.method public setOnLoadingOverListener(Lcom/lx/launcher8/task/OnLoadingOverListener;)Lcom/lx/launcher8/task/UrlTask;
    .locals 0
    .parameter "listener"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lx/launcher8/task/UrlTask;->mListener:Lcom/lx/launcher8/task/OnLoadingOverListener;

    .line 49
    return-object p0
.end method

.method public setParams(Ljava/lang/String;)Lcom/lx/launcher8/task/UrlTask;
    .locals 0
    .parameter "params"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lx/launcher8/task/UrlTask;->mParams:Ljava/lang/String;

    .line 44
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/lx/launcher8/task/UrlTask;
    .locals 0
    .parameter "url"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lx/launcher8/task/UrlTask;->mUrl:Ljava/lang/String;

    .line 39
    return-object p0
.end method
