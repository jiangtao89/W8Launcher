.class public Lcom/anall/screenlock/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anall/screenlock/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anall/screenlock/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 37
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 27
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 33
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/anall/screenlock/FlowLayout;->getPaddingLeft()I

    move-result v9

    .line 78
    .local v9, paddingLeft:I
    invoke-virtual {p0}, Lcom/anall/screenlock/FlowLayout;->getPaddingTop()I

    move-result v10

    .line 80
    .local v10, paddingTop:I
    invoke-virtual {p0}, Lcom/anall/screenlock/FlowLayout;->getWidth()I

    move-result v12

    invoke-virtual {p0}, Lcom/anall/screenlock/FlowLayout;->getPaddingRight()I

    move-result v13

    sub-int v11, v12, v13

    .line 81
    .local v11, width:I
    move v1, v9

    .line 82
    .local v1, childLeft:I
    move v4, v10

    .line 83
    .local v4, childTop:I
    const/4 v6, 0x0

    .line 85
    .local v6, curMaxChildHeight:I
    invoke-virtual {p0}, Lcom/anall/screenlock/FlowLayout;->getChildCount()I

    move-result v5

    .line 86
    .local v5, count:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-lt v7, v5, :cond_0

    .line 106
    return-void

    .line 87
    :cond_0
    invoke-virtual {p0, v7}, Lcom/anall/screenlock/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_2

    .line 86
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 91
    .local v8, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 92
    .local v3, childMeasureWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 93
    .local v2, childMeasureHeight:I
    iget v12, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v12, v1

    iget v13, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v12, v13

    add-int/2addr v12, v3

    if-le v12, v11, :cond_3

    .line 94
    iget v12, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v1, v9, v12

    .line 95
    const/4 v12, 0x0

    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int/2addr v4, v12

    .line 96
    const/4 v6, 0x0

    .line 100
    :goto_2
    iget v12, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v12, v4

    add-int v13, v1, v3

    .line 101
    iget v14, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v4

    add-int/2addr v14, v2

    .line 100
    invoke-virtual {v0, v1, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 102
    iget v12, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v12, v3

    add-int/2addr v1, v12

    .line 103
    iget v12, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 104
    iget v13, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    add-int/2addr v12, v2

    .line 103
    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_1

    .line 98
    :cond_3
    iget v12, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v12

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 42
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 43
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 44
    .local v12, width:I
    const/4 v11, 0x0

    .line 45
    .local v11, totallWidth:I
    const/4 v3, 0x0

    .line 46
    .local v3, curUsewidth:I
    const/4 v5, 0x0

    .line 47
    .local v5, totalHeight:I
    const/4 v8, 0x0

    .line 48
    .local v8, curMaxHeight:I
    invoke-virtual {p0}, Lcom/anall/screenlock/FlowLayout;->getChildCount()I

    move-result v7

    .line 49
    .local v7, count:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-lt v9, v7, :cond_1

    .line 66
    if-lez v3, :cond_0

    .line 67
    add-int v0, v5, v8

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/anall/screenlock/FlowLayout;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, v11

    invoke-virtual {p0}, Lcom/anall/screenlock/FlowLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v0, p1}, Lcom/anall/screenlock/FlowLayout;->resolveSize(II)I

    move-result v0

    .line 71
    invoke-virtual {p0}, Lcom/anall/screenlock/FlowLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {p0}, Lcom/anall/screenlock/FlowLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {v2, p2}, Lcom/anall/screenlock/FlowLayout;->resolveSize(II)I

    move-result v2

    .line 70
    invoke-virtual {p0, v0, v2}, Lcom/anall/screenlock/FlowLayout;->setMeasuredDimension(II)V

    .line 73
    return-void

    .line 50
    :cond_1
    invoke-virtual {p0, v9}, Lcom/anall/screenlock/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 51
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    .line 49
    :cond_2
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .local v10, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v0, p0

    move v2, p1

    move v4, p2

    .line 54
    invoke-virtual/range {v0 .. v5}, Lcom/anall/screenlock/FlowLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v2, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    iget v2, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v6, v0, v2

    .line 56
    .local v6, childDesirWidth:I
    add-int v0, v3, v6

    if-le v0, v12, :cond_4

    .line 57
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 58
    add-int v0, v5, v8

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 59
    move v3, v6

    .line 60
    const/4 v8, 0x0

    .line 64
    :goto_2
    iget v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_1

    .line 62
    :cond_4
    add-int v0, v3, v6

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_2
.end method
