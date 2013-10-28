.class public abstract Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;
.super Lcom/lx/launcher8/view/PullToRefreshBase;
.source "PullToRefreshAdapterViewBase.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/AbsListView;",
        ">",
        "Lcom/lx/launcher8/view/PullToRefreshBase",
        "<TT;>;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# static fields
.field static final DEFAULT_SHOW_INDICATOR:Z = true


# instance fields
.field protected mEmptyView:Landroid/view/View;

.field private mOnLastItemVisibleListener:Lcom/lx/launcher8/view/PullToRefreshBase$OnLastItemVisibleListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mRefreshableViewHolder:Landroid/widget/FrameLayout;

.field private mSavedLastVisibleIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;,"Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0, p1}, Lcom/lx/launcher8/view/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mSavedLastVisibleIndex:I

    .line 43
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;,"Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/lx/launcher8/view/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mSavedLastVisibleIndex:I

    .line 48
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lx/launcher8/view/PullToRefreshBase$Mode;)V
    .locals 1
    .parameter "context"
    .parameter

    .prologue
    .line 52
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;,"Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase<TT;>;"
    .local p2, mode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;,"Lcom/lx/launcher8/view/PullToRefreshBase$Mode;"
    invoke-direct {p0, p1, p2}, Lcom/lx/launcher8/view/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/lx/launcher8/view/PullToRefreshBase$Mode;)V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mSavedLastVisibleIndex:I

    .line 53
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 54
    return-void
.end method

.method private isFirstItemVisible()Z
    .locals 4

    .prologue
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;,"Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v2, 0x0

    .line 167
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->isContentEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 179
    :goto_0
    return v1

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v1, Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v1, Landroid/widget/AbsListView;

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 174
    .local v0, firstVisibleChild:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v1, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v1, Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getTop()I

    move-result v1

    if-lt v3, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    .end local v0           #firstVisibleChild:Landroid/view/View;
    :cond_2
    move v1, v2

    .line 179
    goto :goto_0
.end method

.method private isLastItemVisible()Z
    .locals 7

    .prologue
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;,"Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v5, 0x0

    .line 184
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->isContentEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 206
    :goto_0
    return v4

    .line 190
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v4, Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    .line 191
    .local v1, count:I
    iget-object v4, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v4, Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v3

    .line 197
    .local v3, lastVisiblePosition:I
    add-int/lit8 v4, v1, -0x1

    if-ne v3, v4, :cond_2

    .line 198
    iget-object v4, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v4, Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v0, v3, v4

    .line 199
    .local v0, childIndex:I
    iget-object v4, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v4, Landroid/widget/AbsListView;

    invoke-virtual {v4, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 200
    .local v2, lastVisibleChild:Landroid/view/View;
    if-eqz v2, :cond_2

    .line 201
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    iget-object v4, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v4, Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getBottom()I

    move-result v4

    if-gt v6, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_0

    .end local v0           #childIndex:I
    .end local v2           #lastVisibleChild:Landroid/view/View;
    :cond_2
    move v4, v5

    .line 206
    goto :goto_0
.end method


# virtual methods
.method protected addRefreshableView(Landroid/content/Context;Landroid/view/View;)V
    .locals 5
    .parameter "context"
    .parameter "refreshableView"

    .prologue
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;,"Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v4, -0x1

    .line 146
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mRefreshableViewHolder:Landroid/widget/FrameLayout;

    .line 147
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mRefreshableViewHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2, v4, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 149
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mRefreshableViewHolder:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    return-void
.end method

.method public abstract getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
.end method

.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 156
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;,"Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase<TT;>;"
    return-void
.end method

.method public isContentEmpty()Z
    .locals 2

    .prologue
    .line 210
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;,"Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase<TT;>;"
    iget-object v1, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v1, Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 211
    .local v0, adapter:Landroid/widget/Adapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    :cond_0
    const/4 v1, 0x1

    .line 214
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isReadyForPullDown()Z
    .locals 1

    .prologue
    .line 159
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;,"Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0}, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->isFirstItemVisible()Z

    move-result v0

    return v0
.end method

.method protected isReadyForPullUp()Z
    .locals 1

    .prologue
    .line 163
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;,"Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0}, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->isLastItemVisible()Z

    move-result v0

    return v0
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 67
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;,"Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase<TT;>;"
    iget-object v1, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/lx/launcher8/view/PullToRefreshBase$OnLastItemVisibleListener;

    if-eqz v1, :cond_0

    .line 70
    add-int v0, p2, p3

    .line 77
    .local v0, lastVisibleItemIndex:I
    if-lez p3, :cond_0

    add-int/lit8 v1, v0, 0x1

    if-ne v1, p4, :cond_0

    .line 78
    iget v1, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mSavedLastVisibleIndex:I

    if-eq v0, v1, :cond_0

    .line 79
    iput v0, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mSavedLastVisibleIndex:I

    .line 80
    iget-object v1, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/lx/launcher8/view/PullToRefreshBase$OnLastItemVisibleListener;

    invoke-interface {v1}, Lcom/lx/launcher8/view/PullToRefreshBase$OnLastItemVisibleListener;->onLastItemVisible()V

    .line 85
    .end local v0           #lastVisibleItemIndex:I
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 88
    :cond_1
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 91
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;,"Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase<TT;>;"
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 94
    :cond_0
    return-void
.end method

.method public final setEmptyView(Landroid/view/View;)V
    .locals 4
    .parameter "newEmptyView"

    .prologue
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;,"Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v3, -0x1

    .line 112
    iget-object v1, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mRefreshableViewHolder:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 116
    :cond_0
    if-eqz p1, :cond_2

    .line 119
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 122
    .local v0, newEmptyViewParent:Landroid/view/ViewParent;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 123
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #newEmptyViewParent:Landroid/view/ViewParent;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mRefreshableViewHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1, v3, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 133
    iput-object p1, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mEmptyView:Landroid/view/View;

    .line 135
    :cond_2
    return-void
.end method

.method public final setOnLastItemVisibleListener(Lcom/lx/launcher8/view/PullToRefreshBase$OnLastItemVisibleListener;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;,"Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase<TT;>;"
    .local p1, listener:Lcom/lx/launcher8/view/PullToRefreshBase$OnLastItemVisibleListener;,"Lcom/lx/launcher8/view/PullToRefreshBase$OnLastItemVisibleListener;"
    iput-object p1, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/lx/launcher8/view/PullToRefreshBase$OnLastItemVisibleListener;

    .line 139
    return-void
.end method

.method public final setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 142
    .local p0, this:Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;,"Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase<TT;>;"
    iput-object p1, p0, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 143
    return-void
.end method
