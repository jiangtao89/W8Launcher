.class public Lcom/lx/launcher8/view/Workspace;
.super Landroid/view/ViewGroup;
.source "Workspace.java"


# static fields
.field private static final SNAP_VELOCITY:I = 0x258

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private mBackColor:I

.field private mCellLayoutWidth:I

.field private mCurrentScreen:I

.field private mFirstLayout:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLauncher:Lcom/lx/launcher8/AnallLauncher;

.field private mLeftX:F

.field private mScroller:Landroid/widget/Scroller;

.field private mTouchSlop:I

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lx/launcher8/view/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lx/launcher8/view/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/view/Workspace;->mFirstLayout:Z

    .line 23
    iput v1, p0, Lcom/lx/launcher8/view/Workspace;->mCurrentScreen:I

    .line 27
    iput v1, p0, Lcom/lx/launcher8/view/Workspace;->mTouchState:I

    .line 47
    invoke-virtual {p0, v1}, Lcom/lx/launcher8/view/Workspace;->setWillNotDraw(Z)V

    .line 48
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/view/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 49
    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/view/Workspace;->mTouchSlop:I

    .line 52
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/Workspace;->mScroller:Landroid/widget/Scroller;

    .line 53
    invoke-virtual {p0, v1}, Lcom/lx/launcher8/view/Workspace;->setBackgroundColor(I)V

    .line 54
    return-void
.end method

.method private updateWallpaperOffset()V
    .locals 2

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/lx/launcher8/view/Workspace;->updateWallpaperOffset(I)V

    .line 319
    return-void
.end method

.method private updateWallpaperOffset(I)V
    .locals 7
    .parameter "scrollRange"

    .prologue
    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 142
    .local v0, token:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/lx/launcher8/view/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 144
    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float v2, v6, v2

    .line 143
    invoke-virtual {v1, v2, v5}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 145
    iget-object v1, p0, Lcom/lx/launcher8/view/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 146
    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 148
    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p1

    div-float/2addr v3, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 147
    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 149
    const/high16 v4, 0x3f00

    .line 145
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 151
    :cond_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/lx/launcher8/view/Workspace;->updateWallpaperOffset()V

    .line 325
    iget-object v0, p0, Lcom/lx/launcher8/view/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/lx/launcher8/view/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/lx/launcher8/view/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/view/Workspace;->scrollTo(II)V

    .line 327
    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->invalidate()V

    .line 329
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 116
    iget v0, p0, Lcom/lx/launcher8/view/Workspace;->mBackColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 117
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 118
    return-void
.end method

.method public getCurScreen()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/lx/launcher8/view/Workspace;->mCurrentScreen:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 159
    .local v0, action:I
    iget-object v9, p0, Lcom/lx/launcher8/view/Workspace;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/lx/launcher8/view/Workspace;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    invoke-virtual {v9}, Lcom/lx/launcher8/AnallLauncher;->forbidWorkspaceScroll()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v7

    .line 161
    :cond_1
    const/4 v9, 0x2

    if-ne v0, v9, :cond_2

    iget v9, p0, Lcom/lx/launcher8/view/Workspace;->mTouchState:I

    if-ne v9, v8, :cond_2

    move v7, v8

    .line 162
    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 166
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 167
    .local v5, y:F
    packed-switch v0, :pswitch_data_0

    .line 193
    :cond_3
    :goto_1
    iget v9, p0, Lcom/lx/launcher8/view/Workspace;->mTouchState:I

    if-eqz v9, :cond_0

    move v7, v8

    goto :goto_0

    .line 169
    :pswitch_0
    iput v3, p0, Lcom/lx/launcher8/view/Workspace;->mLastMotionX:F

    .line 170
    iput v5, p0, Lcom/lx/launcher8/view/Workspace;->mLastMotionY:F

    .line 171
    iput v3, p0, Lcom/lx/launcher8/view/Workspace;->mLeftX:F

    .line 173
    iput v7, p0, Lcom/lx/launcher8/view/Workspace;->mTouchState:I

    goto :goto_1

    .line 176
    :pswitch_1
    iget v9, p0, Lcom/lx/launcher8/view/Workspace;->mLastMotionX:F

    sub-float/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v4, v9

    .line 177
    .local v4, xDiff:I
    iget v9, p0, Lcom/lx/launcher8/view/Workspace;->mLastMotionY:F

    sub-float/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v6, v9

    .line 178
    .local v6, yDiff:I
    iget v9, p0, Lcom/lx/launcher8/view/Workspace;->mTouchSlop:I

    if-le v4, v9, :cond_3

    int-to-float v9, v6

    int-to-float v10, v4

    div-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->atan(D)D

    move-result-wide v9

    const-wide v11, 0x3fe921fb54442d18L

    cmpg-double v9, v9, v11

    if-gez v9, :cond_3

    .line 179
    iput v8, p0, Lcom/lx/launcher8/view/Workspace;->mTouchState:I

    .line 180
    iput v3, p0, Lcom/lx/launcher8/view/Workspace;->mLastMotionX:F

    .line 181
    iput v5, p0, Lcom/lx/launcher8/view/Workspace;->mLastMotionY:F

    .line 182
    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->getChildCount()I

    move-result v1

    .line 183
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_3

    .line 184
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/view/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->cancelLongPress()V

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 190
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v4           #xDiff:I
    .end local v6           #yDiff:I
    :pswitch_2
    iput v7, p0, Lcom/lx/launcher8/view/Workspace;->mTouchState:I

    goto :goto_1

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
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
    .line 123
    const/4 v1, 0x0

    .line 126
    .local v1, childLeft:I
    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->getChildCount()I

    move-result v3

    .line 127
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v3, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/lx/launcher8/view/Workspace;->mCellLayoutWidth:I

    .line 138
    return-void

    .line 128
    :cond_0
    invoke-virtual {p0, v4}, Lcom/lx/launcher8/view/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 129
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 130
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 131
    .local v2, childWidth:I
    const/4 v5, 0x0

    add-int v6, v1, v2

    .line 132
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 131
    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 133
    add-int/2addr v1, v2

    .line 127
    .end local v2           #childWidth:I
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

    const/4 v6, 0x0

    .line 70
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 77
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 78
    .local v3, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 79
    .local v4, widthMode:I
    if-eq v4, v5, :cond_0

    .line 80
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 81
    const-string v6, "Workspace can only be used in EXACTLY mode."

    .line 80
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 84
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 85
    .local v1, heightMode:I
    if-eq v1, v5, :cond_1

    .line 86
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 87
    const-string v6, "Workspace can only be used in EXACTLY mode."

    .line 86
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->getChildCount()I

    move-result v0

    .line 92
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v0, :cond_3

    .line 96
    iget-boolean v5, p0, Lcom/lx/launcher8/view/Workspace;->mFirstLayout:Z

    if-eqz v5, :cond_2

    .line 97
    invoke-virtual {p0, v6}, Lcom/lx/launcher8/view/Workspace;->setHorizontalScrollBarEnabled(Z)V

    .line 98
    iget v5, p0, Lcom/lx/launcher8/view/Workspace;->mCurrentScreen:I

    mul-int/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Lcom/lx/launcher8/view/Workspace;->scrollTo(II)V

    .line 99
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/view/Workspace;->setHorizontalScrollBarEnabled(Z)V

    .line 100
    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v5, v3

    invoke-direct {p0, v5}, Lcom/lx/launcher8/view/Workspace;->updateWallpaperOffset(I)V

    .line 101
    iput-boolean v6, p0, Lcom/lx/launcher8/view/Workspace;->mFirstLayout:Z

    .line 103
    :cond_2
    return-void

    .line 93
    :cond_3
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/view/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 108
    if-eq p3, p1, :cond_0

    .line 109
    iget v1, p0, Lcom/lx/launcher8/view/Workspace;->mCurrentScreen:I

    mul-int v0, p1, v1

    .line 110
    .local v0, offsetX:I
    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/view/Workspace;->scrollTo(II)V

    .line 112
    .end local v0           #offsetX:I
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    .line 199
    iget-object v10, p0, Lcom/lx/launcher8/view/Workspace;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/lx/launcher8/view/Workspace;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    invoke-virtual {v10}, Lcom/lx/launcher8/AnallLauncher;->forbidWorkspaceScroll()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 200
    const/4 v10, 0x0

    .line 273
    :goto_0
    return v10

    .line 202
    :cond_0
    iget-object v10, p0, Lcom/lx/launcher8/view/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_1

    .line 203
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lcom/lx/launcher8/view/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 206
    :cond_1
    iget-object v10, p0, Lcom/lx/launcher8/view/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 210
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 211
    .local v7, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 212
    .local v9, y:F
    packed-switch v0, :pswitch_data_0

    .line 273
    :cond_2
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    .line 214
    :pswitch_0
    iget-object v10, p0, Lcom/lx/launcher8/view/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-nez v10, :cond_3

    .line 215
    iget-object v10, p0, Lcom/lx/launcher8/view/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->abortAnimation()V

    .line 217
    :cond_3
    iput v7, p0, Lcom/lx/launcher8/view/Workspace;->mLastMotionX:F

    .line 218
    iput v9, p0, Lcom/lx/launcher8/view/Workspace;->mLastMotionY:F

    .line 219
    iput v7, p0, Lcom/lx/launcher8/view/Workspace;->mLeftX:F

    goto :goto_1

    .line 222
    :pswitch_1
    iget v10, p0, Lcom/lx/launcher8/view/Workspace;->mLastMotionX:F

    sub-float/2addr v10, v7

    float-to-int v2, v10

    .line 223
    .local v2, deltaX:I
    iget v10, p0, Lcom/lx/launcher8/view/Workspace;->mLastMotionY:F

    sub-float/2addr v10, v9

    float-to-int v3, v10

    .line 224
    .local v3, deltaY:I
    iput v7, p0, Lcom/lx/launcher8/view/Workspace;->mLastMotionX:F

    .line 225
    iput v9, p0, Lcom/lx/launcher8/view/Workspace;->mLastMotionY:F

    .line 227
    if-gez v2, :cond_5

    .line 228
    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->getScrollX()I

    move-result v10

    if-lez v10, :cond_4

    .line 229
    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->getScrollX()I

    move-result v10

    neg-int v10, v10

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/lx/launcher8/view/Workspace;->scrollBy(II)V

    goto :goto_1

    .line 230
    :cond_4
    iget v10, p0, Lcom/lx/launcher8/view/Workspace;->mLeftX:F

    sub-float v10, v7, v10

    const/high16 v11, 0x4348

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    iget-object v10, p0, Lcom/lx/launcher8/view/Workspace;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    if-eqz v10, :cond_2

    .line 231
    iget-object v10, p0, Lcom/lx/launcher8/view/Workspace;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/lx/launcher8/AnallLauncher;->onMenuOpened(ILandroid/view/Menu;)Z

    goto :goto_1

    .line 233
    :cond_5
    if-lez v2, :cond_2

    .line 234
    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/view/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->getScrollX()I

    move-result v11

    sub-int/2addr v10, v11

    .line 235
    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->getWidth()I

    move-result v11

    .line 234
    sub-int v1, v10, v11

    .line 236
    .local v1, availableToScroll:I
    if-lez v1, :cond_6

    .line 237
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/lx/launcher8/view/Workspace;->scrollBy(II)V

    goto :goto_1

    .line 238
    :cond_6
    iget v10, p0, Lcom/lx/launcher8/view/Workspace;->mLeftX:F

    sub-float/2addr v10, v7

    const/high16 v11, 0x4348

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    iget-object v10, p0, Lcom/lx/launcher8/view/Workspace;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    if-eqz v10, :cond_2

    .line 239
    iget-object v10, p0, Lcom/lx/launcher8/view/Workspace;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/lx/launcher8/AnallLauncher;->onMenuOpened(ILandroid/view/Menu;)Z

    goto/16 :goto_1

    .line 244
    .end local v1           #availableToScroll:I
    .end local v2           #deltaX:I
    .end local v3           #deltaY:I
    :pswitch_2
    iget-object v4, p0, Lcom/lx/launcher8/view/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 246
    .local v4, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v10, 0x3e8

    invoke-virtual {v4, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 248
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v10

    float-to-int v5, v10

    .line 249
    .local v5, velocityX:I
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    float-to-int v6, v10

    .line 250
    .local v6, velocityY:I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-le v10, v11, :cond_8

    const/4 v8, 0x1

    .line 252
    .local v8, xFlag:Z
    :goto_2
    if-eqz v8, :cond_9

    const/16 v10, 0x258

    if-le v5, v10, :cond_9

    iget v10, p0, Lcom/lx/launcher8/view/Workspace;->mCurrentScreen:I

    if-lez v10, :cond_9

    .line 253
    iget v10, p0, Lcom/lx/launcher8/view/Workspace;->mCurrentScreen:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/view/Workspace;->snapToScreen(I)V

    .line 263
    :goto_3
    iget-object v10, p0, Lcom/lx/launcher8/view/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_7

    .line 264
    iget-object v10, p0, Lcom/lx/launcher8/view/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 265
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/lx/launcher8/view/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 267
    :cond_7
    const/4 v10, 0x0

    iput v10, p0, Lcom/lx/launcher8/view/Workspace;->mTouchState:I

    goto/16 :goto_1

    .line 250
    .end local v8           #xFlag:Z
    :cond_8
    const/4 v8, 0x0

    goto :goto_2

    .line 256
    .restart local v8       #xFlag:Z
    :cond_9
    if-eqz v8, :cond_a

    const/16 v10, -0x258

    if-ge v5, v10, :cond_a

    .line 257
    iget v10, p0, Lcom/lx/launcher8/view/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ge v10, v11, :cond_a

    .line 258
    iget v10, p0, Lcom/lx/launcher8/view/Workspace;->mCurrentScreen:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/view/Workspace;->snapToScreen(I)V

    goto :goto_3

    .line 260
    :cond_a
    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->snapToDestination()V

    goto :goto_3

    .line 270
    .end local v4           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v5           #velocityX:I
    .end local v6           #velocityY:I
    .end local v8           #xFlag:Z
    :pswitch_3
    const/4 v10, 0x0

    iput v10, p0, Lcom/lx/launcher8/view/Workspace;->mTouchState:I

    goto/16 :goto_1

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 66
    iput p1, p0, Lcom/lx/launcher8/view/Workspace;->mBackColor:I

    .line 67
    return-void
.end method

.method public setDragController(Lcom/lx/launcher8/AnallLauncher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lx/launcher8/view/Workspace;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    .line 58
    return-void
.end method

.method public setToScreen(I)V
    .locals 2
    .parameter "whichScreen"

    .prologue
    const/4 v1, 0x0

    .line 308
    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 309
    iput p1, p0, Lcom/lx/launcher8/view/Workspace;->mCurrentScreen:I

    .line 310
    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->getWidth()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/view/Workspace;->scrollTo(II)V

    .line 311
    return-void
.end method

.method public snapToDestination()V
    .locals 4

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->getWidth()I

    move-result v1

    .line 285
    .local v1, screenWidth:I
    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->getScrollX()I

    move-result v2

    mul-int/lit8 v3, v1, 0x3

    div-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    div-int v0, v2, v1

    .line 286
    .local v0, destScreen:I
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/Workspace;->snapToScreen(I)V

    .line 287
    return-void
.end method

.method public snapToScreen(I)V
    .locals 6
    .parameter "whichScreen"

    .prologue
    const/16 v5, 0x14d

    const/4 v2, 0x0

    .line 291
    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 292
    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->getWidth()I

    move-result v1

    mul-int/2addr v1, p1

    if-eq v0, v1, :cond_0

    .line 294
    if-nez p1, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->getWidth()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    .line 296
    .local v3, delta:I
    iget-object v0, p0, Lcom/lx/launcher8/view/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->getScrollX()I

    move-result v1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 301
    :goto_0
    iput p1, p0, Lcom/lx/launcher8/view/Workspace;->mCurrentScreen:I

    .line 302
    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->invalidate()V

    .line 304
    .end local v3           #delta:I
    :cond_0
    return-void

    .line 298
    :cond_1
    iget v0, p0, Lcom/lx/launcher8/view/Workspace;->mCellLayoutWidth:I

    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    .line 299
    .restart local v3       #delta:I
    iget-object v0, p0, Lcom/lx/launcher8/view/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/lx/launcher8/view/Workspace;->getScrollX()I

    move-result v1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0
.end method
