.class public Lcom/lx/launcher8/task/SearchKeyTask;
.super Lcom/app/common/task/BaseTask;
.source "SearchKeyTask.java"


# instance fields
.field private listener:Lcom/lx/launcher8/task/OnLoadingOverListener;

.field private params:Ljava/lang/String;

.field private searchKeyBll:Lcom/lx/launcher8/bll/SearchKeyBll;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1}, Lcom/app/common/task/BaseTask;-><init>(Landroid/content/Context;)V

    .line 10
    iput-object v0, p0, Lcom/lx/launcher8/task/SearchKeyTask;->searchKeyBll:Lcom/lx/launcher8/bll/SearchKeyBll;

    .line 12
    iput-object v0, p0, Lcom/lx/launcher8/task/SearchKeyTask;->url:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/lx/launcher8/task/SearchKeyTask;->params:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/lx/launcher8/task/SearchKeyTask;->listener:Lcom/lx/launcher8/task/OnLoadingOverListener;

    .line 20
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "p"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lx/launcher8/task/SearchKeyTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lx/launcher8/task/SearchKeyTask;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/lx/launcher8/task/SearchKeyTask;->params:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lx/launcher8/bll/SearchKeyBll;->getInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/lx/launcher8/bll/SearchKeyBll;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/task/SearchKeyTask;->searchKeyBll:Lcom/lx/launcher8/bll/SearchKeyBll;

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/app/common/task/BaseTask;->onPostExecute(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/lx/launcher8/task/SearchKeyTask;->listener:Lcom/lx/launcher8/task/OnLoadingOverListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/task/SearchKeyTask;->listener:Lcom/lx/launcher8/task/OnLoadingOverListener;

    iget-object v1, p0, Lcom/lx/launcher8/task/SearchKeyTask;->searchKeyBll:Lcom/lx/launcher8/bll/SearchKeyBll;

    invoke-interface {v0, v1}, Lcom/lx/launcher8/task/OnLoadingOverListener;->onLoadingOver(Lcom/app/common/bll/BllXmlPull;)V

    .line 32
    :cond_0
    return-void
.end method

.method public setOnLoadingOverListener(Lcom/lx/launcher8/task/OnLoadingOverListener;)Lcom/lx/launcher8/task/SearchKeyTask;
    .locals 0
    .parameter "listener"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lx/launcher8/task/SearchKeyTask;->listener:Lcom/lx/launcher8/task/OnLoadingOverListener;

    .line 46
    return-object p0
.end method

.method public setParams(Ljava/lang/String;)Lcom/lx/launcher8/task/SearchKeyTask;
    .locals 0
    .parameter "params"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lx/launcher8/task/SearchKeyTask;->params:Ljava/lang/String;

    .line 41
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/lx/launcher8/task/SearchKeyTask;
    .locals 0
    .parameter "url"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lx/launcher8/task/SearchKeyTask;->url:Ljava/lang/String;

    .line 36
    return-object p0
.end method
