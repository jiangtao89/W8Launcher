.class public Lcom/lx/launcher8/task/TopAppDetailTask;
.super Lcom/app/common/task/BaseTask;
.source "TopAppDetailTask.java"


# instance fields
.field private mBll:Lcom/lx/launcher8/bll/TopAppDetailBll;

.field private mParams:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "act"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/app/common/task/BaseTask;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object p2, p0, Lcom/lx/launcher8/task/TopAppDetailTask;->mUrl:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/lx/launcher8/task/TopAppDetailTask;->mParams:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "params"

    .prologue
    .line 22
    new-instance v0, Lcom/lx/launcher8/bll/TopAppDetailBll;

    invoke-direct {v0}, Lcom/lx/launcher8/bll/TopAppDetailBll;-><init>()V

    iget-object v1, p0, Lcom/lx/launcher8/task/TopAppDetailTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lx/launcher8/task/TopAppDetailTask;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/lx/launcher8/task/TopAppDetailTask;->mParams:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/lx/launcher8/bll/TopAppDetailBll;->getAppDetail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/lx/launcher8/bll/TopAppDetailBll;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/task/TopAppDetailTask;->mBll:Lcom/lx/launcher8/bll/TopAppDetailBll;

    .line 23
    invoke-super {p0, p1}, Lcom/app/common/task/BaseTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getResult()Landroid/os/Message;
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 29
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/lx/launcher8/task/TopAppDetailTask;->mBll:Lcom/lx/launcher8/bll/TopAppDetailBll;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 30
    return-object v0
.end method
