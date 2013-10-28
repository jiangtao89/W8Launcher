.class public abstract Lcom/app/common/gy/GyTask;
.super Lcom/app/common/task/Task;
.source "GyTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/app/common/gy/GyAdapter",
        "<TT;>;T:",
        "Lcom/app/common/bll/BllXmlPull;",
        ">",
        "Lcom/app/common/task/Task;"
    }
.end annotation


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mAdapter:Lcom/app/common/gy/GyAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field protected mBll:Lcom/app/common/bll/BllXmlPull;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mCurPosition:I

.field protected mIsReadFile:Z

.field protected mIsRefresh:Z

.field protected mListViewLM:Lcom/app/common/view/ListViewLM;

.field protected mPage:Lcom/app/common/bll/CPage;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/app/common/view/ListViewLM;ZZ)V
    .locals 4
    .parameter "activity"
    .parameter "lvwlm"
    .parameter "isReadFile"
    .parameter "isRefresh"

    .prologue
    .local p0, this:Lcom/app/common/gy/GyTask;,"Lcom/app/common/gy/GyTask<TE;TT;>;"
    const/4 v3, 0x0

    .line 41
    invoke-direct {p0, p1, v3}, Lcom/app/common/task/Task;-><init>(Landroid/app/Activity;Z)V

    .line 35
    iput v3, p0, Lcom/app/common/gy/GyTask;->mCurPosition:I

    .line 37
    iput-boolean v3, p0, Lcom/app/common/gy/GyTask;->mIsReadFile:Z

    .line 38
    iput-boolean v3, p0, Lcom/app/common/gy/GyTask;->mIsRefresh:Z

    .line 43
    iput-object p1, p0, Lcom/app/common/gy/GyTask;->mActivity:Landroid/app/Activity;

    .line 44
    iput-object p2, p0, Lcom/app/common/gy/GyTask;->mListViewLM:Lcom/app/common/view/ListViewLM;

    .line 47
    iget-object v1, p0, Lcom/app/common/gy/GyTask;->mListViewLM:Lcom/app/common/view/ListViewLM;

    invoke-virtual {v1}, Lcom/app/common/view/ListViewLM;->getGyAdapter()Lcom/app/common/gy/GyAdapter;

    move-result-object v0

    .line 48
    .local v0, adapter:Lcom/app/common/gy/GyAdapter;,"TE;"
    invoke-virtual {v0}, Lcom/app/common/gy/GyAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/app/common/gy/GyTask;->mCurPosition:I

    .line 50
    invoke-virtual {p0}, Lcom/app/common/gy/GyTask;->getPage()Lcom/app/common/bll/CPage;

    move-result-object v1

    iput-object v1, p0, Lcom/app/common/gy/GyTask;->mPage:Lcom/app/common/bll/CPage;

    .line 51
    iput-boolean p3, p0, Lcom/app/common/gy/GyTask;->mIsReadFile:Z

    .line 52
    iput-boolean p4, p0, Lcom/app/common/gy/GyTask;->mIsRefresh:Z

    .line 54
    iget-object v1, p0, Lcom/app/common/gy/GyTask;->mPage:Lcom/app/common/bll/CPage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/app/common/gy/GyTask;->mPage:Lcom/app/common/bll/CPage;

    invoke-virtual {v1}, Lcom/app/common/bll/CPage;->getP()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/app/common/gy/GyTask;->mIsRefresh:Z

    if-eqz v1, :cond_1

    .line 55
    :cond_0
    iget-object v1, p2, Lcom/app/common/view/ListViewLM;->mFooterView:Lcom/app/common/view/LoadMoreFooter;

    invoke-virtual {v1}, Lcom/app/common/view/LoadMoreFooter;->hideRotateIcon()V

    .line 60
    :goto_0
    return-void

    .line 57
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1}, Lcom/app/common/gy/GyTask;->setDialog(ZLjava/lang/String;)Lcom/app/common/task/Task;

    .line 58
    iget-object v1, p2, Lcom/app/common/view/ListViewLM;->mFooterView:Lcom/app/common/view/LoadMoreFooter;

    invoke-virtual {v1}, Lcom/app/common/view/LoadMoreFooter;->showRotateIcon()V

    goto :goto_0
.end method


# virtual methods
.method protected varargs abstract doInBackground([Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getPage()Lcom/app/common/bll/CPage;
    .locals 2

    .prologue
    .line 68
    .local p0, this:Lcom/app/common/gy/GyTask;,"Lcom/app/common/gy/GyTask<TE;TT;>;"
    iget-boolean v1, p0, Lcom/app/common/gy/GyTask;->mIsRefresh:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/app/common/gy/GyTask;->mIsReadFile:Z

    if-eqz v1, :cond_1

    .line 69
    :cond_0
    new-instance v1, Lcom/app/common/bll/CPage;

    invoke-direct {v1}, Lcom/app/common/bll/CPage;-><init>()V

    .line 79
    :goto_0
    return-object v1

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/app/common/gy/GyTask;->mListViewLM:Lcom/app/common/view/ListViewLM;

    invoke-virtual {v1}, Lcom/app/common/view/ListViewLM;->getGyAdapter()Lcom/app/common/gy/GyAdapter;

    move-result-object v0

    .line 74
    .local v0, adapter:Lcom/app/common/gy/GyAdapter;,"TE;"
    if-nez v0, :cond_2

    .line 75
    new-instance v1, Lcom/app/common/bll/CPage;

    invoke-direct {v1}, Lcom/app/common/bll/CPage;-><init>()V

    iput-object v1, p0, Lcom/app/common/gy/GyTask;->mPage:Lcom/app/common/bll/CPage;

    .line 79
    :goto_1
    iget-object v1, p0, Lcom/app/common/gy/GyTask;->mPage:Lcom/app/common/bll/CPage;

    goto :goto_0

    .line 77
    :cond_2
    iget-object v1, v0, Lcom/app/common/gy/GyAdapter;->mBll:Lcom/app/common/bll/BllXmlPull;

    iget-object v1, v1, Lcom/app/common/bll/BllXmlPull;->mPage:Lcom/app/common/bll/CPage;

    iput-object v1, p0, Lcom/app/common/gy/GyTask;->mPage:Lcom/app/common/bll/CPage;

    goto :goto_1
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .parameter "result"

    .prologue
    .local p0, this:Lcom/app/common/gy/GyTask;,"Lcom/app/common/gy/GyTask<TE;TT;>;"
    const/4 v5, 0x0

    .line 125
    invoke-super {p0, p1}, Lcom/app/common/task/Task;->onPostExecute(Ljava/lang/String;)V

    .line 127
    iget-object v3, p0, Lcom/app/common/gy/GyTask;->mListViewLM:Lcom/app/common/view/ListViewLM;

    invoke-virtual {v3, v5}, Lcom/app/common/view/ListViewLM;->setBindingTask(Z)V

    .line 128
    iget-object v3, p0, Lcom/app/common/gy/GyTask;->mListViewLM:Lcom/app/common/view/ListViewLM;

    iget-object v3, v3, Lcom/app/common/view/ListViewLM;->mFooterView:Lcom/app/common/view/LoadMoreFooter;

    invoke-virtual {v3}, Lcom/app/common/view/LoadMoreFooter;->hideRotateIcon()V

    .line 129
    iget-object v3, p0, Lcom/app/common/gy/GyTask;->mBll:Lcom/app/common/bll/BllXmlPull;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/app/common/gy/GyTask;->mBll:Lcom/app/common/bll/BllXmlPull;

    iget-object v3, v3, Lcom/app/common/bll/BllXmlPull;->mResult:Lcom/app/common/bll/CResult;

    invoke-virtual {v3}, Lcom/app/common/bll/CResult;->isSucceed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 130
    iget-object v3, p0, Lcom/app/common/gy/GyTask;->mListViewLM:Lcom/app/common/view/ListViewLM;

    sget-object v4, Lcom/app/common/view/EmptyView$State;->ERROR:Lcom/app/common/view/EmptyView$State;

    invoke-virtual {v3, v4}, Lcom/app/common/view/ListViewLM;->changeState(Lcom/app/common/view/EmptyView$State;)Z

    .line 134
    :goto_0
    iget-object v3, p0, Lcom/app/common/gy/GyTask;->mBll:Lcom/app/common/bll/BllXmlPull;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/app/common/gy/GyTask;->mBll:Lcom/app/common/bll/BllXmlPull;

    invoke-virtual {v3}, Lcom/app/common/bll/BllXmlPull;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 166
    :cond_0
    :goto_1
    return-void

    .line 132
    :cond_1
    iget-object v3, p0, Lcom/app/common/gy/GyTask;->mListViewLM:Lcom/app/common/view/ListViewLM;

    sget-object v4, Lcom/app/common/view/EmptyView$State;->EMPTY:Lcom/app/common/view/EmptyView$State;

    invoke-virtual {v3, v4}, Lcom/app/common/view/ListViewLM;->changeState(Lcom/app/common/view/EmptyView$State;)Z

    goto :goto_0

    .line 139
    :cond_2
    iget-object v3, p0, Lcom/app/common/gy/GyTask;->mListViewLM:Lcom/app/common/view/ListViewLM;

    invoke-virtual {v3}, Lcom/app/common/view/ListViewLM;->getGyAdapter()Lcom/app/common/gy/GyAdapter;

    move-result-object v0

    .line 141
    .local v0, adapter:Lcom/app/common/gy/GyAdapter;,"TE;"
    if-eqz v0, :cond_0

    .line 144
    iget-boolean v3, p0, Lcom/app/common/gy/GyTask;->mIsRefresh:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/app/common/gy/GyTask;->mIsReadFile:Z

    if-eqz v3, :cond_4

    .line 145
    :cond_3
    invoke-virtual {v0}, Lcom/app/common/gy/GyAdapter;->clearBll()V

    .line 146
    iput v5, p0, Lcom/app/common/gy/GyTask;->mCurPosition:I

    .line 149
    :cond_4
    iget-object v3, p0, Lcom/app/common/gy/GyTask;->mBll:Lcom/app/common/bll/BllXmlPull;

    invoke-virtual {v0, v3}, Lcom/app/common/gy/GyAdapter;->addBll(Lcom/app/common/bll/BllXmlPull;)V

    .line 151
    invoke-virtual {v0}, Lcom/app/common/gy/GyAdapter;->hasNextPage()Z

    move-result v3

    if-nez v3, :cond_6

    .line 152
    iget-object v3, p0, Lcom/app/common/gy/GyTask;->mListViewLM:Lcom/app/common/view/ListViewLM;

    invoke-virtual {v3}, Lcom/app/common/view/ListViewLM;->hideFooterView()V

    .line 156
    :goto_2
    invoke-virtual {v0}, Lcom/app/common/gy/GyAdapter;->notifyDataSetChanged()V

    .line 157
    iget-object v3, p0, Lcom/app/common/gy/GyTask;->mListViewLM:Lcom/app/common/view/ListViewLM;

    iget v4, p0, Lcom/app/common/gy/GyTask;->mCurPosition:I

    invoke-virtual {v3, v4}, Lcom/app/common/view/ListViewLM;->setSelection(I)V

    .line 159
    invoke-virtual {v0}, Lcom/app/common/gy/GyAdapter;->isImgToFileCache()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 160
    iget v2, p0, Lcom/app/common/gy/GyTask;->mCurPosition:I

    .line 161
    .local v2, start:I
    invoke-virtual {v0}, Lcom/app/common/gy/GyAdapter;->getCount()I

    move-result v1

    .line 162
    .local v1, end:I
    invoke-virtual {v0, v2, v1}, Lcom/app/common/gy/GyAdapter;->loadImage(II)V

    .line 165
    .end local v1           #end:I
    .end local v2           #start:I
    :cond_5
    iget v3, p0, Lcom/app/common/gy/GyTask;->mCurPosition:I

    invoke-virtual {v0}, Lcom/app/common/gy/GyAdapter;->getCount()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/app/common/gy/GyTask;->mCurPosition:I

    goto :goto_1

    .line 154
    :cond_6
    iget-object v3, p0, Lcom/app/common/gy/GyTask;->mListViewLM:Lcom/app/common/view/ListViewLM;

    invoke-virtual {v3}, Lcom/app/common/view/ListViewLM;->showFooterView()V

    goto :goto_2
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 84
    .local p0, this:Lcom/app/common/gy/GyTask;,"Lcom/app/common/gy/GyTask<TE;TT;>;"
    invoke-super {p0}, Lcom/app/common/task/Task;->onPreExecute()V

    .line 89
    iget-object v0, p0, Lcom/app/common/gy/GyTask;->mListViewLM:Lcom/app/common/view/ListViewLM;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/app/common/view/ListViewLM;->setBindingTask(Z)V

    .line 90
    iget-object v0, p0, Lcom/app/common/gy/GyTask;->mListViewLM:Lcom/app/common/view/ListViewLM;

    sget-object v1, Lcom/app/common/view/EmptyView$State;->LOADING:Lcom/app/common/view/EmptyView$State;

    invoke-virtual {v0, v1}, Lcom/app/common/view/ListViewLM;->changeState(Lcom/app/common/view/EmptyView$State;)Z

    .line 91
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 102
    .local p0, this:Lcom/app/common/gy/GyTask;,"Lcom/app/common/gy/GyTask<TE;TT;>;"
    iget-boolean v1, p0, Lcom/app/common/gy/GyTask;->mIsRefresh:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/app/common/gy/GyTask;->mIsReadFile:Z

    if-nez v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/app/common/gy/GyTask;->mBll:Lcom/app/common/bll/BllXmlPull;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/app/common/gy/GyTask;->mBll:Lcom/app/common/bll/BllXmlPull;

    invoke-virtual {v1}, Lcom/app/common/bll/BllXmlPull;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/app/common/gy/GyTask;->mListViewLM:Lcom/app/common/view/ListViewLM;

    invoke-virtual {v1}, Lcom/app/common/view/ListViewLM;->getGyAdapter()Lcom/app/common/gy/GyAdapter;

    move-result-object v0

    .line 112
    .local v0, adapter:Lcom/app/common/gy/GyAdapter;,"TE;"
    if-eqz v0, :cond_0

    .line 115
    iget-object v1, p0, Lcom/app/common/gy/GyTask;->mBll:Lcom/app/common/bll/BllXmlPull;

    invoke-virtual {v0, v1}, Lcom/app/common/gy/GyAdapter;->addBll(Lcom/app/common/bll/BllXmlPull;)V

    .line 117
    invoke-virtual {v0}, Lcom/app/common/gy/GyAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected publishFileReaded()V
    .locals 4

    .prologue
    .local p0, this:Lcom/app/common/gy/GyTask;,"Lcom/app/common/gy/GyTask<TE;TT;>;"
    const/4 v3, 0x1

    .line 172
    new-array v1, v3, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/app/common/gy/GyTask;->publishProgress([Ljava/lang/Object;)V

    .line 178
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
