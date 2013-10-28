.class public Lcom/lx/launcher8/view/AnimationLinearLayout;
.super Landroid/widget/LinearLayout;
.source "AnimationLinearLayout.java"


# instance fields
.field private animIn:Landroid/view/animation/Animation;

.field private animOut:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lx/launcher8/view/AnimationLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    iput-object v0, p0, Lcom/lx/launcher8/view/AnimationLinearLayout;->animIn:Landroid/view/animation/Animation;

    .line 15
    iput-object v0, p0, Lcom/lx/launcher8/view/AnimationLinearLayout;->animOut:Landroid/view/animation/Animation;

    .line 19
    const v0, 0x7f040010

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/view/AnimationLinearLayout;->animIn:Landroid/view/animation/Animation;

    .line 20
    const v0, 0x7f040011

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/view/AnimationLinearLayout;->animOut:Landroid/view/animation/Animation;

    .line 21
    iget-object v0, p0, Lcom/lx/launcher8/view/AnimationLinearLayout;->animIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 22
    iget-object v0, p0, Lcom/lx/launcher8/view/AnimationLinearLayout;->animOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 23
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/lx/launcher8/view/AnimationLinearLayout;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 42
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 34
    :pswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/view/AnimationLinearLayout;->animIn:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/AnimationLinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 38
    :pswitch_2
    iget-object v0, p0, Lcom/lx/launcher8/view/AnimationLinearLayout;->animOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/AnimationLinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
