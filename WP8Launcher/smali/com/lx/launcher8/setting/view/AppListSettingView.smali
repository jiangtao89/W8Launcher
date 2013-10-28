.class public Lcom/lx/launcher8/setting/view/AppListSettingView;
.super Ljava/lang/Object;
.source "AppListSettingView.java"

# interfaces
.implements Lcom/lx/launcher8/setting/view/SettingView;


# static fields
.field private static final REQUEST_APP_BG_ALPHA:I = 0x23

.field private static final REQUEST_ICON_BG_COLOR:I = 0x21

.field private static final REQUEST_ICON_TEXT_COLOR:I = 0x22


# instance fields
.field private appBgAlpha:I

.field private appFgAlpha:I

.field private appIconColor:I

.field private appTextColor:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private editBgColor:Z

.field private hiddenApps:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private iconBgAlpha:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private iconBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private iconBgColorWithTheme:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private iconbgColor:I

.field private letterRetrieval:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private mAct:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mMainView:Landroid/view/View;

.field private refreshAppList:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private scrollView:Landroid/widget/ScrollView;

.field private selectAppListStyle:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private settings:Lcom/lx/launcher8/cfg/AppSetting;

.field private themeAppList:I

.field private themeAppTextColor:I

.field private themeColor:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .parameter "act"

    .prologue
    const/4 v1, -0x2

    const/4 v3, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mMainView:Landroid/view/View;

    .line 36
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->selectAppListStyle:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 37
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->refreshAppList:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 38
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgColorWithTheme:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 39
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 40
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgAlpha:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 41
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->appTextColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 42
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->letterRetrieval:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 43
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->hiddenApps:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 45
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    .line 47
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mAct:Landroid/app/Activity;

    .line 48
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mContext:Landroid/content/Context;

    .line 50
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->scrollView:Landroid/widget/ScrollView;

    .line 52
    iput-boolean v3, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->editBgColor:Z

    .line 220
    iput v1, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->appIconColor:I

    .line 222
    iput v3, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->themeColor:I

    .line 224
    iput v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconbgColor:I

    .line 226
    iput v1, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->themeAppTextColor:I

    .line 228
    iput v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->themeAppList:I

    .line 230
    iput v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->appFgAlpha:I

    .line 231
    iput v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->appBgAlpha:I

    .line 55
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mAct:Landroid/app/Activity;

    .line 56
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mContext:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030041

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mMainView:Landroid/view/View;

    .line 59
    invoke-direct {p0}, Lcom/lx/launcher8/setting/view/AppListSettingView;->initView()V

    .line 61
    new-instance v0, Lcom/lx/launcher8/cfg/AppSetting;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/cfg/AppSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    .line 63
    invoke-direct {p0}, Lcom/lx/launcher8/setting/view/AppListSettingView;->initData()V

    .line 65
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->scrollView:Landroid/widget/ScrollView;

    .line 66
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFadingEdgeLength(I)V

    .line 67
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 68
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->scrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 69
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/view/AppListSettingView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/view/AppListSettingView;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mAct:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/view/AppListSettingView;)Lcom/lx/launcher8/cfg/AppSetting;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/view/AppListSettingView;)Lcom/lx/launcher8/view/SettingLinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/setting/view/AppListSettingView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->editBgColor:Z

    return-void
.end method

.method static synthetic access$5(Lcom/lx/launcher8/setting/view/AppListSettingView;)I
    .locals 1
    .parameter

    .prologue
    .line 224
    iget v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconbgColor:I

    return v0
.end method

.method static synthetic access$6(Lcom/lx/launcher8/setting/view/AppListSettingView;)I
    .locals 1
    .parameter

    .prologue
    .line 222
    iget v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->themeColor:I

    return v0
.end method

.method static synthetic access$7(Lcom/lx/launcher8/setting/view/AppListSettingView;)Z
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->editBgColor:Z

    return v0
.end method

.method private initData()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 83
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->selectAppListStyle:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v1, 0x7f0200f1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 84
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->selectAppListStyle:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0120

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 85
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->selectAppListStyle:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a00d1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 86
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->selectAppListStyle:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 87
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->selectAppListStyle:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v1, Lcom/lx/launcher8/setting/view/AppListSettingView$1;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/view/AppListSettingView$1;-><init>(Lcom/lx/launcher8/setting/view/AppListSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->refreshAppList:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v1, 0x7f0200f2

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 99
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->refreshAppList:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0030

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 101
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->refreshAppList:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v1, Lcom/lx/launcher8/setting/view/AppListSettingView$2;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/view/AppListSettingView$2;-><init>(Lcom/lx/launcher8/setting/view/AppListSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgColorWithTheme:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v1, 0x7f0200f3

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 117
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgColorWithTheme:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0122

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 118
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgColorWithTheme:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v1, Lcom/lx/launcher8/setting/view/AppListSettingView$3;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/view/AppListSettingView$3;-><init>(Lcom/lx/launcher8/setting/view/AppListSettingView;)V

    invoke-virtual {v0, v6, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setSeekButton(ZLcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 143
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v1, 0x7f0200f4

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 144
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a00d2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 145
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    .line 146
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 147
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v1, Lcom/lx/launcher8/setting/view/AppListSettingView$4;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/view/AppListSettingView$4;-><init>(Lcom/lx/launcher8/setting/view/AppListSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgAlpha:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v1, 0x7f0201b1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 162
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgAlpha:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0175

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 163
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgAlpha:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0166

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "100% "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0167

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "100%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 164
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgAlpha:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 165
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgAlpha:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v1, Lcom/lx/launcher8/setting/view/AppListSettingView$5;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/view/AppListSettingView$5;-><init>(Lcom/lx/launcher8/setting/view/AppListSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->appTextColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v1, 0x7f0200f6

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 178
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->appTextColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a002b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 179
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->appTextColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    .line 180
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->appTextColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 181
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->appTextColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v1, Lcom/lx/launcher8/setting/view/AppListSettingView$6;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/view/AppListSettingView$6;-><init>(Lcom/lx/launcher8/setting/view/AppListSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->letterRetrieval:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v1, 0x7f0200f7

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 192
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->letterRetrieval:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a003f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 193
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->letterRetrieval:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 194
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->letterRetrieval:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v1, Lcom/lx/launcher8/setting/view/AppListSettingView$7;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/view/AppListSettingView$7;-><init>(Lcom/lx/launcher8/setting/view/AppListSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->hiddenApps:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v1, 0x7f0200f8

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 208
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->hiddenApps:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a002d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 209
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->hiddenApps:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 210
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->hiddenApps:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v1, Lcom/lx/launcher8/setting/view/AppListSettingView$8;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/view/AppListSettingView$8;-><init>(Lcom/lx/launcher8/setting/view/AppListSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090106

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->selectAppListStyle:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 73
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090107

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->refreshAppList:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 74
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090108

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgColorWithTheme:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 75
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090109

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 76
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f09010a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgAlpha:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 77
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f09010b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->appTextColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 78
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f09010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->letterRetrieval:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 79
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f09010d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->hiddenApps:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 80
    return-void
.end method


# virtual methods
.method public getBottomBtns()[Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->scrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 303
    const/16 v5, 0x21

    if-ne p1, v5, :cond_1

    if-ne p2, v6, :cond_1

    if-eqz p3, :cond_1

    .line 304
    const-string v4, "extral_value"

    invoke-virtual {p3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 305
    .local v2, color:I
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v4, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    .line 306
    iput v2, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconbgColor:I

    .line 307
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/AppSetting;->getAppIconColor()I

    move-result v4

    if-eq v4, v6, :cond_0

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v4, v2}, Lcom/lx/launcher8/cfg/AppSetting;->setAppIconColor(I)V

    .line 321
    .end local v2           #color:I
    :cond_0
    :goto_0
    return v3

    .line 309
    :cond_1
    const/16 v5, 0x22

    if-ne p1, v5, :cond_2

    if-ne p2, v6, :cond_2

    if-eqz p3, :cond_2

    .line 310
    const-string v4, "extral_value"

    invoke-virtual {p3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 311
    .restart local v2       #color:I
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->appTextColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v4, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    .line 312
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v4, v2}, Lcom/lx/launcher8/cfg/AppSetting;->setThemeAppTextColor(I)V

    goto :goto_0

    .line 314
    .end local v2           #color:I
    :cond_2
    const/16 v5, 0x23

    if-ne p1, v5, :cond_3

    if-ne p2, v6, :cond_3

    if-eqz p3, :cond_3

    .line 315
    const-string v5, "extral_value"

    invoke-virtual {p3, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 316
    .local v0, alphaBg:I
    const-string v5, "extral_value1"

    invoke-virtual {p3, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 317
    .local v1, alphaFg:I
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    rsub-int/lit8 v5, v0, 0x64

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/cfg/AppSetting;->setAppAlphaBg(I)V

    .line 318
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    rsub-int/lit8 v5, v1, 0x64

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/cfg/AppSetting;->setAppAlphaFg(I)V

    goto :goto_0

    .end local v0           #alphaBg:I
    .end local v1           #alphaFg:I
    :cond_3
    move v3, v4

    .line 321
    goto :goto_0
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 12

    .prologue
    const v7, 0x7f0a00d2

    const/4 v11, 0x1

    const/4 v8, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 238
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v5}, Lcom/lx/launcher8/cfg/AppSetting;->getAppIconColor()I

    move-result v2

    .line 239
    .local v2, appIconColor:I
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v5}, Lcom/lx/launcher8/cfg/AppSetting;->getThemeColor()I

    move-result v5

    iput v5, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->themeColor:I

    .line 240
    iget v5, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->appIconColor:I

    if-eq v5, v2, :cond_0

    .line 241
    if-ne v2, v8, :cond_5

    .line 242
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgColorWithTheme:Lcom/lx/launcher8/view/SettingLinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v11, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setSeekButton(ZLcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 243
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v6, 0x7f0200f5

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 244
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "#707070"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7, v9}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 245
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    const-string v6, "#707070"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    .line 247
    iput-boolean v10, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->editBgColor:Z

    .line 260
    :goto_0
    iput v2, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->appIconColor:I

    .line 263
    :cond_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v5}, Lcom/lx/launcher8/cfg/AppSetting;->getThemeAppList()I

    move-result v3

    .line 264
    .local v3, themeAppList:I
    iget v5, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->themeAppList:I

    if-eq v5, v3, :cond_1

    .line 265
    packed-switch v3, :pswitch_data_0

    .line 276
    :goto_1
    iput v3, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->themeAppList:I

    .line 279
    :cond_1
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v5}, Lcom/lx/launcher8/cfg/AppSetting;->getThemeAppTextColor()I

    move-result v4

    .line 280
    .local v4, themeAppTextColor:I
    iget v5, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->themeAppTextColor:I

    if-eq v5, v4, :cond_2

    .line 281
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->appTextColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v5, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    .line 282
    iput v4, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->themeAppTextColor:I

    .line 285
    :cond_2
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v5}, Lcom/lx/launcher8/cfg/AppSetting;->getAppAlphaFg()I

    move-result v1

    .line 286
    .local v1, appFgAlpha:I
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v5}, Lcom/lx/launcher8/cfg/AppSetting;->getAppAlphaBg()I

    move-result v0

    .line 287
    .local v0, appBgAlpha:I
    iget v5, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->appFgAlpha:I

    if-ne v5, v1, :cond_3

    iget v5, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->appBgAlpha:I

    if-eq v5, v0, :cond_4

    .line 288
    :cond_3
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgAlpha:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v8, 0x7f0a0166

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rsub-int/lit8 v7, v0, 0x64

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "% "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v8, 0x7f0a0167

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    rsub-int/lit8 v7, v1, 0x64

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v10, v9}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 289
    iput v1, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->appFgAlpha:I

    .line 290
    iput v0, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->appBgAlpha:I

    .line 292
    :cond_4
    return-void

    .line 249
    .end local v0           #appBgAlpha:I
    .end local v1           #appFgAlpha:I
    .end local v3           #themeAppList:I
    .end local v4           #themeAppTextColor:I
    :cond_5
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgColorWithTheme:Lcom/lx/launcher8/view/SettingLinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v10, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setSeekButton(ZLcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 250
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v6, 0x7f0200f4

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 251
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, -0x100

    invoke-virtual {v5, v6, v7, v9}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 252
    iget v5, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconbgColor:I

    if-eq v5, v8, :cond_6

    .line 253
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget v6, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconbgColor:I

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    .line 258
    :goto_2
    iput-boolean v11, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->editBgColor:Z

    goto/16 :goto_0

    .line 255
    :cond_6
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v5, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    goto :goto_2

    .line 267
    .restart local v3       #themeAppList:I
    :pswitch_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->selectAppListStyle:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v7, 0x7f0a00d1

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v10, v9}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    goto/16 :goto_1

    .line 270
    :pswitch_1
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->selectAppListStyle:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v7, 0x7f0a00cd

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v10, v9}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    goto/16 :goto_1

    .line 273
    :pswitch_2
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->selectAppListStyle:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v7, 0x7f0a00ce

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v10, v9}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    goto/16 :goto_1

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onViewMovingFront()V
    .locals 0

    .prologue
    .line 341
    return-void
.end method
