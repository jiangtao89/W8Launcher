.class public Lcom/lx/launcher8/task/PaperTypeListTask;
.super Lcom/app/common/task/BaseTask;
.source "PaperTypeListTask.java"


# instance fields
.field private listener:Lcom/lx/launcher8/task/OnLoadingOverListener;

.field private paperTypeListBll:Lcom/lx/launcher8/bll/PaperTypeListBll;

.field private params:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1}, Lcom/app/common/task/BaseTask;-><init>(Landroid/content/Context;)V

    .line 11
    iput-object v0, p0, Lcom/lx/launcher8/task/PaperTypeListTask;->url:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/lx/launcher8/task/PaperTypeListTask;->params:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/lx/launcher8/task/PaperTypeListTask;->paperTypeListBll:Lcom/lx/launcher8/bll/PaperTypeListBll;

    .line 21
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "p"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lx/launcher8/task/PaperTypeListTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lx/launcher8/task/PaperTypeListTask;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/lx/launcher8/task/PaperTypeListTask;->params:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lx/launcher8/bll/PaperTypeListBll;->getInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/lx/launcher8/bll/PaperTypeListBll;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/task/PaperTypeListTask;->paperTypeListBll:Lcom/lx/launcher8/bll/PaperTypeListBll;

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/app/common/task/BaseTask;->onPostExecute(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/lx/launcher8/task/PaperTypeListTask;->paperTypeListBll:Lcom/lx/launcher8/bll/PaperTypeListBll;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/task/PaperTypeListTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lx/launcher8/task/PaperTypeListTask;->paperTypeListBll:Lcom/lx/launcher8/bll/PaperTypeListBll;

    iget-object v1, v1, Lcom/lx/launcher8/bll/PaperTypeListBll;->mResult:Lcom/app/common/bll/CResult;

    invoke-static {v0, v1}, Lcom/app/common/bll/CResult;->isSuccess(Landroid/content/Context;Lcom/app/common/bll/CResult;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/task/PaperTypeListTask;->listener:Lcom/lx/launcher8/task/OnLoadingOverListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/task/PaperTypeListTask;->listener:Lcom/lx/launcher8/task/OnLoadingOverListener;

    iget-object v1, p0, Lcom/lx/launcher8/task/PaperTypeListTask;->paperTypeListBll:Lcom/lx/launcher8/bll/PaperTypeListBll;

    invoke-interface {v0, v1}, Lcom/lx/launcher8/task/OnLoadingOverListener;->onLoadingOver(Lcom/app/common/bll/BllXmlPull;)V

    goto :goto_0
.end method

.method public setOnLoadingOverListener(Lcom/lx/launcher8/task/OnLoadingOverListener;)Lcom/lx/launcher8/task/PaperTypeListTask;
    .locals 0
    .parameter "listener"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lx/launcher8/task/PaperTypeListTask;->listener:Lcom/lx/launcher8/task/OnLoadingOverListener;

    .line 50
    return-object p0
.end method

.method public setParams(Ljava/lang/String;)Lcom/lx/launcher8/task/PaperTypeListTask;
    .locals 0
    .parameter "params"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lx/launcher8/task/PaperTypeListTask;->params:Ljava/lang/String;

    .line 45
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/lx/launcher8/task/PaperTypeListTask;
    .locals 0
    .parameter "url"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lx/launcher8/task/PaperTypeListTask;->url:Ljava/lang/String;

    .line 40
    return-object p0
.end method
