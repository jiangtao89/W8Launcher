.class public Lcom/lx/launcher8/view/UnHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "UnHorizontalScrollView.java"


# static fields
.field private static final SCROLL_ANIMATION:I


# instance fields
.field anim:Landroid/view/animation/Animation;

.field anim1:Landroid/view/animation/Animation;

.field private isScrolling:Z

.field mHandler:Landroid/os/Handler;

.field scrollView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lx/launcher8/view/UnHorizontalScrollView;->isScrolling:Z

    .line 55
    new-instance v0, Lcom/lx/launcher8/view/UnHorizontalScrollView$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/view/UnHorizontalScrollView$1;-><init>(Lcom/lx/launcher8/view/UnHorizontalScrollView;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/UnHorizontalScrollView;->mHandler:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lx/launcher8/view/UnHorizontalScrollView;->isScrolling:Z

    .line 55
    new-instance v0, Lcom/lx/launcher8/view/UnHorizontalScrollView$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/view/UnHorizontalScrollView$1;-><init>(Lcom/lx/launcher8/view/UnHorizontalScrollView;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/UnHorizontalScrollView;->mHandler:Landroid/os/Handler;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lx/launcher8/view/UnHorizontalScrollView;->isScrolling:Z

    .line 55
    new-instance v0, Lcom/lx/launcher8/view/UnHorizontalScrollView$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/view/UnHorizontalScrollView$1;-><init>(Lcom/lx/launcher8/view/UnHorizontalScrollView;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/UnHorizontalScrollView;->mHandler:Landroid/os/Handler;

    .line 20
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 69
    iget-boolean v0, p0, Lcom/lx/launcher8/view/UnHorizontalScrollView;->isScrolling:Z

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lx/launcher8/view/UnHorizontalScrollView;->isScrolling:Z

    .line 73
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 41
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 35
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 38
    :pswitch_1
    invoke-virtual {p0}, Lcom/lx/launcher8/view/UnHorizontalScrollView;->performClick()Z

    .line 39
    const/4 v0, 0x1

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public scrollAnimation(ILandroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/View;)V
    .locals 1
    .parameter "x"
    .parameter "anim"
    .parameter "anim1"
    .parameter "view"

    .prologue
    .line 48
    iput-object p2, p0, Lcom/lx/launcher8/view/UnHorizontalScrollView;->anim:Landroid/view/animation/Animation;

    .line 49
    iput-object p3, p0, Lcom/lx/launcher8/view/UnHorizontalScrollView;->anim1:Landroid/view/animation/Animation;

    .line 50
    iput-object p4, p0, Lcom/lx/launcher8/view/UnHorizontalScrollView;->scrollView:Landroid/view/View;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/view/UnHorizontalScrollView;->isScrolling:Z

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lx/launcher8/view/UnHorizontalScrollView;->scrollTo(II)V

    .line 53
    return-void
.end method
