.class public Lcom/lx/launcher8/view/AppListview;
.super Landroid/widget/ListView;
.source "AppListview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/view/AppListview$PinnedHeaderHelper;
    }
.end annotation


# static fields
.field private static final MAX_ALPHA:I = 0xff


# instance fields
.field private mHeaderView:Landroid/view/View;

.field private mHeaderViewHeight:I

.field private mHeaderViewVisible:Z

.field private mHeaderViewWidth:I

.field private mPHHelper:Lcom/lx/launcher8/view/AppListview$PinnedHeaderHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method


# virtual methods
.method public configureHeaderView(I)V
    .locals 11
    .parameter "position"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 118
    iget-object v6, p0, Lcom/lx/launcher8/view/AppListview;->mHeaderView:Landroid/view/View;

    if-nez v6, :cond_1

    .line 119
    iput-boolean v9, p0, Lcom/lx/launcher8/view/AppListview;->mHeaderViewVisible:Z

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v6, p0, Lcom/lx/launcher8/view/AppListview;->mPHHelper:Lcom/lx/launcher8/view/AppListview$PinnedHeaderHelper;

    invoke-interface {v6, p1}, Lcom/lx/launcher8/view/AppListview$PinnedHeaderHelper;->getPinnedHeaderState(I)I

    move-result v4

    .line 123
    .local v4, state:I
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 125
    :pswitch_0
    iput-boolean v9, p0, Lcom/lx/launcher8/view/AppListview;->mHeaderViewVisible:Z

    goto :goto_0

    .line 129
    :pswitch_1
    iget-object v6, p0, Lcom/lx/launcher8/view/AppListview;->mPHHelper:Lcom/lx/launcher8/view/AppListview$PinnedHeaderHelper;

    iget-object v7, p0, Lcom/lx/launcher8/view/AppListview;->mHeaderView:Landroid/view/View;

    const/16 v8, 0xff

    invoke-interface {v6, v7, p1, v8}, Lcom/lx/launcher8/view/AppListview$PinnedHeaderHelper;->configurePinnedHeader(Landroid/view/View;II)V

    .line 130
    iget-object v6, p0, Lcom/lx/launcher8/view/AppListview;->mHeaderView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    if-eqz v6, :cond_2

    .line 131
    iget-object v6, p0, Lcom/lx/launcher8/view/AppListview;->mHeaderView:Landroid/view/View;

    iget v7, p0, Lcom/lx/launcher8/view/AppListview;->mHeaderViewWidth:I

    iget v8, p0, Lcom/lx/launcher8/view/AppListview;->mHeaderViewHeight:I

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 133
    :cond_2
    iput-boolean v10, p0, Lcom/lx/launcher8/view/AppListview;->mHeaderViewVisible:Z

    goto :goto_0

    .line 137
    :pswitch_2
    invoke-virtual {p0, v9}, Lcom/lx/launcher8/view/AppListview;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 138
    .local v2, firstView:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 142
    .local v1, bottom:I
    iget-object v6, p0, Lcom/lx/launcher8/view/AppListview;->mHeaderView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 145
    .local v3, headerHeight:I
    if-ge v1, v3, :cond_4

    .line 146
    sub-int v5, v1, v3

    .line 147
    .local v5, y:I
    add-int v6, v3, v5

    mul-int/lit16 v6, v6, 0xff

    div-int v0, v6, v3

    .line 152
    .local v0, alpha:I
    :goto_1
    iget-object v6, p0, Lcom/lx/launcher8/view/AppListview;->mPHHelper:Lcom/lx/launcher8/view/AppListview$PinnedHeaderHelper;

    iget-object v7, p0, Lcom/lx/launcher8/view/AppListview;->mHeaderView:Landroid/view/View;

    invoke-interface {v6, v7, p1, v0}, Lcom/lx/launcher8/view/AppListview$PinnedHeaderHelper;->configurePinnedHeader(Landroid/view/View;II)V

    .line 153
    iget-object v6, p0, Lcom/lx/launcher8/view/AppListview;->mHeaderView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    if-eq v6, v5, :cond_3

    .line 154
    iget-object v6, p0, Lcom/lx/launcher8/view/AppListview;->mHeaderView:Landroid/view/View;

    iget v7, p0, Lcom/lx/launcher8/view/AppListview;->mHeaderViewWidth:I

    iget v8, p0, Lcom/lx/launcher8/view/AppListview;->mHeaderViewHeight:I

    .line 155
    add-int/2addr v8, v5

    .line 154
    invoke-virtual {v6, v9, v5, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 157
    :cond_3
    iput-boolean v10, p0, Lcom/lx/launcher8/view/AppListview;->mHeaderViewVisible:Z

    goto :goto_0

    .line 149
    .end local v0           #alpha:I
    .end local v5           #y:I
    :cond_4
    const/4 v5, 0x0

    .line 150
    .restart local v5       #y:I
    const/16 v0, 0xff

    .restart local v0       #alpha:I
    goto :goto_1

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 165
    iget-boolean v0, p0, Lcom/lx/launcher8/view/AppListview;->mHeaderViewVisible:Z

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/lx/launcher8/view/AppListview;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/lx/launcher8/view/AppListview;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/lx/launcher8/view/AppListview;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 168
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .line 106
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 107
    iget-object v0, p0, Lcom/lx/launcher8/view/AppListview;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/lx/launcher8/view/AppListview;->mHeaderView:Landroid/view/View;

    iget v1, p0, Lcom/lx/launcher8/view/AppListview;->mHeaderViewWidth:I

    iget v2, p0, Lcom/lx/launcher8/view/AppListview;->mHeaderViewHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 109
    invoke-virtual {p0}, Lcom/lx/launcher8/view/AppListview;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/AppListview;->configureHeaderView(I)V

    .line 111
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 97
    iget-object v0, p0, Lcom/lx/launcher8/view/AppListview;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/lx/launcher8/view/AppListview;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/lx/launcher8/view/AppListview;->measureChild(Landroid/view/View;II)V

    .line 99
    iget-object v0, p0, Lcom/lx/launcher8/view/AppListview;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/view/AppListview;->mHeaderViewWidth:I

    .line 100
    iget-object v0, p0, Lcom/lx/launcher8/view/AppListview;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/view/AppListview;->mHeaderViewHeight:I

    .line 102
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    check-cast p1, Lcom/lx/launcher8/view/AppListview$PinnedHeaderHelper;

    .end local p1
    iput-object p1, p0, Lcom/lx/launcher8/view/AppListview;->mPHHelper:Lcom/lx/launcher8/view/AppListview$PinnedHeaderHelper;

    .line 91
    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/lx/launcher8/view/AppListview;->mHeaderView:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/lx/launcher8/view/AppListview;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/AppListview;->setFadingEdgeLength(I)V

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/lx/launcher8/view/AppListview;->requestLayout()V

    .line 85
    return-void
.end method
