.class public Lcom/lx/launcher8/setting/view/DeskSettingView;
.super Ljava/lang/Object;
.source "DeskSettingView.java"

# interfaces
.implements Lcom/lx/launcher8/setting/view/SettingView;


# static fields
.field private static final REQUEST_SETTING_STYLE:I = 0x33

.field private static final REQUEST_SET_SCREEN:I = 0x35

.field private static final REQUEST_SET_WALLPAPER:I = 0x34

.field private static final REQUEST_TILE_BG_ALPHA:I = 0x32

.field private static final REQUEST_TILE_BG_COLOR:I = 0x31


# instance fields
.field private animationSwitch:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private cellBgAlpha:I

.field private cellFgAlpha:I

.field private cellGap:I

.field private cellTxAlpha:I

.field private deskBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private deskWallpaper:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private displayCellText:I

.field private editOnLongClick:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private mAct:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mMainView:Landroid/view/View;

.field private myTheme:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private scrollView:Landroid/widget/ScrollView;

.field private setScreenOrietation:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private setSettingTheme:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private settings:Lcom/lx/launcher8/cfg/DeskSetting;

.field private specialTile:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private statusBarSetting:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private themeColor:I

.field private themePaper:I

.field private tileBgAlpha:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private tilePadding:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private tileTextShow:Lcom/lx/launcher8/view/SettingLinearLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .parameter "act"

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mMainView:Landroid/view/View;

    .line 40
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 41
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->tileBgAlpha:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 42
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->tilePadding:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 43
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->tileTextShow:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 44
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->editOnLongClick:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 45
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->deskBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 46
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->deskWallpaper:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 48
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->myTheme:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 49
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->statusBarSetting:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 50
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->animationSwitch:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 51
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->specialTile:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 52
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->setSettingTheme:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 53
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->setScreenOrietation:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 55
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 57
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;

    .line 58
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mContext:Landroid/content/Context;

    .line 60
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->scrollView:Landroid/widget/ScrollView;

    .line 263
    iput v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->themeColor:I

    .line 265
    iput v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->themePaper:I

    .line 267
    iput v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->cellGap:I

    .line 269
    iput v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->displayCellText:I

    .line 271
    iput v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->cellFgAlpha:I

    .line 272
    iput v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->cellBgAlpha:I

    .line 273
    iput v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->cellTxAlpha:I

    .line 63
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;

    .line 64
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030046

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mMainView:Landroid/view/View;

    .line 67
    invoke-direct {p0}, Lcom/lx/launcher8/setting/view/DeskSettingView;->initView()V

    .line 69
    new-instance v0, Lcom/lx/launcher8/cfg/DeskSetting;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 71
    invoke-direct {p0}, Lcom/lx/launcher8/setting/view/DeskSettingView;->initData()V

    .line 73
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->scrollView:Landroid/widget/ScrollView;

    .line 74
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFadingEdgeLength(I)V

    .line 75
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 76
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->scrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 77
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/view/DeskSettingView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/view/DeskSettingView;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/view/DeskSettingView;)Lcom/lx/launcher8/cfg/DeskSetting;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    return-object v0
.end method

.method private initData()V
    .locals 9

    .prologue
    const v8, 0x7f0201bb

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 97
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v2, 0x7f0201b0

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 98
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0113

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 99
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v2, -0xffff01

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    .line 100
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v7}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 101
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v2, Lcom/lx/launcher8/setting/view/DeskSettingView$1;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/view/DeskSettingView$1;-><init>(Lcom/lx/launcher8/setting/view/DeskSettingView;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->tileBgAlpha:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v2, 0x7f0201b1

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 112
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->tileBgAlpha:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0115

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 113
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->tileBgAlpha:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v4, 0x7f0a0166

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "100% "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v4, 0x7f0a0167

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "100%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 114
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->tileBgAlpha:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v7}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 115
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->tileBgAlpha:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v2, Lcom/lx/launcher8/setting/view/DeskSettingView$2;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/view/DeskSettingView$2;-><init>(Lcom/lx/launcher8/setting/view/DeskSettingView;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->tilePadding:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v2, 0x7f0201b2

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 129
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->tilePadding:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0116

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 130
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->tilePadding:Lcom/lx/launcher8/view/SettingLinearLayout;

    const-string v2, "10px"

    invoke-virtual {v1, v2, v6, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 131
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->tilePadding:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v7}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 132
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->tilePadding:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v2, Lcom/lx/launcher8/setting/view/DeskSettingView$3;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/view/DeskSettingView$3;-><init>(Lcom/lx/launcher8/setting/view/DeskSettingView;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->tileTextShow:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v2, 0x7f0201b3

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 142
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->tileTextShow:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0117

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 143
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->tileTextShow:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v2, Lcom/lx/launcher8/setting/view/DeskSettingView$4;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/view/DeskSettingView$4;-><init>(Lcom/lx/launcher8/setting/view/DeskSettingView;)V

    invoke-virtual {v1, v7, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setSeekButton(ZLcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 154
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->editOnLongClick:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v2, 0x7f0201b4

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 155
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->editOnLongClick:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a00bd

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 156
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->editOnLongClick:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v2, Lcom/lx/launcher8/setting/view/DeskSettingView$5;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/view/DeskSettingView$5;-><init>(Lcom/lx/launcher8/setting/view/DeskSettingView;)V

    invoke-virtual {v1, v7, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setSeekButton(ZLcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 163
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->deskBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v2, 0x7f0201b5

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 164
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->deskBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0021

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 165
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->deskBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0022

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 166
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->deskBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v7}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 167
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->deskBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v2, Lcom/lx/launcher8/setting/view/DeskSettingView$6;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/view/DeskSettingView$6;-><init>(Lcom/lx/launcher8/setting/view/DeskSettingView;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->deskWallpaper:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v2, 0x7f0201b6

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 177
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->deskWallpaper:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0024

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 178
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->deskWallpaper:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v7}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 179
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->deskWallpaper:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v2, Lcom/lx/launcher8/setting/view/DeskSettingView$7;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/view/DeskSettingView$7;-><init>(Lcom/lx/launcher8/setting/view/DeskSettingView;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->myTheme:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v2, 0x7f0201b7

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 187
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->myTheme:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0172

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 188
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->myTheme:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v7}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 189
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->myTheme:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v2, Lcom/lx/launcher8/setting/view/DeskSettingView$8;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/view/DeskSettingView$8;-><init>(Lcom/lx/launcher8/setting/view/DeskSettingView;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->statusBarSetting:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v2, 0x7f0201ba

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 198
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->statusBarSetting:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0027

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 199
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->statusBarSetting:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v7}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 200
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->statusBarSetting:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v2, Lcom/lx/launcher8/setting/view/DeskSettingView$9;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/view/DeskSettingView$9;-><init>(Lcom/lx/launcher8/setting/view/DeskSettingView;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->animationSwitch:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v8}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 213
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->animationSwitch:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a00c8

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 214
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->animationSwitch:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v7}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 215
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->animationSwitch:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v2, Lcom/lx/launcher8/setting/view/DeskSettingView$10;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/view/DeskSettingView$10;-><init>(Lcom/lx/launcher8/setting/view/DeskSettingView;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->specialTile:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v2, 0x7f0201b9

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 225
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->specialTile:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a00c5

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 226
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->specialTile:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v7}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 227
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->specialTile:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v2, Lcom/lx/launcher8/setting/view/DeskSettingView$11;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/view/DeskSettingView$11;-><init>(Lcom/lx/launcher8/setting/view/DeskSettingView;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->setSettingTheme:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v8}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 238
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->setSettingTheme:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0157

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 239
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->setSettingTheme:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a015f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 240
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->setSettingTheme:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v7}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 241
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->setSettingTheme:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v2, Lcom/lx/launcher8/setting/view/DeskSettingView$12;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/view/DeskSettingView$12;-><init>(Lcom/lx/launcher8/setting/view/DeskSettingView;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, arrays:[Ljava/lang/String;
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->setScreenOrietation:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v8}, Lcom/lx/launcher8/view/SettingLinearLayout;->setLeftIcon(I)V

    .line 251
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->setScreenOrietation:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0162

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 252
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->setScreenOrietation:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v2}, Lcom/lx/launcher8/cfg/DeskSetting;->getScreenOrientation()I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v6, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 253
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->setScreenOrietation:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v7}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 254
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->setScreenOrietation:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v2, Lcom/lx/launcher8/setting/view/DeskSettingView$13;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/view/DeskSettingView$13;-><init>(Lcom/lx/launcher8/setting/view/DeskSettingView;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090122

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 81
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090123

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->tileBgAlpha:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 82
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->tilePadding:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 83
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->tileTextShow:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 84
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f09012e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->editOnLongClick:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 85
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090127

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->deskBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 86
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090128

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->deskWallpaper:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 88
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f09012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->myTheme:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 89
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f09012b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->statusBarSetting:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 90
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f09012c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->animationSwitch:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 91
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f09012d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->specialTile:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 92
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f09012f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->setSettingTheme:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 93
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mMainView:Landroid/view/View;

    const v1, 0x7f090130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->setScreenOrietation:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 94
    return-void
.end method


# virtual methods
.method public getBottomBtns()[Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->scrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 14
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 337
    const/16 v10, 0x31

    if-ne p1, v10, :cond_0

    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_0

    if-eqz p3, :cond_0

    .line 338
    const-string v10, "extral_value"

    const/4 v11, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 339
    .local v6, color:I
    iput v6, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->themeColor:I

    .line 340
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v10, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    .line 341
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v10, v6}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemeColor(I)V

    .line 342
    const/4 v10, 0x1

    .line 375
    .end local v6           #color:I
    :goto_0
    return v10

    .line 343
    :cond_0
    const/16 v10, 0x8

    if-ne p1, v10, :cond_1

    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_1

    if-eqz p3, :cond_1

    .line 344
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/AnallApp;

    .line 345
    .local v4, app:Lcom/lx/launcher8/AnallApp;
    const-string v10, "special"

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 346
    .local v8, old:I
    const-string v10, "extral_info"

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 347
    .local v7, newValue:I
    invoke-virtual {v4, v8, v7}, Lcom/lx/launcher8/AnallApp;->setSpecialValue(II)V

    .line 348
    const/4 v10, 0x1

    goto :goto_0

    .line 349
    .end local v4           #app:Lcom/lx/launcher8/AnallApp;
    .end local v7           #newValue:I
    .end local v8           #old:I
    :cond_1
    const/16 v10, 0x32

    if-ne p1, v10, :cond_2

    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_2

    if-eqz p3, :cond_2

    .line 350
    const-string v10, "extral_value"

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 351
    .local v1, alpha:I
    const-string v10, "extral_value1"

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 352
    .local v2, alphaFg:I
    const-string v10, "extral_value2"

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 353
    .local v3, alphaTx:I
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    rsub-int/lit8 v11, v1, 0x64

    invoke-virtual {v10, v11}, Lcom/lx/launcher8/cfg/DeskSetting;->setCellAlpha(I)V

    .line 354
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    rsub-int/lit8 v11, v2, 0x64

    invoke-virtual {v10, v11}, Lcom/lx/launcher8/cfg/DeskSetting;->setCellFGAlpha(I)V

    .line 355
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    rsub-int/lit8 v11, v3, 0x64

    invoke-virtual {v10, v11}, Lcom/lx/launcher8/cfg/DeskSetting;->setCellTextAlpha(I)V

    .line 356
    const/4 v10, 0x1

    goto :goto_0

    .line 357
    .end local v1           #alpha:I
    .end local v2           #alphaFg:I
    .end local v3           #alphaTx:I
    :cond_2
    const/16 v10, 0x33

    if-ne p1, v10, :cond_4

    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_4

    if-eqz p3, :cond_4

    .line 358
    const-string v10, "extral_value"

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 359
    .local v9, style:I
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v10, v9}, Lcom/lx/launcher8/cfg/DeskSetting;->setSettingStyle(I)V

    .line 360
    if-eqz v9, :cond_3

    .line 361
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->finish()V

    .line 362
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;

    new-instance v11, Landroid/content/Intent;

    iget-object v12, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mContext:Landroid/content/Context;

    const-class v13, Lcom/lx/launcher8/setting/wp8/SettingAct;

    invoke-direct {v11, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 364
    :cond_3
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 365
    .end local v9           #style:I
    :cond_4
    const/16 v10, 0x34

    if-ne p1, v10, :cond_5

    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_5

    .line 366
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemePaper(I)V

    .line 367
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 368
    :cond_5
    const/16 v10, 0x35

    if-ne p1, v10, :cond_6

    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_6

    .line 369
    const-string v10, "extral_value"

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 370
    .restart local v9       #style:I
    const/4 v10, 0x2

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 371
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v10, v9}, Lcom/lx/launcher8/cfg/DeskSetting;->setScreenOrientation(I)V

    .line 372
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070009

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 373
    .local v5, arrays:[Ljava/lang/String;
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->setScreenOrietation:Lcom/lx/launcher8/view/SettingLinearLayout;

    aget-object v11, v5, v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 375
    .end local v5           #arrays:[Ljava/lang/String;
    .end local v9           #style:I
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v8, 0x0

    .line 280
    iget-object v9, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v9}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v6

    .line 281
    .local v6, themeColor:I
    iget v9, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->themeColor:I

    if-eq v9, v6, :cond_0

    .line 282
    iget-object v9, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v9, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    .line 283
    iput v6, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->themeColor:I

    .line 286
    :cond_0
    iget-object v9, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v9}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v7

    .line 287
    .local v7, themePaper:I
    iget v9, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->themePaper:I

    if-eq v9, v7, :cond_1

    .line 288
    packed-switch v7, :pswitch_data_0

    .line 299
    :goto_0
    iput v7, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->themePaper:I

    .line 302
    :cond_1
    iget-object v9, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v9}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellGap()I

    move-result v2

    .line 303
    .local v2, cellGap:I
    iget v9, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->cellGap:I

    if-eq v9, v2, :cond_2

    .line 304
    iget-object v9, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->tilePadding:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "px"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 305
    iput v2, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->cellGap:I

    .line 308
    :cond_2
    iget-object v9, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v9}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellFGAlpha()I

    move-result v1

    .line 309
    .local v1, cellFgAlpha:I
    iget-object v9, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v9}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellAlpha()I

    move-result v0

    .line 310
    .local v0, cellBgAlpha:I
    iget-object v9, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v9}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellTextAlpha()I

    move-result v3

    .line 311
    .local v3, cellTxAlpha:I
    iget v9, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->cellFgAlpha:I

    if-ne v9, v1, :cond_3

    iget v9, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->cellBgAlpha:I

    if-ne v9, v0, :cond_3

    iget v9, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->cellTxAlpha:I

    if-eq v9, v3, :cond_4

    .line 312
    :cond_3
    iget-object v9, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->tileBgAlpha:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v12, 0x7f0a0166

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rsub-int/lit8 v11, v0, 0x64

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "% "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v12, 0x7f0a0167

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    rsub-int/lit8 v11, v1, 0x64

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 313
    iput v1, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->cellFgAlpha:I

    .line 314
    iput v0, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->cellBgAlpha:I

    .line 315
    iput v3, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->cellTxAlpha:I

    .line 318
    :cond_4
    iget-object v9, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v9}, Lcom/lx/launcher8/cfg/DeskSetting;->getDisplayCellText()I

    move-result v4

    .line 319
    .local v4, displayCellText:I
    iget v9, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->displayCellText:I

    if-eq v9, v4, :cond_6

    .line 320
    iget-object v9, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->tileTextShow:Lcom/lx/launcher8/view/SettingLinearLayout;

    if-nez v4, :cond_5

    const/4 v8, 0x1

    :cond_5
    invoke-virtual {v9, v8, v14}, Lcom/lx/launcher8/view/SettingLinearLayout;->setSeekButton(ZLcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 321
    iput v4, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->displayCellText:I

    .line 324
    :cond_6
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v8}, Lcom/lx/launcher8/cfg/DeskSetting;->getLockLauncherEnable()Z

    move-result v5

    .line 325
    .local v5, isLockLauncherEnable:Z
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->editOnLongClick:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v8, v5, v14}, Lcom/lx/launcher8/view/SettingLinearLayout;->setSeekButton(ZLcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 326
    return-void

    .line 290
    .end local v0           #cellBgAlpha:I
    .end local v1           #cellFgAlpha:I
    .end local v2           #cellGap:I
    .end local v3           #cellTxAlpha:I
    .end local v4           #displayCellText:I
    .end local v5           #isLockLauncherEnable:Z
    :pswitch_0
    iget-object v9, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->deskBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v10, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v11, 0x7f0a0022

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    goto/16 :goto_0

    .line 293
    :pswitch_1
    iget-object v9, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->deskBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v10, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v11, 0x7f0a0023

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    goto/16 :goto_0

    .line 296
    :pswitch_2
    iget-object v9, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->deskBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v10, p0, Lcom/lx/launcher8/setting/view/DeskSettingView;->mAct:Landroid/app/Activity;

    const v11, 0x7f0a0024

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    goto/16 :goto_0

    .line 288
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
    .line 395
    return-void
.end method
