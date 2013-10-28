.class public Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;
.super Ljava/lang/Object;
.source "WidgetSettingView.java"

# interfaces
.implements Lcom/lx/launcher8/setting/view/SettingView;


# static fields
.field static final BUTTON_CANCEL:I = 0x14

.field static final BUTTON_CONFIRM:I = 0xa

.field static final REQUEST_CREATE_APPWIDGET:I = 0x9

.field static final REQUEST_PICK_COLOR:I = 0x1

.field static final REQUEST_PICK_PIC:I = 0x3

.field static final REQUEST_PICK_SIZE:I = 0x4

.field static final REQUEST_PICK_WIDGET:I = 0x2

.field static final REQUEST_PIC_POSITION:I = 0x5

.field static final REQUEST_SET_SPECIAL_FUN:I = 0x8

.field static final REQUEST_TEXT_STYLE:I = 0x6

.field static final REQUEST_TILE_BG_ALPHA:I = 0x7


# instance fields
.field private appNameLinear:Lcom/lx/launcher8/view/SettingLinear;

.field private backColor:I

.field private bindingApp:Lcom/lx/launcher8/view/SettingLinear;

.field private btnCancel:Landroid/widget/Button;

.field private btnConfirm:Landroid/widget/Button;

.field private btnDelete:Landroid/widget/TextView;

.field private cellBgAlpha:I

.field private cellFgAlpha:I

.field private cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

.field private cellInfoString:Ljava/lang/String;

.field private cellTxAlpha:I

.field private deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

.field private gravity:I

.field private iconImg:Landroid/widget/ImageView;

.field protected iconImgBg:Landroid/widget/LinearLayout;

.field private mAct:Landroid/app/Activity;

.field private mClick:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mMainView:Landroid/view/View;

.field private mOldWidgetId:I

.field private picPositionLinear:Lcom/lx/launcher8/view/SettingLinear;

.field private scrollView:Landroid/widget/ScrollView;

.field private selectIcon:Landroid/widget/FrameLayout;

.field private selectIconBtn:Landroid/widget/Button;

.field private setTileSize:Lcom/lx/launcher8/view/SettingLinear;

.field private themeColor:I

.field private tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

.field private tileBgTransparent:Lcom/lx/launcher8/view/SettingLinear;

.field private tileShowFunc:Lcom/lx/launcher8/view/SettingLinear;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/lx/launcher8/bean/AppWidgetCell;)V
    .locals 4
    .parameter "act"
    .parameter "cellInfo"

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mContext:Landroid/content/Context;

    .line 61
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    .line 63
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mMainView:Landroid/view/View;

    .line 65
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->scrollView:Landroid/widget/ScrollView;

    .line 67
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->view:Landroid/view/View;

    .line 69
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->iconImg:Landroid/widget/ImageView;

    .line 70
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->selectIconBtn:Landroid/widget/Button;

    .line 71
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->selectIcon:Landroid/widget/FrameLayout;

    .line 72
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    .line 73
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinear;

    .line 74
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinear;

    .line 75
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinear;

    .line 76
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    .line 77
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    .line 78
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinear;

    .line 79
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinear;

    .line 81
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->btnDelete:Landroid/widget/TextView;

    .line 82
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->btnConfirm:Landroid/widget/Button;

    .line 83
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->btnCancel:Landroid/widget/Button;

    .line 85
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 87
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    .line 89
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->gravity:I

    .line 91
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfoString:Ljava/lang/String;

    .line 268
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->themeColor:I

    .line 270
    const/4 v0, -0x2

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->backColor:I

    .line 272
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellFgAlpha:I

    .line 273
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellBgAlpha:I

    .line 274
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellTxAlpha:I

    .line 420
    new-instance v0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mClick:Landroid/view/View$OnClickListener;

    .line 94
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    .line 95
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mContext:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    .line 97
    iget v0, p2, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mOldWidgetId:I

    .line 98
    invoke-virtual {p2}, Lcom/lx/launcher8/bean/AppWidgetCell;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfoString:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030070

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mMainView:Landroid/view/View;

    .line 100
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030062

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->view:Landroid/view/View;

    .line 102
    new-instance v0, Lcom/lx/launcher8/cfg/DeskSetting;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 104
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->initView()V

    .line 106
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->initData()V

    .line 109
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->view:Landroid/view/View;

    const v1, 0x7f090191

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->scrollView:Landroid/widget/ScrollView;

    .line 110
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFadingEdgeLength(I)V

    .line 111
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 112
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->removeAllViews()V

    .line 113
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->scrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 114
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mMainView:Landroid/view/View;

    const/16 v1, 0x46

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 115
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;)Lcom/lx/launcher8/bean/AppWidgetCell;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->btnDelete:Landroid/widget/TextView;

    return-object v0
.end method

.method private addAppWidget(Landroid/content/Intent;)V
    .locals 6
    .parameter "data"

    .prologue
    const/16 v5, 0x9

    const/4 v4, -0x1

    .line 403
    const-string v3, "appWidgetId"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 405
    .local v1, appWidgetId:I
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v3

    iget-object v3, v3, Lcom/lx/launcher8/AnallApp;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    iget-object v3, v3, Lcom/lx/launcher8/AnallLauncher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 406
    invoke-virtual {v3, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 407
    .local v0, appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 409
    new-instance v2, Landroid/content/Intent;

    .line 410
    const-string v3, "android.appwidget.action.APPWIDGET_CONFIGURE"

    .line 409
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 412
    const-string v3, "appWidgetId"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 413
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v3, v2, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 418
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 416
    :cond_0
    invoke-virtual {p0, v5, v4, p1}, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0
.end method

.method private getIconImgMargin(FF)[F
    .locals 12
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v11, 0x40c0

    const/high16 v10, 0x4080

    const/high16 v9, 0x4100

    const/high16 v8, 0x4040

    .line 500
    const/4 v3, 0x0

    .local v3, l:F
    const/4 v5, 0x0

    .local v5, t:F
    const/4 v4, 0x0

    .local v4, r:F
    const/4 v0, 0x0

    .line 501
    .local v0, b:F
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v6, v6, Lcom/lx/launcher8/bean/AppWidgetCell;->spanX:I

    int-to-float v1, v6

    .line 502
    .local v1, cellX:F
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v6, v6, Lcom/lx/launcher8/bean/AppWidgetCell;->spanY:I

    int-to-float v2, v6

    .line 503
    .local v2, cellY:F
    div-float v6, v1, v2

    const/high16 v7, 0x4000

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    .line 504
    div-float v5, p2, v10

    .line 505
    div-float v0, p2, v10

    .line 534
    :cond_0
    :goto_0
    const/4 v6, 0x4

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v3, v6, v7

    const/4 v7, 0x1

    aput v5, v6, v7

    const/4 v7, 0x2

    aput v4, v6, v7

    const/4 v7, 0x3

    aput v0, v6, v7

    return-object v6

    .line 506
    :cond_1
    div-float v6, v1, v2

    cmpl-float v6, v6, v8

    if-nez v6, :cond_2

    .line 507
    div-float v5, p2, v8

    .line 508
    div-float v0, p2, v8

    goto :goto_0

    .line 509
    :cond_2
    div-float v6, v1, v2

    cmpl-float v6, v6, v10

    if-nez v6, :cond_3

    .line 510
    mul-float v6, p2, v8

    div-float v5, v6, v9

    .line 511
    mul-float v6, p2, v8

    div-float v0, v6, v9

    goto :goto_0

    .line 512
    :cond_3
    div-float v6, v1, v2

    const/high16 v7, 0x3f00

    cmpl-float v6, v6, v7

    if-nez v6, :cond_4

    .line 513
    div-float v3, p1, v10

    .line 514
    div-float v4, p1, v10

    goto :goto_0

    .line 515
    :cond_4
    div-float v6, v1, v2

    const v7, 0x3eaaaaab

    cmpl-float v6, v6, v7

    if-nez v6, :cond_5

    .line 516
    div-float v3, p1, v8

    .line 517
    div-float v4, p1, v8

    goto :goto_0

    .line 518
    :cond_5
    div-float v6, v1, v2

    const/high16 v7, 0x3e80

    cmpl-float v6, v6, v7

    if-nez v6, :cond_6

    .line 519
    mul-float v6, p1, v8

    div-float v3, v6, v9

    .line 520
    mul-float v6, p1, v8

    div-float v4, v6, v9

    goto :goto_0

    .line 521
    :cond_6
    div-float v6, v1, v2

    const/high16 v7, 0x3fc0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_7

    .line 522
    div-float v5, p2, v11

    .line 523
    div-float v0, p2, v11

    goto :goto_0

    .line 524
    :cond_7
    div-float v6, v1, v2

    const v7, 0x3faaaaab

    cmpl-float v6, v6, v7

    if-nez v6, :cond_8

    .line 525
    div-float v5, p2, v9

    .line 526
    div-float v0, p2, v9

    goto :goto_0

    .line 527
    :cond_8
    div-float v6, v1, v2

    const v7, 0x3f2aaaab

    cmpl-float v6, v6, v7

    if-nez v6, :cond_9

    .line 528
    div-float v3, p1, v11

    .line 529
    div-float v4, p1, v11

    goto :goto_0

    .line 530
    :cond_9
    div-float v6, v1, v2

    const/high16 v7, 0x3f40

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    .line 531
    div-float v3, p1, v9

    .line 532
    div-float v4, p1, v9

    goto/16 :goto_0
.end method


# virtual methods
.method public getBottomBtns()[Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->view:Landroid/view/View;

    return-object v0
.end method

.method protected initData()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 179
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->themeColor:I

    .line 181
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->selectIcon:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0124

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 184
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget-object v1, v1, Lcom/lx/launcher8/bean/AppWidgetCell;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 187
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0125

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 188
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a00ed

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 189
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0131

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 192
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v2, v2, Lcom/lx/launcher8/bean/AppWidgetCell;->spanX:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v2, v2, Lcom/lx/launcher8/bean/AppWidgetCell;->spanY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 193
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$3;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$3;-><init>(Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0053

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 203
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget-object v0, v0, Lcom/lx/launcher8/bean/AppWidgetCell;->appName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0, v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 204
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0132

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 207
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v0, v0, Lcom/lx/launcher8/bean/AppWidgetCell;->backColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 208
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    iget v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->themeColor:I

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setBottomColorView(I)V

    .line 209
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    invoke-static {}, Lcom/lx/launcher8/util/ColorManager;->getInstance()Lcom/lx/launcher8/util/ColorManager;

    move-result-object v1

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->themeColor:I

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/util/ColorManager;->getColorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 214
    :goto_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0115

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 217
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0166

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "100% "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0167

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "100% "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0168

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "100%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 218
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$4;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$4;-><init>(Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinear;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->btnDelete:Landroid/widget/TextView;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$5;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$5;-><init>(Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->btnConfirm:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->btnCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget-object v0, v0, Lcom/lx/launcher8/bean/AppWidgetCell;->appName:Ljava/lang/String;

    goto/16 :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v1, v1, Lcom/lx/launcher8/bean/AppWidgetCell;->backColor:I

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setBottomColorView(I)V

    .line 212
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    invoke-static {}, Lcom/lx/launcher8/util/ColorManager;->getInstance()Lcom/lx/launcher8/util/ColorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v2, v2, Lcom/lx/launcher8/bean/AppWidgetCell;->backColor:I

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/util/ColorManager;->getColorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_1
.end method

.method protected initView()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/high16 v6, -0x100

    .line 118
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901d1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->iconImg:Landroid/widget/ImageView;

    .line 119
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901d2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->selectIconBtn:Landroid/widget/Button;

    .line 120
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901cf

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->selectIcon:Landroid/widget/FrameLayout;

    .line 121
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901d0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    .line 122
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901d3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinear;

    .line 123
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901d4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinear;

    .line 124
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901d5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinear;

    .line 125
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901d6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    .line 126
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f090122

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    .line 127
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901d7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinear;

    .line 128
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901dd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinear;

    .line 132
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->view:Landroid/view/View;

    const v5, 0x7f090194

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->btnConfirm:Landroid/widget/Button;

    .line 133
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->view:Landroid/view/View;

    const v5, 0x7f090196

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->btnCancel:Landroid/widget/Button;

    .line 134
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->view:Landroid/view/View;

    const v5, 0x7f090198

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->btnDelete:Landroid/widget/TextView;

    .line 135
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->view:Landroid/view/View;

    const v5, 0x7f090195

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 136
    .local v2, confirmBtnText:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->view:Landroid/view/View;

    const v5, 0x7f090197

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 137
    .local v0, cancelBtnText:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->view:Landroid/view/View;

    const v5, 0x7f090067

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 138
    .local v3, showContentLinear:Landroid/widget/Button;
    new-instance v4, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$2;

    invoke-direct {v4, p0, v2, v0}, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$2;-><init>(Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->view:Landroid/view/View;

    const v5, 0x7f09005c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 155
    .local v1, confirmBottom:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v4

    if-eqz v4, :cond_0

    .line 158
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->btnConfirm:Landroid/widget/Button;

    const v5, 0x7f0200ab

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 159
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->btnCancel:Landroid/widget/Button;

    const v5, 0x7f0200a4

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 160
    const v4, 0x7f020175

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 161
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->btnDelete:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    const-string v4, "#313131"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 175
    :goto_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinear;

    invoke-virtual {v4, v8}, Lcom/lx/launcher8/view/SettingLinear;->setVisibility(I)V

    .line 176
    return-void

    .line 166
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->btnConfirm:Landroid/widget/Button;

    const v5, 0x7f0200aa

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 167
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->btnCancel:Landroid/widget/Button;

    const v5, 0x7f0200a3

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 168
    const v4, 0x7f020174

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 169
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->btnDelete:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    const-string v4, "#dddddd"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 15
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 341
    const/4 v12, -0x1

    move/from16 v0, p2

    if-eq v0, v12, :cond_0

    .line 342
    const/4 v12, 0x0

    .line 400
    :goto_0
    return v12

    .line 344
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 400
    :cond_1
    :goto_1
    :pswitch_0
    const/4 v12, 0x0

    goto :goto_0

    .line 346
    :pswitch_1
    const-string v12, "extral_value"

    const/4 v13, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 347
    .local v7, color:I
    iget-object v12, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iput v7, v12, Lcom/lx/launcher8/bean/AppWidgetCell;->backColor:I

    .line 348
    iget-object v12, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    invoke-virtual {v12, v7}, Lcom/lx/launcher8/view/SettingLinear;->setBottomColorView(I)V

    .line 349
    const-string v12, "extral_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 350
    .local v9, name:Ljava/lang/String;
    iget-object v12, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v9, v13, v14}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 351
    const/4 v12, 0x1

    goto :goto_0

    .line 353
    .end local v7           #color:I
    .end local v9           #name:Ljava/lang/String;
    :pswitch_2
    const-string v12, "extral_info"

    const v13, 0x10001

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 354
    .local v11, size:I
    iget-object v12, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    invoke-virtual {v12, v11}, Lcom/lx/launcher8/bean/AppWidgetCell;->setSize(I)V

    .line 355
    const/4 v12, 0x1

    goto :goto_0

    .line 357
    .end local v11           #size:I
    :pswitch_3
    const-string v12, "extral_value"

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 358
    .local v8, gravity:I
    iget-object v12, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    invoke-virtual {v12, v8}, Lcom/lx/launcher8/bean/AppWidgetCell;->setImgGravity(I)V

    goto :goto_1

    .line 361
    .end local v8           #gravity:I
    :pswitch_4
    const-string v12, "extral_value"

    const/16 v13, 0x64

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 362
    .local v1, alpha:I
    const-string v12, "extral_value1"

    const/16 v13, 0x64

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 363
    .local v2, alphaFG:I
    const-string v12, "extral_value2"

    const/16 v13, 0x64

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 364
    .local v3, alphaTX:I
    mul-int/lit16 v12, v1, 0xff

    div-int/lit8 v12, v12, 0x64

    rsub-int v1, v12, 0xff

    .line 365
    iget-object v12, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    invoke-virtual {v12, v1}, Lcom/lx/launcher8/bean/AppWidgetCell;->setCellAlphaBg(I)V

    .line 366
    mul-int/lit16 v12, v2, 0xff

    div-int/lit8 v12, v12, 0x64

    rsub-int v2, v12, 0xff

    .line 367
    iget-object v12, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    invoke-virtual {v12, v2}, Lcom/lx/launcher8/bean/AppWidgetCell;->setCellAlphaFg(I)V

    .line 368
    mul-int/lit16 v12, v3, 0xff

    div-int/lit8 v3, v12, 0x64

    .line 369
    iget-object v12, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    invoke-virtual {v12, v3}, Lcom/lx/launcher8/bean/AppWidgetCell;->setTextAlpha(I)V

    goto/16 :goto_1

    .line 372
    .end local v1           #alpha:I
    .end local v2           #alphaFG:I
    .end local v3           #alphaTX:I
    :pswitch_5
    const-string v12, "return-data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 373
    .local v6, bt:Landroid/graphics/Bitmap;
    if-nez v6, :cond_2

    invoke-static/range {p3 .. p3}, Lcom/lx/launcher8/util/Utils;->getIntentExtra(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 374
    :cond_2
    if-eqz v6, :cond_3

    .line 375
    iget-object v12, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iput-object v6, v12, Lcom/lx/launcher8/bean/AppWidgetCell;->backBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 377
    :cond_3
    const-string v12, "extral_info"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 378
    .local v10, path:Ljava/lang/String;
    iget-object v12, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget-object v13, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mContext:Landroid/content/Context;

    invoke-static {v13, v10}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    iput-object v13, v12, Lcom/lx/launcher8/bean/AppWidgetCell;->backBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 382
    .end local v6           #bt:Landroid/graphics/Bitmap;
    .end local v10           #path:Ljava/lang/String;
    :pswitch_6
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->addAppWidget(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 385
    :pswitch_7
    const-string v12, "appWidgetId"

    .line 386
    const/4 v13, -0x1

    .line 385
    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 387
    .local v5, appWidgetId:I
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v12

    iget-object v12, v12, Lcom/lx/launcher8/AnallApp;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    iget-object v12, v12, Lcom/lx/launcher8/AnallLauncher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 388
    invoke-virtual {v12, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    .line 391
    .local v4, appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    const/4 v12, -0x1

    if-eq v5, v12, :cond_1

    .line 392
    iget v12, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mOldWidgetId:I

    iget-object v13, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v13, v13, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    if-eq v12, v13, :cond_4

    iget-object v12, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v12, v12, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_4

    .line 393
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v12

    iget-object v12, v12, Lcom/lx/launcher8/AnallApp;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    iget-object v12, v12, Lcom/lx/launcher8/AnallLauncher;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v13, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v13, v13, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    invoke-virtual {v12, v13}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 395
    :cond_4
    iget-object v12, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iput v5, v12, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    .line 396
    iget-object v12, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget-object v13, v4, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iput-object v13, v12, Lcom/lx/launcher8/bean/AppWidgetCell;->appName:Ljava/lang/String;

    goto/16 :goto_1

    .line 344
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public onBack()Z
    .locals 3

    .prologue
    .line 475
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfoString:Ljava/lang/String;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    invoke-virtual {v1}, Lcom/lx/launcher8/bean/AppWidgetCell;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    new-instance v0, Lcom/lx/launcher8/view/PopupDialog;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mContext:Landroid/content/Context;

    const v2, 0x7f0a01c4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;->setTitle(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0134

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;->setMsg(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 477
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0077

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$6;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$6;-><init>(Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;)V

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setOkButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 487
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0078

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$7;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView$7;-><init>(Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;)V

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setCancelButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 494
    invoke-virtual {v0}, Lcom/lx/launcher8/view/PopupDialog;->show()V

    .line 495
    const/4 v0, 0x1

    .line 497
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 15

    .prologue
    const/high16 v10, 0x42f0

    const/4 v14, -0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 278
    iget v8, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->backColor:I

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v9, v9, Lcom/lx/launcher8/bean/AppWidgetCell;->backColor:I

    if-eq v8, v9, :cond_0

    .line 279
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v8, v8, Lcom/lx/launcher8/bean/AppWidgetCell;->backColor:I

    if-ne v8, v14, :cond_5

    .line 280
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    iget v9, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->themeColor:I

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 284
    :goto_0
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v8, v8, Lcom/lx/launcher8/bean/AppWidgetCell;->backColor:I

    iput v8, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->backColor:I

    .line 287
    :cond_0
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    invoke-virtual {v8}, Lcom/lx/launcher8/bean/AppWidgetCell;->getImgGravity()I

    move-result v3

    .line 289
    .local v3, gravity:I
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v8, 0x11

    invoke-direct {v6, v14, v14, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 290
    .local v6, p:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mContext:Landroid/content/Context;

    invoke-static {v8, v10}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v8

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mContext:Landroid/content/Context;

    invoke-static {v9, v10}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v9

    invoke-direct {p0, v8, v9}, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->getIconImgMargin(FF)[F

    move-result-object v5

    .line 291
    .local v5, ms:[F
    aget v8, v5, v12

    float-to-int v8, v8

    const/4 v9, 0x1

    aget v9, v5, v9

    float-to-int v9, v9

    const/4 v10, 0x2

    aget v10, v5, v10

    float-to-int v10, v10

    const/4 v11, 0x3

    aget v11, v5, v11

    float-to-int v11, v11

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 292
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x4188

    invoke-direct {v7, v14, v14, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 295
    .local v7, params:Landroid/widget/LinearLayout$LayoutParams;
    if-nez v3, :cond_6

    .line 296
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->iconImg:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 297
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mContext:Landroid/content/Context;

    const/high16 v9, 0x4120

    invoke-static {v8, v9}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v8

    const/high16 v9, 0x3f00

    add-float v4, v8, v9

    .line 298
    .local v4, margin:F
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v8, v8, Lcom/lx/launcher8/bean/AppWidgetCell;->spanX:I

    int-to-float v8, v8

    div-float v8, v4, v8

    float-to-int v8, v8

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v9, v9, Lcom/lx/launcher8/bean/AppWidgetCell;->spanY:I

    int-to-float v9, v9

    div-float v9, v4, v9

    float-to-int v9, v9

    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v10, v10, Lcom/lx/launcher8/bean/AppWidgetCell;->spanX:I

    int-to-float v10, v10

    div-float v10, v4, v10

    float-to-int v10, v10

    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v11, v11, Lcom/lx/launcher8/bean/AppWidgetCell;->spanY:I

    int-to-float v11, v11

    div-float v11, v4, v11

    float-to-int v11, v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 303
    .end local v4           #margin:F
    :goto_1
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->iconImg:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    iget v8, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->gravity:I

    if-eq v8, v3, :cond_1

    .line 306
    if-nez v3, :cond_7

    .line 307
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a00ed

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v13, v12}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 311
    :goto_2
    iput v3, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->gravity:I

    .line 314
    :cond_1
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget-object v8, v8, Lcom/lx/launcher8/bean/AppWidgetCell;->backBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_2

    .line 315
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->iconImg:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget-object v9, v9, Lcom/lx/launcher8/bean/AppWidgetCell;->backBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 318
    :cond_2
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    invoke-virtual {v8}, Lcom/lx/launcher8/bean/AppWidgetCell;->getCellAlphaFg()I

    move-result v1

    .line 319
    .local v1, cellFgAlpha:I
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    invoke-virtual {v8}, Lcom/lx/launcher8/bean/AppWidgetCell;->getCellAlphaBg()I

    move-result v0

    .line 320
    .local v0, cellBgAlpha:I
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    invoke-virtual {v8}, Lcom/lx/launcher8/bean/AppWidgetCell;->getTextAlpha()I

    move-result v2

    .line 321
    .local v2, cellTxAlpha:I
    iget v8, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellFgAlpha:I

    if-ne v8, v1, :cond_3

    iget v8, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellBgAlpha:I

    if-ne v8, v0, :cond_3

    iget v8, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellTxAlpha:I

    if-eq v8, v2, :cond_4

    .line 322
    :cond_3
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    const v11, 0x7f0a0166

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int/lit8 v10, v0, 0x64

    div-int/lit16 v10, v10, 0xff

    rsub-int/lit8 v10, v10, 0x64

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "% "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    const v11, 0x7f0a0167

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    mul-int/lit8 v10, v1, 0x64

    div-int/lit16 v10, v10, 0xff

    rsub-int/lit8 v10, v10, 0x64

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "% "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    const v11, 0x7f0a0168

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    mul-int/lit8 v10, v2, 0x64

    div-int/lit16 v10, v10, 0xff

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v13, v12}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 323
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellFgAlpha:I

    .line 324
    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellBgAlpha:I

    .line 325
    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellTxAlpha:I

    .line 328
    :cond_4
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v10, v10, Lcom/lx/launcher8/bean/AppWidgetCell;->spanX:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v10, v10, Lcom/lx/launcher8/bean/AppWidgetCell;->spanY:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v13, v12}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 329
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget-object v9, v9, Lcom/lx/launcher8/bean/AppWidgetCell;->appName:Ljava/lang/String;

    invoke-virtual {v8, v9, v13, v12}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 330
    return-void

    .line 282
    .end local v0           #cellBgAlpha:I
    .end local v1           #cellFgAlpha:I
    .end local v2           #cellTxAlpha:I
    .end local v3           #gravity:I
    .end local v5           #ms:[F
    .end local v6           #p:Landroid/widget/FrameLayout$LayoutParams;
    .end local v7           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v9, v9, Lcom/lx/launcher8/bean/AppWidgetCell;->backColor:I

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 300
    .restart local v3       #gravity:I
    .restart local v5       #ms:[F
    .restart local v6       #p:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v7       #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->iconImg:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 301
    invoke-virtual {v7, v12, v12, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    .line 309
    :cond_7
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a00ec

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v13, v12}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_2
.end method

.method public onViewMovingFront()V
    .locals 0

    .prologue
    .line 544
    return-void
.end method
