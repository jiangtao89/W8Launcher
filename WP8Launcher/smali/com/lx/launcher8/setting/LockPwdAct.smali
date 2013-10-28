.class public Lcom/lx/launcher8/setting/LockPwdAct;
.super Lcom/lx/launcher8/NoSearchAct;
.source "LockPwdAct.java"


# instance fields
.field private mModifyView:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private mSettings:Lcom/anall/screenlock/provider/LockSetting;

.field private mSwitchView:Lcom/lx/launcher8/view/SettingLinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/LockPwdAct;)Lcom/lx/launcher8/view/SettingLinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockPwdAct;->mSwitchView:Lcom/lx/launcher8/view/SettingLinearLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/LockPwdAct;)Lcom/anall/screenlock/provider/LockSetting;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockPwdAct;->mSettings:Lcom/anall/screenlock/provider/LockSetting;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 26
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/LockPwdAct;->setContentView(I)V

    .line 28
    new-instance v0, Lcom/anall/screenlock/provider/LockSetting;

    invoke-direct {v0, p0}, Lcom/anall/screenlock/provider/LockSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockPwdAct;->mSettings:Lcom/anall/screenlock/provider/LockSetting;

    .line 29
    const v0, 0x7f0900a0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/LockPwdAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockPwdAct;->mSwitchView:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 30
    const v0, 0x7f0900a3

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/LockPwdAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockPwdAct;->mModifyView:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 32
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockPwdAct;->mSwitchView:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v1, 0x7f0a022c

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/LockPwdAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 33
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockPwdAct;->mSwitchView:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v1, Lcom/lx/launcher8/setting/LockPwdAct$1;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/LockPwdAct$1;-><init>(Lcom/lx/launcher8/setting/LockPwdAct;)V

    invoke-virtual {v0, v2, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setSeekButton(ZLcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 70
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockPwdAct;->mModifyView:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v1, 0x7f0a022e

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/LockPwdAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 71
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockPwdAct;->mModifyView:Lcom/lx/launcher8/view/SettingLinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 72
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockPwdAct;->mModifyView:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v1, Lcom/lx/launcher8/setting/LockPwdAct$2;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/LockPwdAct$2;-><init>(Lcom/lx/launcher8/setting/LockPwdAct;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/lx/launcher8/NoSearchAct;->onResume()V

    .line 89
    iget-object v1, p0, Lcom/lx/launcher8/setting/LockPwdAct;->mSettings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v1}, Lcom/anall/screenlock/provider/LockSetting;->getPwd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 90
    .local v0, hasPwd:Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/LockPwdAct;->setPwdState(Z)V

    .line 91
    return-void

    .line 89
    .end local v0           #hasPwd:Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setPwdState(Z)V
    .locals 2
    .parameter "hasPwd"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockPwdAct;->mSwitchView:Lcom/lx/launcher8/view/SettingLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setSeekButton(ZLcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 83
    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/LockPwdAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 84
    return-void

    .line 83
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
