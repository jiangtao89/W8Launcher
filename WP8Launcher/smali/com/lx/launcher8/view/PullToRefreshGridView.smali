.class public Lcom/lx/launcher8/view/PullToRefreshGridView;
.super Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;
.source "PullToRefreshGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/view/PullToRefreshGridView$InternalGridView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase",
        "<",
        "Landroid/widget/GridView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lx/launcher8/view/PullToRefreshBase$Mode;)V
    .locals 0
    .parameter "context"
    .parameter

    .prologue
    .line 45
    .local p2, mode:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;,"Lcom/lx/launcher8/view/PullToRefreshBase$Mode;"
    invoke-direct {p0, p1, p2}, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/lx/launcher8/view/PullToRefreshBase$Mode;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected createHeaderView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 118
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 119
    .local v1, tv:Landroid/widget/TextView;
    const/4 v2, 0x2

    const/high16 v3, 0x4248

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 120
    const/high16 v2, 0x4120

    invoke-static {p1, v2}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v2

    float-to-int v0, v2

    .line 121
    .local v0, padding:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x28

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 122
    return-object v1
.end method

.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/lx/launcher8/view/PullToRefreshGridView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/GridView;

    move-result-object v0

    return-object v0
.end method

.method protected final createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/GridView;
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 111
    new-instance v0, Lcom/lx/launcher8/view/PullToRefreshGridView$InternalGridView;

    invoke-direct {v0, p0, p1, p2}, Lcom/lx/launcher8/view/PullToRefreshGridView$InternalGridView;-><init>(Lcom/lx/launcher8/view/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    .local v0, gv:Landroid/widget/GridView;
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x4000

    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 113
    return-object v0
.end method

.method public getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshGridView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/PullToRefreshGridView$InternalGridView;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/PullToRefreshGridView$InternalGridView;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onInitFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-super {p0}, Lcom/lx/launcher8/view/PullToRefreshAdapterViewBase;->onInitFinish()V

    .line 100
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 101
    .local v0, iv:Landroid/widget/ImageView;
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 102
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 103
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    new-instance v1, Lcom/lx/launcher8/view/ColorDrawable;

    invoke-direct {v1, v2}, Lcom/lx/launcher8/view/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setEmptyView(Landroid/view/View;)V

    .line 106
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshGridView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 107
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshGridView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/PullToRefreshGridView$InternalGridView;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/view/PullToRefreshGridView$InternalGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    return-void
.end method

.method public setColumnWidth(I)V
    .locals 1
    .parameter "columnWidth"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshGridView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/PullToRefreshGridView$InternalGridView;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/view/PullToRefreshGridView$InternalGridView;->setColumnWidth(I)V

    .line 67
    return-void
.end method

.method public setFadingEdgeLength(I)V
    .locals 1
    .parameter "length"

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshGridView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/PullToRefreshGridView$InternalGridView;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/view/PullToRefreshGridView$InternalGridView;->setFadingEdgeLength(I)V

    .line 87
    return-void
.end method

.method public setHeaderViewText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshGridView;->getHeaderView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method

.method public setHeaderViewTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshGridView;->getHeaderView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1
    .parameter "horizontalSpacing"

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshGridView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/PullToRefreshGridView$InternalGridView;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/view/PullToRefreshGridView$InternalGridView;->setHorizontalSpacing(I)V

    .line 75
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .parameter "numColumns"

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshGridView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/PullToRefreshGridView$InternalGridView;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/view/PullToRefreshGridView$InternalGridView;->setNumColumns(I)V

    .line 71
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    .local p1, l:Landroid/widget/AdapterView$OnItemClickListener;,"Landroid/widget/AdapterView$OnItemClickListener;"
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshGridView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/PullToRefreshGridView$InternalGridView;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/view/PullToRefreshGridView$InternalGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 63
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "sel"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshGridView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/PullToRefreshGridView$InternalGridView;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/view/PullToRefreshGridView$InternalGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 59
    return-void
.end method

.method public setStretchMode(I)V
    .locals 1
    .parameter "stretchMode"

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshGridView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/PullToRefreshGridView$InternalGridView;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/view/PullToRefreshGridView$InternalGridView;->setStretchMode(I)V

    .line 83
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1
    .parameter "verticalSpacing"

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PullToRefreshGridView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/PullToRefreshGridView$InternalGridView;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/view/PullToRefreshGridView$InternalGridView;->setVerticalSpacing(I)V

    .line 79
    return-void
.end method
