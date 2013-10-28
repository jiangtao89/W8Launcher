.class public Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;
.super Ljava/lang/Object;
.source "DeskSettingView.java"

# interfaces
.implements Lcom/lx/launcher8/setting/view/SettingView;


# static fields
.field private static final REQUEST_EIDT_ON_LONG_CLICK:I = 0x34

.field private static final REQUEST_SETTING_SCREEN:I = 0x37

.field private static final REQUEST_SETTING_STYLE:I = 0x35

.field private static final REQUEST_SET_WALLPAPER:I = 0x36

.field private static final REQUEST_TILE_BG_ALPHA:I = 0x32

.field private static final REQUEST_TILE_BG_COLOR:I = 0x31

.field private static final REQUEST_TILE_TEXT_SHOW:I = 0x33


# instance fields
.field private animationSwitch:Lcom/lx/launcher8/view/SettingLinear;

.field private cellBgAlpha:I

.field private cellFgAlpha:I

.field private cellGap:I

.field private cellTxAlpha:I

.field private deskBgColor:Lcom/lx/launcher8/view/SettingLinear;

.field private deskWallpaper:Lcom/lx/launcher8/view/SettingLinear;

.field private editOnLongClick:Lcom/lx/launcher8/view/SettingLinear;

.field private mAct:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mMainView:Landroid/view/View;

.field private myTheme:Lcom/lx/launcher8/view/SettingLinear;

.field private onlineTheme:Lcom/lx/launcher8/view/SettingLinear;

.field private scrollView:Landroid/widget/ScrollView;

.field private setSettingScreen:Lcom/lx/launcher8/view/SettingLinear;

.field private setSettingTheme:Lcom/lx/launcher8/view/SettingLinear;

.field private settings:Lcom/lx/launcher8/cfg/DeskSetting;

.field private specialTile:Lcom/lx/launcher8/view/SettingLinear;

.field private statusBarSetting:Lcom/lx/launcher8/view/SettingLinear;

.field private themeColor:I

.field private themePaper:I

.field private tileBgAlpha:Lcom/lx/launcher8/view/SettingLinear;

.field private tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

.field private tilePadding:Lcom/lx/launcher8/view/SettingLinear;

.field private tileTextShow:Lcom/lx/launcher8/view/SettingLinear;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 9
    .parameter "act"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mMainView:Landroid/view/View;

    .line 45
    iput-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    .line 46
    iput-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->tileBgAlpha:Lcom/lx/launcher8/view/SettingLinear;

    .line 47
    iput-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->tilePadding:Lcom/lx/launcher8/view/SettingLinear;

    .line 48
    iput-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->tileTextShow:Lcom/lx/launcher8/view/SettingLinear;

    .line 49
    iput-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->editOnLongClick:Lcom/lx/launcher8/view/SettingLinear;

    .line 50
    iput-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->deskBgColor:Lcom/lx/launcher8/view/SettingLinear;

    .line 51
    iput-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->deskWallpaper:Lcom/lx/launcher8/view/SettingLinear;

    .line 52
    iput-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->onlineTheme:Lcom/lx/launcher8/view/SettingLinear;

    .line 53
    iput-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->myTheme:Lcom/lx/launcher8/view/SettingLinear;

    .line 54
    iput-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->statusBarSetting:Lcom/lx/launcher8/view/SettingLinear;

    .line 55
    iput-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->animationSwitch:Lcom/lx/launcher8/view/SettingLinear;

    .line 56
    iput-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->specialTile:Lcom/lx/launcher8/view/SettingLinear;

    .line 57
    iput-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->setSettingTheme:Lcom/lx/launcher8/view/SettingLinear;

    .line 58
    iput-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->setSettingScreen:Lcom/lx/launcher8/view/SettingLinear;

    .line 60
    iput-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 62
    iput-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    .line 63
    iput-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mContext:Landroid/content/Context;

    .line 65
    iput-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->scrollView:Landroid/widget/ScrollView;

    .line 66
    iput-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 294
    iput v7, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->themeColor:I

    .line 296
    iput v7, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->themePaper:I

    .line 298
    iput v7, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->cellGap:I

    .line 300
    iput v7, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->cellFgAlpha:I

    .line 301
    iput v7, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->cellBgAlpha:I

    .line 302
    iput v7, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->cellTxAlpha:I

    .line 69
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    .line 70
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mContext:Landroid/content/Context;

    .line 71
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030047

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mMainView:Landroid/view/View;

    .line 73
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->initView()V

    .line 75
    new-instance v4, Lcom/lx/launcher8/cfg/DeskSetting;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 77
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->initData()V

    .line 79
    new-instance v4, Landroid/widget/ScrollView;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->scrollView:Landroid/widget/ScrollView;

    .line 80
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4, v8}, Landroid/widget/ScrollView;->setFadingEdgeLength(I)V

    .line 81
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4, v8}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 82
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->scrollView:Landroid/widget/ScrollView;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mMainView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 84
    const/high16 v4, 0x3f80

    invoke-static {v7, v8, v4}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 85
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 86
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mLinearLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 87
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03003f

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, adView:Landroid/view/View;
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    const v4, 0x7f090104

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 94
    .local v2, wpAd:Landroid/widget/ImageView;
    const v4, 0x7f090105

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 95
    .local v3, wpClose:Landroid/widget/ImageView;
    invoke-static {}, Lcom/lx/launcher8/util/WpAdUtil;->getInstance()Lcom/lx/launcher8/util/WpAdUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v2, v3, v6}, Lcom/lx/launcher8/util/WpAdUtil;->showAd(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    .line 96
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;)Lcom/lx/launcher8/cfg/DeskSetting;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    return-object v0
.end method

.method private initData()V
    .locals 9

    .prologue
    const v8, 0x7f0a015b

    const v7, 0x7f0a015a

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 116
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0113

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 117
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    invoke-virtual {v1, v4}, Lcom/lx/launcher8/view/SettingLinear;->setBottomColorView(I)V

    .line 118
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    invoke-static {}, Lcom/lx/launcher8/util/ColorManager;->getInstance()Lcom/lx/launcher8/util/ColorManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/lx/launcher8/util/ColorManager;->getColorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 119
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$1;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->tileBgAlpha:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0115

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 131
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->tileBgAlpha:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v4, 0x7f0a0166

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "100% "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v4, 0x7f0a0167

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "100% "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v4, 0x7f0a0168

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "100%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 132
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->tileBgAlpha:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$2;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$2;-><init>(Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->tilePadding:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0116

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 146
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->tilePadding:Lcom/lx/launcher8/view/SettingLinear;

    const-string v2, "10px"

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 147
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->tilePadding:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$3;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$3;-><init>(Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->tileTextShow:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0117

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 157
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getDisplayCellText()I

    move-result v1

    if-nez v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->tileTextShow:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 162
    :goto_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->tileTextShow:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$4;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$4;-><init>(Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->editOnLongClick:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a00bd

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 176
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getLockLauncherEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->editOnLongClick:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 181
    :goto_1
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->editOnLongClick:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$5;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$5;-><init>(Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->deskBgColor:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0021

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 195
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->deskBgColor:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0022

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 196
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->deskBgColor:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$6;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$6;-><init>(Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->deskWallpaper:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0024

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 206
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->deskWallpaper:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0169

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 207
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->deskWallpaper:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$7;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$7;-><init>(Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->myTheme:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0172

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 216
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->myTheme:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a016a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 217
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->myTheme:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$8;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$8;-><init>(Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->statusBarSetting:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0027

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 226
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->statusBarSetting:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a016b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 227
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->statusBarSetting:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$9;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$9;-><init>(Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->animationSwitch:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0149

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 236
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->animationSwitch:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a016c

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 237
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->animationSwitch:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$10;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$10;-><init>(Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->specialTile:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a00c5

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 248
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->specialTile:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a016d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 249
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->specialTile:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$11;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$11;-><init>(Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->setSettingTheme:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0157

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 260
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->setSettingTheme:Lcom/lx/launcher8/view/SettingLinear;

    const-string v2, "WP8"

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 261
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->setSettingTheme:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$12;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$12;-><init>(Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, arrays:[Ljava/lang/String;
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->setSettingScreen:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0135

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 272
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->setSettingScreen:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v2}, Lcom/lx/launcher8/cfg/DeskSetting;->getScreenOrientation()I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 273
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->setSettingScreen:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$13;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$13;-><init>(Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->onlineTheme:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0180

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 283
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->onlineTheme:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0181

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 284
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->onlineTheme:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$14;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView$14;-><init>(Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    return-void

    .line 160
    .end local v0           #arrays:[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->tileTextShow:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v2, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_0

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->editOnLongClick:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v2, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_1
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090122

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    .line 100
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090123

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->tileBgAlpha:Lcom/lx/launcher8/view/SettingLinear;

    .line 101
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->tilePadding:Lcom/lx/launcher8/view/SettingLinear;

    .line 102
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->tileTextShow:Lcom/lx/launcher8/view/SettingLinear;

    .line 103
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f09012e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->editOnLongClick:Lcom/lx/launcher8/view/SettingLinear;

    .line 104
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090127

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->deskBgColor:Lcom/lx/launcher8/view/SettingLinear;

    .line 105
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090128

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->deskWallpaper:Lcom/lx/launcher8/view/SettingLinear;

    .line 106
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090131

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->onlineTheme:Lcom/lx/launcher8/view/SettingLinear;

    .line 107
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f09012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->myTheme:Lcom/lx/launcher8/view/SettingLinear;

    .line 108
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f09012b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->statusBarSetting:Lcom/lx/launcher8/view/SettingLinear;

    .line 109
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f09012c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->animationSwitch:Lcom/lx/launcher8/view/SettingLinear;

    .line 110
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f09012d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->specialTile:Lcom/lx/launcher8/view/SettingLinear;

    .line 111
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f09012f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->setSettingTheme:Lcom/lx/launcher8/view/SettingLinear;

    .line 112
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090132

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->setSettingScreen:Lcom/lx/launcher8/view/SettingLinear;

    .line 113
    return-void
.end method


# virtual methods
.method public getBottomBtns()[Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 16
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 351
    if-nez p2, :cond_0

    const/4 v12, 0x0

    .line 413
    :goto_0
    return v12

    .line 352
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 413
    const/4 v12, 0x0

    goto :goto_0

    .line 354
    :sswitch_0
    const-string v12, "extral_value"

    const/4 v13, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 355
    .local v6, color:I
    move-object/from16 v0, p0

    iput v6, v0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->themeColor:I

    .line 356
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    invoke-virtual {v12, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomColorView(I)V

    .line 357
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v12, v6}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemeColor(I)V

    .line 358
    const-string v12, "extral_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 359
    .local v8, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v8, v13, v14}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 360
    const/4 v12, 0x1

    goto :goto_0

    .line 362
    .end local v6           #color:I
    .end local v8           #name:Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/AnallApp;

    .line 363
    .local v4, app:Lcom/lx/launcher8/AnallApp;
    const-string v12, "special"

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 364
    .local v10, old:I
    const-string v12, "extral_info"

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 365
    .local v9, newValue:I
    invoke-virtual {v4, v10, v9}, Lcom/lx/launcher8/AnallApp;->setSpecialValue(II)V

    .line 366
    const/4 v12, 0x1

    goto :goto_0

    .line 368
    .end local v4           #app:Lcom/lx/launcher8/AnallApp;
    .end local v9           #newValue:I
    .end local v10           #old:I
    :sswitch_2
    const-string v12, "extral_value"

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 369
    .local v1, alpha:I
    const-string v12, "extral_value1"

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 370
    .local v2, alphaFg:I
    const-string v12, "extral_value2"

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 371
    .local v3, alphaTx:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    rsub-int/lit8 v13, v1, 0x64

    invoke-virtual {v12, v13}, Lcom/lx/launcher8/cfg/DeskSetting;->setCellAlpha(I)V

    .line 372
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    rsub-int/lit8 v13, v2, 0x64

    invoke-virtual {v12, v13}, Lcom/lx/launcher8/cfg/DeskSetting;->setCellFGAlpha(I)V

    .line 373
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    rsub-int/lit8 v13, v3, 0x64

    invoke-virtual {v12, v13}, Lcom/lx/launcher8/cfg/DeskSetting;->setCellTextAlpha(I)V

    .line 374
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 376
    .end local v1           #alpha:I
    .end local v2           #alphaFg:I
    .end local v3           #alphaTx:I
    :sswitch_3
    const-string v12, "extral_boolean"

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 377
    .local v7, enable:Z
    if-eqz v7, :cond_1

    .line 378
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->tileTextShow:Lcom/lx/launcher8/view/SettingLinear;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v14, 0x7f0a015a

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 379
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/lx/launcher8/cfg/DeskSetting;->setDisplayCellText(I)V

    .line 384
    :goto_1
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 381
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->tileTextShow:Lcom/lx/launcher8/view/SettingLinear;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v14, 0x7f0a015b

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 382
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/lx/launcher8/cfg/DeskSetting;->setDisplayCellText(I)V

    goto :goto_1

    .line 386
    .end local v7           #enable:Z
    :sswitch_4
    const-string v12, "extral_boolean"

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 387
    .restart local v7       #enable:Z
    if-eqz v7, :cond_2

    .line 388
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->editOnLongClick:Lcom/lx/launcher8/view/SettingLinear;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v14, 0x7f0a015a

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 392
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v12, v7}, Lcom/lx/launcher8/cfg/DeskSetting;->setLockLauncherEnable(Z)V

    .line 393
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 390
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->editOnLongClick:Lcom/lx/launcher8/view/SettingLinear;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v14, 0x7f0a015b

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto :goto_2

    .line 395
    .end local v7           #enable:Z
    :sswitch_5
    const-string v12, "extral_value"

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 396
    .local v11, style:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v12, v11}, Lcom/lx/launcher8/cfg/DeskSetting;->setSettingStyle(I)V

    .line 397
    const/4 v12, 0x1

    if-eq v11, v12, :cond_3

    .line 398
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->finish()V

    .line 399
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mContext:Landroid/content/Context;

    const-class v15, Lcom/lx/launcher8/setting/MainSettingAct;

    invoke-direct {v13, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v12, v13}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 401
    :cond_3
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 403
    .end local v11           #style:I
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemePaper(I)V

    .line 404
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 406
    :sswitch_7
    const-string v12, "extral_value"

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 407
    .restart local v11       #style:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v12, v11}, Lcom/lx/launcher8/cfg/DeskSetting;->setScreenOrientation(I)V

    .line 408
    const/4 v12, 0x0

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 409
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070009

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 410
    .local v5, arrays:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->setSettingScreen:Lcom/lx/launcher8/view/SettingLinear;

    aget-object v13, v5, v11

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 411
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 352
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x31 -> :sswitch_0
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
    .end sparse-switch
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 306
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v6}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v4

    .line 307
    .local v4, themeColor:I
    iget v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->themeColor:I

    if-eq v6, v4, :cond_0

    .line 308
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    invoke-virtual {v6, v4}, Lcom/lx/launcher8/view/SettingLinear;->setBottomColorView(I)V

    .line 309
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    invoke-static {}, Lcom/lx/launcher8/util/ColorManager;->getInstance()Lcom/lx/launcher8/util/ColorManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/lx/launcher8/util/ColorManager;->getColorName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v10, v11}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 310
    iput v4, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->themeColor:I

    .line 313
    :cond_0
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v6}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v5

    .line 314
    .local v5, themePaper:I
    iget v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->themePaper:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    iget v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->themePaper:I

    if-eq v6, v5, :cond_4

    .line 315
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 316
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 330
    :goto_0
    iput v5, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->themePaper:I

    .line 332
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v6}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellGap()I

    move-result v2

    .line 333
    .local v2, cellGap:I
    iget v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->cellGap:I

    if-eq v6, v2, :cond_1

    .line 334
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->tilePadding:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "px"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v10, v11}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 335
    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->cellGap:I

    .line 338
    :cond_1
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v6}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellFGAlpha()I

    move-result v1

    .line 339
    .local v1, cellFgAlpha:I
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v6}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellAlpha()I

    move-result v0

    .line 340
    .local v0, cellBgAlpha:I
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v6}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellTextAlpha()I

    move-result v3

    .line 341
    .local v3, cellTxAlpha:I
    iget v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->cellFgAlpha:I

    if-ne v6, v1, :cond_2

    iget v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->cellBgAlpha:I

    if-ne v6, v0, :cond_2

    iget v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->cellTxAlpha:I

    if-eq v6, v3, :cond_3

    .line 342
    :cond_2
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->tileBgAlpha:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v9, 0x7f0a0166

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rsub-int/lit8 v8, v0, 0x64

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "% "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v9, 0x7f0a0167

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    rsub-int/lit8 v8, v1, 0x64

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "% "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v9, 0x7f0a0168

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    rsub-int/lit8 v8, v3, 0x64

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v10, v11}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 343
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->cellFgAlpha:I

    .line 344
    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->cellBgAlpha:I

    .line 345
    iput v3, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->cellTxAlpha:I

    .line 347
    :cond_3
    return-void

    .line 318
    .end local v0           #cellBgAlpha:I
    .end local v1           #cellFgAlpha:I
    .end local v2           #cellGap:I
    .end local v3           #cellTxAlpha:I
    :cond_4
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_0

    .line 320
    :pswitch_0
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->deskBgColor:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v8, 0x7f0a0022

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v10, v11}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_0

    .line 323
    :pswitch_1
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->deskBgColor:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v8, 0x7f0a0023

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v10, v11}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_0

    .line 326
    :pswitch_2
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->deskBgColor:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v8, 0x7f0a0024

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v10, v11}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_0

    .line 318
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
    .line 433
    return-void
.end method
