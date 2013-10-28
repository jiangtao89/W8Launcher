.class public Lcom/lx/launcher8/task/ThemeCateTask;
.super Lcom/app/common/task/BaseTask;
.source "ThemeCateTask.java"


# instance fields
.field mBll:Lcom/lx/launcher8/bll/BllThemeCate;


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
    .locals 4
    .parameter "params"

    .prologue
    .line 21
    new-instance v1, Lcom/lx/launcher8/bll/BllThemeCate;

    invoke-direct {v1}, Lcom/lx/launcher8/bll/BllThemeCate;-><init>()V

    iput-object v1, p0, Lcom/lx/launcher8/task/ThemeCateTask;->mBll:Lcom/lx/launcher8/bll/BllThemeCate;

    .line 22
    invoke-static {}, Lcom/lx/launcher8/util/CachePathUtil;->getOnlineThemeCate()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, cachePath:Ljava/lang/String;
    iget-object v1, p0, Lcom/lx/launcher8/task/ThemeCateTask;->mBll:Lcom/lx/launcher8/bll/BllThemeCate;

    iget-object v2, p0, Lcom/lx/launcher8/task/ThemeCateTask;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/lx/launcher8/task/ThemeCateTask;->mReload:Z

    invoke-virtual {v1, v2, v0, v3}, Lcom/lx/launcher8/bll/BllThemeCate;->getCateList(Landroid/content/Context;Ljava/lang/String;Z)Lcom/lx/launcher8/bll/BllThemeCate;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/task/ThemeCateTask;->mBll:Lcom/lx/launcher8/bll/BllThemeCate;

    .line 24
    const-string v1, ""

    return-object v1
.end method

.method protected getResult()Landroid/os/Message;
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 31
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/lx/launcher8/task/ThemeCateTask;->mBll:Lcom/lx/launcher8/bll/BllThemeCate;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 32
    return-object v0
.end method
