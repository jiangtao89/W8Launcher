.class public Lcom/lx/launcher8/setting/wp8/LockPwdAct;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.source "LockPwdAct.java"


# instance fields
.field private mLockSet:Lcom/anall/screenlock/provider/LockSetting;

.field private mMainView:Landroid/view/View;

.field private mSeekView:Lcom/lx/launcher8/setting/wp8/view/SeekButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/LockPwdAct;)Lcom/lx/launcher8/setting/wp8/view/SeekButton;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->mSeekView:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/LockPwdAct;)Lcom/anall/screenlock/provider/LockSetting;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/LockPwdAct;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->setPwdState(Z)V

    return-void
.end method

.method private createView()V
    .locals 7

    .prologue
    .line 33
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030051

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->mMainView:Landroid/view/View;

    .line 34
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->mMainView:Landroid/view/View;

    const v5, 0x7f09018b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a015d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 35
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v4}, Lcom/anall/screenlock/provider/LockSetting;->getThemePaper()I

    move-result v2

    .line 36
    .local v2, themePaper:I
    if-eqz v2, :cond_0

    const/4 v1, -0x1

    .line 37
    .local v1, textColor:I
    :goto_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->mMainView:Landroid/view/View;

    const v5, 0x7f09018d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 38
    .local v3, tv:Landroid/widget/TextView;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->mMainView:Landroid/view/View;

    const v5, 0x7f09018e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->mSeekView:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    .line 40
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->mSeekView:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v5}, Lcom/anall/screenlock/provider/LockSetting;->getThemeColor()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setFitColor(I)V

    .line 41
    if-eqz v2, :cond_1

    .line 42
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->mSeekView:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    .line 46
    :goto_1
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->mSeekView:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    new-instance v5, Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;

    invoke-direct {v5, p0}, Lcom/lx/launcher8/setting/wp8/LockPwdAct$1;-><init>(Lcom/lx/launcher8/setting/wp8/LockPwdAct;)V

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;)V

    .line 74
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->mMainView:Landroid/view/View;

    const v5, 0x7f090159

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 75
    .local v0, modify:Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->getSelectorButton()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 85
    new-instance v4, Lcom/lx/launcher8/setting/wp8/LockPwdAct$2;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/setting/wp8/LockPwdAct$2;-><init>(Lcom/lx/launcher8/setting/wp8/LockPwdAct;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void

    .line 36
    .end local v0           #modify:Landroid/widget/Button;
    .end local v1           #textColor:I
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_0
    const/high16 v1, -0x100

    goto :goto_0

    .line 44
    .restart local v1       #textColor:I
    .restart local v3       #tv:Landroid/widget/TextView;
    :cond_1
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->mSeekView:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    goto :goto_1
.end method

.method private setPwdState(Z)V
    .locals 3
    .parameter "hasPwd"

    .prologue
    .line 102
    const v0, 0x7f0a0159

    .line 103
    .local v0, state:I
    if-eqz p1, :cond_0

    const v0, 0x7f0a0158

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->mMainView:Landroid/view/View;

    const v2, 0x7f09018d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 105
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->mMainView:Landroid/view/View;

    const v2, 0x7f090159

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->mSeekView:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v1, p1}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    .line 107
    return-void

    .line 105
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method


# virtual methods
.method protected initData()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->mTitleBar:Landroid/widget/TextView;

    const v1, 0x7f0a0176

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    new-instance v0, Lcom/anall/screenlock/provider/LockSetting;

    invoke-direct {v0, p0}, Lcom/anall/screenlock/provider/LockSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    .line 28
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->createView()V

    .line 29
    const v0, 0x7f0a022b

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 30
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onResume()V

    .line 98
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v0}, Lcom/anall/screenlock/provider/LockSetting;->getPwd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/wp8/LockPwdAct;->setPwdState(Z)V

    .line 99
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
