.class public Lcom/lx/launcher8/task/ThemeDetailTask;
.super Lcom/app/common/task/BaseTask;
.source "ThemeDetailTask.java"


# instance fields
.field private mBll:Lcom/lx/launcher8/bll/BllThemeDetail;

.field private mId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "act"
    .parameter "id"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/app/common/task/BaseTask;-><init>(Landroid/content/Context;)V

    .line 16
    iput p2, p0, Lcom/lx/launcher8/task/ThemeDetailTask;->mId:I

    .line 17
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "params"

    .prologue
    .line 21
    new-instance v0, Lcom/lx/launcher8/bll/BllThemeDetail;

    invoke-direct {v0}, Lcom/lx/launcher8/bll/BllThemeDetail;-><init>()V

    iget-object v1, p0, Lcom/lx/launcher8/task/ThemeDetailTask;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/lx/launcher8/task/ThemeDetailTask;->mId:I

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/bll/BllThemeDetail;->getThemeDetail(Landroid/content/Context;I)Lcom/lx/launcher8/bll/BllThemeDetail;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/task/ThemeDetailTask;->mBll:Lcom/lx/launcher8/bll/BllThemeDetail;

    .line 22
    const-string v0, ""

    return-object v0
.end method

.method protected getResult()Landroid/os/Message;
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 28
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/lx/launcher8/task/ThemeDetailTask;->mBll:Lcom/lx/launcher8/bll/BllThemeDetail;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 29
    return-object v0
.end method
