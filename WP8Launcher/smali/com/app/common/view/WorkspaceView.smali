.class public Lcom/app/common/view/WorkspaceView;
.super Landroid/view/ViewGroup;
.source "WorkspaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/common/view/WorkspaceView$OnScreenChangeListener;,
        Lcom/app/common/view/WorkspaceView$SavedState;
    }
.end annotation


# static fields
.field private static final INVALID_SCREEN:I = -0x1

.field private static final SNAP_VELOCITY:I = 0x3e8

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private allowLongPress:Z

.field private currentScreen:I

.field private defaultScreen:I

.field private firstWallpaperLayout:Z

.field private lastMotionX:F

.field private lastMotionY:F

.field private locked:Z

.field private mOnScreenChangeListener:Lcom/app/common/view/WorkspaceView$OnScreenChangeListener;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private nextScreen:I

.field private paint:Landroid/graphics/Paint;

.field private scroller:Landroid/widget/Scroller;

.field private touchSlop:I

.field private touchState:I

.field private wallpaper:Landroid/graphics/Bitmap;

.field private wallpaperHeight:I

.field private wallpaperLoaded:Z

.field private wallpaperOffset:F

.field private wallpaperWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/app/common/view/WorkspaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/app/common/view/WorkspaceView;->nextScreen:I

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/app/common/view/WorkspaceView;->firstWallpaperLayout:Z

    .line 62
    iput v1, p0, Lcom/app/common/view/WorkspaceView;->touchState:I

    .line 95
    iput v1, p0, Lcom/app/common/view/WorkspaceView;->defaultScreen:I

    .line 96
    invoke-direct {p0}, Lcom/app/common/view/WorkspaceView;->initWorkspace()V

    .line 97
    return-void
.end method

.method static centerToFit(Landroid/graphics/Bitmap;IILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"
    .parameter "context"

    .prologue
    const/high16 v8, 0x4000

    .line 679
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 680
    .local v1, bitmapWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 682
    .local v0, bitmapHeight:I
    if-lt v1, p1, :cond_0

    if-ge v0, p2, :cond_1

    .line 684
    :cond_0
    const-string v5, "FF191919"

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 685
    .local v4, color:I
    if-ge v1, p1, :cond_2

    move v6, p1

    :goto_0
    if-ge v0, p2, :cond_3

    move v5, p2

    .line 686
    :goto_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 685
    invoke-static {v6, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 687
    .local v3, centered:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 688
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 689
    sub-int v5, p1, v1

    int-to-float v5, v5

    div-float/2addr v5, v8

    sub-int v6, p2, v0

    int-to-float v6, v6

    div-float/2addr v6, v8

    const/4 v7, 0x0

    invoke-virtual {v2, p0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 690
    move-object p0, v3

    .line 692
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #centered:Landroid/graphics/Bitmap;
    .end local v4           #color:I
    :cond_1
    return-object p0

    .restart local v4       #color:I
    :cond_2
    move v6, v1

    .line 685
    goto :goto_0

    :cond_3
    move v5, v0

    .line 686
    goto :goto_1
.end method

.method private initWorkspace()V
    .locals 2

    .prologue
    .line 102
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/common/view/WorkspaceView;->scroller:Landroid/widget/Scroller;

    .line 103
    iget v0, p0, Lcom/app/common/view/WorkspaceView;->defaultScreen:I

    iput v0, p0, Lcom/app/common/view/WorkspaceView;->currentScreen:I

    .line 105
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/app/common/view/WorkspaceView;->paint:Landroid/graphics/Paint;

    .line 106
    iget-object v0, p0, Lcom/app/common/view/WorkspaceView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 107
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/app/common/view/WorkspaceView;->touchSlop:I

    .line 108
    return-void
.end method

.method private snapToDestination()V
    .locals 4

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getWidth()I

    move-result v0

    .line 459
    .local v0, screenWidth:I
    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getScrollX()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    div-int v1, v2, v0

    .line 460
    .local v1, whichScreen:I
    const-string v2, "workspace"

    const-string v3, "snapToDestination"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual {p0, v1}, Lcom/app/common/view/WorkspaceView;->scrollToScreen(I)V

    .line 462
    return-void
.end method


# virtual methods
.method public allowLongPress()Z
    .locals 1

    .prologue
    .line 604
    iget-boolean v0, p0, Lcom/app/common/view/WorkspaceView;->allowLongPress:Z

    return v0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 178
    iget-object v0, p0, Lcom/app/common/view/WorkspaceView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/app/common/view/WorkspaceView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/app/common/view/WorkspaceView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/app/common/view/WorkspaceView;->scrollTo(II)V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget v0, p0, Lcom/app/common/view/WorkspaceView;->nextScreen:I

    if-eq v0, v1, :cond_0

    .line 181
    iget v0, p0, Lcom/app/common/view/WorkspaceView;->nextScreen:I

    iput v0, p0, Lcom/app/common/view/WorkspaceView;->currentScreen:I

    .line 182
    iput v1, p0, Lcom/app/common/view/WorkspaceView;->nextScreen:I

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v7, 0x1

    .line 195
    iget-object v8, p0, Lcom/app/common/view/WorkspaceView;->wallpaper:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getScrollX()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/app/common/view/WorkspaceView;->wallpaperOffset:F

    mul-float v6, v8, v9

    .line 197
    .local v6, x:F
    iget v8, p0, Lcom/app/common/view/WorkspaceView;->wallpaperWidth:I

    int-to-float v8, v8

    add-float/2addr v8, v6

    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getRight()I

    move-result v9

    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getLeft()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getRight()I

    move-result v8

    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/app/common/view/WorkspaceView;->wallpaperWidth:I

    sub-int/2addr v8, v9

    int-to-float v6, v8

    .line 200
    :cond_0
    iget-object v8, p0, Lcom/app/common/view/WorkspaceView;->wallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getBottom()I

    move-result v9

    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getTop()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/app/common/view/WorkspaceView;->wallpaperHeight:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    iget-object v10, p0, Lcom/app/common/view/WorkspaceView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v6, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 203
    .end local v6           #x:F
    :cond_1
    iget v8, p0, Lcom/app/common/view/WorkspaceView;->touchState:I

    if-eq v8, v7, :cond_3

    iget v8, p0, Lcom/app/common/view/WorkspaceView;->nextScreen:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    move v3, v7

    .line 205
    .local v3, fastDraw:Z
    :goto_0
    if-eqz v3, :cond_4

    .line 206
    iget v7, p0, Lcom/app/common/view/WorkspaceView;->currentScreen:I

    invoke-virtual {p0, v7}, Lcom/app/common/view/WorkspaceView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 207
    .local v5, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getDrawingTime()J

    move-result-wide v7

    invoke-virtual {p0, p1, v5, v7, v8}, Lcom/app/common/view/WorkspaceView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 223
    .end local v5           #v:Landroid/view/View;
    :cond_2
    :goto_1
    return-void

    .line 203
    .end local v3           #fastDraw:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 209
    .restart local v3       #fastDraw:Z
    :cond_4
    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getDrawingTime()J

    move-result-wide v1

    .line 212
    .local v1, drawingTime:J
    iget v8, p0, Lcom/app/common/view/WorkspaceView;->nextScreen:I

    if-ltz v8, :cond_5

    iget v8, p0, Lcom/app/common/view/WorkspaceView;->nextScreen:I

    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getChildCount()I

    move-result v9

    if-ge v8, v9, :cond_5

    iget v8, p0, Lcom/app/common/view/WorkspaceView;->currentScreen:I

    iget v9, p0, Lcom/app/common/view/WorkspaceView;->nextScreen:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v7, :cond_5

    .line 213
    iget v7, p0, Lcom/app/common/view/WorkspaceView;->currentScreen:I

    invoke-virtual {p0, v7}, Lcom/app/common/view/WorkspaceView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v1, v2}, Lcom/app/common/view/WorkspaceView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 214
    iget v7, p0, Lcom/app/common/view/WorkspaceView;->nextScreen:I

    invoke-virtual {p0, v7}, Lcom/app/common/view/WorkspaceView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v1, v2}, Lcom/app/common/view/WorkspaceView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    .line 217
    :cond_5
    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getChildCount()I

    move-result v0

    .line 218
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v0, :cond_2

    .line 219
    invoke-virtual {p0, v4}, Lcom/app/common/view/WorkspaceView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v1, v2}, Lcom/app/common/view/WorkspaceView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 218
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 282
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getCurrentScreen()I

    move-result v1

    if-lez v1, :cond_1

    .line 284
    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getCurrentScreen()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/app/common/view/WorkspaceView;->scrollToScreen(I)V

    .line 293
    :goto_0
    return v0

    .line 287
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 288
    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getCurrentScreen()I

    move-result v1

    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 289
    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getCurrentScreen()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/app/common/view/WorkspaceView;->scrollToScreen(I)V

    goto :goto_0

    .line 293
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method getCurrentScreen()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/app/common/view/WorkspaceView;->currentScreen:I

    return v0
.end method

.method public getOnScreenChangeListener()Lcom/app/common/view/WorkspaceView$OnScreenChangeListener;
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/app/common/view/WorkspaceView;->mOnScreenChangeListener:Lcom/app/common/view/WorkspaceView$OnScreenChangeListener;

    return-object v0
.end method

.method public getScreenForView(Landroid/view/View;)I
    .locals 5
    .parameter "v"

    .prologue
    .line 551
    const/4 v2, -0x1

    .line 552
    .local v2, result:I
    if-eqz p1, :cond_0

    .line 553
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 554
    .local v3, vp:Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getChildCount()I

    move-result v0

    .line 555
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_2

    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :cond_0
    move v1, v2

    .line 561
    :cond_1
    return v1

    .line 556
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v3       #vp:Landroid/view/ViewParent;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/app/common/view/WorkspaceView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 555
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .parameter "tag"

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getChildCount()I

    move-result v2

    .line 573
    .local v2, screenCount:I
    const/4 v1, 0x0

    .local v1, screen:I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 579
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 574
    :cond_1
    invoke-virtual {p0, v1}, Lcom/app/common/view/WorkspaceView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 575
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_0

    .line 573
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method isDefaultScreenShowing()Z
    .locals 2

    .prologue
    .line 131
    iget v0, p0, Lcom/app/common/view/WorkspaceView;->currentScreen:I

    iget v1, p0, Lcom/app/common/view/WorkspaceView;->defaultScreen:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadWallpaper(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/app/common/view/WorkspaceView;->wallpaper:Landroid/graphics/Bitmap;

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/app/common/view/WorkspaceView;->wallpaperLoaded:Z

    .line 126
    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->requestLayout()V

    .line 127
    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->invalidate()V

    .line 128
    return-void
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 597
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/app/common/view/WorkspaceView;->locked:Z

    .line 598
    return-void
.end method

.method public moveToDefaultScreen()V
    .locals 1

    .prologue
    .line 611
    iget v0, p0, Lcom/app/common/view/WorkspaceView;->defaultScreen:I

    invoke-virtual {p0, v0}, Lcom/app/common/view/WorkspaceView;->scrollToScreen(I)V

    .line 612
    iget v0, p0, Lcom/app/common/view/WorkspaceView;->defaultScreen:I

    invoke-virtual {p0, v0}, Lcom/app/common/view/WorkspaceView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 613
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 303
    iget-boolean v10, p0, Lcom/app/common/view/WorkspaceView;->locked:Z

    if-eqz v10, :cond_1

    .line 374
    :cond_0
    :goto_0
    return v8

    .line 311
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 312
    .local v0, action:I
    const/4 v10, 0x2

    if-ne v0, v10, :cond_2

    iget v10, p0, Lcom/app/common/view/WorkspaceView;->touchState:I

    if-nez v10, :cond_0

    .line 316
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 317
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 319
    .local v5, y:F
    packed-switch v0, :pswitch_data_0

    .line 374
    :cond_3
    :goto_1
    iget v10, p0, Lcom/app/common/view/WorkspaceView;->touchState:I

    if-nez v10, :cond_0

    move v8, v9

    goto :goto_0

    .line 325
    :pswitch_0
    iget v10, p0, Lcom/app/common/view/WorkspaceView;->lastMotionX:F

    sub-float v10, v2, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 326
    .local v3, xDiff:I
    iget v10, p0, Lcom/app/common/view/WorkspaceView;->lastMotionY:F

    sub-float v10, v5, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v6, v10

    .line 327
    .local v6, yDiff:I
    iget v10, p0, Lcom/app/common/view/WorkspaceView;->touchSlop:I

    if-le v3, v10, :cond_6

    move v4, v8

    .line 328
    .local v4, xMoved:Z
    :goto_2
    iget v10, p0, Lcom/app/common/view/WorkspaceView;->touchSlop:I

    if-le v6, v10, :cond_7

    move v7, v8

    .line 330
    .local v7, yMoved:Z
    :goto_3
    if-nez v4, :cond_4

    if-eqz v7, :cond_3

    .line 332
    :cond_4
    if-eqz v4, :cond_5

    if-nez v7, :cond_5

    .line 334
    iput v8, p0, Lcom/app/common/view/WorkspaceView;->touchState:I

    .line 337
    :cond_5
    iget-boolean v10, p0, Lcom/app/common/view/WorkspaceView;->allowLongPress:Z

    if-eqz v10, :cond_3

    .line 338
    iput-boolean v9, p0, Lcom/app/common/view/WorkspaceView;->allowLongPress:Z

    .line 344
    iget v10, p0, Lcom/app/common/view/WorkspaceView;->currentScreen:I

    invoke-virtual {p0, v10}, Lcom/app/common/view/WorkspaceView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 345
    .local v1, currentView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->cancelLongPress()V

    goto :goto_1

    .end local v1           #currentView:Landroid/view/View;
    .end local v4           #xMoved:Z
    .end local v7           #yMoved:Z
    :cond_6
    move v4, v9

    .line 327
    goto :goto_2

    .restart local v4       #xMoved:Z
    :cond_7
    move v7, v9

    .line 328
    goto :goto_3

    .line 352
    .end local v3           #xDiff:I
    .end local v4           #xMoved:Z
    .end local v6           #yDiff:I
    :pswitch_1
    iput v2, p0, Lcom/app/common/view/WorkspaceView;->lastMotionX:F

    .line 353
    iput v5, p0, Lcom/app/common/view/WorkspaceView;->lastMotionY:F

    .line 354
    iput-boolean v8, p0, Lcom/app/common/view/WorkspaceView;->allowLongPress:Z

    .line 361
    iget-object v10, p0, Lcom/app/common/view/WorkspaceView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-eqz v10, :cond_8

    move v10, v9

    :goto_4
    iput v10, p0, Lcom/app/common/view/WorkspaceView;->touchState:I

    goto :goto_1

    :cond_8
    move v10, v8

    goto :goto_4

    .line 366
    :pswitch_2
    iput v9, p0, Lcom/app/common/view/WorkspaceView;->touchState:I

    goto :goto_1

    .line 319
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
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 268
    const/4 v1, 0x0

    .line 269
    .local v1, childLeft:I
    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getChildCount()I

    move-result v3

    .line 270
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v3, :cond_0

    .line 278
    return-void

    .line 271
    :cond_0
    invoke-virtual {p0, v4}, Lcom/app/common/view/WorkspaceView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 272
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 273
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 274
    .local v2, childWidth:I
    const/4 v5, 0x0

    add-int v6, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 275
    add-int/2addr v1, v2

    .line 270
    .end local v2           #childWidth:I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    const/4 v8, 0x0

    .line 230
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 232
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 233
    .local v3, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 234
    .local v4, widthMode:I
    if-eq v4, v5, :cond_0

    .line 235
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 238
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 239
    .local v1, heightMode:I
    if-eq v1, v5, :cond_1

    .line 240
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 244
    :cond_1
    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getChildCount()I

    move-result v0

    .line 245
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v0, :cond_4

    .line 250
    iget-boolean v5, p0, Lcom/app/common/view/WorkspaceView;->wallpaperLoaded:Z

    if-eqz v5, :cond_2

    .line 251
    iput-boolean v8, p0, Lcom/app/common/view/WorkspaceView;->wallpaperLoaded:Z

    .line 252
    iget-object v5, p0, Lcom/app/common/view/WorkspaceView;->wallpaper:Landroid/graphics/Bitmap;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v5, v3, v6, v7}, Lcom/app/common/view/WorkspaceView;->centerToFit(Landroid/graphics/Bitmap;IILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/app/common/view/WorkspaceView;->wallpaper:Landroid/graphics/Bitmap;

    .line 253
    iget-object v5, p0, Lcom/app/common/view/WorkspaceView;->wallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/app/common/view/WorkspaceView;->wallpaperWidth:I

    .line 254
    iget-object v5, p0, Lcom/app/common/view/WorkspaceView;->wallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iput v5, p0, Lcom/app/common/view/WorkspaceView;->wallpaperHeight:I

    .line 256
    :cond_2
    iget v5, p0, Lcom/app/common/view/WorkspaceView;->wallpaperWidth:I

    if-le v5, v3, :cond_5

    mul-int v5, v0, v3

    iget v6, p0, Lcom/app/common/view/WorkspaceView;->wallpaperWidth:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-int/lit8 v6, v0, -0x1

    int-to-float v6, v6

    int-to-float v7, v3

    mul-float/2addr v6, v7

    div-float/2addr v5, v6

    :goto_1
    iput v5, p0, Lcom/app/common/view/WorkspaceView;->wallpaperOffset:F

    .line 257
    iget-boolean v5, p0, Lcom/app/common/view/WorkspaceView;->firstWallpaperLayout:Z

    if-eqz v5, :cond_3

    .line 258
    iget v5, p0, Lcom/app/common/view/WorkspaceView;->currentScreen:I

    mul-int/2addr v5, v3

    invoke-virtual {p0, v5, v8}, Lcom/app/common/view/WorkspaceView;->scrollTo(II)V

    .line 259
    iput-boolean v8, p0, Lcom/app/common/view/WorkspaceView;->firstWallpaperLayout:Z

    .line 261
    :cond_3
    return-void

    .line 246
    :cond_4
    invoke-virtual {p0, v2}, Lcom/app/common/view/WorkspaceView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    :cond_5
    const/high16 v5, 0x3f80

    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 507
    move-object v0, p1

    check-cast v0, Lcom/app/common/view/WorkspaceView$SavedState;

    .line 508
    .local v0, savedState:Lcom/app/common/view/WorkspaceView$SavedState;
    invoke-virtual {v0}, Lcom/app/common/view/WorkspaceView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 509
    iget v1, v0, Lcom/app/common/view/WorkspaceView$SavedState;->currentScreen:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 510
    iget v1, v0, Lcom/app/common/view/WorkspaceView$SavedState;->currentScreen:I

    iput v1, p0, Lcom/app/common/view/WorkspaceView;->currentScreen:I

    .line 512
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 497
    new-instance v0, Lcom/app/common/view/WorkspaceView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/app/common/view/WorkspaceView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 498
    .local v0, state:Lcom/app/common/view/WorkspaceView$SavedState;
    iget v1, p0, Lcom/app/common/view/WorkspaceView;->currentScreen:I

    iput v1, v0, Lcom/app/common/view/WorkspaceView$SavedState;->currentScreen:I

    .line 499
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    const/16 v7, 0x3e8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 382
    iget-boolean v6, p0, Lcom/app/common/view/WorkspaceView;->locked:Z

    if-eqz v6, :cond_1

    .line 451
    :cond_0
    :goto_0
    return v9

    .line 385
    :cond_1
    iget-object v6, p0, Lcom/app/common/view/WorkspaceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_2

    .line 386
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, p0, Lcom/app/common/view/WorkspaceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 388
    :cond_2
    iget-object v6, p0, Lcom/app/common/view/WorkspaceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 390
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 391
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 393
    .local v5, x:F
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 399
    :pswitch_0
    iget-object v6, p0, Lcom/app/common/view/WorkspaceView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 400
    iget-object v6, p0, Lcom/app/common/view/WorkspaceView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 404
    :cond_3
    iput v5, p0, Lcom/app/common/view/WorkspaceView;->lastMotionX:F

    goto :goto_0

    .line 407
    :pswitch_1
    iget v6, p0, Lcom/app/common/view/WorkspaceView;->touchState:I

    if-ne v6, v9, :cond_0

    .line 409
    iget v6, p0, Lcom/app/common/view/WorkspaceView;->lastMotionX:F

    sub-float/2addr v6, v5

    float-to-int v2, v6

    .line 410
    .local v2, deltaX:I
    iput v5, p0, Lcom/app/common/view/WorkspaceView;->lastMotionX:F

    .line 412
    if-gez v2, :cond_4

    .line 413
    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getScrollX()I

    move-result v6

    if-lez v6, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getScrollX()I

    move-result v6

    neg-int v6, v6

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6, v8}, Lcom/app/common/view/WorkspaceView;->scrollBy(II)V

    goto :goto_0

    .line 416
    :cond_4
    if-lez v2, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/app/common/view/WorkspaceView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getWidth()I

    move-result v7

    sub-int v1, v6, v7

    .line 418
    .local v1, availableToScroll:I
    if-lez v1, :cond_0

    .line 419
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6, v8}, Lcom/app/common/view/WorkspaceView;->scrollBy(II)V

    goto :goto_0

    .line 425
    .end local v1           #availableToScroll:I
    .end local v2           #deltaX:I
    :pswitch_2
    iget v6, p0, Lcom/app/common/view/WorkspaceView;->touchState:I

    if-ne v6, v9, :cond_5

    .line 426
    iget-object v3, p0, Lcom/app/common/view/WorkspaceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 427
    .local v3, velocityTracker:Landroid/view/VelocityTracker;
    invoke-virtual {v3, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 428
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v6

    float-to-int v4, v6

    .line 430
    .local v4, velocityX:I
    if-le v4, v7, :cond_6

    iget v6, p0, Lcom/app/common/view/WorkspaceView;->currentScreen:I

    if-lez v6, :cond_6

    .line 432
    iget v6, p0, Lcom/app/common/view/WorkspaceView;->currentScreen:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/app/common/view/WorkspaceView;->scrollToScreen(I)V

    .line 440
    :goto_1
    iget-object v6, p0, Lcom/app/common/view/WorkspaceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_5

    .line 441
    iget-object v6, p0, Lcom/app/common/view/WorkspaceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 442
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/app/common/view/WorkspaceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 445
    .end local v3           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v4           #velocityX:I
    :cond_5
    iput v8, p0, Lcom/app/common/view/WorkspaceView;->touchState:I

    goto/16 :goto_0

    .line 433
    .restart local v3       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v4       #velocityX:I
    :cond_6
    const/16 v6, -0x3e8

    if-ge v4, v6, :cond_7

    iget v6, p0, Lcom/app/common/view/WorkspaceView;->currentScreen:I

    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_7

    .line 435
    iget v6, p0, Lcom/app/common/view/WorkspaceView;->currentScreen:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Lcom/app/common/view/WorkspaceView;->scrollToScreen(I)V

    goto :goto_1

    .line 437
    :cond_7
    invoke-direct {p0}, Lcom/app/common/view/WorkspaceView;->snapToDestination()V

    goto :goto_1

    .line 448
    .end local v3           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v4           #velocityX:I
    :pswitch_3
    iput v8, p0, Lcom/app/common/view/WorkspaceView;->touchState:I

    goto/16 :goto_0

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public scrollLeft()V
    .locals 2

    .prologue
    .line 518
    iget v0, p0, Lcom/app/common/view/WorkspaceView;->nextScreen:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/app/common/view/WorkspaceView;->currentScreen:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/app/common/view/WorkspaceView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    iget v0, p0, Lcom/app/common/view/WorkspaceView;->currentScreen:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/app/common/view/WorkspaceView;->scrollToScreen(I)V

    .line 521
    :cond_0
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 539
    iget v0, p0, Lcom/app/common/view/WorkspaceView;->nextScreen:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/app/common/view/WorkspaceView;->currentScreen:I

    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/app/common/view/WorkspaceView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget v0, p0, Lcom/app/common/view/WorkspaceView;->currentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/app/common/view/WorkspaceView;->scrollToScreen(I)V

    .line 542
    :cond_0
    return-void
.end method

.method public scrollToScreen(I)V
    .locals 9
    .parameter "whichScreen"

    .prologue
    const/4 v2, 0x0

    .line 470
    const-string v0, "workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "snapToScreen="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget v0, p0, Lcom/app/common/view/WorkspaceView;->currentScreen:I

    if-eq p1, v0, :cond_2

    const/4 v6, 0x1

    .line 474
    .local v6, changingScreens:Z
    :goto_0
    iput p1, p0, Lcom/app/common/view/WorkspaceView;->nextScreen:I

    .line 476
    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getFocusedChild()Landroid/view/View;

    move-result-object v7

    .line 477
    .local v7, focusedChild:Landroid/view/View;
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    iget v0, p0, Lcom/app/common/view/WorkspaceView;->currentScreen:I

    invoke-virtual {p0, v0}, Lcom/app/common/view/WorkspaceView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v7, v0, :cond_0

    .line 478
    invoke-virtual {v7}, Landroid/view/View;->clearFocus()V

    .line 481
    :cond_0
    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getWidth()I

    move-result v0

    mul-int v8, p1, v0

    .line 482
    .local v8, newX:I
    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getScrollX()I

    move-result v0

    sub-int v3, v8, v0

    .line 483
    .local v3, delta:I
    const-string v0, "workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "newX="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " scrollX="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getScrollX()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " delta="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v0, p0, Lcom/app/common/view/WorkspaceView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 485
    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->invalidate()V

    .line 487
    iget-object v0, p0, Lcom/app/common/view/WorkspaceView;->mOnScreenChangeListener:Lcom/app/common/view/WorkspaceView$OnScreenChangeListener;

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/app/common/view/WorkspaceView;->mOnScreenChangeListener:Lcom/app/common/view/WorkspaceView$OnScreenChangeListener;

    invoke-interface {v0, p1}, Lcom/app/common/view/WorkspaceView$OnScreenChangeListener;->toScreen(I)V

    .line 490
    :cond_1
    return-void

    .end local v3           #delta:I
    .end local v6           #changingScreens:Z
    .end local v7           #focusedChild:Landroid/view/View;
    .end local v8           #newX:I
    :cond_2
    move v6, v2

    .line 472
    goto :goto_0
.end method

.method setCurrentScreen(I)V
    .locals 2
    .parameter "currentScreen"

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getChildCount()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 150
    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getWidth()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/app/common/view/WorkspaceView;->scrollTo(II)V

    .line 151
    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->invalidate()V

    .line 152
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/app/common/view/WorkspaceView;->getChildCount()I

    move-result v0

    .line 171
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 174
    return-void

    .line 172
    :cond_0
    invoke-virtual {p0, v1}, Lcom/app/common/view/WorkspaceView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setOnScreenChangeListener(Lcom/app/common/view/WorkspaceView$OnScreenChangeListener;)V
    .locals 0
    .parameter "onScreenChangeListener"

    .prologue
    .line 695
    iput-object p1, p0, Lcom/app/common/view/WorkspaceView;->mOnScreenChangeListener:Lcom/app/common/view/WorkspaceView$OnScreenChangeListener;

    .line 696
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0
    .parameter "touchSlopP"

    .prologue
    .line 117
    iput p1, p0, Lcom/app/common/view/WorkspaceView;->touchSlop:I

    .line 118
    return-void
.end method

.method showDefaultScreen()V
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/app/common/view/WorkspaceView;->defaultScreen:I

    invoke-virtual {p0, v0}, Lcom/app/common/view/WorkspaceView;->setCurrentScreen(I)V

    .line 159
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/app/common/view/WorkspaceView;->locked:Z

    .line 589
    return-void
.end method
