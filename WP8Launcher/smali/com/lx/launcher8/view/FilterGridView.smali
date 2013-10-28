.class public Lcom/lx/launcher8/view/FilterGridView;
.super Landroid/widget/GridView;
.source "FilterGridView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field mHasWPMode:Z

.field mHeadView:Landroid/widget/TextView;

.field mHitClipTop:I

.field mHitHeight:I

.field mTempMatrix:Landroid/graphics/Matrix;

.field mVerticalSpacing:I

.field selView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-direct {p0}, Lcom/lx/launcher8/view/FilterGridView;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lcom/lx/launcher8/view/FilterGridView;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0}, Lcom/lx/launcher8/view/FilterGridView;->init()V

    .line 33
    return-void
.end method

.method private createNative()V
    .locals 7

    .prologue
    const/high16 v6, 0x4000

    .line 96
    iget-object v2, p0, Lcom/lx/launcher8/view/FilterGridView;->mHeadView:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/lx/launcher8/view/FilterGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    .local v0, context:Landroid/content/Context;
    const/high16 v2, 0x425c

    invoke-static {v0, v2}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v2

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    const/high16 v3, 0x4120

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/lx/launcher8/view/FilterGridView;->mHitHeight:I

    .line 99
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lx/launcher8/view/FilterGridView;->mHeadView:Landroid/widget/TextView;

    .line 100
    iget-object v2, p0, Lcom/lx/launcher8/view/FilterGridView;->mHeadView:Landroid/widget/TextView;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 101
    iget-object v2, p0, Lcom/lx/launcher8/view/FilterGridView;->mHeadView:Landroid/widget/TextView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    iget v4, p0, Lcom/lx/launcher8/view/FilterGridView;->mHitHeight:I

    iget v5, p0, Lcom/lx/launcher8/view/FilterGridView;->mHitHeight:I

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v2, p0, Lcom/lx/launcher8/view/FilterGridView;->mHeadView:Landroid/widget/TextView;

    iget v3, p0, Lcom/lx/launcher8/view/FilterGridView;->mHitHeight:I

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 103
    iget v4, p0, Lcom/lx/launcher8/view/FilterGridView;->mHitHeight:I

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 102
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 104
    invoke-virtual {p0}, Lcom/lx/launcher8/view/FilterGridView;->getPaddingTop()I

    move-result v1

    .line 105
    .local v1, top:I
    iget-object v2, p0, Lcom/lx/launcher8/view/FilterGridView;->mHeadView:Landroid/widget/TextView;

    const/4 v3, 0x0

    iget v4, p0, Lcom/lx/launcher8/view/FilterGridView;->mHitHeight:I

    iget v5, p0, Lcom/lx/launcher8/view/FilterGridView;->mHitHeight:I

    add-int/2addr v5, v1

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 106
    iget-object v2, p0, Lcom/lx/launcher8/view/FilterGridView;->mHeadView:Landroid/widget/TextView;

    const/high16 v3, 0x4204

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 109
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #top:I
    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/FilterGridView;->setWillNotDraw(Z)V

    .line 47
    invoke-virtual {p0, p0}, Lcom/lx/launcher8/view/FilterGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/view/FilterGridView;->mTempMatrix:Landroid/graphics/Matrix;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/lx/launcher8/view/FilterGridView;->mHitClipTop:I

    .line 51
    return-void
.end method


# virtual methods
.method public applyStyle(II)V
    .locals 3
    .parameter "appStyle"
    .parameter "themeColor"

    .prologue
    const/4 v2, 0x0

    .line 77
    packed-switch p1, :pswitch_data_0

    .line 86
    new-instance v0, Lcom/lx/launcher8/view/ColorDrawable;

    invoke-direct {v0, v2}, Lcom/lx/launcher8/view/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/FilterGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/view/FilterGridView;->mHasWPMode:Z

    .line 89
    invoke-direct {p0}, Lcom/lx/launcher8/view/FilterGridView;->createNative()V

    .line 93
    :goto_0
    return-void

    .line 80
    :pswitch_0
    const v0, 0x7fffffff

    and-int/2addr v0, p2

    const/high16 v1, 0x100

    invoke-static {v0, v1}, Lcom/lx/launcher8/util/Utils;->createDrawable(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/FilterGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iput-boolean v2, p0, Lcom/lx/launcher8/view/FilterGridView;->mHasWPMode:Z

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/view/FilterGridView;->mHeadView:Landroid/widget/TextView;

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 119
    const/4 v1, 0x0

    .line 120
    .local v1, saveCount:I
    iget-object v4, p0, Lcom/lx/launcher8/view/FilterGridView;->mHeadView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/lx/launcher8/view/FilterGridView;->mHeadView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    .line 121
    .local v0, hasHit:Z
    :goto_0
    iget v4, p0, Lcom/lx/launcher8/view/FilterGridView;->mHitClipTop:I

    if-eqz v4, :cond_3

    :goto_1
    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 123
    invoke-virtual {p0}, Lcom/lx/launcher8/view/FilterGridView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/lx/launcher8/view/FilterGridView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/lx/launcher8/view/FilterGridView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/lx/launcher8/view/FilterGridView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/lx/launcher8/view/FilterGridView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 124
    iget-object v2, p0, Lcom/lx/launcher8/view/FilterGridView;->mHeadView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lx/launcher8/view/FilterGridView;->getDrawingTime()J

    move-result-wide v4

    invoke-virtual {p0, p1, v2, v4, v5}, Lcom/lx/launcher8/view/FilterGridView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 125
    iget v2, p0, Lcom/lx/launcher8/view/FilterGridView;->mHitClipTop:I

    invoke-virtual {p0}, Lcom/lx/launcher8/view/FilterGridView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/lx/launcher8/view/FilterGridView;->getHeight()I

    move-result v5

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 127
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 128
    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 129
    :cond_1
    return-void

    .end local v0           #hasHit:Z
    :cond_2
    move v0, v3

    .line 120
    goto :goto_0

    .restart local v0       #hasHit:Z
    :cond_3
    move v2, v3

    .line 121
    goto :goto_1
.end method

.method protected dispatchSetPressed(Z)V
    .locals 4
    .parameter "pressed"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchSetPressed(Z)V

    .line 62
    if-nez p1, :cond_1

    .line 63
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lx/launcher8/view/FilterGridView;->selView:Landroid/view/View;

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/lx/launcher8/view/FilterGridView;->getChildCount()I

    move-result v0

    .line 67
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 68
    invoke-virtual {p0, v1}, Lcom/lx/launcher8/view/FilterGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 69
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    iput-object v2, p0, Lcom/lx/launcher8/view/FilterGridView;->selView:Landroid/view/View;

    goto :goto_0

    .line 67
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    const v5, 0x3f75c28f

    .line 133
    const/4 v2, 0x0

    .line 134
    .local v2, saveCount:I
    iget-boolean v4, p0, Lcom/lx/launcher8/view/FilterGridView;->mHasWPMode:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lx/launcher8/view/FilterGridView;->selView:Landroid/view/View;

    if-ne p2, v4, :cond_0

    .line 135
    iget-object v4, p0, Lcom/lx/launcher8/view/FilterGridView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 136
    iget-object v4, p0, Lcom/lx/launcher8/view/FilterGridView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 137
    const/16 v4, 0x26

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 138
    .local v3, w:I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    add-int v0, v4, v5

    .line 139
    .local v0, h:I
    iget-object v4, p0, Lcom/lx/launcher8/view/FilterGridView;->mTempMatrix:Landroid/graphics/Matrix;

    neg-int v5, v3

    int-to-float v5, v5

    neg-int v6, v0

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 140
    iget-object v4, p0, Lcom/lx/launcher8/view/FilterGridView;->mTempMatrix:Landroid/graphics/Matrix;

    int-to-float v5, v3

    int-to-float v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 141
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 142
    iget-object v4, p0, Lcom/lx/launcher8/view/FilterGridView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 144
    .end local v0           #h:I
    .end local v3           #w:I
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/GridView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 145
    .local v1, result:Z
    if-eqz v2, :cond_1

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 146
    :cond_1
    return v1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 7
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v6, 0x0

    .line 151
    iget-object v3, p0, Lcom/lx/launcher8/view/FilterGridView;->mHeadView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/lx/launcher8/view/FilterGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/lx/launcher8/view/FilterGridView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/lx/launcher8/view/FilterGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/adapter/AppAdapter;

    .line 153
    .local v0, adapter:Lcom/lx/launcher8/adapter/AppAdapter;
    invoke-virtual {v0, p2}, Lcom/lx/launcher8/adapter/AppAdapter;->getPosState(I)I

    move-result v1

    .line 154
    .local v1, state:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 155
    iget-object v3, p0, Lcom/lx/launcher8/view/FilterGridView;->mHeadView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    :goto_1
    iget-object v3, p0, Lcom/lx/launcher8/view/FilterGridView;->mHeadView:Landroid/widget/TextView;

    invoke-virtual {v0, v3, p2}, Lcom/lx/launcher8/adapter/AppAdapter;->setTextAndStyle(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 157
    :cond_2
    iget-object v3, p0, Lcom/lx/launcher8/view/FilterGridView;->mHeadView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 159
    invoke-virtual {p0, v6}, Lcom/lx/launcher8/view/FilterGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/lx/launcher8/view/FilterGridView;->mHitHeight:I

    sub-int v2, v3, v4

    .line 160
    .local v2, top:I
    iget-object v3, p0, Lcom/lx/launcher8/view/FilterGridView;->mHeadView:Landroid/widget/TextView;

    iget v4, p0, Lcom/lx/launcher8/view/FilterGridView;->mHitHeight:I

    iget v5, p0, Lcom/lx/launcher8/view/FilterGridView;->mHitHeight:I

    add-int/2addr v5, v2

    invoke-virtual {v3, v6, v2, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 161
    iget v3, p0, Lcom/lx/launcher8/view/FilterGridView;->mHitHeight:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/lx/launcher8/view/FilterGridView;->mVerticalSpacing:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/lx/launcher8/view/FilterGridView;->mHitClipTop:I

    goto :goto_1

    .line 163
    .end local v2           #top:I
    :cond_3
    invoke-virtual {p0}, Lcom/lx/launcher8/view/FilterGridView;->getPaddingTop()I

    move-result v2

    .line 164
    .restart local v2       #top:I
    iget-object v3, p0, Lcom/lx/launcher8/view/FilterGridView;->mHeadView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTop()I

    move-result v3

    if-eq v3, v2, :cond_4

    .line 165
    iget-object v3, p0, Lcom/lx/launcher8/view/FilterGridView;->mHeadView:Landroid/widget/TextView;

    iget v4, p0, Lcom/lx/launcher8/view/FilterGridView;->mHitHeight:I

    iget v5, p0, Lcom/lx/launcher8/view/FilterGridView;->mHitHeight:I

    add-int/2addr v5, v2

    invoke-virtual {v3, v6, v2, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 167
    :cond_4
    iget v3, p0, Lcom/lx/launcher8/view/FilterGridView;->mHitHeight:I

    iget v4, p0, Lcom/lx/launcher8/view/FilterGridView;->mVerticalSpacing:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/lx/launcher8/view/FilterGridView;->mHitClipTop:I

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 175
    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 2
    .parameter "filterText"

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/lx/launcher8/view/FilterGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 56
    .local v0, f:Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 0
    .parameter "verticalSpacing"

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 114
    iput p1, p0, Lcom/lx/launcher8/view/FilterGridView;->mVerticalSpacing:I

    .line 115
    return-void
.end method
