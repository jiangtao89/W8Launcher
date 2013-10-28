.class public Lcom/lx/launcher8/view/PullToRefreshListView;
.super Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;
.source "PullToRefreshListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/view/PullToRefreshListView$InternalListView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field isEmptyShowOnce:Z

.field mOnTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/view/PullToRefreshListView;->isEmptyShowOnce:Z

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/view/PullToRefreshListView;->isEmptyShowOnce:Z

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lx/launcher8/view/PullToRefreshBase$Mode;)V
    .locals 1
    .parameter "context"
    .parameter

    .prologue
    .line 24
    .local p2, mode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;,"Lcom/lx/launcher8/view/PullToRefreshBase$Mode;"
    invoke-direct {p0, p1, p2}, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/lx/launcher8/view/PullToRefreshBase$Mode;)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/view/PullToRefreshListView;->isEmptyShowOnce:Z

    .line 25
    return-void
.end method


# virtual methods
.method protected createHeaderView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createListView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    new-instance v0, Lcom/lx/launcher8/view/PullToRefreshListView$InternalListView;

    invoke-direct {v0, p0, p1, p2}, Lcom/lx/launcher8/view/PullToRefreshListView$InternalListView;-><init>(Lcom/lx/launcher8/view/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    .local v0, lv:Landroid/widget/ListView;
    return-object v0
.end method

.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/lx/launcher8/view/PullToRefreshListView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected final createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    new-instance v0, Lcom/lx/launcher8/view/PullToRefreshListView$InternalListView;

    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/lx/launcher8/view/PullToRefreshListView$InternalListView;-><init>(Lcom/lx/launcher8/view/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshListView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/view/PullToRefreshListView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/PullToRefreshListView$InternalListView;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/PullToRefreshListView$InternalListView;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onInitFinish()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->onInitFinish()V

    .line 64
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/PullToRefreshListView$InternalListView;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/view/PullToRefreshListView$InternalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 37
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1
    .parameter "h"

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/PullToRefreshListView$InternalListView;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/view/PullToRefreshListView$InternalListView;->setDividerHeight(I)V

    .line 29
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    .local p1, l:Landroid/widget/AdapterView$OnItemClickListener;,"Landroid/widget/AdapterView$OnItemClickListener;"
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/PullToRefreshListView$InternalListView;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/view/PullToRefreshListView$InternalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 33
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lx/launcher8/view/PullToRefreshListView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 54
    return-void
.end method
