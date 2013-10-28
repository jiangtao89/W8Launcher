.class public Lcom/lx/launcher8/setting/wp8/view/LockSettingView;
.super Ljava/lang/Object;
.source "LockSettingView.java"

# interfaces
.implements Lcom/lx/launcher8/setting/view/SettingView;


# static fields
.field protected static final REQUEST_LOCK_GAP:I = 0x17

.field protected static final REQUEST_LOCK_SOUND:I = 0x16

.field protected static final REQUEST_LOCK_STATUS_BAR:I = 0x15

.field protected static final REQUEST_LOCK_STYLE:I = 0x14

.field protected static final REQUEST_PICK_COLOR:I = 0x11

.field protected static final REQUEST_PICK_IMAGE:I = 0x12

.field protected static final REQUEST_SAVE_IMAGE:I = 0x13


# instance fields
.field private deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

.field private lockGap:Lcom/lx/launcher8/view/SettingLinear;

.field private lockPwd:Lcom/lx/launcher8/view/SettingLinear;

.field private lockScreenPic:Lcom/lx/launcher8/view/SettingLinear;

.field private lockScreenStyle:Lcom/lx/launcher8/view/SettingLinear;

.field private lockScreenTextColor:Lcom/lx/launcher8/view/SettingLinear;

.field private lockSound:Lcom/lx/launcher8/view/SettingLinear;

.field private lockStatusBar:I

.field private lockStyleLinear:Lcom/lx/launcher8/view/SettingLinear;

.field private lockTheme:I

.field private mAct:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mMainView:Landroid/view/View;

.field private scrollView:Landroid/widget/ScrollView;

.field private settings:Lcom/anall/screenlock/provider/LockSetting;

.field private statusBarLinear:Lcom/lx/launcher8/view/SettingLinear;

.field private themeLockColor:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .parameter "act"

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mMainView:Landroid/view/View;

    .line 46
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockStyleLinear:Lcom/lx/launcher8/view/SettingLinear;

    .line 47
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->statusBarLinear:Lcom/lx/launcher8/view/SettingLinear;

    .line 48
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockScreenPic:Lcom/lx/launcher8/view/SettingLinear;

    .line 49
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockScreenTextColor:Lcom/lx/launcher8/view/SettingLinear;

    .line 50
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockScreenStyle:Lcom/lx/launcher8/view/SettingLinear;

    .line 51
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockSound:Lcom/lx/launcher8/view/SettingLinear;

    .line 52
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockPwd:Lcom/lx/launcher8/view/SettingLinear;

    .line 53
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockGap:Lcom/lx/launcher8/view/SettingLinear;

    .line 55
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    .line 56
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 58
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    .line 59
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mContext:Landroid/content/Context;

    .line 61
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->scrollView:Landroid/widget/ScrollView;

    .line 212
    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->themeLockColor:I

    .line 213
    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockStatusBar:I

    .line 214
    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockTheme:I

    .line 64
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    .line 65
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mContext:Landroid/content/Context;

    .line 66
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030054

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mMainView:Landroid/view/View;

    .line 68
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->initView()V

    .line 70
    new-instance v0, Lcom/anall/screenlock/provider/LockSetting;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anall/screenlock/provider/LockSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    .line 71
    new-instance v0, Lcom/lx/launcher8/cfg/DeskSetting;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 73
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->initData()V

    .line 75
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->scrollView:Landroid/widget/ScrollView;

    .line 76
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFadingEdgeLength(I)V

    .line 77
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 78
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->scrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 79
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/view/LockSettingView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/view/LockSettingView;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/view/LockSettingView;)Lcom/lx/launcher8/cfg/DeskSetting;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/wp8/view/LockSettingView;)Lcom/anall/screenlock/provider/LockSetting;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    return-object v0
.end method

.method private getSoundName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 327
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "none"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a023e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 333
    :goto_0
    return-object v1

    .line 329
    :cond_1
    const-string v1, "sound_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 330
    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 331
    .local v0, position:I
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    sget-object v2, Lcom/lx/launcher8/util/Utils;->soundNameResources:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 333
    .end local v0           #position:I
    :cond_2
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0240

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private initData()V
    .locals 8

    .prologue
    const v7, 0x7f0a015a

    const/4 v3, 0x1

    const v6, 0x7f0a015b

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 93
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockStyleLinear:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a011a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 94
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeLock()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 95
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockStyleLinear:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockStyleLinear:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/LockSettingView$1;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/LockSettingView$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/LockSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->statusBarLinear:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0028

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 111
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v0}, Lcom/anall/screenlock/provider/LockSetting;->getLockStatusBar()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 112
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->statusBarLinear:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 116
    :goto_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->statusBarLinear:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/LockSettingView$2;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/LockSettingView$2;-><init>(Lcom/lx/launcher8/setting/wp8/view/LockSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockSound:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0029

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 129
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockSound:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a023e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a023e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 130
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockSound:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/LockSettingView$3;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/LockSettingView$3;-><init>(Lcom/lx/launcher8/setting/wp8/view/LockSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockScreenPic:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0019

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 138
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockScreenPic:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a016e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 139
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockScreenPic:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/LockSettingView$4;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/LockSettingView$4;-><init>(Lcom/lx/launcher8/setting/wp8/view/LockSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockScreenTextColor:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a001d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 161
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockScreenTextColor:Lcom/lx/launcher8/view/SettingLinear;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setBottomColorView(I)V

    .line 162
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockScreenTextColor:Lcom/lx/launcher8/view/SettingLinear;

    const-string v1, "\u767d\u8272"

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 163
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockScreenTextColor:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/LockSettingView$5;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/LockSettingView$5;-><init>(Lcom/lx/launcher8/setting/wp8/view/LockSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockScreenStyle:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a011e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 176
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockScreenStyle:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a00cc

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 177
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockScreenStyle:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/LockSettingView$6;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/LockSettingView$6;-><init>(Lcom/lx/launcher8/setting/wp8/view/LockSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockPwd:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a022b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 186
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockPwd:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/LockSettingView$7;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/LockSettingView$7;-><init>(Lcom/lx/launcher8/setting/wp8/view/LockSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockGap:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a011c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 195
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v0}, Lcom/anall/screenlock/provider/LockSetting;->isLockGap()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockGap:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a011d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 200
    :goto_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockGap:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/LockSettingView$8;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/LockSettingView$8;-><init>(Lcom/lx/launcher8/setting/wp8/view/LockSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockStyleLinear:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->statusBarLinear:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_1

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockGap:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto :goto_2
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f09015d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockStyleLinear:Lcom/lx/launcher8/view/SettingLinear;

    .line 83
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f09015e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->statusBarLinear:Lcom/lx/launcher8/view/SettingLinear;

    .line 84
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockScreenPic:Lcom/lx/launcher8/view/SettingLinear;

    .line 85
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090163

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockScreenTextColor:Lcom/lx/launcher8/view/SettingLinear;

    .line 86
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090168

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockScreenStyle:Lcom/lx/launcher8/view/SettingLinear;

    .line 87
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090165

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockSound:Lcom/lx/launcher8/view/SettingLinear;

    .line 88
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090167

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockPwd:Lcom/lx/launcher8/view/SettingLinear;

    .line 89
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f09015f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockGap:Lcom/lx/launcher8/view/SettingLinear;

    .line 90
    return-void
.end method


# virtual methods
.method public getBottomBtns()[Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->scrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 264
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v7, 0x0

    .line 323
    :goto_0
    return v7

    .line 265
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 323
    const/4 v7, 0x0

    goto :goto_0

    .line 267
    :pswitch_0
    const-string v7, "extral_value"

    const/4 v8, -0x1

    invoke-virtual {p3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 268
    .local v0, color:I
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockScreenTextColor:Lcom/lx/launcher8/view/SettingLinear;

    invoke-virtual {v7, v0}, Lcom/lx/launcher8/view/SettingLinear;->setBottomColorView(I)V

    .line 269
    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->themeLockColor:I

    .line 270
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v7, v0}, Lcom/anall/screenlock/provider/LockSetting;->setThemeLockColor(I)V

    .line 271
    const-string v7, "extral_name"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, name:Ljava/lang/String;
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockScreenTextColor:Lcom/lx/launcher8/view/SettingLinear;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v5, v8, v9}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 273
    const/4 v7, 0x1

    goto :goto_0

    .line 275
    .end local v0           #color:I
    .end local v5           #name:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 276
    .local v6, uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mContext:Landroid/content/Context;

    const-class v8, Lcom/lx/launcher8/crop/CropImage;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 277
    .local v4, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 278
    .local v1, dis:Landroid/util/DisplayMetrics;
    const-string v7, "aspectX"

    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    const-string v7, "aspectY"

    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 280
    const-string v7, "noFaceDetection"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 281
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 282
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "lockbg"

    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 283
    .local v3, file:Ljava/io/File;
    const-string v7, "output"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 284
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    const/16 v8, 0x13

    invoke-virtual {v7, v4, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 285
    const/4 v7, 0x1

    goto :goto_0

    .line 287
    .end local v1           #dis:Landroid/util/DisplayMetrics;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v6           #uri:Landroid/net/Uri;
    :pswitch_2
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "lockbg"

    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 288
    .restart local v3       #file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/anall/screenlock/provider/LockSetting;->setThemeLockBg(Ljava/lang/String;)V

    .line 289
    :cond_2
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 291
    .end local v3           #file:Ljava/io/File;
    :pswitch_3
    const-string v7, "extral_boolean"

    const/4 v8, 0x1

    invoke-virtual {p3, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 292
    .local v2, enable:Z
    if-eqz v2, :cond_3

    .line 293
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockStyleLinear:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v9, 0x7f0a015a

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 294
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemeLock(I)V

    .line 299
    :goto_1
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 296
    :cond_3
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockStyleLinear:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v9, 0x7f0a015b

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 297
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemeLock(I)V

    goto :goto_1

    .line 301
    .end local v2           #enable:Z
    :pswitch_4
    const-string v7, "extral_boolean"

    const/4 v8, 0x1

    invoke-virtual {p3, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 302
    .restart local v2       #enable:Z
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v7, v2}, Lcom/anall/screenlock/provider/LockSetting;->setLockGap(Z)V

    .line 303
    if-eqz v2, :cond_4

    .line 304
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockGap:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v9, 0x7f0a011d

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 308
    :goto_2
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 306
    :cond_4
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockGap:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v9, 0x7f0a015b

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto :goto_2

    .line 310
    .end local v2           #enable:Z
    :pswitch_5
    const-string v7, "extral_boolean"

    const/4 v8, 0x1

    invoke-virtual {p3, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 311
    .restart local v2       #enable:Z
    if-eqz v2, :cond_5

    .line 312
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->statusBarLinear:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v9, 0x7f0a015a

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 313
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/anall/screenlock/provider/LockSetting;->setLockStatusBar(I)V

    .line 318
    :goto_3
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 315
    :cond_5
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->statusBarLinear:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v9, 0x7f0a015b

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 316
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/anall/screenlock/provider/LockSetting;->setLockStatusBar(I)V

    goto :goto_3

    .line 321
    .end local v2           #enable:Z
    :pswitch_6
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 218
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v4}, Lcom/anall/screenlock/provider/LockSetting;->getThemeLockColor()I

    move-result v3

    .line 219
    .local v3, themeLockColor:I
    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->themeLockColor:I

    if-eq v4, v3, :cond_0

    .line 220
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockScreenTextColor:Lcom/lx/launcher8/view/SettingLinear;

    invoke-virtual {v4, v3}, Lcom/lx/launcher8/view/SettingLinear;->setBottomColorView(I)V

    .line 221
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockScreenTextColor:Lcom/lx/launcher8/view/SettingLinear;

    invoke-static {}, Lcom/lx/launcher8/util/ColorManager;->getInstance()Lcom/lx/launcher8/util/ColorManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/lx/launcher8/util/ColorManager;->getColorName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7, v8}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 222
    iput v3, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->themeLockColor:I

    .line 225
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v4}, Lcom/anall/screenlock/provider/LockSetting;->getLockStatusBar()I

    move-result v1

    .line 226
    .local v1, lockStatusBar:I
    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockStatusBar:I

    if-eq v4, v1, :cond_1

    .line 232
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockStatusBar:I

    .line 235
    :cond_1
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v4}, Lcom/anall/screenlock/provider/LockSetting;->getLockTheme()I

    move-result v2

    .line 236
    .local v2, lockTheme:I
    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockTheme:I

    if-eq v4, v2, :cond_2

    .line 237
    packed-switch v2, :pswitch_data_0

    .line 254
    :goto_0
    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockTheme:I

    .line 256
    :cond_2
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockSound:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v6}, Lcom/anall/screenlock/provider/LockSetting;->getLockSoundPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->getSoundName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v6}, Lcom/anall/screenlock/provider/LockSetting;->getUnLockSoundPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->getSoundName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7, v8}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 257
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->settings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v4}, Lcom/anall/screenlock/provider/LockSetting;->getPwd()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, key:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockPwd:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v6, 0x7f0a015b

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7, v8}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 260
    :goto_1
    return-void

    .line 239
    .end local v0           #key:Ljava/lang/String;
    :pswitch_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockScreenStyle:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v6, 0x7f0a00cc

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7, v8}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto :goto_0

    .line 242
    :pswitch_1
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockScreenStyle:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v6, 0x7f0a00cd

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7, v8}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto :goto_0

    .line 245
    :pswitch_2
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockScreenStyle:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v6, 0x7f0a00ce

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7, v8}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto :goto_0

    .line 248
    :pswitch_3
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockScreenStyle:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v6, 0x7f0a00cf

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7, v8}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_0

    .line 251
    :pswitch_4
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockScreenStyle:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v6, 0x7f0a00d0

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7, v8}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_0

    .line 259
    .restart local v0       #key:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->lockPwd:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LockSettingView;->mAct:Landroid/app/Activity;

    const v6, 0x7f0a015a

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7, v8}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto :goto_1

    .line 237
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
    .line 354
    return-void
.end method
