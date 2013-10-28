.class public Lcom/lx/launcher8/view/DivideLayout;
.super Landroid/view/ViewGroup;
.source "DivideLayout.java"


# instance fields
.field private mItemWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/lx/launcher8/view/DivideLayout;->mItemWidth:I

    .line 13
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/lx/launcher8/view/DivideLayout;->getChildCount()I

    move-result v1

    .line 25
    .local v1, count:I
    if-nez v1, :cond_1

    .line 34
    :cond_0
    return-void

    .line 26
    :cond_1
    iget v6, p0, Lcom/lx/launcher8/view/DivideLayout;->mItemWidth:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    const/4 v3, 0x0

    .line 27
    .local v3, space:I
    :goto_0
    move v4, v3

    .line 28
    .local v4, startX:I
    invoke-virtual {p0}, Lcom/lx/launcher8/view/DivideLayout;->getPaddingTop()I

    move-result v5

    .line 29
    .local v5, top:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 30
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/view/DivideLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 31
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v3

    add-int/2addr v4, v6

    .line 29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 26
    .end local v0           #child:Landroid/view/View;
    .end local v2           #i:I
    .end local v3           #space:I
    .end local v4           #startX:I
    .end local v5           #top:I
    :cond_2
    invoke-virtual {p0}, Lcom/lx/launcher8/view/DivideLayout;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/lx/launcher8/view/DivideLayout;->mItemWidth:I

    mul-int/2addr v7, v1

    sub-int/2addr v6, v7

    int-to-float v6, v6

    add-int/lit8 v7, v1, 0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v3, v6

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/lx/launcher8/view/DivideLayout;->getChildCount()I

    move-result v2

    .line 39
    .local v2, count:I
    const/4 v3, 0x0

    .line 40
    .local v3, h:I
    if-lez v2, :cond_0

    .line 41
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/lx/launcher8/view/DivideLayout;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/lx/launcher8/view/DivideLayout;->getPaddingRight()I

    move-result v8

    sub-int v6, v7, v8

    .line 42
    .local v6, width:I
    int-to-float v7, v6

    int-to-float v8, v2

    div-float/2addr v7, v8

    const/high16 v8, 0x3f00

    add-float/2addr v7, v8

    float-to-int v5, v7

    .line 43
    .local v5, temp:I
    iget v7, p0, Lcom/lx/launcher8/view/DivideLayout;->mItemWidth:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .end local v5           #temp:I
    :goto_0
    const/high16 v7, 0x4000

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 44
    .local v1, childWidthSpec:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-lt v4, v2, :cond_2

    .line 49
    invoke-virtual {p0}, Lcom/lx/launcher8/view/DivideLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/lx/launcher8/view/DivideLayout;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 52
    .end local v1           #childWidthSpec:I
    .end local v4           #i:I
    .end local v6           #width:I
    :cond_0
    invoke-virtual {p0}, Lcom/lx/launcher8/view/DivideLayout;->getSuggestedMinimumWidth()I

    move-result v7

    invoke-static {v7, p1}, Lcom/lx/launcher8/view/DivideLayout;->getDefaultSize(II)I

    move-result v7

    .line 53
    invoke-static {v3, p2}, Lcom/lx/launcher8/view/DivideLayout;->resolveSize(II)I

    move-result v8

    .line 52
    invoke-virtual {p0, v7, v8}, Lcom/lx/launcher8/view/DivideLayout;->setMeasuredDimension(II)V

    .line 54
    return-void

    .line 43
    .restart local v5       #temp:I
    .restart local v6       #width:I
    :cond_1
    iget v5, p0, Lcom/lx/launcher8/view/DivideLayout;->mItemWidth:I

    goto :goto_0

    .line 45
    .end local v5           #temp:I
    .restart local v1       #childWidthSpec:I
    .restart local v4       #i:I
    :cond_2
    invoke-virtual {p0, v4}, Lcom/lx/launcher8/view/DivideLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0, v0, v1, p2}, Lcom/lx/launcher8/view/DivideLayout;->measureChild(Landroid/view/View;II)V

    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 44
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public setItemWidth(I)V
    .locals 1
    .parameter "w"

    .prologue
    .line 16
    iget v0, p0, Lcom/lx/launcher8/view/DivideLayout;->mItemWidth:I

    if-eq p1, v0, :cond_0

    .line 17
    iput p1, p0, Lcom/lx/launcher8/view/DivideLayout;->mItemWidth:I

    .line 18
    invoke-virtual {p0}, Lcom/lx/launcher8/view/DivideLayout;->requestLayout()V

    .line 20
    :cond_0
    return-void
.end method
