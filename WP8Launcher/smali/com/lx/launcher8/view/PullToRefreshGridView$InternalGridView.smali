.class Lcom/lx/launcher8/view/PullToRefreshGridView$InternalGridView;
.super Landroid/widget/GridView;
.source "PullToRefreshGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/view/PullToRefreshGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalGridView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/view/PullToRefreshGridView;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/view/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/lx/launcher8/view/PullToRefreshGridView$InternalGridView;->this$0:Lcom/lx/launcher8/view/PullToRefreshGridView;

    .line 127
    invoke-direct {p0, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    return-void
.end method


# virtual methods
.method public getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Landroid/widget/GridView;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 0
    .parameter "emptyView"

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 138
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    const/16 v2, 0x8

    .line 142
    if-ne p1, v2, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshGridView$InternalGridView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, emptyView:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshGridView$InternalGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 145
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 150
    .end local v0           #emptyView:Landroid/view/View;
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0
.end method
