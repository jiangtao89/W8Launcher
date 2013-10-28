.class public Lcom/lx/launcher8/task/WpAdTask;
.super Lcom/app/common/task/BaseTask;
.source "WpAdTask.java"


# instance fields
.field private mListener:Lcom/lx/launcher8/task/OnLoadingOverListener;

.field private mParams:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mWpAdBll:Lcom/lx/launcher8/bll/WpAdBll;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "act"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/app/common/task/BaseTask;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "params"

    .prologue
    .line 20
    invoke-static {}, Lcom/lx/launcher8/bll/WpAdBll;->getInstance()Lcom/lx/launcher8/bll/WpAdBll;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/task/WpAdTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lx/launcher8/task/WpAdTask;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/lx/launcher8/task/WpAdTask;->mParams:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/lx/launcher8/bll/WpAdBll;->getInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/lx/launcher8/bll/WpAdBll;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/task/WpAdTask;->mWpAdBll:Lcom/lx/launcher8/bll/WpAdBll;

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/app/common/task/BaseTask;->onPostExecute(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/lx/launcher8/task/WpAdTask;->mListener:Lcom/lx/launcher8/task/OnLoadingOverListener;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/lx/launcher8/task/WpAdTask;->mListener:Lcom/lx/launcher8/task/OnLoadingOverListener;

    iget-object v1, p0, Lcom/lx/launcher8/task/WpAdTask;->mWpAdBll:Lcom/lx/launcher8/bll/WpAdBll;

    invoke-interface {v0, v1}, Lcom/lx/launcher8/task/OnLoadingOverListener;->onLoadingOver(Lcom/app/common/bll/BllXmlPull;)V

    .line 31
    :cond_0
    return-void
.end method

.method public setOnLoadingOverListener(Lcom/lx/launcher8/task/OnLoadingOverListener;)Lcom/lx/launcher8/task/WpAdTask;
    .locals 0
    .parameter "listener"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lx/launcher8/task/WpAdTask;->mListener:Lcom/lx/launcher8/task/OnLoadingOverListener;

    .line 45
    return-object p0
.end method

.method public setParams(Ljava/lang/String;)Lcom/lx/launcher8/task/WpAdTask;
    .locals 0
    .parameter "params"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lx/launcher8/task/WpAdTask;->mParams:Ljava/lang/String;

    .line 40
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/lx/launcher8/task/WpAdTask;
    .locals 0
    .parameter "url"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lx/launcher8/task/WpAdTask;->mUrl:Ljava/lang/String;

    .line 35
    return-object p0
.end method
