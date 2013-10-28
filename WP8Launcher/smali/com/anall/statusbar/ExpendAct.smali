.class public Lcom/anall/statusbar/ExpendAct;
.super Landroid/app/Activity;
.source "ExpendAct.java"


# instance fields
.field hideRunnable:Ljava/lang/Runnable;

.field mFlags:I

.field mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    new-instance v0, Lcom/anall/statusbar/ExpendAct$1;

    invoke-direct {v0, p0}, Lcom/anall/statusbar/ExpendAct$1;-><init>(Lcom/anall/statusbar/ExpendAct;)V

    iput-object v0, p0, Lcom/anall/statusbar/ExpendAct;->hideRunnable:Ljava/lang/Runnable;

    .line 13
    return-void
.end method

.method private adjustStatu()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/anall/statusbar/ExpendAct;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/anall/statusbar/ExpendAct;->hideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.anall.launcher.statusbar.adjust"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/anall/statusbar/ExpendAct;->sendBroadcast(Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method private expendStatebar()V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/anall/statusbar/ExpendAct;->mRootView:Landroid/view/View;

    new-instance v1, Lcom/anall/statusbar/ExpendAct$2;

    invoke-direct {v1, p0}, Lcom/anall/statusbar/ExpendAct$2;-><init>(Lcom/anall/statusbar/ExpendAct;)V

    .line 103
    const-wide/16 v2, 0x320

    .line 86
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 104
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/anall/statusbar/ExpendAct;->exitAct()V

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method exitAct()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/anall/statusbar/ExpendAct;->adjustStatu()V

    .line 108
    invoke-virtual {p0}, Lcom/anall/statusbar/ExpendAct;->finish()V

    .line 109
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/anall/statusbar/ExpendAct;->setContentView(Landroid/view/View;)V

    .line 20
    invoke-virtual {p0}, Lcom/anall/statusbar/ExpendAct;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anall/statusbar/ExpendAct;->mRootView:Landroid/view/View;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/anall/statusbar/ExpendAct;->mFlags:I

    .line 22
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 44
    iget v0, p0, Lcom/anall/statusbar/ExpendAct;->mFlags:I

    or-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/anall/statusbar/ExpendAct;->mFlags:I

    .line 45
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 36
    invoke-virtual {p0}, Lcom/anall/statusbar/ExpendAct;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 37
    iget-object v0, p0, Lcom/anall/statusbar/ExpendAct;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/anall/statusbar/ExpendAct;->hideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x118

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    iget v0, p0, Lcom/anall/statusbar/ExpendAct;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/anall/statusbar/ExpendAct;->mFlags:I

    .line 39
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 82
    invoke-direct {p0}, Lcom/anall/statusbar/ExpendAct;->adjustStatu()V

    .line 83
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0, v0}, Lcom/anall/statusbar/ExpendAct;->overridePendingTransition(II)V

    .line 30
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 31
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 64
    if-eqz p1, :cond_0

    .line 65
    iget v0, p0, Lcom/anall/statusbar/ExpendAct;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/anall/statusbar/ExpendAct;->exitAct()V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget v0, p0, Lcom/anall/statusbar/ExpendAct;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/anall/statusbar/ExpendAct;->expendStatebar()V

    goto :goto_0
.end method

.method public setTheme(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 25
    const v0, 0x1030010

    invoke-super {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 26
    return-void
.end method
