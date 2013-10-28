.class public Lcom/lx/launcher8/task/TopAppCateTask;
.super Lcom/app/common/task/BaseTask;
.source "TopAppCateTask.java"


# instance fields
.field private mBll:Lcom/lx/launcher8/bll/TopAppCateBll;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "act"
    .parameter "url"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/app/common/task/BaseTask;-><init>(Landroid/content/Context;)V

    .line 15
    iput-object p2, p0, Lcom/lx/launcher8/task/TopAppCateTask;->mUrl:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "params"

    .prologue
    .line 20
    new-instance v0, Lcom/lx/launcher8/bll/TopAppCateBll;

    invoke-direct {v0}, Lcom/lx/launcher8/bll/TopAppCateBll;-><init>()V

    iget-object v1, p0, Lcom/lx/launcher8/task/TopAppCateTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lx/launcher8/task/TopAppCateTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/bll/TopAppCateBll;->getAppCateList(Landroid/content/Context;Ljava/lang/String;)Lcom/lx/launcher8/bll/TopAppCateBll;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/task/TopAppCateTask;->mBll:Lcom/lx/launcher8/bll/TopAppCateBll;

    .line 21
    invoke-super {p0, p1}, Lcom/app/common/task/BaseTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getResult()Landroid/os/Message;
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 27
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/lx/launcher8/task/TopAppCateTask;->mBll:Lcom/lx/launcher8/bll/TopAppCateBll;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    return-object v0
.end method
