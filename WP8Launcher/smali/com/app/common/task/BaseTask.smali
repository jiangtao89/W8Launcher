.class public Lcom/app/common/task/BaseTask;
.super Landroid/os/AsyncTask;
.source "BaseTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/common/task/BaseTask$TaskListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final cacheTask:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mListener:Lcom/app/common/task/BaseTask$TaskListener;

.field protected mReload:Z

.field protected mTaskType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/app/common/task/BaseTask;->cacheTask:Ljava/util/HashMap;

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "act"

    .prologue
    .line 22
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/app/common/task/BaseTask;-><init>(Landroid/content/Context;Lcom/app/common/task/BaseTask$TaskListener;IZ)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "type"

    .prologue
    .line 30
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/app/common/task/BaseTask;-><init>(Landroid/content/Context;Lcom/app/common/task/BaseTask$TaskListener;IZ)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/app/common/task/BaseTask$TaskListener;)V
    .locals 2
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 33
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/app/common/task/BaseTask;-><init>(Landroid/content/Context;Lcom/app/common/task/BaseTask$TaskListener;IZ)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/app/common/task/BaseTask$TaskListener;IZ)V
    .locals 0
    .parameter "context"
    .parameter "lis"
    .parameter "type"
    .parameter "reload"

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/app/common/task/BaseTask;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/app/common/task/BaseTask;->mListener:Lcom/app/common/task/BaseTask$TaskListener;

    .line 39
    iput p3, p0, Lcom/app/common/task/BaseTask;->mTaskType:I

    .line 40
    iput-boolean p4, p0, Lcom/app/common/task/BaseTask;->mReload:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "act"
    .parameter "reload"

    .prologue
    .line 26
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/app/common/task/BaseTask;-><init>(Landroid/content/Context;Lcom/app/common/task/BaseTask$TaskListener;IZ)V

    .line 27
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/app/common/task/BaseTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "params"

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public exec()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/app/common/task/BaseTask;->mTaskType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, key:Ljava/lang/String;
    sget-object v4, Lcom/app/common/task/BaseTask;->cacheTask:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 55
    :goto_0
    return v2

    .line 49
    :cond_0
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/app/common/task/BaseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 50
    sget-object v4, Lcom/app/common/task/BaseTask;->cacheTask:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "execute one task error,msg  "

    invoke-static {v3, v0}, Lcom/app/common/utils/ULog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected finish()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/app/common/task/BaseTask;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/app/common/task/BaseTask;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 78
    :cond_0
    return-void
.end method

.method protected getResult()Landroid/os/Message;
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/app/common/task/BaseTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 108
    sget-object v0, Lcom/app/common/task/BaseTask;->cacheTask:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/app/common/task/BaseTask;->mTaskType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/app/common/task/BaseTask;->mListener:Lcom/app/common/task/BaseTask$TaskListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/app/common/task/BaseTask;->mListener:Lcom/app/common/task/BaseTask$TaskListener;

    iget v1, p0, Lcom/app/common/task/BaseTask;->mTaskType:I

    iget-boolean v2, p0, Lcom/app/common/task/BaseTask;->mReload:Z

    invoke-virtual {p0}, Lcom/app/common/task/BaseTask;->getResult()Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/app/common/task/BaseTask$TaskListener;->onTaskEnd(IZLandroid/os/Message;)V

    .line 111
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/app/common/task/BaseTask;->mListener:Lcom/app/common/task/BaseTask$TaskListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/app/common/task/BaseTask;->mListener:Lcom/app/common/task/BaseTask$TaskListener;

    iget v1, p0, Lcom/app/common/task/BaseTask;->mTaskType:I

    iget-boolean v2, p0, Lcom/app/common/task/BaseTask;->mReload:Z

    invoke-interface {v0, v1, v2}, Lcom/app/common/task/BaseTask$TaskListener;->onTaskStart(IZ)V

    .line 87
    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 103
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/app/common/task/BaseTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public setReload(Z)Lcom/app/common/task/BaseTask;
    .locals 0
    .parameter "reload"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/app/common/task/BaseTask;->mReload:Z

    .line 60
    return-object p0
.end method

.method public setTaskListener(Lcom/app/common/task/BaseTask$TaskListener;)Lcom/app/common/task/BaseTask;
    .locals 0
    .parameter "l"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/app/common/task/BaseTask;->mListener:Lcom/app/common/task/BaseTask$TaskListener;

    .line 70
    return-object p0
.end method

.method public showMsg(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/app/common/task/BaseTask;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/app/common/utils/UMessage;->showTask(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    return-void
.end method
