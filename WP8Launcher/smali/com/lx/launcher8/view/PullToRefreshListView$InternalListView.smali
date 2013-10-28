.class public Lcom/lx/launcher8/view/PullToRefreshListView$InternalListView;
.super Landroid/widget/ListView;
.source "PullToRefreshListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/view/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InternalListView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/view/PullToRefreshListView;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/view/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/lx/launcher8/view/PullToRefreshListView$InternalListView;->this$0:Lcom/lx/launcher8/view/PullToRefreshListView;

    .line 74
    invoke-direct {p0, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method


# virtual methods
.method public getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/widget/ListView;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 0
    .parameter "emptyView"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 85
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    const/16 v2, 0x8

    .line 89
    if-ne p1, v2, :cond_0

    iget-object v1, p0, Lcom/lx/launcher8/view/PullToRefreshListView$InternalListView;->this$0:Lcom/lx/launcher8/view/PullToRefreshListView;

    iget-boolean v1, v1, Lcom/lx/launcher8/view/PullToRefreshListView;->isEmptyShowOnce:Z

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshListView$InternalListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, emptyView:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshListView$InternalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 92
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .end local v0           #emptyView:Landroid/view/View;
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method
