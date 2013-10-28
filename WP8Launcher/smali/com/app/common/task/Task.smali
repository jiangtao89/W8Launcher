.class public Lcom/app/common/task/Task;
.super Lcom/app/common/task/BaseTask;
.source "Task.java"


# instance fields
.field protected mDialogShow:Z

.field mDialogmsg:Ljava/lang/String;

.field protected mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "act"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/app/common/task/BaseTask;-><init>(Landroid/content/Context;)V

    .line 10
    const-string v0, "\u6b63\u5728\u6253\u5f00..."

    iput-object v0, p0, Lcom/app/common/task/Task;->mDialogmsg:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/app/common/task/Task;->mDialogShow:Z

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1
    .parameter "act"
    .parameter "isShowDialog"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/app/common/task/BaseTask;-><init>(Landroid/content/Context;)V

    .line 10
    const-string v0, "\u6b63\u5728\u6253\u5f00..."

    iput-object v0, p0, Lcom/app/common/task/Task;->mDialogmsg:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/app/common/task/Task;->mDialogShow:Z

    .line 20
    return-void
.end method


# virtual methods
.method public closeDialog()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/app/common/task/Task;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/app/common/task/Task;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/app/common/task/Task;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/app/common/task/Task;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 62
    :cond_0
    return-void
.end method

.method protected finish()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Lcom/app/common/task/BaseTask;->finish()V

    .line 67
    invoke-virtual {p0}, Lcom/app/common/task/Task;->closeDialog()V

    .line 68
    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/app/common/task/BaseTask;->onPostExecute(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/app/common/task/Task;->closeDialog()V

    .line 80
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/app/common/task/BaseTask;->onPreExecute()V

    .line 73
    iget-boolean v0, p0, Lcom/app/common/task/Task;->mDialogShow:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/app/common/task/Task;->showDialog()V

    .line 74
    :cond_0
    return-void
.end method

.method public setDialog(ZLjava/lang/String;)Lcom/app/common/task/Task;
    .locals 0
    .parameter "visible"
    .parameter "msg"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/app/common/task/Task;->mDialogShow:Z

    .line 29
    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/app/common/task/Task;->mDialogmsg:Ljava/lang/String;

    .line 30
    :cond_0
    return-object p0
.end method

.method public showDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 36
    iget-object v0, p0, Lcom/app/common/task/Task;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/app/common/task/Task;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/common/task/Task;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 38
    iget-object v0, p0, Lcom/app/common/task/Task;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/app/common/task/Task$1;

    invoke-direct {v2, p0}, Lcom/app/common/task/Task$1;-><init>(Lcom/app/common/task/Task;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/app/common/task/Task;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/app/common/task/Task$2;

    invoke-direct {v1, p0}, Lcom/app/common/task/Task$2;-><init>(Lcom/app/common/task/Task;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 50
    iget-object v0, p0, Lcom/app/common/task/Task;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 51
    iget-object v0, p0, Lcom/app/common/task/Task;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/app/common/task/Task;->mDialogmsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/app/common/task/Task;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 53
    iget-object v0, p0, Lcom/app/common/task/Task;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/app/common/task/Task;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 56
    return-void
.end method
