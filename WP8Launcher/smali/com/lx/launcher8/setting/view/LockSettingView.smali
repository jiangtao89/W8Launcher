.class public Lcom/lx/launcher8/setting/view/LockSettingView;
.super Ljava/lang/Object;
.source "LockSettingView.java"

# interfaces
.implements Lcom/lx/launcher8/setting/view/SettingView;


# static fields
.field protected static final REQUEST_LOCK_PWD:I = 0x16

.field protected static final REQUEST_LOCK_SOUND:I = 0x14

.field protected static final REQUEST_PICK_COLOR:I = 0x11

.field protected static final REQUEST_PICK_IMAGE:I = 0x12

.field protected static final REQUEST_SAVE_IMAGE:I = 0x13

.field protected static final REQUEST_UNLOCK_SOUND:I = 0x15


# instance fields
.field private deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

.field private lockGap:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private lockGapTime:Z

.field private lockPwd:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private lockScreenNotifyPicColor:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private lockScreenPic:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private lockScreenStyle:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private lockScreenTextColor:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private lockSound:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private lockStatusBar:I

.field private lockStyleLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private lockTheme:I

.field private mAct:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mMainView:Landroid/view/View;

.field private randomLockScreenPic:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private scrollView:Landroid/widget/ScrollView;

.field private secondLockScreenPic:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private settings:Lcom/anall/screenlock/provider/LockSetting;

.field private statusBarLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private themeLockColor:I

.field private unlockSound:Lcom/lx/launcher8/view/SettingLinearLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .parameter "act"

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mMainView:Landroid/view/View;

    .line 46
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockStyleLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 47
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->statusBarLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 48
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 49
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->randomLockScreenPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 50
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->secondLockScreenPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 51
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenTextColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 52
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenNotifyPicColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 53
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenStyle:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 54
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockSound:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 55
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->unlockSound:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 56
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockPwd:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 57
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockGap:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 59
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    .line 60
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 62
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mAct:Landroid/app/Activity;

    .line 63
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mContext:Landroid/content/Context;

    .line 65
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->scrollView:Landroid/widget/ScrollView;

    .line 260
    iput v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->themeLockColor:I

    .line 261
    iput v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockStatusBar:I

    .line 262
    iput v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockTheme:I

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockGapTime:Z

    .line 68
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mAct:Landroid/app/Activity;

    .line 69
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mContext:Landroid/content/Context;

    .line 70
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030053

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mMainView:Landroid/view/View;

    .line 72
    invoke-direct {p0}, Lcom/lx/launcher8/setting/view/LockSettingView;->initView()V

    .line 74
    new-instance v0, Lcom/anall/screenlock/provider/LockSetting;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anall/screenlock/provider/LockSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    .line 75
    new-instance v0, Lcom/lx/launcher8/cfg/DeskSetting;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 77
    invoke-direct {p0}, Lcom/lx/launcher8/setting/view/LockSettingView;->initData()V

    .line 79
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->scrollView:Landroid/widget/ScrollView;

    .line 80
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFadingEdgeLength(I)V

    .line 81
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 82
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->scrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 83
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/view/LockSettingView;)Lcom/lx/launcher8/cfg/DeskSetting;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/view/LockSettingView;)Lcom/anall/screenlock/provider/LockSetting;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/view/LockSettingView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/view/LockSettingView;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mAct:Landroid/app/Activity;

    return-object v0
.end method

.method private getSoundName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 373
    if-eqz p1, :cond_0

    const-string v1, "none"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a023e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 379
    :goto_0
    return-object v1

    .line 375
    :cond_1
    const-string v1, "sound_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 376
    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 377
    .local v0, position:I
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mAct:Landroid/app/Activity;

    sget-object v2, Lcom/lx/launcher8/util/Utils;->soundNameResources:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 379
    .end local v0           #position:I
    :cond_2
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0240

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private initData()V
    .locals 8

    .prologue
    const v7, 0x7f0200fe

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 101
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockStyleLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v4, 0x7f0200fd

    invoke-virtual {v1, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 102
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockStyleLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v5, 0x7f0a011a

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 103
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockStyleLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeLock()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    new-instance v5, Lcom/lx/launcher8/setting/view/LockSettingView$1;

    invoke-direct {v5, p0}, Lcom/lx/launcher8/setting/view/LockSettingView$1;-><init>(Lcom/lx/launcher8/setting/view/LockSettingView;)V

    invoke-virtual {v4, v1, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setSeekButton(ZLcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 112
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->statusBarLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v7}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 113
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->statusBarLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v5, 0x7f0a0028

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 114
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->statusBarLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v4, Lcom/lx/launcher8/setting/view/LockSettingView$2;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/setting/view/LockSettingView$2;-><init>(Lcom/lx/launcher8/setting/view/LockSettingView;)V

    invoke-virtual {v1, v2, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setSeekButton(ZLcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 123
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockGap:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v7}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 124
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockGap:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v5, 0x7f0a011c

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 125
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockGap:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v4, Lcom/lx/launcher8/setting/view/LockSettingView$3;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/setting/view/LockSettingView$3;-><init>(Lcom/lx/launcher8/setting/view/LockSettingView;)V

    invoke-virtual {v1, v2, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setSeekButton(ZLcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 130
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockPwd:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v4, 0x7f020107

    invoke-virtual {v1, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 131
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockPwd:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v5, 0x7f0a022b

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 132
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v1}, Lcom/anall/screenlock/provider/LockSetting;->getPwd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0a015b

    .line 133
    .local v0, txtId:I
    :goto_1
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockPwd:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v4, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 134
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockPwd:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 135
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockPwd:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v4, Lcom/lx/launcher8/setting/view/LockSettingView$4;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/setting/view/LockSettingView$4;-><init>(Lcom/lx/launcher8/setting/view/LockSettingView;)V

    invoke-virtual {v1, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockSound:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v4, 0x7f020105

    invoke-virtual {v1, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 143
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockSound:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v5, 0x7f0a023b

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 144
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockSound:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v4}, Lcom/anall/screenlock/provider/LockSetting;->getLockSoundPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lx/launcher8/setting/view/LockSettingView;->getSoundName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 145
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockSound:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 146
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockSound:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v4, Lcom/lx/launcher8/setting/view/LockSettingView$5;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/setting/view/LockSettingView$5;-><init>(Lcom/lx/launcher8/setting/view/LockSettingView;)V

    invoke-virtual {v1, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->unlockSound:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v4, 0x7f020106

    invoke-virtual {v1, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 156
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->unlockSound:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v5, 0x7f0a023c

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 157
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->unlockSound:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v4}, Lcom/anall/screenlock/provider/LockSetting;->getUnLockSoundPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lx/launcher8/setting/view/LockSettingView;->getSoundName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 158
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->unlockSound:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 159
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->unlockSound:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v4, Lcom/lx/launcher8/setting/view/LockSettingView$6;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/setting/view/LockSettingView$6;-><init>(Lcom/lx/launcher8/setting/view/LockSettingView;)V

    invoke-virtual {v1, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v4, 0x7f0200ff

    invoke-virtual {v1, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 169
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v5, 0x7f0a0019

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 171
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 172
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v4, Lcom/lx/launcher8/setting/view/LockSettingView$7;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/setting/view/LockSettingView$7;-><init>(Lcom/lx/launcher8/setting/view/LockSettingView;)V

    invoke-virtual {v1, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->randomLockScreenPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v4, 0x7f020100

    invoke-virtual {v1, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 194
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->randomLockScreenPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    const-string v4, "\u968f\u673a\u663e\u793a\u9501\u5c4f\u58c1\u7eb8"

    invoke-virtual {v1, v4, v3, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 195
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->randomLockScreenPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    const-string v4, "\u968f\u673a\u663e\u793a\u672c\u5730\u9501\u5c4f\u56fe\u7247"

    invoke-virtual {v1, v4, v3, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterBottomText(Ljava/lang/CharSequence;IF)V

    .line 196
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->randomLockScreenPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v4, Lcom/lx/launcher8/setting/view/LockSettingView$8;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/setting/view/LockSettingView$8;-><init>(Lcom/lx/launcher8/setting/view/LockSettingView;)V

    invoke-virtual {v1, v3, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setSeekButton(ZLcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 207
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->secondLockScreenPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v4, 0x7f020101

    invoke-virtual {v1, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 208
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->secondLockScreenPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    const-string v4, "\u9501\u5c4f\u7b2c\u4e8c\u5c4f"

    invoke-virtual {v1, v4, v3, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 209
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->secondLockScreenPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    const-string v4, "\u9501\u5c4f\u754c\u9762\u5411\u5de6\u62d6\u51fa\u67e5\u770b\u7b2c\u4e8c\u9501\u5c4f\u56fe\u7247"

    invoke-virtual {v1, v4, v3, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterBottomText(Ljava/lang/CharSequence;IF)V

    .line 210
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->secondLockScreenPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v4, Lcom/lx/launcher8/setting/view/LockSettingView$9;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/setting/view/LockSettingView$9;-><init>(Lcom/lx/launcher8/setting/view/LockSettingView;)V

    invoke-virtual {v1, v3, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setSeekButton(ZLcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 221
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenTextColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v4, 0x7f020102

    invoke-virtual {v1, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 222
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenTextColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v5, 0x7f0a001d

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 223
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenTextColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    .line 224
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenTextColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 225
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenTextColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v4, Lcom/lx/launcher8/setting/view/LockSettingView$10;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/setting/view/LockSettingView$10;-><init>(Lcom/lx/launcher8/setting/view/LockSettingView;)V

    invoke-virtual {v1, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenNotifyPicColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v4, 0x7f020103

    invoke-virtual {v1, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 237
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenNotifyPicColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v5, 0x7f0a0140

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 238
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenNotifyPicColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v4, -0xff0100

    invoke-virtual {v1, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    .line 239
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenNotifyPicColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 240
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenNotifyPicColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v4, Lcom/lx/launcher8/setting/view/LockSettingView$11;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/setting/view/LockSettingView$11;-><init>(Lcom/lx/launcher8/setting/view/LockSettingView;)V

    invoke-virtual {v1, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenStyle:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v4, 0x7f020104

    invoke-virtual {v1, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 248
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenStyle:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v5, 0x7f0a011e

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 249
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenStyle:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v5, 0x7f0a00cc

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 250
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenStyle:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 251
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenStyle:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v2, Lcom/lx/launcher8/setting/view/LockSettingView$12;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/view/LockSettingView$12;-><init>(Lcom/lx/launcher8/setting/view/LockSettingView;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    return-void

    .end local v0           #txtId:I
    :cond_0
    move v1, v3

    .line 103
    goto/16 :goto_0

    .line 132
    :cond_1
    const v0, 0x7f0a015a

    goto/16 :goto_1
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f09015d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockStyleLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 87
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f09015e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->statusBarLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 88
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 89
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->randomLockScreenPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 90
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090162

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->secondLockScreenPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 91
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090163

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenTextColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 92
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090164

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenNotifyPicColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 93
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090168

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenStyle:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 94
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090165

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockSound:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 95
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090166

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->unlockSound:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 96
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090167

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockPwd:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 97
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f09015f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockGap:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 98
    return-void
.end method


# virtual methods
.method public getBottomBtns()[Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->scrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v11, 0x13

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v9, -0x1

    .line 325
    const/16 v8, 0x11

    if-ne p1, v8, :cond_1

    if-ne p2, v9, :cond_1

    if-eqz p3, :cond_1

    .line 326
    const-string v7, "extral_value"

    invoke-virtual {p3, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 327
    .local v0, color:I
    iget-object v7, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenTextColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v7, v0}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    .line 328
    iget-object v7, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v7, v0}, Lcom/anall/screenlock/provider/LockSetting;->setThemeLockColor(I)V

    .line 369
    .end local v0           #color:I
    :cond_0
    :goto_0
    return v6

    .line 330
    :cond_1
    const/16 v8, 0x12

    if-ne p1, v8, :cond_2

    if-ne p2, v9, :cond_2

    if-eqz p3, :cond_2

    .line 331
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 332
    .local v5, uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mContext:Landroid/content/Context;

    const-class v8, Lcom/lx/launcher8/crop/CropImage;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 333
    .local v3, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 334
    .local v1, dis:Landroid/util/DisplayMetrics;
    const-string v7, "aspectX"

    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 335
    const-string v7, "aspectY"

    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    const-string v7, "noFaceDetection"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 337
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 338
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "lockbg"

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 339
    .local v2, file:Ljava/io/File;
    const-string v7, "output"

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 340
    iget-object v7, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v7, v3, v11}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 342
    .end local v1           #dis:Landroid/util/DisplayMetrics;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_2
    if-ne p1, v11, :cond_3

    if-ne p2, v9, :cond_3

    if-eqz p3, :cond_3

    .line 343
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "lockbg"

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 344
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/anall/screenlock/provider/LockSetting;->setThemeLockBg(Ljava/lang/String;)V

    goto :goto_0

    .line 346
    .end local v2           #file:Ljava/io/File;
    :cond_3
    const/16 v6, 0x14

    if-ne p1, v6, :cond_8

    if-eqz p3, :cond_8

    .line 347
    const-string v6, "extral_value"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 348
    .local v4, path:Ljava/lang/String;
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockSound:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-direct {p0, v4}, Lcom/lx/launcher8/setting/view/LockSettingView;->getSoundName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v7, v10}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 349
    if-eqz v4, :cond_4

    const-string v6, "sound_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "none"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 350
    :cond_4
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v6, v4}, Lcom/anall/screenlock/provider/LockSetting;->setLockSoundPath(Ljava/lang/String;)V

    .line 356
    :goto_1
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mAct:Landroid/app/Activity;

    new-instance v8, Landroid/content/Intent;

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mContext:Landroid/content/Context;

    const-class v10, Lcom/anall/screenlock/LockScreenService;

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v8}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .end local v4           #path:Ljava/lang/String;
    :cond_5
    :goto_2
    move v6, v7

    .line 369
    goto/16 :goto_0

    .line 352
    .restart local v4       #path:Ljava/lang/String;
    :cond_6
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v8, "locksound"

    invoke-direct {v2, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 353
    .restart local v2       #file:Ljava/io/File;
    invoke-static {v4, v2}, Lcom/lx/launcher8/util/Utils;->copyFile(Ljava/lang/String;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/anall/screenlock/provider/LockSetting;->setLockSoundPath(Ljava/lang/String;)V

    goto :goto_1

    .line 354
    :cond_7
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/anall/screenlock/provider/LockSetting;->setLockSoundPath(Ljava/lang/String;)V

    goto :goto_1

    .line 357
    .end local v2           #file:Ljava/io/File;
    .end local v4           #path:Ljava/lang/String;
    :cond_8
    const/16 v6, 0x15

    if-ne p1, v6, :cond_5

    if-eqz p3, :cond_5

    .line 358
    const-string v6, "extral_value"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 359
    .restart local v4       #path:Ljava/lang/String;
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->unlockSound:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-direct {p0, v4}, Lcom/lx/launcher8/setting/view/LockSettingView;->getSoundName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v7, v10}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 360
    if-eqz v4, :cond_9

    const-string v6, "sound_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "none"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 361
    :cond_9
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v6, v4}, Lcom/anall/screenlock/provider/LockSetting;->setUnLockSoundPath(Ljava/lang/String;)V

    .line 367
    :goto_3
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mAct:Landroid/app/Activity;

    new-instance v8, Landroid/content/Intent;

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mContext:Landroid/content/Context;

    const-class v10, Lcom/anall/screenlock/LockScreenService;

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v8}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    .line 363
    :cond_a
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v8, "unlocksound"

    invoke-direct {v2, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 364
    .restart local v2       #file:Ljava/io/File;
    invoke-static {v4, v2}, Lcom/lx/launcher8/util/Utils;->copyFile(Ljava/lang/String;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/anall/screenlock/provider/LockSetting;->setUnLockSoundPath(Ljava/lang/String;)V

    goto :goto_3

    .line 365
    :cond_b
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/anall/screenlock/provider/LockSetting;->setUnLockSoundPath(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 270
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v5}, Lcom/anall/screenlock/provider/LockSetting;->getThemeLockColor()I

    move-result v3

    .line 271
    .local v3, themeLockColor:I
    iget v5, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->themeLockColor:I

    if-eq v5, v3, :cond_0

    .line 272
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenTextColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v5, v3}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    .line 273
    iput v3, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->themeLockColor:I

    .line 276
    :cond_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v5}, Lcom/anall/screenlock/provider/LockSetting;->getLockStatusBar()I

    move-result v1

    .line 277
    .local v1, lockStatusBar:I
    iget v5, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockStatusBar:I

    if-eq v5, v1, :cond_1

    .line 278
    if-nez v1, :cond_4

    .line 279
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->statusBarLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v5, v8, v7}, Lcom/lx/launcher8/view/SettingLinearLayout;->setSeekButton(ZLcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 283
    :goto_0
    iput v1, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockStatusBar:I

    .line 285
    :cond_1
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v5}, Lcom/anall/screenlock/provider/LockSetting;->isLockGap()Z

    move-result v0

    .line 286
    .local v0, isGap:Z
    iget-boolean v5, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockGapTime:Z

    if-eq v5, v0, :cond_2

    .line 287
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockGap:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v5, v0, v7}, Lcom/lx/launcher8/view/SettingLinearLayout;->setSeekButton(ZLcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 288
    iput-boolean v0, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockGapTime:Z

    .line 291
    :cond_2
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v5}, Lcom/anall/screenlock/provider/LockSetting;->getLockTheme()I

    move-result v2

    .line 292
    .local v2, lockTheme:I
    iget v5, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockTheme:I

    if-eq v5, v2, :cond_3

    .line 293
    packed-switch v2, :pswitch_data_0

    .line 310
    :goto_1
    iput v2, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockTheme:I

    .line 312
    :cond_3
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v5}, Lcom/anall/screenlock/provider/LockSetting;->getPwd()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const v4, 0x7f0a015b

    .line 313
    .local v4, txtId:I
    :goto_2
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockPwd:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v6, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8, v9}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 314
    return-void

    .line 281
    .end local v0           #isGap:Z
    .end local v2           #lockTheme:I
    .end local v4           #txtId:I
    :cond_4
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->statusBarLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/lx/launcher8/view/SettingLinearLayout;->setSeekButton(ZLcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    goto :goto_0

    .line 295
    .restart local v0       #isGap:Z
    .restart local v2       #lockTheme:I
    :pswitch_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenStyle:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v7, 0x7f0a00cc

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8, v9}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    goto :goto_1

    .line 298
    :pswitch_1
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenStyle:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v7, 0x7f0a00cd

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8, v9}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    goto :goto_1

    .line 301
    :pswitch_2
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenStyle:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v7, 0x7f0a00ce

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8, v9}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    goto :goto_1

    .line 304
    :pswitch_3
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenStyle:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v7, 0x7f0a00cf

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8, v9}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    goto :goto_1

    .line 307
    :pswitch_4
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->lockScreenStyle:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v7, 0x7f0a00d0

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8, v9}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    goto :goto_1

    .line 312
    :cond_5
    const v4, 0x7f0a015a

    goto :goto_2

    .line 293
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onViewMovingFront()V
    .locals 0

    .prologue
    .line 400
    return-void
.end method
