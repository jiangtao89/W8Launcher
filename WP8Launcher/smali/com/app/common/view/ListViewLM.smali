.class public Lcom/app/common/view/ListViewLM;
.super Landroid/widget/LinearLayout;
.source "ListViewLM.java"


# instance fields
.field private mEmptyView:Landroid/view/View;

.field public mFooterView:Lcom/app/common/view/LoadMoreFooter;

.field private mGyAdapter:Lcom/app/common/gy/GyAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/app/common/gy/GyAdapter",
            "<*>;"
        }
    .end annotation
.end field

.field private mIsBindingTask:Z

.field private mIsLoadMoreAdd:Z

.field public mListView:Landroid/widget/ListView;

.field private mOnFinishedListener:Lcom/app/common/utils/OnFinishedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    iput-boolean v0, p0, Lcom/app/common/view/ListViewLM;->mIsLoadMoreAdd:Z

    .line 36
    iput-boolean v0, p0, Lcom/app/common/view/ListViewLM;->mIsBindingTask:Z

    .line 41
    invoke-virtual {p0}, Lcom/app/common/view/ListViewLM;->initView()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-boolean v0, p0, Lcom/app/common/view/ListViewLM;->mIsLoadMoreAdd:Z

    .line 36
    iput-boolean v0, p0, Lcom/app/common/view/ListViewLM;->mIsBindingTask:Z

    .line 47
    invoke-virtual {p0}, Lcom/app/common/view/ListViewLM;->initView()V

    .line 48
    return-void
.end method


# virtual methods
.method public changeState(Lcom/app/common/view/EmptyView$State;)Z
    .locals 2
    .parameter "state"

    .prologue
    .line 90
    iget-object v1, p0, Lcom/app/common/view/ListViewLM;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/app/common/view/ListViewLM;->mEmptyView:Landroid/view/View;

    instance-of v1, v1, Lcom/app/common/view/EmptyView;

    if-eqz v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/app/common/view/ListViewLM;->mEmptyView:Landroid/view/View;

    check-cast v0, Lcom/app/common/view/EmptyView;

    .line 92
    .local v0, ev:Lcom/app/common/view/EmptyView;
    invoke-virtual {v0, p1}, Lcom/app/common/view/EmptyView;->changeState(Lcom/app/common/view/EmptyView$State;)V

    .line 93
    const/4 v1, 0x1

    .line 95
    .end local v0           #ev:Lcom/app/common/view/EmptyView;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGyAdapter()Lcom/app/common/gy/GyAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/app/common/gy/GyAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/app/common/view/ListViewLM;->mGyAdapter:Lcom/app/common/gy/GyAdapter;

    return-object v0
.end method

.method public getOnFinishedListener()Lcom/app/common/utils/OnFinishedListener;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/app/common/view/ListViewLM;->mOnFinishedListener:Lcom/app/common/utils/OnFinishedListener;

    return-object v0
.end method

.method public hideFooterView()V
    .locals 2

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/app/common/view/ListViewLM;->mIsLoadMoreAdd:Z

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/app/common/view/ListViewLM;->mIsLoadMoreAdd:Z

    .line 124
    iget-object v0, p0, Lcom/app/common/view/ListViewLM;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/app/common/view/ListViewLM;->mFooterView:Lcom/app/common/view/LoadMoreFooter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 126
    :cond_0
    return-void
.end method

.method public initView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 51
    new-instance v0, Lcom/app/common/view/EmptyView;

    invoke-virtual {p0}, Lcom/app/common/view/ListViewLM;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/app/common/view/EmptyView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/common/view/ListViewLM;->mEmptyView:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/app/common/view/ListViewLM;->mEmptyView:Landroid/view/View;

    invoke-static {v3, v3}, Lcom/app/common/utils/ViewHelper;->getFLParam(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    new-instance v0, Lcom/app/common/view/LoadMoreFooter;

    invoke-virtual {p0}, Lcom/app/common/view/ListViewLM;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/app/common/view/LoadMoreFooter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/common/view/ListViewLM;->mFooterView:Lcom/app/common/view/LoadMoreFooter;

    .line 55
    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/app/common/view/ListViewLM;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/common/view/ListViewLM;->mListView:Landroid/widget/ListView;

    .line 58
    iget-object v0, p0, Lcom/app/common/view/ListViewLM;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 59
    iget-object v0, p0, Lcom/app/common/view/ListViewLM;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 60
    iget-object v0, p0, Lcom/app/common/view/ListViewLM;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 61
    iget-object v0, p0, Lcom/app/common/view/ListViewLM;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 62
    iget-object v0, p0, Lcom/app/common/view/ListViewLM;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 63
    iget-object v0, p0, Lcom/app/common/view/ListViewLM;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/app/common/view/ListViewLM;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/app/common/config/Resources;->list_item_selecte:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 64
    iget-object v0, p0, Lcom/app/common/view/ListViewLM;->mListView:Landroid/widget/ListView;

    invoke-static {v3, v3}, Lcom/app/common/utils/ViewHelper;->getFLParam(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v0, p0, Lcom/app/common/view/ListViewLM;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/app/common/view/ListViewLM;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 68
    iget-object v0, p0, Lcom/app/common/view/ListViewLM;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/app/common/view/ListViewLM;->addView(Landroid/view/View;)V

    .line 69
    iget-object v0, p0, Lcom/app/common/view/ListViewLM;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/app/common/view/ListViewLM;->addView(Landroid/view/View;)V

    .line 71
    return-void
.end method

.method public isBindingTask()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/app/common/view/ListViewLM;->mIsBindingTask:Z

    return v0
.end method

.method public isLoadMoreShowing()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/app/common/view/ListViewLM;->mIsLoadMoreAdd:Z

    return v0
.end method

.method public removeEmptyView()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/app/common/view/ListViewLM;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/app/common/view/ListViewLM;->removeView(Landroid/view/View;)V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/app/common/view/ListViewLM;->mEmptyView:Landroid/view/View;

    .line 202
    iget-object v0, p0, Lcom/app/common/view/ListViewLM;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/app/common/view/ListViewLM;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 203
    return-void
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;Z)V
    .locals 2
    .parameter "adapter"
    .parameter "isShowLoadMoreFooter"

    .prologue
    .line 137
    invoke-virtual {p0, p2}, Lcom/app/common/view/ListViewLM;->setFooterViewVisible(Z)V

    .line 139
    iget-object v0, p0, Lcom/app/common/view/ListViewLM;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    iget-object v0, p0, Lcom/app/common/view/ListViewLM;->mOnFinishedListener:Lcom/app/common/utils/OnFinishedListener;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/app/common/view/ListViewLM;->mOnFinishedListener:Lcom/app/common/utils/OnFinishedListener;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/app/common/utils/OnFinishedListener;->finish([Ljava/lang/Object;)V

    .line 143
    :cond_0
    return-void
.end method

.method public setAlwaysHideEmptyView()V
    .locals 2

    .prologue
    .line 193
    iget-object v1, p0, Lcom/app/common/view/ListViewLM;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    .line 194
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 195
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    :cond_0
    return-void
.end method

.method public setAutoShowEmptyView()V
    .locals 2

    .prologue
    .line 186
    iget-object v1, p0, Lcom/app/common/view/ListViewLM;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    .line 187
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 188
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 190
    :cond_0
    return-void
.end method

.method public setBindingTask(Z)V
    .locals 0
    .parameter "isBindingTask"

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/app/common/view/ListViewLM;->mIsBindingTask:Z

    .line 207
    return-void
.end method

.method public setEmpytView(Landroid/view/View;)V
    .locals 1
    .parameter "emptyView"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/app/common/view/ListViewLM;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/app/common/view/ListViewLM;->removeView(Landroid/view/View;)V

    .line 79
    iput-object p1, p0, Lcom/app/common/view/ListViewLM;->mEmptyView:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/app/common/view/ListViewLM;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/app/common/view/ListViewLM;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/app/common/view/ListViewLM;->addView(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Lcom/app/common/view/ListViewLM;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setFooterViewVisible(Z)V
    .locals 0
    .parameter "isShow"

    .prologue
    .line 129
    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/app/common/view/ListViewLM;->showFooterView()V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/app/common/view/ListViewLM;->hideFooterView()V

    goto :goto_0
.end method

.method public setFreshListener(Lcom/app/common/view/EmptyView$OnFreshListener;)Z
    .locals 2
    .parameter "listener"

    .prologue
    .line 103
    iget-object v1, p0, Lcom/app/common/view/ListViewLM;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/app/common/view/ListViewLM;->mEmptyView:Landroid/view/View;

    instance-of v1, v1, Lcom/app/common/view/EmptyView;

    if-eqz v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/app/common/view/ListViewLM;->mEmptyView:Landroid/view/View;

    check-cast v0, Lcom/app/common/view/EmptyView;

    .line 105
    .local v0, ev:Lcom/app/common/view/EmptyView;
    invoke-virtual {v0, p1}, Lcom/app/common/view/EmptyView;->setFreshListener(Lcom/app/common/view/EmptyView$OnFreshListener;)V

    .line 106
    const/4 v1, 0x1

    .line 108
    .end local v0           #ev:Lcom/app/common/view/EmptyView;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setGyAdapter(Lcom/app/common/gy/GyAdapter;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/app/common/gy/GyAdapter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, gyAdapter:Lcom/app/common/gy/GyAdapter;,"Lcom/app/common/gy/GyAdapter<*>;"
    iput-object p1, p0, Lcom/app/common/view/ListViewLM;->mGyAdapter:Lcom/app/common/gy/GyAdapter;

    .line 162
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/app/common/view/ListViewLM;->setAdapter(Landroid/widget/BaseAdapter;Z)V

    .line 164
    return-void
.end method

.method public setOnFinishedListener(Lcom/app/common/utils/OnFinishedListener;)V
    .locals 0
    .parameter "mOnFinishedListener"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/app/common/view/ListViewLM;->mOnFinishedListener:Lcom/app/common/utils/OnFinishedListener;

    .line 154
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 175
    .local p1, listener:Landroid/widget/AdapterView$OnItemClickListener;,"Landroid/widget/AdapterView$OnItemClickListener;"
    iget-object v0, p0, Lcom/app/common/view/ListViewLM;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 176
    return-void
.end method

.method public setOnNextPageClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "clickListener"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/app/common/view/ListViewLM;->mFooterView:Lcom/app/common/view/LoadMoreFooter;

    invoke-virtual {v0, p1}, Lcom/app/common/view/LoadMoreFooter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/app/common/view/ListViewLM;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 180
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/app/common/view/ListViewLM;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 172
    return-void
.end method

.method public showFooterView()V
    .locals 2

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/app/common/view/ListViewLM;->mIsLoadMoreAdd:Z

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/app/common/view/ListViewLM;->mIsLoadMoreAdd:Z

    .line 117
    iget-object v0, p0, Lcom/app/common/view/ListViewLM;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/app/common/view/ListViewLM;->mFooterView:Lcom/app/common/view/LoadMoreFooter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 119
    :cond_0
    return-void
.end method
