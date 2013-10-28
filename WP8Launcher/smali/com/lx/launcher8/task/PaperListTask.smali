.class public Lcom/lx/launcher8/task/PaperListTask;
.super Lcom/app/common/task/BaseTask;
.source "PaperListTask.java"


# instance fields
.field private listener:Lcom/lx/launcher8/task/OnLoadingOverListener;

.field private mPage:Lcom/app/common/bll/CPage;

.field private params:Ljava/lang/String;

.field private plBll:Lcom/lx/launcher8/bll/PaperListBll;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1}, Lcom/app/common/task/BaseTask;-><init>(Landroid/content/Context;)V

    .line 12
    iput-object v0, p0, Lcom/lx/launcher8/task/PaperListTask;->plBll:Lcom/lx/launcher8/bll/PaperListBll;

    .line 14
    iput-object v0, p0, Lcom/lx/launcher8/task/PaperListTask;->url:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/lx/launcher8/task/PaperListTask;->params:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "p"

    .prologue
    .line 28
    invoke-static {}, Lcom/lx/launcher8/bll/PaperListBll;->getInstance()Lcom/lx/launcher8/bll/PaperListBll;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/task/PaperListTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lx/launcher8/task/PaperListTask;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/lx/launcher8/task/PaperListTask;->params:Ljava/lang/String;

    iget-object v4, p0, Lcom/lx/launcher8/task/PaperListTask;->mPage:Lcom/app/common/bll/CPage;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lx/launcher8/bll/PaperListBll;->getInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;)Lcom/lx/launcher8/bll/PaperListBll;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/task/PaperListTask;->plBll:Lcom/lx/launcher8/bll/PaperListBll;

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/app/common/task/BaseTask;->onPostExecute(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/lx/launcher8/task/PaperListTask;->plBll:Lcom/lx/launcher8/bll/PaperListBll;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/task/PaperListTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lx/launcher8/task/PaperListTask;->plBll:Lcom/lx/launcher8/bll/PaperListBll;

    iget-object v1, v1, Lcom/lx/launcher8/bll/PaperListBll;->mResult:Lcom/app/common/bll/CResult;

    invoke-static {v0, v1}, Lcom/app/common/bll/CResult;->isSuccess(Landroid/content/Context;Lcom/app/common/bll/CResult;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/task/PaperListTask;->listener:Lcom/lx/launcher8/task/OnLoadingOverListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/task/PaperListTask;->listener:Lcom/lx/launcher8/task/OnLoadingOverListener;

    iget-object v1, p0, Lcom/lx/launcher8/task/PaperListTask;->plBll:Lcom/lx/launcher8/bll/PaperListBll;

    invoke-interface {v0, v1}, Lcom/lx/launcher8/task/OnLoadingOverListener;->onLoadingOver(Lcom/app/common/bll/BllXmlPull;)V

    goto :goto_0
.end method

.method public setOnLoadingOverListener(Lcom/lx/launcher8/task/OnLoadingOverListener;)Lcom/lx/launcher8/task/PaperListTask;
    .locals 0
    .parameter "listener"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lx/launcher8/task/PaperListTask;->listener:Lcom/lx/launcher8/task/OnLoadingOverListener;

    .line 58
    return-object p0
.end method

.method public setPageCount(Lcom/app/common/bll/CPage;)Lcom/lx/launcher8/task/PaperListTask;
    .locals 0
    .parameter "page"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lx/launcher8/task/PaperListTask;->mPage:Lcom/app/common/bll/CPage;

    .line 53
    return-object p0
.end method

.method public setParams(Ljava/lang/String;)Lcom/lx/launcher8/task/PaperListTask;
    .locals 0
    .parameter "params"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lx/launcher8/task/PaperListTask;->params:Ljava/lang/String;

    .line 48
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/lx/launcher8/task/PaperListTask;
    .locals 0
    .parameter "url"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/lx/launcher8/task/PaperListTask;->url:Ljava/lang/String;

    .line 43
    return-object p0
.end method
