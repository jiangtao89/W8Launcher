.class public Lcom/lx/launcher8/view/DragLayer;
.super Landroid/widget/RelativeLayout;
.source "DragLayer.java"


# instance fields
.field mDragController:Lcom/lx/launcher8/view/DragController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/DragLayer;->setDescendantFocusability(I)V

    .line 41
    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 59
    invoke-super {p0}, Landroid/widget/RelativeLayout;->cancelLongPress()V

    .line 60
    invoke-virtual {p0}, Lcom/lx/launcher8/view/DragLayer;->getChildCount()I

    move-result v0

    .line 61
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 64
    return-void

    .line 62
    :cond_0
    invoke-virtual {p0, v1}, Lcom/lx/launcher8/view/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lx/launcher8/view/DragLayer;->mDragController:Lcom/lx/launcher8/view/DragController;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/view/DragController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 69
    iget-object v0, p0, Lcom/lx/launcher8/view/DragLayer;->mDragController:Lcom/lx/launcher8/view/DragController;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/DragController;->cancelDrag()V

    .line 70
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lx/launcher8/view/DragLayer;->mDragController:Lcom/lx/launcher8/view/DragController;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/view/DragController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v8, 0x4000

    .line 79
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 80
    invoke-virtual {p0}, Lcom/lx/launcher8/view/DragLayer;->getChildCount()I

    move-result v3

    .line 81
    .local v3, count:I
    if-lez v3, :cond_0

    .line 82
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v3, :cond_1

    .line 93
    .end local v4           #i:I
    :cond_0
    return-void

    .line 83
    .restart local v4       #i:I
    :cond_1
    invoke-virtual {p0, v4}, Lcom/lx/launcher8/view/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_3

    .line 82
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 87
    .local v5, lp:Landroid/widget/RelativeLayout$LayoutParams;
    move v2, p1

    .local v2, childWSpec:I
    move v1, p2

    .line 88
    .local v1, childHSpec:I
    iget v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-lez v6, :cond_4

    iget v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 89
    :cond_4
    iget v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-lez v6, :cond_5

    iget v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 90
    :cond_5
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lx/launcher8/view/DragLayer;->mDragController:Lcom/lx/launcher8/view/DragController;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/view/DragController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setDragController(Lcom/lx/launcher8/view/DragController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lx/launcher8/view/DragLayer;->mDragController:Lcom/lx/launcher8/view/DragController;

    .line 45
    return-void
.end method
