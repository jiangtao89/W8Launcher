.class public Lcom/lx/launcher8/task/TopAppListTask;
.super Lcom/app/common/task/BaseTask;
.source "TopAppListTask.java"


# instance fields
.field private mBll:Lcom/lx/launcher8/bll/TopAppListBll;

.field private mPage:Lcom/app/common/bll/CPage;

.field private mParams:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "act"
    .parameter "url"

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lx/launcher8/task/TopAppListTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/app/common/bll/CPage;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/app/common/bll/CPage;)V
    .locals 1
    .parameter "act"
    .parameter "url"
    .parameter "page"

    .prologue
    .line 21
    const-string v0, ""

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lx/launcher8/task/TopAppListTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/app/common/bll/CPage;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/app/common/bll/CPage;Ljava/lang/String;)V
    .locals 0
    .parameter "act"
    .parameter "url"
    .parameter "page"
    .parameter "params"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/app/common/task/BaseTask;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p2, p0, Lcom/lx/launcher8/task/TopAppListTask;->mUrl:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/lx/launcher8/task/TopAppListTask;->mPage:Lcom/app/common/bll/CPage;

    .line 28
    iput-object p4, p0, Lcom/lx/launcher8/task/TopAppListTask;->mParams:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "params"

    .prologue
    .line 33
    new-instance v0, Lcom/lx/launcher8/bll/TopAppListBll;

    invoke-direct {v0}, Lcom/lx/launcher8/bll/TopAppListBll;-><init>()V

    iget-object v1, p0, Lcom/lx/launcher8/task/TopAppListTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lx/launcher8/task/TopAppListTask;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/lx/launcher8/task/TopAppListTask;->mParams:Ljava/lang/String;

    iget-object v4, p0, Lcom/lx/launcher8/task/TopAppListTask;->mPage:Lcom/app/common/bll/CPage;

    iget-boolean v5, p0, Lcom/lx/launcher8/task/TopAppListTask;->mReload:Z

    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/bll/TopAppListBll;->getAppList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;Z)Lcom/lx/launcher8/bll/TopAppListBll;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/task/TopAppListTask;->mBll:Lcom/lx/launcher8/bll/TopAppListBll;

    .line 34
    invoke-super {p0, p1}, Lcom/app/common/task/BaseTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getResult()Landroid/os/Message;
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 40
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/lx/launcher8/task/TopAppListTask;->mBll:Lcom/lx/launcher8/bll/TopAppListBll;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 41
    return-object v0
.end method
