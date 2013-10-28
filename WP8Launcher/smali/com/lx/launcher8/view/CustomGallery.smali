.class public Lcom/lx/launcher8/view/CustomGallery;
.super Landroid/widget/Gallery;
.source "CustomGallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final timerAnimation:I = 0x1


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private final task:Ljava/util/TimerTask;

.field private final timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/view/ViewPager;)V
    .locals 7
    .parameter "context"
    .parameter "viewPager"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Lcom/lx/launcher8/view/CustomGallery$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/view/CustomGallery$1;-><init>(Lcom/lx/launcher8/view/CustomGallery;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/CustomGallery;->mHandler:Landroid/os/Handler;

    .line 38
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/view/CustomGallery;->timer:Ljava/util/Timer;

    .line 39
    new-instance v0, Lcom/lx/launcher8/view/CustomGallery$2;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/view/CustomGallery$2;-><init>(Lcom/lx/launcher8/view/CustomGallery;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/CustomGallery;->task:Ljava/util/TimerTask;

    .line 48
    iput-object p2, p0, Lcom/lx/launcher8/view/CustomGallery;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/lx/launcher8/view/CustomGallery;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/lx/launcher8/view/CustomGallery;->task:Ljava/util/TimerTask;

    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v6

    .line 52
    .local v6, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/lx/launcher8/view/CustomGallery;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lx/launcher8/view/CustomGallery;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private isScrollingLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "paramMotionEvent1"
    .parameter "paramMotionEvent2"

    .prologue
    .line 75
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 76
    .local v1, f2:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 77
    .local v0, f1:F
    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    .line 78
    const/4 v2, 0x1

    .line 79
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lx/launcher8/view/CustomGallery;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 96
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lx/launcher8/view/CustomGallery;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 59
    invoke-super {p0, p1}, Landroid/widget/Gallery;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "paramMotionEvent1"
    .parameter "paramMotionEvent2"
    .parameter "paramFloat1"
    .parameter "paramFloat2"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/lx/launcher8/view/CustomGallery;->isScrollingLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const/16 v0, 0x15

    .line 90
    .local v0, keyCode:I
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/view/CustomGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 91
    const/4 v1, 0x1

    return v1

    .line 88
    .end local v0           #keyCode:I
    :cond_0
    const/16 v0, 0x16

    .restart local v0       #keyCode:I
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lx/launcher8/view/CustomGallery;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 65
    invoke-super {p0, p1}, Landroid/widget/Gallery;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lx/launcher8/view/CustomGallery;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 71
    invoke-super {p0, p1}, Landroid/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
