.class public Lcom/lx/launcher8/setting/view/WidgetSettingView;
.super Ljava/lang/Object;
.source "WidgetSettingView.java"

# interfaces
.implements Lcom/lx/launcher8/setting/view/SettingView;


# static fields
.field static final BUTTON_CANCEL:I = 0x14

.field static final BUTTON_CONFIRM:I = 0xa

.field static final REQUEST_CREATE_APPWIDGET:I = 0x6

.field static final REQUEST_PICK_COLOR:I = 0x1

.field static final REQUEST_PICK_PIC:I = 0x4

.field static final REQUEST_PICK_SIZE:I = 0x2

.field static final REQUEST_PICK_WIDGET:I = 0x5

.field static final REQUEST_PIC_POSITION:I = 0x7

.field static final REQUEST_TILE_BG_ALPHA:I = 0x3


# instance fields
.field private appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private backColor:I

.field private bindingApp:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private bottom:Landroid/widget/LinearLayout;

.field private btnCancel:Landroid/widget/Button;

.field private btnConfirm:Landroid/widget/Button;

.field private btnDelete:Landroid/widget/Button;

.field private cellBgAlpha:I

.field private cellFgAlpha:I

.field private cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

.field private cellInfoString:Ljava/lang/String;

.field private cellTxAlpha:I

.field private deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

.field private gravity:I

.field private iconImg:Landroid/widget/ImageView;

.field private iconImgBg:Landroid/widget/LinearLayout;

.field private ll:Landroid/widget/LinearLayout;

.field private mAct:Landroid/app/Activity;

.field private mClick:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mMainView:Landroid/view/View;

.field private mOldWidgetId:I

.field private picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private scrollView:Landroid/widget/ScrollView;

.field private selectIcon:Landroid/widget/FrameLayout;

.field private setTileSize:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private themeColor:I

.field private tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private tileBgTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private tileShowFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private tileSpecialFunc:Lcom/lx/launcher8/view/SettingLinearLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/lx/launcher8/bean/AppWidgetCell;)V
    .locals 6
    .parameter "act"
    .parameter "cellInfo"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mContext:Landroid/content/Context;

    .line 53
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    .line 55
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mMainView:Landroid/view/View;

    .line 57
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->scrollView:Landroid/widget/ScrollView;

    .line 59
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->ll:Landroid/widget/LinearLayout;

    .line 61
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->iconImg:Landroid/widget/ImageView;

    .line 62
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->selectIcon:Landroid/widget/FrameLayout;

    .line 63
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    .line 64
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 65
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 66
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 67
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 68
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 69
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 70
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 71
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->tileSpecialFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 72
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->btnDelete:Landroid/widget/Button;

    .line 73
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->btnConfirm:Landroid/widget/Button;

    .line 74
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->btnCancel:Landroid/widget/Button;

    .line 75
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->bottom:Landroid/widget/LinearLayout;

    .line 77
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 79
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    .line 82
    iput v3, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->gravity:I

    .line 83
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfoString:Ljava/lang/String;

    .line 284
    iput v3, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->themeColor:I

    .line 286
    iput v4, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->backColor:I

    .line 288
    iput v3, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellFgAlpha:I

    .line 289
    iput v3, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellBgAlpha:I

    .line 290
    iput v3, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellTxAlpha:I

    .line 420
    new-instance v0, Lcom/lx/launcher8/setting/view/WidgetSettingView$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/view/WidgetSettingView$1;-><init>(Lcom/lx/launcher8/setting/view/WidgetSettingView;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mClick:Landroid/view/View$OnClickListener;

    .line 86
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    .line 87
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    .line 89
    iget v0, p2, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    iput v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mOldWidgetId:I

    .line 90
    invoke-virtual {p2}, Lcom/lx/launcher8/bean/AppWidgetCell;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfoString:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006f

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mMainView:Landroid/view/View;

    .line 93
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/WidgetSettingView;->initView()V

    .line 95
    new-instance v0, Lcom/lx/launcher8/cfg/DeskSetting;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 97
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/WidgetSettingView;->initData()V

    .line 99
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->scrollView:Landroid/widget/ScrollView;

    .line 100
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setFadingEdgeLength(I)V

    .line 101
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->scrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 104
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->ll:Landroid/widget/LinearLayout;

    .line 105
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->ll:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 106
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->ll:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->scrollView:Landroid/widget/ScrollView;

    const/high16 v2, 0x3f80

    invoke-static {v3, v4, v2}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->ll:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->bottom:Landroid/widget/LinearLayout;

    invoke-static {v3, v4}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 110
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/view/WidgetSettingView;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/view/WidgetSettingView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/view/WidgetSettingView;)Lcom/lx/launcher8/bean/AppWidgetCell;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/view/WidgetSettingView;)Lcom/lx/launcher8/view/SettingLinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    return-object v0
.end method

.method private addAppWidget(Landroid/content/Intent;)V
    .locals 6
    .parameter "data"

    .prologue
    const/4 v5, 0x6

    const/4 v4, -0x1

    .line 467
    const-string v3, "appWidgetId"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 469
    .local v1, appWidgetId:I
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v3

    iget-object v3, v3, Lcom/lx/launcher8/AnallApp;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    iget-object v3, v3, Lcom/lx/launcher8/AnallLauncher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 470
    invoke-virtual {v3, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 471
    .local v0, appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 473
    new-instance v2, Landroid/content/Intent;

    .line 474
    const-string v3, "android.appwidget.action.APPWIDGET_CONFIGURE"

    .line 473
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 475
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 476
    const-string v3, "appWidgetId"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 477
    iget-object v3, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v3, v2, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 482
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 480
    :cond_0
    invoke-virtual {p0, v5, v4, p1}, Lcom/lx/launcher8/setting/view/WidgetSettingView;->onActivityResult(IILandroid/content/Intent;)Z

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

    .line 520
    const/4 v3, 0x0

    .local v3, l:F
    const/4 v5, 0x0

    .local v5, t:F
    const/4 v4, 0x0

    .local v4, r:F
    const/4 v0, 0x0

    .line 521
    .local v0, b:F
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v6, v6, Lcom/lx/launcher8/bean/AppWidgetCell;->spanX:I

    int-to-float v1, v6

    .line 522
    .local v1, cellX:F
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v6, v6, Lcom/lx/launcher8/bean/AppWidgetCell;->spanY:I

    int-to-float v2, v6

    .line 523
    .local v2, cellY:F
    div-float v6, v1, v2

    const/high16 v7, 0x4000

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    .line 524
    div-float v5, p2, v10

    .line 525
    div-float v0, p2, v10

    .line 554
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

    .line 526
    :cond_1
    div-float v6, v1, v2

    cmpl-float v6, v6, v8

    if-nez v6, :cond_2

    .line 527
    div-float v5, p2, v8

    .line 528
    div-float v0, p2, v8

    goto :goto_0

    .line 529
    :cond_2
    div-float v6, v1, v2

    cmpl-float v6, v6, v10

    if-nez v6, :cond_3

    .line 530
    mul-float v6, p2, v8

    div-float v5, v6, v9

    .line 531
    mul-float v6, p2, v8

    div-float v0, v6, v9

    goto :goto_0

    .line 532
    :cond_3
    div-float v6, v1, v2

    const/high16 v7, 0x3f00

    cmpl-float v6, v6, v7

    if-nez v6, :cond_4

    .line 533
    div-float v3, p1, v10

    .line 534
    div-float v4, p1, v10

    goto :goto_0

    .line 535
    :cond_4
    div-float v6, v1, v2

    const v7, 0x3eaaaaab

    cmpl-float v6, v6, v7

    if-nez v6, :cond_5

    .line 536
    div-float v3, p1, v8

    .line 537
    div-float v4, p1, v8

    goto :goto_0

    .line 538
    :cond_5
    div-float v6, v1, v2

    const/high16 v7, 0x3e80

    cmpl-float v6, v6, v7

    if-nez v6, :cond_6

    .line 539
    mul-float v6, p1, v8

    div-float v3, v6, v9

    .line 540
    mul-float v6, p1, v8

    div-float v4, v6, v9

    goto :goto_0

    .line 541
    :cond_6
    div-float v6, v1, v2

    const/high16 v7, 0x3fc0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_7

    .line 542
    div-float v5, p2, v11

    .line 543
    div-float v0, p2, v11

    goto :goto_0

    .line 544
    :cond_7
    div-float v6, v1, v2

    const v7, 0x3faaaaab

    cmpl-float v6, v6, v7

    if-nez v6, :cond_8

    .line 545
    div-float v5, p2, v9

    .line 546
    div-float v0, p2, v9

    goto :goto_0

    .line 547
    :cond_8
    div-float v6, v1, v2

    const v7, 0x3f2aaaab

    cmpl-float v6, v6, v7

    if-nez v6, :cond_9

    .line 548
    div-float v3, p1, v11

    .line 549
    div-float v4, p1, v11

    goto :goto_0

    .line 550
    :cond_9
    div-float v6, v1, v2

    const/high16 v7, 0x3f40

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    .line 551
    div-float v3, p1, v9

    .line 552
    div-float v4, p1, v9

    goto/16 :goto_0
.end method


# virtual methods
.method public getBottomBtns()[Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 559
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->ll:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected initData()V
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 171
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->themeColor:I

    .line 173
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->selectIcon:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->selectIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 176
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget-object v1, v1, Lcom/lx/launcher8/bean/AppWidgetCell;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a00c3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterEditText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IF)V

    .line 177
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v8, v4, v8, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setPadding(IIII)V

    .line 179
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0130

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#707070"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 180
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a00ed

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 181
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 182
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0131

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 185
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v2, v2, Lcom/lx/launcher8/bean/AppWidgetCell;->spanX:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v2, v2, Lcom/lx/launcher8/bean/AppWidgetCell;->spanY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 186
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 187
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v1, Lcom/lx/launcher8/setting/view/WidgetSettingView$2;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/view/WidgetSettingView$2;-><init>(Lcom/lx/launcher8/setting/view/WidgetSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0053

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 196
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget-object v1, v1, Lcom/lx/launcher8/bean/AppWidgetCell;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 197
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 198
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0132

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 201
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v0, v0, Lcom/lx/launcher8/bean/AppWidgetCell;->backColor:I

    if-ne v0, v7, :cond_1

    .line 202
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->themeColor:I

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    .line 206
    :goto_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 207
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0115

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 210
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0166

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "100% "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mAct:Landroid/app/Activity;

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

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 211
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 212
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v1, Lcom/lx/launcher8/setting/view/WidgetSettingView$3;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/view/WidgetSettingView$3;-><init>(Lcom/lx/launcher8/setting/view/WidgetSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    const-string v1, "\u74f7\u5757\u5173\u8054\u7684\u901a\u77e5"

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 231
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    const-string v1, "\u9009\u62e9\u5728\u74f7\u5757\u4e0a\u663e\u793a\u672a\u63a5\u6765\u7535\u3001\u672a\u8bfb\u77ed\u4fe1\u7b49\u6570\u91cf"

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterBottomText(Ljava/lang/CharSequence;IF)V

    .line 232
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    const-string v1, "\u65e0"

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 233
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 234
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v1, Lcom/lx/launcher8/setting/view/WidgetSettingView$4;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/view/WidgetSettingView$4;-><init>(Lcom/lx/launcher8/setting/view/WidgetSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->tileSpecialFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    const-string v1, "\u52a8\u6001\u56fe\u5e93\u56fe\u7247"

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 242
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->tileSpecialFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    const-string v1, "\u65e0"

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 243
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->tileSpecialFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 244
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->tileSpecialFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v1, Lcom/lx/launcher8/setting/view/WidgetSettingView$5;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/view/WidgetSettingView$5;-><init>(Lcom/lx/launcher8/setting/view/WidgetSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->btnDelete:Landroid/widget/Button;

    new-instance v1, Lcom/lx/launcher8/setting/view/WidgetSettingView$6;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/view/WidgetSettingView$6;-><init>(Lcom/lx/launcher8/setting/view/WidgetSettingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cell_delete_or_not"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->btnDelete:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->btnConfirm:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->btnCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v1, v1, Lcom/lx/launcher8/bean/AppWidgetCell;->backColor:I

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    goto/16 :goto_0
.end method

.method protected initView()V
    .locals 13

    .prologue
    const/high16 v12, 0x4160

    const/high16 v11, 0x3f80

    const/4 v10, -0x2

    const/high16 v9, 0x4120

    const/4 v8, 0x0

    .line 113
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901d1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->iconImg:Landroid/widget/ImageView;

    .line 114
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901cf

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->selectIcon:Landroid/widget/FrameLayout;

    .line 115
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901d0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    .line 116
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901d3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 117
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901d4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 118
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901d5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 119
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901d6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 120
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f090122

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 121
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901d7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 122
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901dd

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 123
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901e5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->tileSpecialFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 124
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f090147

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->btnDelete:Landroid/widget/Button;

    .line 126
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->bottom:Landroid/widget/LinearLayout;

    .line 127
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->bottom:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 128
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->bottom:Landroid/widget/LinearLayout;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 130
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->bottom:Landroid/widget/LinearLayout;

    const-string v6, "#dfe1e1e1"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 132
    new-instance v5, Landroid/widget/Button;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->btnConfirm:Landroid/widget/Button;

    .line 133
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->btnConfirm:Landroid/widget/Button;

    const v6, 0x7f0200ac

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 134
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->btnConfirm:Landroid/widget/Button;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    const v7, 0x7f0a0077

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->btnConfirm:Landroid/widget/Button;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v12}, Landroid/widget/Button;->setTextSize(IF)V

    .line 136
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->btnConfirm:Landroid/widget/Button;

    const/high16 v6, -0x100

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 137
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->btnConfirm:Landroid/widget/Button;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mContext:Landroid/content/Context;

    invoke-static {v6, v9}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mContext:Landroid/content/Context;

    invoke-static {v7, v9}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v8, v6, v8, v7}, Landroid/widget/Button;->setPadding(IIII)V

    .line 138
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->btnConfirm:Landroid/widget/Button;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setId(I)V

    .line 139
    invoke-static {v10, v10, v11}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 141
    .local v3, params1:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->btnConfirm:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    new-instance v5, Landroid/widget/Button;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->btnCancel:Landroid/widget/Button;

    .line 143
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->btnCancel:Landroid/widget/Button;

    const v6, 0x7f0200ac

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 144
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->btnCancel:Landroid/widget/Button;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    const v7, 0x7f0a0078

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->btnCancel:Landroid/widget/Button;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v12}, Landroid/widget/Button;->setTextSize(IF)V

    .line 146
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->btnCancel:Landroid/widget/Button;

    const/high16 v6, -0x100

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 147
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->btnCancel:Landroid/widget/Button;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mContext:Landroid/content/Context;

    invoke-static {v6, v9}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mContext:Landroid/content/Context;

    invoke-static {v7, v9}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v8, v6, v8, v7}, Landroid/widget/Button;->setPadding(IIII)V

    .line 148
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->btnCancel:Landroid/widget/Button;

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setId(I)V

    .line 149
    invoke-static {v10, v10, v11}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 151
    .local v4, params2:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 154
    .local v2, lineParams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, 0x1

    invoke-virtual {v2, v8, v5, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 155
    new-instance v0, Landroid/view/View;

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 156
    .local v0, line1:Landroid/view/View;
    const-string v5, "#ffffff"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 157
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    new-instance v1, Landroid/view/View;

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 159
    .local v1, line2:Landroid/view/View;
    const-string v5, "#a0a0a0"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 160
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->bottom:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->btnConfirm:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->bottom:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 164
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->bottom:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 165
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->bottom:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 168
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 360
    const/4 v10, -0x1

    if-eq p2, v10, :cond_0

    .line 361
    const/4 v10, 0x0

    .line 417
    :goto_0
    return v10

    .line 363
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 417
    :cond_1
    :goto_1
    const/4 v10, 0x0

    goto :goto_0

    .line 365
    :pswitch_0
    const-string v10, "extral_value"

    const/4 v11, -0x1

    invoke-virtual {p3, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 366
    .local v6, color:I
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iput v6, v10, Lcom/lx/launcher8/bean/AppWidgetCell;->backColor:I

    .line 367
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v10, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    goto :goto_1

    .line 370
    .end local v6           #color:I
    :pswitch_1
    const-string v10, "extral_info"

    const v11, 0x10001

    invoke-virtual {p3, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 371
    .local v9, size:I
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    invoke-virtual {v10, v9}, Lcom/lx/launcher8/bean/AppWidgetCell;->setSize(I)V

    goto :goto_1

    .line 374
    .end local v9           #size:I
    :pswitch_2
    const-string v10, "extral_value"

    const/4 v11, 0x0

    invoke-virtual {p3, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 375
    .local v7, gravity:I
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    invoke-virtual {v10, v7}, Lcom/lx/launcher8/bean/AppWidgetCell;->setImgGravity(I)V

    goto :goto_1

    .line 378
    .end local v7           #gravity:I
    :pswitch_3
    const-string v10, "return-data"

    invoke-virtual {p3, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 379
    .local v5, bt:Landroid/graphics/Bitmap;
    if-nez v5, :cond_2

    invoke-static {p3}, Lcom/lx/launcher8/util/Utils;->getIntentExtra(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 380
    :cond_2
    if-eqz v5, :cond_3

    .line 381
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iput-object v5, v10, Lcom/lx/launcher8/bean/AppWidgetCell;->backBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 383
    :cond_3
    const-string v10, "extral_info"

    invoke-virtual {p3, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 384
    .local v8, path:Ljava/lang/String;
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget-object v11, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mContext:Landroid/content/Context;

    invoke-static {v11, v8}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    iput-object v11, v10, Lcom/lx/launcher8/bean/AppWidgetCell;->backBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 388
    .end local v5           #bt:Landroid/graphics/Bitmap;
    .end local v8           #path:Ljava/lang/String;
    :pswitch_4
    const-string v10, "extral_value"

    const/16 v11, 0x64

    invoke-virtual {p3, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 389
    .local v0, alpha:I
    const-string v10, "extral_value1"

    const/16 v11, 0x64

    invoke-virtual {p3, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 390
    .local v1, alphaFG:I
    const-string v10, "extral_value2"

    const/16 v11, 0x64

    invoke-virtual {p3, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 391
    .local v2, alphaTX:I
    mul-int/lit16 v10, v0, 0xff

    div-int/lit8 v10, v10, 0x64

    rsub-int v0, v10, 0xff

    .line 392
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    invoke-virtual {v10, v0}, Lcom/lx/launcher8/bean/AppWidgetCell;->setCellAlphaBg(I)V

    .line 393
    mul-int/lit16 v10, v1, 0xff

    div-int/lit8 v10, v10, 0x64

    rsub-int v1, v10, 0xff

    .line 394
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    invoke-virtual {v10, v1}, Lcom/lx/launcher8/bean/AppWidgetCell;->setCellAlphaFg(I)V

    .line 395
    mul-int/lit16 v10, v2, 0xff

    div-int/lit8 v2, v10, 0x64

    .line 396
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    invoke-virtual {v10, v2}, Lcom/lx/launcher8/bean/AppWidgetCell;->setTextAlpha(I)V

    goto/16 :goto_1

    .line 399
    .end local v0           #alpha:I
    .end local v1           #alphaFG:I
    .end local v2           #alphaTX:I
    :pswitch_5
    invoke-direct {p0, p3}, Lcom/lx/launcher8/setting/view/WidgetSettingView;->addAppWidget(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 402
    :pswitch_6
    const-string v10, "appWidgetId"

    .line 403
    const/4 v11, -0x1

    .line 402
    invoke-virtual {p3, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 404
    .local v4, appWidgetId:I
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v10

    iget-object v10, v10, Lcom/lx/launcher8/AnallApp;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    iget-object v10, v10, Lcom/lx/launcher8/AnallLauncher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 405
    invoke-virtual {v10, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    .line 408
    .local v3, appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    const/4 v10, -0x1

    if-eq v4, v10, :cond_1

    .line 409
    iget v10, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mOldWidgetId:I

    iget-object v11, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v11, v11, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    if-eq v10, v11, :cond_4

    iget-object v10, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v10, v10, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4

    .line 410
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v10

    iget-object v10, v10, Lcom/lx/launcher8/AnallApp;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    iget-object v10, v10, Lcom/lx/launcher8/AnallLauncher;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v11, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v11, v11, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    invoke-virtual {v10, v11}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 412
    :cond_4
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iput v4, v10, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    .line 413
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget-object v11, v3, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iput-object v11, v10, Lcom/lx/launcher8/bean/AppWidgetCell;->appName:Ljava/lang/String;

    goto/16 :goto_1

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public onBack()Z
    .locals 7

    .prologue
    .line 490
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfoString:Ljava/lang/String;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    invoke-virtual {v6}, Lcom/lx/launcher8/bean/AppWidgetCell;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget-object v5, v5, Lcom/lx/launcher8/bean/AppWidgetCell;->title:Ljava/lang/String;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->getEditText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 491
    :cond_0
    new-instance v2, Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mContext:Landroid/content/Context;

    const v6, 0x7f0e0005

    invoke-direct {v2, v5, v6}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;-><init>(Landroid/content/Context;I)V

    .line 492
    .local v2, dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;
    new-instance v5, Lcom/lx/launcher8/setting/view/WidgetSettingView$7;

    invoke-direct {v5, p0, v2}, Lcom/lx/launcher8/setting/view/WidgetSettingView$7;-><init>(Lcom/lx/launcher8/setting/view/WidgetSettingView;Lcom/lx/launcher8/setting/view/DialogSaveTheme;)V

    invoke-virtual {v2, v5}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mContext:Landroid/content/Context;

    const v6, 0x7f0a01c4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 510
    .local v4, title:Ljava/lang/String;
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0134

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, about:Ljava/lang/String;
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0077

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 512
    .local v3, ok:Ljava/lang/String;
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0078

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 513
    .local v1, cancel:Ljava/lang/String;
    invoke-virtual {v2, v4, v0, v3, v1}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->createWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->show()V

    .line 514
    const/4 v5, 0x1

    .line 516
    .end local v0           #about:Ljava/lang/String;
    .end local v1           #cancel:Ljava/lang/String;
    .end local v2           #dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;
    .end local v3           #ok:Ljava/lang/String;
    .end local v4           #title:Ljava/lang/String;
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 15

    .prologue
    const/high16 v10, 0x42dc

    const/4 v14, -0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 297
    iget v8, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->backColor:I

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v9, v9, Lcom/lx/launcher8/bean/AppWidgetCell;->backColor:I

    if-eq v8, v9, :cond_0

    .line 298
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v8, v8, Lcom/lx/launcher8/bean/AppWidgetCell;->backColor:I

    if-ne v8, v14, :cond_5

    .line 299
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    iget v9, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->themeColor:I

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 303
    :goto_0
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v8, v8, Lcom/lx/launcher8/bean/AppWidgetCell;->backColor:I

    iput v8, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->backColor:I

    .line 306
    :cond_0
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    invoke-virtual {v8}, Lcom/lx/launcher8/bean/AppWidgetCell;->getImgGravity()I

    move-result v3

    .line 308
    .local v3, gravity:I
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v8, 0x11

    invoke-direct {v6, v14, v14, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 309
    .local v6, p:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mContext:Landroid/content/Context;

    invoke-static {v8, v10}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v8

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mContext:Landroid/content/Context;

    invoke-static {v9, v10}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v9

    invoke-direct {p0, v8, v9}, Lcom/lx/launcher8/setting/view/WidgetSettingView;->getIconImgMargin(FF)[F

    move-result-object v5

    .line 310
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

    .line 311
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x4188

    invoke-direct {v7, v14, v14, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 314
    .local v7, params:Landroid/widget/LinearLayout$LayoutParams;
    if-nez v3, :cond_6

    .line 315
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->iconImg:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 316
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mContext:Landroid/content/Context;

    const/high16 v9, 0x4120

    invoke-static {v8, v9}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v8

    const/high16 v9, 0x3f00

    add-float v4, v8, v9

    .line 317
    .local v4, margin:F
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v8, v8, Lcom/lx/launcher8/bean/AppWidgetCell;->spanX:I

    int-to-float v8, v8

    div-float v8, v4, v8

    float-to-int v8, v8

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v9, v9, Lcom/lx/launcher8/bean/AppWidgetCell;->spanY:I

    int-to-float v9, v9

    div-float v9, v4, v9

    float-to-int v9, v9

    iget-object v10, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v10, v10, Lcom/lx/launcher8/bean/AppWidgetCell;->spanX:I

    int-to-float v10, v10

    div-float v10, v4, v10

    float-to-int v10, v10

    iget-object v11, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v11, v11, Lcom/lx/launcher8/bean/AppWidgetCell;->spanY:I

    int-to-float v11, v11

    div-float v11, v4, v11

    float-to-int v11, v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 322
    .end local v4           #margin:F
    :goto_1
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->iconImg:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget-object v9, v9, Lcom/lx/launcher8/bean/AppWidgetCell;->appName:Ljava/lang/String;

    invoke-virtual {v8, v9, v12, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 325
    iget v8, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->gravity:I

    if-eq v8, v3, :cond_1

    .line 326
    if-nez v3, :cond_7

    .line 327
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a00ed

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v12, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 331
    :goto_2
    iput v3, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->gravity:I

    .line 334
    :cond_1
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget-object v8, v8, Lcom/lx/launcher8/bean/AppWidgetCell;->backBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_2

    .line 335
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->iconImg:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget-object v9, v9, Lcom/lx/launcher8/bean/AppWidgetCell;->backBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 338
    :cond_2
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    invoke-virtual {v8}, Lcom/lx/launcher8/bean/AppWidgetCell;->getCellAlphaFg()I

    move-result v1

    .line 339
    .local v1, cellFgAlpha:I
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    invoke-virtual {v8}, Lcom/lx/launcher8/bean/AppWidgetCell;->getCellAlphaBg()I

    move-result v0

    .line 340
    .local v0, cellBgAlpha:I
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    invoke-virtual {v8}, Lcom/lx/launcher8/bean/AppWidgetCell;->getTextAlpha()I

    move-result v2

    .line 341
    .local v2, cellTxAlpha:I
    iget v8, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellFgAlpha:I

    if-ne v8, v1, :cond_3

    iget v8, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellBgAlpha:I

    if-ne v8, v0, :cond_3

    iget v8, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellTxAlpha:I

    if-eq v8, v2, :cond_4

    .line 342
    :cond_3
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mAct:Landroid/app/Activity;

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

    iget-object v10, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mAct:Landroid/app/Activity;

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

    const-string v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v12, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 343
    iput v1, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellFgAlpha:I

    .line 344
    iput v0, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellBgAlpha:I

    .line 345
    iput v2, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellTxAlpha:I

    .line 348
    :cond_4
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v10, v10, Lcom/lx/launcher8/bean/AppWidgetCell;->spanX:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v10, v10, Lcom/lx/launcher8/bean/AppWidgetCell;->spanY:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v12, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 349
    return-void

    .line 301
    .end local v0           #cellBgAlpha:I
    .end local v1           #cellFgAlpha:I
    .end local v2           #cellTxAlpha:I
    .end local v3           #gravity:I
    .end local v5           #ms:[F
    .end local v6           #p:Landroid/widget/FrameLayout$LayoutParams;
    .end local v7           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    iget v9, v9, Lcom/lx/launcher8/bean/AppWidgetCell;->backColor:I

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 319
    .restart local v3       #gravity:I
    .restart local v5       #ms:[F
    .restart local v6       #p:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v7       #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->iconImg:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 320
    invoke-virtual {v7, v12, v12, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    .line 329
    :cond_7
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/WidgetSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a00ec

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v12, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    goto/16 :goto_2
.end method

.method public onViewMovingFront()V
    .locals 0

    .prologue
    .line 564
    return-void
.end method
