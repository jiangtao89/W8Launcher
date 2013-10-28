.class public Lcom/lx/launcher8/view/DragController;
.super Ljava/lang/Object;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/view/DragController$DelayDragRunnable;,
        Lcom/lx/launcher8/view/DragController$DragListener;,
        Lcom/lx/launcher8/view/DragController$ScrollRunnable;
    }
.end annotation


# static fields
.field private static final SCROLL_BOTTOM:I = 0x1

.field private static final SCROLL_DELAY:I = 0x258

.field private static final SCROLL_OUTSIDE_ZONE:I = 0x0

.field private static final SCROLL_TOP:I = 0x0

.field private static final SCROLL_WAITING_IN_ZONE:I = 0x1

.field private static final SCROLL_ZONE:I = 0x41

.field private static final TAG:Ljava/lang/String; = "Launcher.DragController"


# instance fields
.field mAnimaRunnable:Ljava/lang/Runnable;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCancelRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mDeleteRegion:Landroid/graphics/RectF;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mDragClick:Landroid/view/View$OnClickListener;

.field private mDragRect:Landroid/graphics/Rect;

.field private mDragRunnable:Lcom/lx/launcher8/view/DragController$DelayDragRunnable;

.field private mDragView:Landroid/view/View;

.field private mDragging:Z

.field private mEditView:Lcom/lx/launcher8/view/CellLayout;

.field private mEnableEidt:Z

.field private mHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLastPos:[I

.field private mMainAct:Lcom/lx/launcher8/AnallLauncher;

.field private mMotionDownX:F

.field private mMotionDownY:F

.field private mNeedCancel:Z

.field private mOffsetX:I

.field private mOffsetY:I

.field private mOriginator:Lcom/lx/launcher8/view/CellView;

.field private mScrollRunnable:Lcom/lx/launcher8/view/DragController$ScrollRunnable;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/view/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/view/DragController;->mDragRect:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/view/DragController;->mTempRect:Landroid/graphics/Rect;

    .line 89
    new-instance v0, Lcom/lx/launcher8/view/DragController$DelayDragRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lx/launcher8/view/DragController$DelayDragRunnable;-><init>(Lcom/lx/launcher8/view/DragController;Lcom/lx/launcher8/view/DragController$DelayDragRunnable;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/DragController;->mDragRunnable:Lcom/lx/launcher8/view/DragController$DelayDragRunnable;

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/lx/launcher8/view/DragController;->mScrollState:I

    .line 97
    new-instance v0, Lcom/lx/launcher8/view/DragController$ScrollRunnable;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/view/DragController$ScrollRunnable;-><init>(Lcom/lx/launcher8/view/DragController;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/DragController;->mScrollRunnable:Lcom/lx/launcher8/view/DragController$ScrollRunnable;

    .line 268
    new-instance v0, Lcom/lx/launcher8/view/DragController$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/view/DragController$1;-><init>(Lcom/lx/launcher8/view/DragController;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/DragController;->mAnimaRunnable:Ljava/lang/Runnable;

    .line 607
    new-instance v0, Lcom/lx/launcher8/view/DragController$2;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/view/DragController$2;-><init>(Lcom/lx/launcher8/view/DragController;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/DragController;->mDragClick:Landroid/view/View$OnClickListener;

    .line 638
    new-instance v0, Lcom/lx/launcher8/view/DragController$3;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/view/DragController$3;-><init>(Lcom/lx/launcher8/view/DragController;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/DragController;->mCancelRunnable:Ljava/lang/Runnable;

    .line 130
    iput-object p1, p0, Lcom/lx/launcher8/view/DragController;->mContext:Landroid/content/Context;

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/view/DragController;->mHandler:Landroid/os/Handler;

    .line 132
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/view/DragController;->mTouchSlop:I

    .line 134
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/lx/launcher8/view/DragController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/DragController;->mScroller:Landroid/widget/Scroller;

    .line 135
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lx/launcher8/view/DragController;->mLastPos:[I

    .line 136
    invoke-direct {p0}, Lcom/lx/launcher8/view/DragController;->resetOffset()V

    .line 137
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/view/DragController;)Landroid/widget/Scroller;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/view/DragController;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lx/launcher8/view/DragController;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput p1, p0, Lcom/lx/launcher8/view/DragController;->mScrollState:I

    return-void
.end method

.method static synthetic access$2(Lcom/lx/launcher8/view/DragController;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/view/DragController;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/lx/launcher8/view/DragController;->ensureInLayout(Landroid/widget/RelativeLayout$LayoutParams;)V

    return-void
.end method

.method static synthetic access$4(Lcom/lx/launcher8/view/DragController;)Lcom/lx/launcher8/AnallLauncher;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mMainAct:Lcom/lx/launcher8/AnallLauncher;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/view/DragController;)Lcom/lx/launcher8/view/CellView;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mOriginator:Lcom/lx/launcher8/view/CellView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lx/launcher8/view/DragController;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lcom/lx/launcher8/view/DragController;->changeLevelToSize(I)V

    return-void
.end method

.method static synthetic access$7(Lcom/lx/launcher8/view/DragController;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 295
    invoke-direct {p0, p1}, Lcom/lx/launcher8/view/DragController;->getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lcom/lx/launcher8/view/DragController;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/lx/launcher8/view/DragController;->setDragviewView(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$9(Lcom/lx/launcher8/view/DragController;)Lcom/lx/launcher8/view/CellLayout;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mEditView:Lcom/lx/launcher8/view/CellLayout;

    return-object v0
.end method

.method private changeLevelToSize(I)V
    .locals 10
    .parameter "level"

    .prologue
    .line 338
    const/4 v9, 0x0

    .line 339
    .local v9, size:I
    packed-switch p1, :pswitch_data_0

    .line 350
    :goto_0
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mOriginator:Lcom/lx/launcher8/view/CellView;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/CellView;->getLayoutParams()Lcom/lx/launcher8/view/CellLayoutParams;

    move-result-object v6

    .line 351
    .local v6, cl:Lcom/lx/launcher8/view/CellLayoutParams;
    invoke-virtual {v6}, Lcom/lx/launcher8/view/CellLayoutParams;->getCellSize()I

    move-result v8

    .line 352
    .local v8, oldSize:I
    invoke-virtual {v6, v9}, Lcom/lx/launcher8/view/CellLayoutParams;->setCellSize(I)V

    .line 353
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mEditView:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/CellLayout;->measureCell(Lcom/lx/launcher8/view/CellLayoutParams;)V

    .line 354
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mOriginator:Lcom/lx/launcher8/view/CellView;

    invoke-virtual {v0, v8, v9}, Lcom/lx/launcher8/view/CellView;->onSizeChange(II)V

    .line 355
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 356
    .local v7, fl:Landroid/widget/RelativeLayout$LayoutParams;
    iget v0, v6, Lcom/lx/launcher8/view/CellLayoutParams;->width:I

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v0, v6, Lcom/lx/launcher8/view/CellLayoutParams;->height:I

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 357
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    iget-object v1, p0, Lcom/lx/launcher8/view/DragController;->mDragRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 359
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mEditView:Lcom/lx/launcher8/view/CellLayout;

    iget-object v1, p0, Lcom/lx/launcher8/view/DragController;->mOriginator:Lcom/lx/launcher8/view/CellView;

    iget-object v2, p0, Lcom/lx/launcher8/view/DragController;->mDragRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/lx/launcher8/view/DragController;->mDragRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    shr-int/lit8 v4, v8, 0x10

    const v5, 0xffff

    and-int/2addr v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/view/CellLayout;->onCellSizeChange(Lcom/lx/launcher8/view/CellView;IIII)V

    .line 360
    return-void

    .line 341
    .end local v6           #cl:Lcom/lx/launcher8/view/CellLayoutParams;
    .end local v7           #fl:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v8           #oldSize:I
    :pswitch_0
    const v9, 0x10001

    .line 342
    goto :goto_0

    .line 344
    :pswitch_1
    const v9, 0x40002

    .line 345
    goto :goto_0

    .line 347
    :pswitch_2
    const v9, 0x20002

    goto :goto_0

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private computeOffset(II)V
    .locals 3
    .parameter "screenX"
    .parameter "screenY"

    .prologue
    const/4 v2, -0x1

    .line 527
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    iget-object v1, p0, Lcom/lx/launcher8/view/DragController;->mDragRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 528
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mDragRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/lx/launcher8/view/DragController;->mOffsetX:I

    .line 529
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mDragRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/lx/launcher8/view/DragController;->mOffsetY:I

    .line 530
    iget v0, p0, Lcom/lx/launcher8/view/DragController;->mOffsetX:I

    if-lt v0, v2, :cond_0

    iget v0, p0, Lcom/lx/launcher8/view/DragController;->mOffsetY:I

    if-ge v0, v2, :cond_1

    .line 531
    :cond_0
    invoke-direct {p0}, Lcom/lx/launcher8/view/DragController;->resetOffset()V

    .line 533
    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 390
    iget-boolean v0, p0, Lcom/lx/launcher8/view/DragController;->mDragging:Z

    if-eqz v0, :cond_2

    .line 391
    iput-boolean v2, p0, Lcom/lx/launcher8/view/DragController;->mDragging:Z

    .line 392
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mOriginator:Lcom/lx/launcher8/view/CellView;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mOriginator:Lcom/lx/launcher8/view/CellView;

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/CellView;->setVisibility(I)V

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/view/DragController;->mOriginator:Lcom/lx/launcher8/view/CellView;

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 398
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 400
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lx/launcher8/view/DragController;->releaseBitmap(Z)V

    .line 401
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mEditView:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/CellLayout;->setEditMode(Z)V

    .line 403
    :cond_2
    return-void
.end method

.method private ensureInLayout(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2
    .parameter "lp"

    .prologue
    .line 282
    iget v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/lx/launcher8/view/DragController;->mEditView:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v1}, Lcom/lx/launcher8/view/CellLayout;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mEditView:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/CellLayout;->getWidth()I

    move-result v0

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method private exeDragEditButton()Z
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x1

    .line 540
    iget-object v4, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    const v5, 0x7f090137

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 541
    .local v0, view:Landroid/view/View;
    iget v4, p0, Lcom/lx/launcher8/view/DragController;->mMotionDownX:F

    float-to-int v1, v4

    .local v1, x:I
    iget v4, p0, Lcom/lx/launcher8/view/DragController;->mMotionDownY:F

    float-to-int v2, v4

    .line 542
    .local v2, y:I
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v7, :cond_0

    .line 543
    iget-object v4, p0, Lcom/lx/launcher8/view/DragController;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 544
    iget-object v4, p0, Lcom/lx/launcher8/view/DragController;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/lx/launcher8/view/DragController;->mDragRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/lx/launcher8/view/DragController;->mDragRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 545
    iget-object v4, p0, Lcom/lx/launcher8/view/DragController;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 546
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 568
    :goto_0
    return v3

    .line 550
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    const v5, 0x7f090138

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 551
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v7, :cond_1

    .line 552
    iget-object v4, p0, Lcom/lx/launcher8/view/DragController;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 553
    iget-object v4, p0, Lcom/lx/launcher8/view/DragController;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/lx/launcher8/view/DragController;->mDragRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/lx/launcher8/view/DragController;->mDragRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 554
    iget-object v4, p0, Lcom/lx/launcher8/view/DragController;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 555
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 559
    :cond_1
    iget-object v4, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    const v5, 0x7f090139

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 560
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v7, :cond_2

    .line 561
    iget-object v4, p0, Lcom/lx/launcher8/view/DragController;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 562
    iget-object v4, p0, Lcom/lx/launcher8/view/DragController;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/lx/launcher8/view/DragController;->mDragRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/lx/launcher8/view/DragController;->mDragRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 563
    iget-object v4, p0, Lcom/lx/launcher8/view/DragController;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 564
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 568
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 297
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 299
    invoke-virtual {p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v3

    .line 300
    .local v3, willNotCache:Z
    invoke-virtual {p1, v4}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v2

    .line 305
    .local v2, color:I
    invoke-virtual {p1, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 307
    if-eqz v2, :cond_0

    .line 308
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 310
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 312
    .local v1, cacheBitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 313
    const-string v4, "Launcher.DragController"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "failed getViewBitmap("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    const/4 v0, 0x0

    .line 327
    :goto_0
    return-object v0

    .line 317
    :cond_1
    const/4 v0, 0x0

    .line 319
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 323
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 324
    invoke-virtual {p1, v3}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 325
    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0

    .line 320
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private recordScreenSize()V
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 577
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/view/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 578
    return-void
.end method

.method private releaseBitmap(Z)V
    .locals 3
    .parameter "foreView"

    .prologue
    .line 207
    if-eqz p1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    const v2, 0x7f090136

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 209
    .local v0, view:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 211
    .end local v0           #view:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/view/DragController;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/lx/launcher8/view/DragController;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/lx/launcher8/view/DragController;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 214
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lx/launcher8/view/DragController;->mBitmap:Landroid/graphics/Bitmap;

    .line 216
    :cond_2
    return-void
.end method

.method private resetOffset()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 535
    iput v0, p0, Lcom/lx/launcher8/view/DragController;->mOffsetX:I

    .line 536
    iput v0, p0, Lcom/lx/launcher8/view/DragController;->mOffsetY:I

    .line 537
    return-void
.end method

.method private setDragviewView(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bt"

    .prologue
    .line 219
    if-eqz p1, :cond_0

    .line 220
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/lx/launcher8/view/DragController;->releaseBitmap(Z)V

    .line 221
    iget-object v1, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    const v2, 0x7f090136

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 222
    .local v0, view:Landroid/view/View;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    iput-object p1, p0, Lcom/lx/launcher8/view/DragController;->mBitmap:Landroid/graphics/Bitmap;

    .line 225
    .end local v0           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private updateCancelTime()V
    .locals 4

    .prologue
    .line 198
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lx/launcher8/view/DragController;->mCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 199
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lx/launcher8/view/DragController;->mCancelRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 200
    return-void
.end method

.method private updateDragTo(IIZ)V
    .locals 11
    .parameter "screenX"
    .parameter "screenY"
    .parameter "needOffset"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 228
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 230
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 231
    .local v7, fl:Landroid/widget/RelativeLayout$LayoutParams;
    iput p2, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput p1, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 232
    if-eqz p3, :cond_0

    .line 233
    iget v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v1, p0, Lcom/lx/launcher8/view/DragController;->mOffsetY:I

    sub-int/2addr v0, v1

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 234
    iget v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v1, p0, Lcom/lx/launcher8/view/DragController;->mOffsetX:I

    sub-int/2addr v0, v1

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mOriginator:Lcom/lx/launcher8/view/CellView;

    if-eqz v0, :cond_1

    .line 240
    const/4 v0, 0x2

    new-array v6, v0, [I

    .line 241
    .local v6, pos:[I
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mOriginator:Lcom/lx/launcher8/view/CellView;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/CellView;->getCellInfo()Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v8

    .line 242
    .local v8, ic:Lcom/lx/launcher8/bean/ItemCell;
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mEditView:Lcom/lx/launcher8/view/CellLayout;

    iget v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v2, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v4, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v5, v8, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    invoke-virtual/range {v0 .. v6}, Lcom/lx/launcher8/view/CellLayout;->computePos(IIIII[I)Z

    .line 243
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mDragRunnable:Lcom/lx/launcher8/view/DragController$DelayDragRunnable;

    iget v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v2, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, v8, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    iget v4, v8, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/view/DragController$DelayDragRunnable;->setParams(IIIIZ)V

    .line 244
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mLastPos:[I

    aget v0, v0, v9

    aget v1, v6, v9

    if-eq v0, v1, :cond_1

    .line 245
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lx/launcher8/view/DragController;->mDragRunnable:Lcom/lx/launcher8/view/DragController$DelayDragRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 246
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lx/launcher8/view/DragController;->mDragRunnable:Lcom/lx/launcher8/view/DragController$DelayDragRunnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 247
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mLastPos:[I

    aget v1, v6, v10

    aput v1, v0, v10

    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mLastPos:[I

    aget v1, v6, v9

    aput v1, v0, v9

    .line 250
    .end local v6           #pos:[I
    .end local v8           #ic:Lcom/lx/launcher8/bean/ItemCell;
    :cond_1
    invoke-direct {p0}, Lcom/lx/launcher8/view/DragController;->updateCancelTime()V

    .line 251
    return-void
.end method


# virtual methods
.method public beginDrag(Lcom/lx/launcher8/view/CellView;)V
    .locals 12
    .parameter "cell"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 152
    iget-object v8, p0, Lcom/lx/launcher8/view/DragController;->mOriginator:Lcom/lx/launcher8/view/CellView;

    if-eqz v8, :cond_0

    .line 153
    iget-object v8, p0, Lcom/lx/launcher8/view/DragController;->mOriginator:Lcom/lx/launcher8/view/CellView;

    invoke-virtual {v8, v9}, Lcom/lx/launcher8/view/CellView;->setVisibility(I)V

    .line 155
    :cond_0
    iput-object p1, p0, Lcom/lx/launcher8/view/DragController;->mOriginator:Lcom/lx/launcher8/view/CellView;

    .line 156
    invoke-direct {p0, p1}, Lcom/lx/launcher8/view/DragController;->getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 157
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 195
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v8, p0, Lcom/lx/launcher8/view/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v8, :cond_2

    .line 164
    iget-object v8, p0, Lcom/lx/launcher8/view/DragController;->mContext:Landroid/content/Context;

    const-string v11, "input_method"

    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 163
    check-cast v8, Landroid/view/inputmethod/InputMethodManager;

    iput-object v8, p0, Lcom/lx/launcher8/view/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 167
    :cond_2
    iget-object v8, p0, Lcom/lx/launcher8/view/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v11, p0, Lcom/lx/launcher8/view/DragController;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v8, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 168
    iget-object v8, p0, Lcom/lx/launcher8/view/DragController;->mOriginator:Lcom/lx/launcher8/view/CellView;

    iget-object v11, p0, Lcom/lx/launcher8/view/DragController;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v11}, Lcom/lx/launcher8/view/CellView;->getHitRect(Landroid/graphics/Rect;)V

    .line 169
    iget-object v8, p0, Lcom/lx/launcher8/view/DragController;->mTempRect:Landroid/graphics/Rect;

    iget v5, v8, Landroid/graphics/Rect;->left:I

    .line 170
    .local v5, screenX:I
    iget-object v8, p0, Lcom/lx/launcher8/view/DragController;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/lx/launcher8/view/DragController;->mEditView:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v11}, Lcom/lx/launcher8/view/CellLayout;->getScrollY()I

    move-result v11

    sub-int v6, v8, v11

    .line 171
    .local v6, screenY:I
    invoke-virtual {p0}, Lcom/lx/launcher8/view/DragController;->startDrag()V

    .line 172
    iget-object v8, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->clearAnimation()V

    .line 173
    iget-object v8, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v8, p0, Lcom/lx/launcher8/view/DragController;->mOriginator:Lcom/lx/launcher8/view/CellView;

    invoke-virtual {v8}, Lcom/lx/launcher8/view/CellView;->isEditable()Z

    move-result v8

    if-eqz v8, :cond_3

    move v7, v9

    .line 175
    .local v7, visible:I
    :goto_1
    iget-object v8, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    const v11, 0x7f090137

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v8, p0, Lcom/lx/launcher8/view/DragController;->mOriginator:Lcom/lx/launcher8/view/CellView;

    invoke-virtual {v8}, Lcom/lx/launcher8/view/CellView;->getSizeLevel()I

    move-result v4

    .line 178
    .local v4, level:I
    iget-object v8, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    const v11, 0x7f090139

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 179
    .local v3, iv:Landroid/widget/ImageView;
    const/4 v8, -0x1

    if-ne v4, v8, :cond_4

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    :goto_2
    invoke-direct {p0, v0}, Lcom/lx/launcher8/view/DragController;->setDragviewView(Landroid/graphics/Bitmap;)V

    .line 185
    iget-object v8, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 186
    .local v2, fl:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p1}, Lcom/lx/launcher8/view/CellView;->getLayoutParams()Lcom/lx/launcher8/view/CellLayoutParams;

    move-result-object v1

    .line 188
    .local v1, cl:Lcom/lx/launcher8/view/CellLayoutParams;
    iget v8, v1, Lcom/lx/launcher8/view/CellLayoutParams;->width:I

    iput v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v8, v1, Lcom/lx/launcher8/view/CellLayoutParams;->height:I

    iput v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 189
    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 190
    invoke-direct {p0, v2}, Lcom/lx/launcher8/view/DragController;->ensureInLayout(Landroid/widget/RelativeLayout$LayoutParams;)V

    iget-object v8, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    invoke-virtual {p1, v10}, Lcom/lx/launcher8/view/CellView;->setVisibility(I)V

    .line 192
    iget-object v8, p0, Lcom/lx/launcher8/view/DragController;->mLastPos:[I

    invoke-virtual {v1}, Lcom/lx/launcher8/view/CellLayoutParams;->getCellX()I

    move-result v10

    aput v10, v8, v9

    .line 193
    iget-object v8, p0, Lcom/lx/launcher8/view/DragController;->mLastPos:[I

    const/4 v9, 0x1

    invoke-virtual {v1}, Lcom/lx/launcher8/view/CellLayoutParams;->getCellY()I

    move-result v10

    aput v10, v8, v9

    goto/16 :goto_0

    .end local v1           #cl:Lcom/lx/launcher8/view/CellLayoutParams;
    .end local v2           #fl:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #iv:Landroid/widget/ImageView;
    .end local v4           #level:I
    .end local v7           #visible:I
    :cond_3
    move v7, v10

    .line 174
    goto :goto_1

    .line 181
    .restart local v3       #iv:Landroid/widget/ImageView;
    .restart local v4       #level:I
    .restart local v7       #visible:I
    :cond_4
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_2
.end method

.method public cancelDrag()V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/lx/launcher8/view/DragController;->endDrag()V

    .line 387
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/lx/launcher8/view/DragController;->mDragging:Z

    return v0
.end method

.method public hideDragView()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mOriginator:Lcom/lx/launcher8/view/CellView;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mOriginator:Lcom/lx/launcher8/view/CellView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/CellView;->setVisibility(I)V

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/view/DragController;->mOriginator:Lcom/lx/launcher8/view/CellView;

    .line 381
    :cond_0
    return-void
.end method

.method public isNeedBlockTouch()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/lx/launcher8/view/DragController;->mDragging:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    .line 409
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 410
    .local v0, action:I
    if-nez v0, :cond_0

    .line 411
    invoke-direct {p0}, Lcom/lx/launcher8/view/DragController;->recordScreenSize()V

    .line 413
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/view/DragController;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v3, 0x1

    .line 425
    :cond_1
    :goto_0
    return v3

    .line 416
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v1, v4

    .line 417
    .local v1, screenX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    .line 418
    .local v2, screenY:I
    iget-object v4, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 419
    iget-object v4, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 421
    iget-object v4, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    iget-object v5, p0, Lcom/lx/launcher8/view/DragController;->mDragRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 422
    iget-object v4, p0, Lcom/lx/launcher8/view/DragController;->mDragRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 425
    :cond_3
    iget-boolean v3, p0, Lcom/lx/launcher8/view/DragController;->mDragging:Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .parameter "ev"

    .prologue
    .line 436
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/view/DragController;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 523
    :goto_0
    return v1

    .line 437
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lx/launcher8/view/DragController;->mDragging:Z

    if-nez v1, :cond_1

    .line 438
    const/4 v1, 0x0

    goto :goto_0

    .line 440
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/view/DragController;->mEditView:Lcom/lx/launcher8/view/CellLayout;

    move-object/from16 v16, v0

    .line 441
    .local v16, scrollView:Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    .line 444
    .local v9, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v14, v1

    .line 445
    .local v14, screenX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v15, v1

    .line 446
    .local v15, screenY:I
    packed-switch v9, :pswitch_data_0

    .line 523
    :cond_2
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 449
    :pswitch_0
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/lx/launcher8/view/DragController;->mEnableEidt:Z

    .line 450
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/lx/launcher8/view/DragController;->mNeedCancel:Z

    .line 451
    int-to-float v1, v14

    move-object/from16 v0, p0

    iput v1, v0, Lcom/lx/launcher8/view/DragController;->mMotionDownX:F

    int-to-float v1, v15

    move-object/from16 v0, p0

    iput v1, v0, Lcom/lx/launcher8/view/DragController;->mMotionDownY:F

    .line 458
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/lx/launcher8/view/DragController;->computeOffset(II)V

    goto :goto_1

    .line 464
    :pswitch_1
    int-to-float v1, v14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lx/launcher8/view/DragController;->mMotionDownX:F

    sub-float/2addr v1, v2

    float-to-int v11, v1

    .line 465
    .local v11, detaX:I
    int-to-float v1, v15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lx/launcher8/view/DragController;->mMotionDownY:F

    sub-float/2addr v1, v2

    float-to-int v12, v1

    .line 466
    .local v12, detaY:I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/lx/launcher8/view/DragController;->mNeedCancel:Z

    .line 467
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lx/launcher8/view/DragController;->mTouchSlop:I

    if-gt v1, v2, :cond_3

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lx/launcher8/view/DragController;->mTouchSlop:I

    if-le v1, v2, :cond_2

    .line 468
    :cond_3
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/lx/launcher8/view/DragController;->mEnableEidt:Z

    .line 469
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lx/launcher8/view/DragController;->mOffsetX:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/lx/launcher8/view/DragController;->mOffsetY:I

    const/4 v2, -0x1

    if-gt v1, v2, :cond_5

    .line 470
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/lx/launcher8/view/DragController;->computeOffset(II)V

    .line 472
    :cond_5
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v1}, Lcom/lx/launcher8/view/DragController;->updateDragTo(IIZ)V

    .line 473
    int-to-float v1, v14

    move-object/from16 v0, p0

    iput v1, v0, Lcom/lx/launcher8/view/DragController;->mMotionDownX:F

    int-to-float v1, v15

    move-object/from16 v0, p0

    iput v1, v0, Lcom/lx/launcher8/view/DragController;->mMotionDownY:F

    .line 474
    const/4 v13, 0x0

    .line 475
    .local v13, inDeleteRegion:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/view/DragController;->mDeleteRegion:Landroid/graphics/RectF;

    if-eqz v1, :cond_6

    .line 476
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/view/DragController;->mDeleteRegion:Landroid/graphics/RectF;

    int-to-float v2, v14

    int-to-float v3, v15

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v13

    .line 479
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/view/DragController;->mOriginator:Lcom/lx/launcher8/view/CellView;

    invoke-virtual {v1}, Lcom/lx/launcher8/view/CellView;->getLayoutParams()Lcom/lx/launcher8/view/CellLayoutParams;

    move-result-object v10

    .line 480
    .local v10, cl:Lcom/lx/launcher8/view/CellLayoutParams;
    if-nez v13, :cond_7

    invoke-virtual {v10}, Lcom/lx/launcher8/view/CellLayoutParams;->getCellY()I

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x41

    if-ge v15, v1, :cond_7

    .line 481
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lx/launcher8/view/DragController;->mScrollState:I

    if-nez v1, :cond_2

    .line 482
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/lx/launcher8/view/DragController;->mScrollState:I

    .line 483
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/view/DragController;->mScrollRunnable:Lcom/lx/launcher8/view/DragController$ScrollRunnable;

    const/4 v2, 0x0

    iget v3, v10, Lcom/lx/launcher8/view/CellLayoutParams;->height:I

    invoke-virtual {v1, v2, v3}, Lcom/lx/launcher8/view/DragController$ScrollRunnable;->setDirection(II)V

    .line 484
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/view/DragController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/view/DragController;->mScrollRunnable:Lcom/lx/launcher8/view/DragController$ScrollRunnable;

    const-wide/16 v3, 0x258

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 486
    :cond_7
    if-nez v13, :cond_8

    invoke-virtual {v10}, Lcom/lx/launcher8/view/CellLayoutParams;->getCellY()I

    move-result v1

    invoke-virtual {v10}, Lcom/lx/launcher8/view/CellLayoutParams;->getSpanY()I

    move-result v2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/view/DragController;->mEditView:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v2}, Lcom/lx/launcher8/view/CellLayout;->getVerticalColum()I

    move-result v2

    if-ge v1, v2, :cond_8

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x41

    if-le v15, v1, :cond_8

    .line 487
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lx/launcher8/view/DragController;->mScrollState:I

    if-nez v1, :cond_2

    .line 488
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/lx/launcher8/view/DragController;->mScrollState:I

    .line 489
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/view/DragController;->mScrollRunnable:Lcom/lx/launcher8/view/DragController$ScrollRunnable;

    const/4 v2, 0x1

    iget v3, v10, Lcom/lx/launcher8/view/CellLayoutParams;->height:I

    invoke-virtual {v1, v2, v3}, Lcom/lx/launcher8/view/DragController$ScrollRunnable;->setDirection(II)V

    .line 490
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/view/DragController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/view/DragController;->mScrollRunnable:Lcom/lx/launcher8/view/DragController$ScrollRunnable;

    const-wide/16 v3, 0x258

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 493
    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lx/launcher8/view/DragController;->mScrollState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 494
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/lx/launcher8/view/DragController;->mScrollState:I

    .line 495
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/view/DragController;->mScrollRunnable:Lcom/lx/launcher8/view/DragController$ScrollRunnable;

    const/4 v2, 0x1

    iget v3, v10, Lcom/lx/launcher8/view/CellLayoutParams;->height:I

    invoke-virtual {v1, v2, v3}, Lcom/lx/launcher8/view/DragController$ScrollRunnable;->setDirection(II)V

    .line 496
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/view/DragController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/view/DragController;->mScrollRunnable:Lcom/lx/launcher8/view/DragController$ScrollRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 502
    .end local v10           #cl:Lcom/lx/launcher8/view/CellLayoutParams;
    .end local v11           #detaX:I
    .end local v12           #detaY:I
    .end local v13           #inDeleteRegion:Z
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/view/DragController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/view/DragController;->mDragRunnable:Lcom/lx/launcher8/view/DragController$DelayDragRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/view/DragController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/view/DragController;->mScrollRunnable:Lcom/lx/launcher8/view/DragController$ScrollRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 504
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lx/launcher8/view/DragController;->mEnableEidt:Z

    if-nez v1, :cond_a

    .line 505
    invoke-direct/range {p0 .. p0}, Lcom/lx/launcher8/view/DragController;->exeDragEditButton()Z

    move-result v1

    if-nez v1, :cond_9

    .line 506
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lx/launcher8/view/DragController;->mNeedCancel:Z

    if-eqz v1, :cond_9

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/DragController;->cancelDrag()V

    .line 514
    :cond_9
    :goto_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/lx/launcher8/view/DragController;->mEnableEidt:Z

    .line 515
    invoke-direct/range {p0 .. p0}, Lcom/lx/launcher8/view/DragController;->resetOffset()V

    goto/16 :goto_1

    .line 509
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/view/DragController;->mOriginator:Lcom/lx/launcher8/view/CellView;

    if-eqz v1, :cond_9

    .line 510
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/view/DragController;->mDragRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 511
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/view/DragController;->mOriginator:Lcom/lx/launcher8/view/CellView;

    invoke-virtual {v1}, Lcom/lx/launcher8/view/CellView;->getLayoutParams()Lcom/lx/launcher8/view/CellLayoutParams;

    move-result-object v10

    .line 512
    .restart local v10       #cl:Lcom/lx/launcher8/view/CellLayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/view/DragController;->mEditView:Lcom/lx/launcher8/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/view/DragController;->mOriginator:Lcom/lx/launcher8/view/CellView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lx/launcher8/view/DragController;->mDragRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lx/launcher8/view/DragController;->mDragRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10}, Lcom/lx/launcher8/view/CellLayoutParams;->getSpanX()I

    move-result v6

    invoke-virtual {v10}, Lcom/lx/launcher8/view/CellLayoutParams;->getSpanY()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/lx/launcher8/view/CellLayout;->onDragUp(Landroid/view/View;Lcom/lx/launcher8/view/CellView;IIIIZ)Landroid/graphics/Point;

    goto :goto_2

    .line 518
    .end local v10           #cl:Lcom/lx/launcher8/view/CellLayoutParams;
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/DragController;->cancelDrag()V

    .line 519
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/lx/launcher8/view/DragController;->mEnableEidt:Z

    .line 520
    invoke-direct/range {p0 .. p0}, Lcom/lx/launcher8/view/DragController;->resetOffset()V

    goto/16 :goto_1

    .line 446
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method setDeleteRegion(Landroid/graphics/RectF;)V
    .locals 0
    .parameter "region"

    .prologue
    .line 604
    iput-object p1, p0, Lcom/lx/launcher8/view/DragController;->mDeleteRegion:Landroid/graphics/RectF;

    .line 605
    return-void
.end method

.method public setDragView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 585
    iput-object p1, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    .line 586
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 588
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    const v1, 0x7f090137

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/view/DragController;->mDragClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 589
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    const v1, 0x7f090138

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/view/DragController;->mDragClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    const v1, 0x7f090139

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/view/DragController;->mDragClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    :cond_0
    return-void
.end method

.method public setEditView(Lcom/lx/launcher8/AnallLauncher;Lcom/lx/launcher8/view/CellLayout;)V
    .locals 0
    .parameter "act"
    .parameter "layout"

    .prologue
    .line 595
    iput-object p1, p0, Lcom/lx/launcher8/view/DragController;->mMainAct:Lcom/lx/launcher8/AnallLauncher;

    .line 596
    iput-object p2, p0, Lcom/lx/launcher8/view/DragController;->mEditView:Lcom/lx/launcher8/view/CellLayout;

    .line 597
    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 581
    iput-object p1, p0, Lcom/lx/launcher8/view/DragController;->mWindowToken:Landroid/os/IBinder;

    .line 582
    return-void
.end method

.method public startAnimation(IIIII)V
    .locals 6
    .parameter "fromX"
    .parameter "fromY"
    .parameter "toX"
    .parameter "toY"
    .parameter "during"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mScroller:Landroid/widget/Scroller;

    sub-int v3, p3, p1

    sub-int v4, p4, p2

    const/16 v5, 0x64

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 265
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lx/launcher8/view/DragController;->mAnimaRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 266
    return-void
.end method

.method public startDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 146
    iput-boolean v1, p0, Lcom/lx/launcher8/view/DragController;->mDragging:Z

    .line 147
    iget-object v0, p0, Lcom/lx/launcher8/view/DragController;->mEditView:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/CellLayout;->setEditMode(Z)V

    .line 148
    invoke-direct {p0}, Lcom/lx/launcher8/view/DragController;->updateCancelTime()V

    .line 149
    return-void
.end method

.method public updateDrag(II)V
    .locals 2
    .parameter "screenX"
    .parameter "screenY"

    .prologue
    .line 255
    iget-object v1, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 256
    .local v0, fl:Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 258
    iget-object v1, p0, Lcom/lx/launcher8/view/DragController;->mDragView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    invoke-direct {p0}, Lcom/lx/launcher8/view/DragController;->updateCancelTime()V

    .line 261
    return-void
.end method

.method public updateDragTo(II)V
    .locals 1
    .parameter "screenX"
    .parameter "screenY"

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lx/launcher8/view/DragController;->updateDragTo(IIZ)V

    .line 204
    return-void
.end method
