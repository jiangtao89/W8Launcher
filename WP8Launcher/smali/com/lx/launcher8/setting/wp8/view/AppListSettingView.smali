.class public Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;
.super Ljava/lang/Object;
.source "AppListSettingView.java"

# interfaces
.implements Lcom/lx/launcher8/setting/view/SettingView;


# static fields
.field private static final REQUEST_APP_BG_ALPHA:I = 0x25

.field private static final REQUEST_ICON_BG_COLOR:I = 0x21

.field private static final REQUEST_ICON_COLOR_WITH_THEME:I = 0x24

.field private static final REQUEST_ICON_TEXT_COLOR:I = 0x22

.field private static final REQUEST_LETTER_RETRIEVAL:I = 0x23


# instance fields
.field private appBgAlpha:I

.field private appFgAlpha:I

.field private appIconColor:I

.field private appTextColor:Lcom/lx/launcher8/view/SettingLinear;

.field private editBgColor:Z

.field private hiddenApps:Lcom/lx/launcher8/view/SettingLinear;

.field private iconBgAlpha:Lcom/lx/launcher8/view/SettingLinear;

.field private iconBgColor:Lcom/lx/launcher8/view/SettingLinear;

.field private iconBgColorWithTheme:Lcom/lx/launcher8/view/SettingLinear;

.field private iconbgColor:I

.field private letterRetrieval:Lcom/lx/launcher8/view/SettingLinear;

.field private mAct:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mMainView:Landroid/view/View;

.field private refreshAppList:Lcom/lx/launcher8/view/SettingLinear;

.field private scrollView:Landroid/widget/ScrollView;

.field private selectAppListStyle:Lcom/lx/launcher8/view/SettingLinear;

.field private settings:Lcom/lx/launcher8/cfg/AppSetting;

.field private themeAppList:I

.field private themeAppTextColor:I

.field private themeColor:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .parameter "act"

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mMainView:Landroid/view/View;

    .line 37
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->selectAppListStyle:Lcom/lx/launcher8/view/SettingLinear;

    .line 38
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->refreshAppList:Lcom/lx/launcher8/view/SettingLinear;

    .line 39
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconBgColorWithTheme:Lcom/lx/launcher8/view/SettingLinear;

    .line 40
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinear;

    .line 41
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconBgAlpha:Lcom/lx/launcher8/view/SettingLinear;

    .line 42
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->appTextColor:Lcom/lx/launcher8/view/SettingLinear;

    .line 43
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->letterRetrieval:Lcom/lx/launcher8/view/SettingLinear;

    .line 44
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->hiddenApps:Lcom/lx/launcher8/view/SettingLinear;

    .line 46
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    .line 48
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;

    .line 49
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mContext:Landroid/content/Context;

    .line 51
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->scrollView:Landroid/widget/ScrollView;

    .line 53
    iput-boolean v3, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->editBgColor:Z

    .line 218
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->appIconColor:I

    .line 220
    iput v3, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->themeColor:I

    .line 222
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconbgColor:I

    .line 224
    const/4 v0, -0x2

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->themeAppTextColor:I

    .line 226
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->themeAppList:I

    .line 228
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->appFgAlpha:I

    .line 229
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->appBgAlpha:I

    .line 56
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;

    .line 57
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mContext:Landroid/content/Context;

    .line 58
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030042

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mMainView:Landroid/view/View;

    .line 60
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->initView()V

    .line 62
    new-instance v0, Lcom/lx/launcher8/cfg/AppSetting;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/cfg/AppSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    .line 64
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->initData()V

    .line 66
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->scrollView:Landroid/widget/ScrollView;

    .line 67
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFadingEdgeLength(I)V

    .line 68
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 69
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->scrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 70
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;)Lcom/lx/launcher8/cfg/AppSetting;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;)Z
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->editBgColor:Z

    return v0
.end method

.method private initData()V
    .locals 8

    .prologue
    const v7, 0x7f0a015b

    const v6, 0x7f0a015a

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->selectAppListStyle:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0120

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5, v1}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 85
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->selectAppListStyle:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a00d1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5, v1}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 86
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->selectAppListStyle:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$1;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;)V

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->refreshAppList:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0030

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5, v1}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 98
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->refreshAppList:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a016f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5, v1}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 99
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->refreshAppList:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$2;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$2;-><init>(Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;)V

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconBgColorWithTheme:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0122

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5, v1}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 115
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/AppSetting;->getAppIconColor()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 116
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconBgColorWithTheme:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v2, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5, v1}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 117
    iput-boolean v1, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->editBgColor:Z

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconBgColorWithTheme:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$3;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$3;-><init>(Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;)V

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a00d2

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->editBgColor:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v3, v5, v0}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 136
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinear;

    const/high16 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/SettingLinear;->setBottomColorView(I)V

    .line 137
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinear;

    const-string v2, "\u7ea2\u8272"

    invoke-virtual {v0, v2, v5, v1}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 138
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$4;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$4;-><init>(Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;)V

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconBgAlpha:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0175

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5, v1}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 156
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconBgAlpha:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v4, 0x7f0a0166

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "0% "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v4, 0x7f0a0167

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5, v1}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 157
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconBgAlpha:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$5;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$5;-><init>(Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;)V

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->appTextColor:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a002b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5, v1}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 171
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->appTextColor:Lcom/lx/launcher8/view/SettingLinear;

    const v2, -0xff0100

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/SettingLinear;->setBottomColorView(I)V

    .line 172
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->appTextColor:Lcom/lx/launcher8/view/SettingLinear;

    const-string v2, "\u7eff\u8272"

    invoke-virtual {v0, v2, v5, v1}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 173
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->appTextColor:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$6;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$6;-><init>(Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;)V

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->letterRetrieval:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a003f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5, v1}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 186
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/AppSetting;->isShowAppListHeader()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->letterRetrieval:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v2, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5, v1}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 191
    :goto_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->letterRetrieval:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$7;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$7;-><init>(Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;)V

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->hiddenApps:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a002d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5, v1}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 206
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->hiddenApps:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0170

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5, v1}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 207
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->hiddenApps:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$8;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView$8;-><init>(Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconBgColorWithTheme:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5, v1}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->editBgColor:Z

    goto/16 :goto_0

    .line 135
    :cond_1
    const-string v0, "#a0a0a0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->letterRetrieval:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5, v1}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto :goto_2
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090106

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->selectAppListStyle:Lcom/lx/launcher8/view/SettingLinear;

    .line 74
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090107

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->refreshAppList:Lcom/lx/launcher8/view/SettingLinear;

    .line 75
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090108

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconBgColorWithTheme:Lcom/lx/launcher8/view/SettingLinear;

    .line 76
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090109

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinear;

    .line 77
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f09010a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconBgAlpha:Lcom/lx/launcher8/view/SettingLinear;

    .line 78
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f09010b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->appTextColor:Lcom/lx/launcher8/view/SettingLinear;

    .line 79
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f09010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->letterRetrieval:Lcom/lx/launcher8/view/SettingLinear;

    .line 80
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f09010d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->hiddenApps:Lcom/lx/launcher8/view/SettingLinear;

    .line 81
    return-void
.end method


# virtual methods
.method public getBottomBtns()[Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->scrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 280
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v5, 0x0

    .line 337
    :goto_0
    return v5

    .line 281
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 337
    const/4 v5, 0x0

    goto :goto_0

    .line 283
    :pswitch_0
    const-string v5, "extral_value"

    const/4 v6, -0x1

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 284
    .local v2, color:I
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinear;

    invoke-virtual {v5, v2}, Lcom/lx/launcher8/view/SettingLinear;->setBottomColorView(I)V

    .line 285
    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconbgColor:I

    .line 286
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v5}, Lcom/lx/launcher8/cfg/AppSetting;->getAppIconColor()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v5, v2}, Lcom/lx/launcher8/cfg/AppSetting;->setAppIconColor(I)V

    .line 287
    :cond_2
    const-string v5, "extral_name"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 288
    .local v4, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinear;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 289
    const/4 v5, 0x1

    goto :goto_0

    .line 291
    .end local v2           #color:I
    .end local v4           #name:Ljava/lang/String;
    :pswitch_1
    const-string v5, "extral_value"

    const/4 v6, -0x1

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 292
    .restart local v2       #color:I
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->appTextColor:Lcom/lx/launcher8/view/SettingLinear;

    invoke-virtual {v5, v2}, Lcom/lx/launcher8/view/SettingLinear;->setBottomColorView(I)V

    .line 293
    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->themeAppTextColor:I

    .line 294
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v5, v2}, Lcom/lx/launcher8/cfg/AppSetting;->setThemeAppTextColor(I)V

    .line 295
    const-string v5, "extral_name"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 296
    .restart local v4       #name:Ljava/lang/String;
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->appTextColor:Lcom/lx/launcher8/view/SettingLinear;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 297
    const/4 v5, 0x1

    goto :goto_0

    .line 300
    .end local v2           #color:I
    .end local v4           #name:Ljava/lang/String;
    :pswitch_2
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v5}, Lcom/lx/launcher8/cfg/AppSetting;->isShowAppListHeader()Z

    move-result v3

    .line 301
    .local v3, enable:Z
    if-eqz v3, :cond_3

    .line 302
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->letterRetrieval:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v7, 0x7f0a015a

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 306
    :goto_1
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v5, v3}, Lcom/lx/launcher8/cfg/AppSetting;->setThemeAppListHeader(Z)V

    .line 307
    const/4 v5, 0x1

    goto :goto_0

    .line 304
    :cond_3
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->letterRetrieval:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v7, 0x7f0a015b

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto :goto_1

    .line 309
    .end local v3           #enable:Z
    :pswitch_3
    const-string v5, "extral_boolean"

    const/4 v6, 0x1

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 310
    .restart local v3       #enable:Z
    if-eqz v3, :cond_4

    .line 311
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconBgColorWithTheme:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v7, 0x7f0a015a

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 312
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/cfg/AppSetting;->setAppIconColor(I)V

    .line 313
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->editBgColor:Z

    .line 324
    :goto_2
    iget-boolean v5, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->editBgColor:Z

    if-eqz v5, :cond_7

    .line 325
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v7, 0x7f0a00d2

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v5}, Lcom/lx/launcher8/cfg/AppSetting;->getThemePaper()I

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, -0x1

    :goto_3
    invoke-virtual {v6, v7, v8, v5}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 329
    :goto_4
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 315
    :cond_4
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconBgColorWithTheme:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v7, 0x7f0a015b

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 316
    iget v5, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconbgColor:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    .line 317
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    iget v6, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconbgColor:I

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/cfg/AppSetting;->setAppIconColor(I)V

    .line 321
    :goto_5
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->editBgColor:Z

    goto :goto_2

    .line 319
    :cond_5
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    iget v6, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->themeColor:I

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/cfg/AppSetting;->setAppIconColor(I)V

    goto :goto_5

    .line 325
    :cond_6
    const/high16 v5, -0x100

    goto :goto_3

    .line 327
    :cond_7
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v7, 0x7f0a00d2

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "#a0a0a0"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    goto :goto_4

    .line 331
    .end local v3           #enable:Z
    :pswitch_4
    const-string v5, "extral_value"

    const/4 v6, 0x0

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 332
    .local v0, alphaBg:I
    const-string v5, "extral_value1"

    const/4 v6, 0x0

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 333
    .local v1, alphaFg:I
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    rsub-int/lit8 v6, v0, 0x64

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/cfg/AppSetting;->setAppAlphaBg(I)V

    .line 334
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    rsub-int/lit8 v6, v1, 0x64

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/cfg/AppSetting;->setAppAlphaFg(I)V

    .line 335
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v5, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 233
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/AppSetting;->getAppIconColor()I

    move-result v4

    iput v4, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->appIconColor:I

    .line 234
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/AppSetting;->getThemeColor()I

    move-result v4

    iput v4, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->themeColor:I

    .line 235
    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconbgColor:I

    if-eq v4, v5, :cond_4

    .line 236
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinear;

    iget v5, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconbgColor:I

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setBottomColorView(I)V

    .line 237
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinear;

    invoke-static {}, Lcom/lx/launcher8/util/ColorManager;->getInstance()Lcom/lx/launcher8/util/ColorManager;

    move-result-object v5

    iget v6, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconbgColor:I

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/util/ColorManager;->getColorName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v8, v9}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 246
    :goto_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/AppSetting;->getThemeAppList()I

    move-result v2

    .line 247
    .local v2, themeAppList:I
    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->themeAppList:I

    if-eq v4, v2, :cond_0

    .line 248
    packed-switch v2, :pswitch_data_0

    .line 259
    :goto_1
    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->themeAppList:I

    .line 262
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/AppSetting;->getThemeAppTextColor()I

    move-result v3

    .line 263
    .local v3, themeAppTextColor:I
    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->themeAppTextColor:I

    if-eq v4, v3, :cond_1

    .line 264
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->appTextColor:Lcom/lx/launcher8/view/SettingLinear;

    invoke-virtual {v4, v3}, Lcom/lx/launcher8/view/SettingLinear;->setBottomColorView(I)V

    .line 265
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->appTextColor:Lcom/lx/launcher8/view/SettingLinear;

    invoke-static {}, Lcom/lx/launcher8/util/ColorManager;->getInstance()Lcom/lx/launcher8/util/ColorManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/lx/launcher8/util/ColorManager;->getColorName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v8, v9}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 266
    iput v3, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->themeAppTextColor:I

    .line 269
    :cond_1
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/AppSetting;->getAppAlphaFg()I

    move-result v1

    .line 270
    .local v1, appFgAlpha:I
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->settings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/AppSetting;->getAppAlphaBg()I

    move-result v0

    .line 271
    .local v0, appBgAlpha:I
    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->appFgAlpha:I

    if-ne v4, v1, :cond_2

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->appBgAlpha:I

    if-eq v4, v0, :cond_3

    .line 272
    :cond_2
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconBgAlpha:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v7, 0x7f0a0166

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rsub-int/lit8 v6, v0, 0x64

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "% "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v7, 0x7f0a0167

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    rsub-int/lit8 v6, v1, 0x64

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v8, v9}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 273
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->appFgAlpha:I

    .line 274
    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->appBgAlpha:I

    .line 276
    :cond_3
    return-void

    .line 238
    .end local v0           #appBgAlpha:I
    .end local v1           #appFgAlpha:I
    .end local v2           #themeAppList:I
    .end local v3           #themeAppTextColor:I
    :cond_4
    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->appIconColor:I

    if-ne v4, v5, :cond_5

    .line 239
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinear;

    iget v5, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->themeColor:I

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setBottomColorView(I)V

    .line 240
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinear;

    invoke-static {}, Lcom/lx/launcher8/util/ColorManager;->getInstance()Lcom/lx/launcher8/util/ColorManager;

    move-result-object v5

    iget v6, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->themeColor:I

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/util/ColorManager;->getColorName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v8, v9}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_0

    .line 242
    :cond_5
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinear;

    iget v5, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->appIconColor:I

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setBottomColorView(I)V

    .line 243
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->iconBgColor:Lcom/lx/launcher8/view/SettingLinear;

    invoke-static {}, Lcom/lx/launcher8/util/ColorManager;->getInstance()Lcom/lx/launcher8/util/ColorManager;

    move-result-object v5

    iget v6, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->appIconColor:I

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/util/ColorManager;->getColorName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v8, v9}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_0

    .line 250
    .restart local v2       #themeAppList:I
    :pswitch_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->selectAppListStyle:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v6, 0x7f0a00d1

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v8, v9}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_1

    .line 253
    :pswitch_1
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->selectAppListStyle:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v6, 0x7f0a00cd

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v8, v9}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_1

    .line 256
    :pswitch_2
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->selectAppListStyle:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/AppListSettingView;->mAct:Landroid/app/Activity;

    const v6, 0x7f0a00ce

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v8, v9}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_1

    .line 248
    nop

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
    .line 357
    return-void
.end method
