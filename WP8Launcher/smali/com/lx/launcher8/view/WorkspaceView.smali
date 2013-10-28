.class public Lcom/lx/launcher8/view/WorkspaceView;
.super Landroid/view/ViewGroup;
.source "WorkspaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/view/WorkspaceView$OnWorkspaceActionListener;
    }
.end annotation


# static fields
.field private static final SNAP_VELOCITY:I = 0x258

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private isEnable:Z

.field private mCurScreen:I

.field private mDefaultScreen:I

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mScroller:Landroid/widget/Scroller;

.field private mTouchSlop:I

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private onWorkspaceActionListener:Lcom/lx/launcher8/view/WorkspaceView$OnWorkspaceActionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 45
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/lx/launcher8/view/WorkspaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lx/launcher8/view/WorkspaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    iput v0, p0, Lcom/lx/launcher8/view/WorkspaceView;->mDefaultScreen:I

    .line 25
    iput v0, p0, Lcom/lx/launcher8/view/WorkspaceView;->mTouchState:I

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/view/WorkspaceView;->isEnable:Z

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/view/WorkspaceView;->onWorkspaceActionListener:Lcom/lx/launcher8/view/WorkspaceView$OnWorkspaceActionListener;

    .line 34
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/WorkspaceView;->mScroller:Landroid/widget/Scroller;

    .line 36
    iget v0, p0, Lcom/lx/launcher8/view/WorkspaceView;->mDefaultScreen:I

    iput v0, p0, Lcom/lx/launcher8/view/WorkspaceView;->mCurScreen:I

    .line 37
    invoke-virtual {p0}, Lcom/lx/launcher8/view/WorkspaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/view/WorkspaceView;->mTouchSlop:I

    .line 38
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lx/launcher8/view/WorkspaceView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/lx/launcher8/view/WorkspaceView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/lx/launcher8/view/WorkspaceView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/view/WorkspaceView;->scrollTo(II)V

    .line 123
    invoke-virtual {p0}, Lcom/lx/launcher8/view/WorkspaceView;->postInvalidate()V

    .line 125
    :cond_0
    return-void
.end method

.method public getCurScreen()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/lx/launcher8/view/WorkspaceView;->mCurScreen:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 182
    iget-boolean v5, p0, Lcom/lx/launcher8/view/WorkspaceView;->isEnable:Z

    if-nez v5, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v6

    .line 183
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 184
    .local v0, action:I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    iget v5, p0, Lcom/lx/launcher8/view/WorkspaceView;->mTouchState:I

    if-eqz v5, :cond_2

    move v6, v7

    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 187
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 188
    .local v3, y:F
    packed-switch v0, :pswitch_data_0

    .line 206
    :cond_3
    :goto_1
    iget v5, p0, Lcom/lx/launcher8/view/WorkspaceView;->mTouchState:I

    if-eqz v5, :cond_0

    move v6, v7

    goto :goto_0

    .line 190
    :pswitch_0
    iget v5, p0, Lcom/lx/launcher8/view/WorkspaceView;->mLastMotionX:F

    sub-float/2addr v5, v1

    float-to-int v2, v5

    .line 191
    .local v2, xDiff:I
    iget v5, p0, Lcom/lx/launcher8/view/WorkspaceView;->mLastMotionY:F

    sub-float/2addr v5, v3

    float-to-int v4, v5

    .line 192
    .local v4, yDiff:I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-gt v5, v8, :cond_0

    .line 193
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v8, p0, Lcom/lx/launcher8/view/WorkspaceView;->mTouchSlop:I

    if-le v5, v8, :cond_3

    iput v7, p0, Lcom/lx/launcher8/view/WorkspaceView;->mTouchState:I

    goto :goto_1

    .line 196
    .end local v2           #xDiff:I
    .end local v4           #yDiff:I
    :pswitch_1
    iput v1, p0, Lcom/lx/launcher8/view/WorkspaceView;->mLastMotionX:F

    .line 197
    iput v3, p0, Lcom/lx/launcher8/view/WorkspaceView;->mLastMotionY:F

    .line 198
    iget-object v5, p0, Lcom/lx/launcher8/view/WorkspaceView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v6

    :goto_2
    iput v5, p0, Lcom/lx/launcher8/view/WorkspaceView;->mTouchState:I

    goto :goto_1

    :cond_4
    move v5, v7

    goto :goto_2

    .line 202
    :pswitch_2
    iput v6, p0, Lcom/lx/launcher8/view/WorkspaceView;->mTouchState:I

    goto :goto_1

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 50
    const/4 v1, 0x0

    .line 51
    .local v1, childLeft:I
    invoke-virtual {p0}, Lcom/lx/launcher8/view/WorkspaceView;->getChildCount()I

    move-result v0

    .line 53
    .local v0, childCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v0, :cond_0

    .line 61
    return-void

    .line 54
    :cond_0
    invoke-virtual {p0, v4}, Lcom/lx/launcher8/view/WorkspaceView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 55
    .local v2, childView:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 56
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 57
    .local v3, childWidth:I
    const/4 v5, 0x0

    add-int v6, v1, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v2, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 58
    add-int/2addr v1, v3

    .line 53
    .end local v3           #childWidth:I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    .line 65
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 67
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 69
    .local v3, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 70
    .local v4, widthMode:I
    if-eq v4, v5, :cond_0

    .line 71
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "WorkspaceView only can mCurScreen run at EXACTLY mode!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 74
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 75
    .local v1, heightMode:I
    if-eq v1, v5, :cond_1

    .line 76
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "WorkspaceView only can mCurScreen run at EXACTLY mode!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/lx/launcher8/view/WorkspaceView;->getChildCount()I

    move-result v0

    .line 80
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v0, :cond_2

    .line 84
    iget v5, p0, Lcom/lx/launcher8/view/WorkspaceView;->mCurScreen:I

    mul-int/2addr v5, v3

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/lx/launcher8/view/WorkspaceView;->scrollTo(II)V

    .line 85
    return-void

    .line 81
    :cond_2
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/view/WorkspaceView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 129
    iget-boolean v7, p0, Lcom/lx/launcher8/view/WorkspaceView;->isEnable:Z

    if-nez v7, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v10

    .line 130
    :cond_1
    iget-object v7, p0, Lcom/lx/launcher8/view/WorkspaceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v7, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, p0, Lcom/lx/launcher8/view/WorkspaceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 131
    :cond_2
    iget-object v7, p0, Lcom/lx/launcher8/view/WorkspaceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 134
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 135
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 137
    .local v6, y:F
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 139
    :pswitch_0
    iget-object v7, p0, Lcom/lx/launcher8/view/WorkspaceView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_3

    .line 140
    iget-object v7, p0, Lcom/lx/launcher8/view/WorkspaceView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 142
    :cond_3
    iput v5, p0, Lcom/lx/launcher8/view/WorkspaceView;->mLastMotionX:F

    .line 143
    iput v6, p0, Lcom/lx/launcher8/view/WorkspaceView;->mLastMotionY:F

    goto :goto_0

    .line 146
    :pswitch_1
    iget v7, p0, Lcom/lx/launcher8/view/WorkspaceView;->mLastMotionX:F

    sub-float/2addr v7, v5

    float-to-int v1, v7

    .line 147
    .local v1, deltaX:I
    iget v7, p0, Lcom/lx/launcher8/view/WorkspaceView;->mLastMotionY:F

    sub-float/2addr v7, v6

    float-to-int v2, v7

    .line 148
    .local v2, deltaY:I
    iput v5, p0, Lcom/lx/launcher8/view/WorkspaceView;->mLastMotionX:F

    .line 149
    iput v6, p0, Lcom/lx/launcher8/view/WorkspaceView;->mLastMotionY:F

    .line 150
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-gt v7, v8, :cond_0

    .line 153
    invoke-virtual {p0, v1, v9}, Lcom/lx/launcher8/view/WorkspaceView;->scrollBy(II)V

    goto :goto_0

    .line 157
    .end local v1           #deltaX:I
    .end local v2           #deltaY:I
    :pswitch_2
    iget-object v3, p0, Lcom/lx/launcher8/view/WorkspaceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 158
    .local v3, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v7, 0x3e8

    invoke-virtual {v3, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 159
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    float-to-int v4, v7

    .line 160
    .local v4, velocityX:I
    const/16 v7, 0x258

    if-le v4, v7, :cond_5

    iget v7, p0, Lcom/lx/launcher8/view/WorkspaceView;->mCurScreen:I

    if-lez v7, :cond_5

    .line 161
    iget v7, p0, Lcom/lx/launcher8/view/WorkspaceView;->mCurScreen:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Lcom/lx/launcher8/view/WorkspaceView;->snapToScreen(I)V

    .line 167
    :goto_1
    iget-object v7, p0, Lcom/lx/launcher8/view/WorkspaceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_4

    .line 168
    iget-object v7, p0, Lcom/lx/launcher8/view/WorkspaceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->recycle()V

    .line 169
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lx/launcher8/view/WorkspaceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 171
    :cond_4
    iput v9, p0, Lcom/lx/launcher8/view/WorkspaceView;->mTouchState:I

    goto :goto_0

    .line 162
    :cond_5
    const/16 v7, -0x258

    if-ge v4, v7, :cond_6

    iget v7, p0, Lcom/lx/launcher8/view/WorkspaceView;->mCurScreen:I

    invoke-virtual {p0}, Lcom/lx/launcher8/view/WorkspaceView;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_6

    .line 163
    iget v7, p0, Lcom/lx/launcher8/view/WorkspaceView;->mCurScreen:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lcom/lx/launcher8/view/WorkspaceView;->snapToScreen(I)V

    goto :goto_1

    .line 165
    :cond_6
    invoke-virtual {p0}, Lcom/lx/launcher8/view/WorkspaceView;->snapToDestination()V

    goto :goto_1

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCurScreen(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 112
    iput p1, p0, Lcom/lx/launcher8/view/WorkspaceView;->mCurScreen:I

    .line 113
    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .parameter "isEnable"

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/lx/launcher8/view/WorkspaceView;->isEnable:Z

    .line 211
    return-void
.end method

.method public setOnWorkspaceActionListener(Lcom/lx/launcher8/view/WorkspaceView$OnWorkspaceActionListener;)V
    .locals 0
    .parameter "onWorkspaceActionListener"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/lx/launcher8/view/WorkspaceView;->onWorkspaceActionListener:Lcom/lx/launcher8/view/WorkspaceView$OnWorkspaceActionListener;

    .line 217
    return-void
.end method

.method public setToScreen(I)V
    .locals 2
    .parameter "whichScreen"

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/lx/launcher8/view/WorkspaceView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 107
    iput p1, p0, Lcom/lx/launcher8/view/WorkspaceView;->mCurScreen:I

    .line 108
    invoke-virtual {p0}, Lcom/lx/launcher8/view/WorkspaceView;->getWidth()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/view/WorkspaceView;->scrollTo(II)V

    .line 109
    return-void
.end method

.method public snapToDestination()V
    .locals 4

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/lx/launcher8/view/WorkspaceView;->getWidth()I

    move-result v1

    .line 89
    .local v1, screenWidth:I
    invoke-virtual {p0}, Lcom/lx/launcher8/view/WorkspaceView;->getScrollX()I

    move-result v2

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    div-int v0, v2, v1

    .line 90
    .local v0, destScreen:I
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/WorkspaceView;->snapToScreen(I)V

    .line 91
    return-void
.end method

.method public snapToScreen(I)V
    .locals 6
    .parameter "whichScreen"

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/lx/launcher8/view/WorkspaceView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 95
    iget v0, p0, Lcom/lx/launcher8/view/WorkspaceView;->mCurScreen:I

    if-le p1, v0, :cond_2

    iget-object v0, p0, Lcom/lx/launcher8/view/WorkspaceView;->onWorkspaceActionListener:Lcom/lx/launcher8/view/WorkspaceView$OnWorkspaceActionListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lx/launcher8/view/WorkspaceView;->onWorkspaceActionListener:Lcom/lx/launcher8/view/WorkspaceView$OnWorkspaceActionListener;

    invoke-interface {v0}, Lcom/lx/launcher8/view/WorkspaceView$OnWorkspaceActionListener;->onScrollRight()V

    .line 97
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lx/launcher8/view/WorkspaceView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/lx/launcher8/view/WorkspaceView;->getWidth()I

    move-result v1

    mul-int/2addr v1, p1

    if-eq v0, v1, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/lx/launcher8/view/WorkspaceView;->getWidth()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/lx/launcher8/view/WorkspaceView;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    .line 99
    .local v3, delta:I
    iget-object v0, p0, Lcom/lx/launcher8/view/WorkspaceView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/lx/launcher8/view/WorkspaceView;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 100
    iput p1, p0, Lcom/lx/launcher8/view/WorkspaceView;->mCurScreen:I

    .line 101
    invoke-virtual {p0}, Lcom/lx/launcher8/view/WorkspaceView;->invalidate()V

    .line 103
    .end local v3           #delta:I
    :cond_1
    return-void

    .line 96
    :cond_2
    iget v0, p0, Lcom/lx/launcher8/view/WorkspaceView;->mCurScreen:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/view/WorkspaceView;->onWorkspaceActionListener:Lcom/lx/launcher8/view/WorkspaceView$OnWorkspaceActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/view/WorkspaceView;->onWorkspaceActionListener:Lcom/lx/launcher8/view/WorkspaceView$OnWorkspaceActionListener;

    invoke-interface {v0}, Lcom/lx/launcher8/view/WorkspaceView$OnWorkspaceActionListener;->onScrollLeft()V

    goto :goto_0
.end method
