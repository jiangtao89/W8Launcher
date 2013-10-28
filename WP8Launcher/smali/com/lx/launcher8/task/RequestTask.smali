.class public Lcom/lx/launcher8/task/RequestTask;
.super Lcom/app/common/task/BaseTask;
.source "RequestTask.java"


# instance fields
.field private mParams:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "act"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/app/common/task/BaseTask;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "params"

    .prologue
    .line 21
    invoke-static {}, Lcom/lx/launcher8/bll/RequestBll;->getInstance()Lcom/lx/launcher8/bll/RequestBll;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/task/RequestTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lx/launcher8/task/RequestTask;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/lx/launcher8/task/RequestTask;->mParams:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/lx/launcher8/bll/RequestBll;->getInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/lx/launcher8/bll/RequestBll;

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public setParams(Ljava/lang/String;)Lcom/lx/launcher8/task/RequestTask;
    .locals 0
    .parameter "params"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lx/launcher8/task/RequestTask;->mParams:Ljava/lang/String;

    .line 32
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/lx/launcher8/task/RequestTask;
    .locals 0
    .parameter "url"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/lx/launcher8/task/RequestTask;->mUrl:Ljava/lang/String;

    .line 27
    return-object p0
.end method
