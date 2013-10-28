.class public Lcom/lx/launcher8/task/PaperStatisticsTask;
.super Lcom/app/common/task/BaseTask;
.source "PaperStatisticsTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/task/PaperStatisticsTask$BllStatistics;
    }
.end annotation


# instance fields
.field private mStatisticsUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "act"
    .parameter "url"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/app/common/task/BaseTask;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    iput-object p2, p0, Lcom/lx/launcher8/task/PaperStatisticsTask;->mStatisticsUrl:Ljava/lang/String;

    .line 18
    invoke-virtual {p0}, Lcom/lx/launcher8/task/PaperStatisticsTask;->exec()Z

    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "params"

    .prologue
    .line 24
    new-instance v0, Lcom/lx/launcher8/task/PaperStatisticsTask$BllStatistics;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/task/PaperStatisticsTask$BllStatistics;-><init>(Lcom/lx/launcher8/task/PaperStatisticsTask;)V

    iget-object v1, p0, Lcom/lx/launcher8/task/PaperStatisticsTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lx/launcher8/task/PaperStatisticsTask;->mStatisticsUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/task/PaperStatisticsTask$BllStatistics;->exeStatistics(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    invoke-super {p0, p1}, Lcom/app/common/task/BaseTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
