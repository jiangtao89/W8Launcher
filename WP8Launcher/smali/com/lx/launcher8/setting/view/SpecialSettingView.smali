.class public Lcom/lx/launcher8/setting/view/SpecialSettingView;
.super Ljava/lang/Object;
.source "SpecialSettingView.java"

# interfaces
.implements Lcom/lx/launcher8/setting/view/SettingView;


# static fields
.field static final BUTTON_CANCEL:I = 0x14

.field static final BUTTON_CONFIRM:I = 0xa

.field static final REQUEST_PICK_APP:I = 0x3

.field static final REQUEST_PICK_COLOR:I = 0x1

.field static final REQUEST_PICK_PIC:I = 0x5

.field static final REQUEST_PICK_SIZE:I = 0x2

.field static final REQUEST_PIC_POSITION:I = 0x7

.field static final REQUEST_TEXT_STYLE:I = 0x6

.field static final REQUEST_TILE_BG_ALPHA:I = 0x4


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

.field private cellInfo:Lcom/lx/launcher8/bean/ItemCell;

.field private cellInfoString:Ljava/lang/String;

.field private cellTxAlpha:I

.field private deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

.field private iconImg:Landroid/widget/ImageView;

.field private iconImgBg:Landroid/widget/LinearLayout;

.field private ll:Landroid/widget/LinearLayout;

.field private mAct:Landroid/app/Activity;

.field private mClick:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mMainView:Landroid/view/View;

.field private picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private scrollView:Landroid/widget/ScrollView;

.field private selectIcon:Landroid/widget/FrameLayout;

.field private setTileSize:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private themeColor:I

.field private tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private tileBgTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private tileGroupLine:Landroid/view/View;

.field private tileGroupShow:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private tileShowFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private tileShowSpecial:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private tileSpecialFunc:Lcom/lx/launcher8/view/SettingLinearLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/lx/launcher8/bean/ItemCell;)V
    .locals 6
    .parameter "act"
    .parameter "cellInfo"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;

    .line 66
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    .line 68
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mMainView:Landroid/view/View;

    .line 70
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->scrollView:Landroid/widget/ScrollView;

    .line 72
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->ll:Landroid/widget/LinearLayout;

    .line 74
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->iconImg:Landroid/widget/ImageView;

    .line 75
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->selectIcon:Landroid/widget/FrameLayout;

    .line 76
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    .line 77
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 78
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 79
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 80
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 81
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 82
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 83
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileShowSpecial:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 84
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 85
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileSpecialFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 86
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileGroupShow:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 87
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileGroupLine:Landroid/view/View;

    .line 88
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->btnDelete:Landroid/widget/Button;

    .line 89
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->btnConfirm:Landroid/widget/Button;

    .line 90
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->btnCancel:Landroid/widget/Button;

    .line 91
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->bottom:Landroid/widget/LinearLayout;

    .line 93
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 95
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    .line 97
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfoString:Ljava/lang/String;

    .line 383
    iput v3, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->themeColor:I

    .line 385
    iput v4, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->backColor:I

    .line 387
    iput v3, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellFgAlpha:I

    .line 388
    iput v3, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellBgAlpha:I

    .line 389
    iput v3, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellTxAlpha:I

    .line 545
    new-instance v0, Lcom/lx/launcher8/setting/view/SpecialSettingView$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/view/SpecialSettingView$1;-><init>(Lcom/lx/launcher8/setting/view/SpecialSettingView;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mClick:Landroid/view/View$OnClickListener;

    .line 100
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    .line 101
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    .line 103
    invoke-virtual {p2}, Lcom/lx/launcher8/bean/ItemCell;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfoString:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006f

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mMainView:Landroid/view/View;

    .line 106
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/SpecialSettingView;->initView()V

    .line 108
    new-instance v0, Lcom/lx/launcher8/cfg/DeskSetting;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 110
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/SpecialSettingView;->initData()V

    .line 112
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->scrollView:Landroid/widget/ScrollView;

    .line 113
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setFadingEdgeLength(I)V

    .line 114
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->scrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 117
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->ll:Landroid/widget/LinearLayout;

    .line 118
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->ll:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 119
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->ll:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->scrollView:Landroid/widget/ScrollView;

    const/high16 v2, 0x3f80

    invoke-static {v3, v4, v2}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->ll:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->bottom:Landroid/widget/LinearLayout;

    invoke-static {v3, v4}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 123
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/view/SpecialSettingView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/view/SpecialSettingView;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/view/SpecialSettingView;)Lcom/lx/launcher8/bean/ItemCell;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/view/SpecialSettingView;)Lcom/lx/launcher8/view/SettingLinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    return-object v0
.end method

.method private createShortcut(Landroid/content/Intent;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 654
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 655
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 656
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iput-object v1, v2, Lcom/lx/launcher8/bean/ItemCell;->title:Ljava/lang/String;

    .line 657
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget-object v3, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget-object v3, v3, Lcom/lx/launcher8/bean/ItemCell;->title:Ljava/lang/String;

    iput-object v3, v2, Lcom/lx/launcher8/bean/ItemCell;->appName:Ljava/lang/String;

    .line 658
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iput-object v0, v2, Lcom/lx/launcher8/bean/ItemCell;->intent:Landroid/content/Intent;

    .line 659
    return-void
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

    .line 662
    const/4 v3, 0x0

    .local v3, l:F
    const/4 v5, 0x0

    .local v5, t:F
    const/4 v4, 0x0

    .local v4, r:F
    const/4 v0, 0x0

    .line 663
    .local v0, b:F
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v6, v6, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    int-to-float v1, v6

    .line 664
    .local v1, cellX:F
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v6, v6, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    int-to-float v2, v6

    .line 665
    .local v2, cellY:F
    div-float v6, v1, v2

    const/high16 v7, 0x4000

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    .line 666
    div-float v5, p2, v10

    .line 667
    div-float v0, p2, v10

    .line 696
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

    .line 668
    :cond_1
    div-float v6, v1, v2

    cmpl-float v6, v6, v8

    if-nez v6, :cond_2

    .line 669
    div-float v5, p2, v8

    .line 670
    div-float v0, p2, v8

    goto :goto_0

    .line 671
    :cond_2
    div-float v6, v1, v2

    cmpl-float v6, v6, v10

    if-nez v6, :cond_3

    .line 672
    mul-float v6, p2, v8

    div-float v5, v6, v9

    .line 673
    mul-float v6, p2, v8

    div-float v0, v6, v9

    goto :goto_0

    .line 674
    :cond_3
    div-float v6, v1, v2

    const/high16 v7, 0x3f00

    cmpl-float v6, v6, v7

    if-nez v6, :cond_4

    .line 675
    div-float v3, p1, v10

    .line 676
    div-float v4, p1, v10

    goto :goto_0

    .line 677
    :cond_4
    div-float v6, v1, v2

    const v7, 0x3eaaaaab

    cmpl-float v6, v6, v7

    if-nez v6, :cond_5

    .line 678
    div-float v3, p1, v8

    .line 679
    div-float v4, p1, v8

    goto :goto_0

    .line 680
    :cond_5
    div-float v6, v1, v2

    const/high16 v7, 0x3e80

    cmpl-float v6, v6, v7

    if-nez v6, :cond_6

    .line 681
    mul-float v6, p1, v8

    div-float v3, v6, v9

    .line 682
    mul-float v6, p1, v8

    div-float v4, v6, v9

    goto :goto_0

    .line 683
    :cond_6
    div-float v6, v1, v2

    const/high16 v7, 0x3fc0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_7

    .line 684
    div-float v5, p2, v11

    .line 685
    div-float v0, p2, v11

    goto :goto_0

    .line 686
    :cond_7
    div-float v6, v1, v2

    const v7, 0x3faaaaab

    cmpl-float v6, v6, v7

    if-nez v6, :cond_8

    .line 687
    div-float v5, p2, v9

    .line 688
    div-float v0, p2, v9

    goto :goto_0

    .line 689
    :cond_8
    div-float v6, v1, v2

    const v7, 0x3f2aaaab

    cmpl-float v6, v6, v7

    if-nez v6, :cond_9

    .line 690
    div-float v3, p1, v11

    .line 691
    div-float v4, p1, v11

    goto :goto_0

    .line 692
    :cond_9
    div-float v6, v1, v2

    const/high16 v7, 0x3f40

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    .line 693
    div-float v3, p1, v9

    .line 694
    div-float v4, p1, v9

    goto/16 :goto_0
.end method

.method private isNameEqual()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 648
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget-object v1, v1, Lcom/lx/launcher8/bean/ItemCell;->title:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->getEditText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->getEditText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 650
    :cond_0
    :goto_0
    return v0

    .line 649
    :cond_1
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget-object v1, v1, Lcom/lx/launcher8/bean/ItemCell;->title:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget-object v1, v1, Lcom/lx/launcher8/bean/ItemCell;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->getEditText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 650
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBottomBtns()[Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 701
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->ll:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected initData()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 190
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->themeColor:I

    .line 192
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->selectIcon:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->selectIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 195
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget-object v2, v2, Lcom/lx/launcher8/bean/ItemCell;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v4, 0x7f0a0099

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterEditText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IF)V

    .line 196
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v5, v3, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setPadding(IIII)V

    .line 197
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v2, 0x7f0200c1

    new-instance v3, Lcom/lx/launcher8/setting/view/SpecialSettingView$2;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/setting/view/SpecialSettingView$2;-><init>(Lcom/lx/launcher8/setting/view/SpecialSettingView;)V

    invoke-virtual {v1, v2, v3}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightImg(ILandroid/view/View$OnClickListener;)V

    .line 207
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    instance-of v1, v1, Lcom/lx/launcher8/bean/TimeCell;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    instance-of v1, v1, Lcom/lx/launcher8/bean/DynCell;

    if-eqz v1, :cond_2

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0125

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 212
    :goto_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v5, v3, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setPadding(IIII)V

    .line 213
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v7}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 214
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0131

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 217
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v3, v3, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v3, v3, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 218
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v7}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 219
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v2, Lcom/lx/launcher8/setting/view/SpecialSettingView$3;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/view/SpecialSettingView$3;-><init>(Lcom/lx/launcher8/setting/view/SpecialSettingView;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v9}, Lcom/lx/launcher8/view/SettingLinearLayout;->setVisibility(I)V

    .line 229
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0052

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 230
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 231
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v7}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 232
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0132

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 235
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v1, v1, Lcom/lx/launcher8/bean/ItemCell;->backColor:I

    if-ne v1, v8, :cond_3

    .line 236
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->themeColor:I

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    .line 240
    :goto_1
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v7}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 241
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0115

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 244
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v4, 0x7f0a0166

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "100% "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;

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

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 245
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v7}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 246
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v2, Lcom/lx/launcher8/setting/view/SpecialSettingView$4;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/view/SpecialSettingView$4;-><init>(Lcom/lx/launcher8/setting/view/SpecialSettingView;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v1, v1, Lcom/lx/launcher8/bean/ItemCell;->cellType:I

    and-int/lit16 v1, v1, 0xfff

    packed-switch v1, :pswitch_data_0

    .line 328
    :goto_2
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0153

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 329
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0154

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterBottomText(Ljava/lang/CharSequence;IF)V

    .line 330
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a00bf

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 331
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v7}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 332
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v2, Lcom/lx/launcher8/setting/view/SpecialSettingView$8;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/view/SpecialSettingView$8;-><init>(Lcom/lx/launcher8/setting/view/SpecialSettingView;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileSpecialFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    const-string v2, "\u52a8\u6001\u56fe\u5e93\u56fe\u7247"

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 340
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileSpecialFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    const-string v2, "\u65e0"

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 341
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileSpecialFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v7}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 342
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileSpecialFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v2, Lcom/lx/launcher8/setting/view/SpecialSettingView$9;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/view/SpecialSettingView$9;-><init>(Lcom/lx/launcher8/setting/view/SpecialSettingView;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->btnDelete:Landroid/widget/Button;

    new-instance v2, Lcom/lx/launcher8/setting/view/SpecialSettingView$10;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/view/SpecialSettingView$10;-><init>(Lcom/lx/launcher8/setting/view/SpecialSettingView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "cell_delete_or_not"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->btnDelete:Landroid/widget/Button;

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 378
    :cond_1
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->btnConfirm:Landroid/widget/Button;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->btnCancel:Landroid/widget/Button;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    return-void

    .line 210
    :cond_2
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0125

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#707070"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    goto/16 :goto_0

    .line 238
    :cond_3
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v2, v2, Lcom/lx/launcher8/bean/ItemCell;->backColor:I

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    goto/16 :goto_1

    .line 266
    :pswitch_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileShowSpecial:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setVisibility(I)V

    .line 267
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileShowSpecial:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0141

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 268
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileShowSpecial:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v7}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 269
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileShowSpecial:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v2, Lcom/lx/launcher8/setting/view/SpecialSettingView$5;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/view/SpecialSettingView$5;-><init>(Lcom/lx/launcher8/setting/view/SpecialSettingView;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 278
    :pswitch_1
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileGroupShow:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setVisibility(I)V

    .line 279
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileGroupLine:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileGroupShow:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0037

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 281
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v0, Lcom/lx/launcher8/bean/DynCell;

    .line 282
    .local v0, dc:Lcom/lx/launcher8/bean/DynCell;
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileGroupShow:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0}, Lcom/lx/launcher8/bean/DynCell;->isShowGroup()Z

    move-result v2

    new-instance v3, Lcom/lx/launcher8/setting/view/SpecialSettingView$6;

    invoke-direct {v3, p0, v0}, Lcom/lx/launcher8/setting/view/SpecialSettingView$6;-><init>(Lcom/lx/launcher8/setting/view/SpecialSettingView;Lcom/lx/launcher8/bean/DynCell;)V

    invoke-virtual {v1, v2, v3}, Lcom/lx/launcher8/view/SettingLinearLayout;->setSeekButton(ZLcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 289
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileShowSpecial:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setVisibility(I)V

    .line 290
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileShowSpecial:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0039

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 291
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileShowSpecial:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v7}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 292
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileShowSpecial:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v2, Lcom/lx/launcher8/setting/view/SpecialSettingView$7;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/view/SpecialSettingView$7;-><init>(Lcom/lx/launcher8/setting/view/SpecialSettingView;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 324
    .end local v0           #dc:Lcom/lx/launcher8/bean/DynCell;
    :pswitch_2
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v1, v9}, Lcom/lx/launcher8/view/SettingLinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 264
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected initView()V
    .locals 13

    .prologue
    const/high16 v12, 0x4160

    const/high16 v11, 0x3f80

    const/4 v10, -0x2

    const/high16 v9, 0x4120

    const/4 v8, 0x0

    .line 126
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901d1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->iconImg:Landroid/widget/ImageView;

    .line 127
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901cf

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->selectIcon:Landroid/widget/FrameLayout;

    .line 128
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901d0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    .line 129
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901d3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 130
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901d4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 131
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901d5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 132
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901d6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 133
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f090122

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 134
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901d7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 135
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901da

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileShowSpecial:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 136
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901dd

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 137
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901e5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileSpecialFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 138
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901d8

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileGroupShow:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 139
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901d9

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileGroupLine:Landroid/view/View;

    .line 140
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f090147

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->btnDelete:Landroid/widget/Button;

    .line 142
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->bottom:Landroid/widget/LinearLayout;

    .line 143
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->bottom:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 144
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->bottom:Landroid/widget/LinearLayout;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 146
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->bottom:Landroid/widget/LinearLayout;

    const-string v6, "#dfe1e1e1"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 148
    new-instance v5, Landroid/widget/Button;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->btnConfirm:Landroid/widget/Button;

    .line 149
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->btnConfirm:Landroid/widget/Button;

    const v6, 0x7f0200ac

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 150
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->btnConfirm:Landroid/widget/Button;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v7, 0x7f0a0077

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->btnConfirm:Landroid/widget/Button;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v12}, Landroid/widget/Button;->setTextSize(IF)V

    .line 152
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->btnConfirm:Landroid/widget/Button;

    const/high16 v6, -0x100

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 153
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->btnConfirm:Landroid/widget/Button;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;

    invoke-static {v6, v9}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;

    invoke-static {v7, v9}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v8, v6, v8, v7}, Landroid/widget/Button;->setPadding(IIII)V

    .line 154
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->btnConfirm:Landroid/widget/Button;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setId(I)V

    .line 155
    invoke-static {v10, v10, v11}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 157
    .local v3, params1:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->btnConfirm:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    new-instance v5, Landroid/widget/Button;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->btnCancel:Landroid/widget/Button;

    .line 159
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->btnCancel:Landroid/widget/Button;

    const v6, 0x7f0200ac

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 160
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->btnCancel:Landroid/widget/Button;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v7, 0x7f0a0078

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->btnCancel:Landroid/widget/Button;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v12}, Landroid/widget/Button;->setTextSize(IF)V

    .line 162
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->btnCancel:Landroid/widget/Button;

    const/high16 v6, -0x100

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 163
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->btnCancel:Landroid/widget/Button;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;

    invoke-static {v6, v9}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;

    invoke-static {v7, v9}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v8, v6, v8, v7}, Landroid/widget/Button;->setPadding(IIII)V

    .line 164
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->btnCancel:Landroid/widget/Button;

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setId(I)V

    .line 165
    invoke-static {v10, v10, v11}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 167
    .local v4, params2:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 170
    .local v2, lineParams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, 0x1

    invoke-virtual {v2, v8, v5, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 171
    new-instance v0, Landroid/view/View;

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 172
    .local v0, line1:Landroid/view/View;
    const-string v5, "#ffffff"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 173
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    new-instance v1, Landroid/view/View;

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 175
    .local v1, line2:Landroid/view/View;
    const-string v5, "#a0a0a0"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 176
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->bottom:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->btnConfirm:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 179
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->bottom:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 180
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->bottom:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->bottom:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 187
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 19
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 469
    const/4 v14, -0x1

    move/from16 v0, p2

    if-eq v0, v14, :cond_0

    .line 470
    const/4 v14, 0x0

    .line 542
    :goto_0
    return v14

    .line 472
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 542
    :cond_1
    :goto_1
    const/4 v14, 0x0

    goto :goto_0

    .line 474
    :pswitch_0
    const-string v14, "extral_value"

    const/4 v15, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 475
    .local v8, color:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iput v8, v14, Lcom/lx/launcher8/bean/ItemCell;->backColor:I

    .line 476
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v14, v8}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    goto :goto_1

    .line 479
    .end local v8           #color:I
    :pswitch_1
    const-string v14, "extral_info"

    const v15, 0x10001

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 480
    .local v11, size:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v14, v11}, Lcom/lx/launcher8/bean/ItemCell;->setSize(I)V

    goto :goto_1

    .line 483
    .end local v11           #size:I
    :pswitch_2
    const-string v14, "extral_short_cut"

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 484
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/lx/launcher8/setting/view/SpecialSettingView;->createShortcut(Landroid/content/Intent;)V

    .line 492
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget-object v15, v15, Lcom/lx/launcher8/bean/ItemCell;->appName:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 493
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget-object v15, v15, Lcom/lx/launcher8/bean/ItemCell;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    move-object/from16 v16, v0

    const v17, 0x7f0a0124

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterEditText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IF)V

    goto :goto_1

    .line 486
    :cond_2
    const-string v14, "extral_info"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 487
    .local v7, cn:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v14

    check-cast v14, Lcom/lx/launcher8/AnallApp;

    invoke-virtual {v14}, Lcom/lx/launcher8/AnallApp;->getModel()Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lx/launcher8/db/LauncherModel;->getAppList()Lcom/anall/app/bean/AllAppsList;

    move-result-object v14

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/anall/app/bean/AllAppsList;->findApplicationInfoLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/anall/app/bean/AppInfo;

    move-result-object v5

    .line 488
    .local v5, app:Lcom/anall/app/bean/AppInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget-object v15, v5, Lcom/anall/app/bean/AppInfo;->intent:Landroid/content/Intent;

    iput-object v15, v14, Lcom/lx/launcher8/bean/ItemCell;->intent:Landroid/content/Intent;

    .line 489
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget-object v15, v5, Lcom/anall/app/bean/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/lx/launcher8/bean/ItemCell;->title:Ljava/lang/String;

    .line 490
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget-object v15, v15, Lcom/lx/launcher8/bean/ItemCell;->title:Ljava/lang/String;

    iput-object v15, v14, Lcom/lx/launcher8/bean/ItemCell;->appName:Ljava/lang/String;

    goto :goto_2

    .line 496
    .end local v5           #app:Lcom/anall/app/bean/AppInfo;
    .end local v7           #cn:Landroid/content/ComponentName;
    :pswitch_3
    const-string v14, "extral_value"

    const/16 v15, 0x64

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 497
    .local v2, alpha:I
    const-string v14, "extral_value1"

    const/16 v15, 0x64

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 498
    .local v3, alphaFG:I
    const-string v14, "extral_value2"

    const/16 v15, 0x64

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 499
    .local v4, alphaTX:I
    mul-int/lit16 v14, v2, 0xff

    div-int/lit8 v14, v14, 0x64

    rsub-int v2, v14, 0xff

    .line 500
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v14, v2}, Lcom/lx/launcher8/bean/ItemCell;->setCellAlphaBg(I)V

    .line 501
    mul-int/lit16 v14, v3, 0xff

    div-int/lit8 v14, v14, 0x64

    rsub-int v3, v14, 0xff

    .line 502
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v14, v3}, Lcom/lx/launcher8/bean/ItemCell;->setCellAlphaFg(I)V

    .line 503
    mul-int/lit16 v14, v4, 0xff

    div-int/lit8 v4, v14, 0x64

    .line 504
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v14, v4}, Lcom/lx/launcher8/bean/ItemCell;->setTextAlpha(I)V

    goto/16 :goto_1

    .line 507
    .end local v2           #alpha:I
    .end local v3           #alphaFG:I
    .end local v4           #alphaTX:I
    :pswitch_4
    const-string v14, "return-data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 508
    .local v6, bt:Landroid/graphics/Bitmap;
    if-nez v6, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    invoke-static {v14}, Lcom/lx/launcher8/util/Utils;->getIntentExtra(Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 509
    :cond_3
    if-nez v6, :cond_4

    .line 510
    const-string v14, "extral_info"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 511
    .local v10, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;

    invoke-static {v14, v10}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 513
    .end local v10           #path:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    instance-of v14, v14, Lcom/lx/launcher8/bean/TimeCell;

    if-eqz v14, :cond_5

    .line 514
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v14, Lcom/lx/launcher8/bean/TimeCell;

    iput-object v6, v14, Lcom/lx/launcher8/bean/TimeCell;->backBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 515
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    instance-of v14, v14, Lcom/lx/launcher8/bean/DynCell;

    if-eqz v14, :cond_1

    .line 516
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v14, Lcom/lx/launcher8/bean/DynCell;

    iput-object v6, v14, Lcom/lx/launcher8/bean/DynCell;->icon:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 528
    .end local v6           #bt:Landroid/graphics/Bitmap;
    :pswitch_5
    const-string v14, "extral_value"

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 529
    .local v9, gravity:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    instance-of v14, v14, Lcom/lx/launcher8/bean/TimeCell;

    if-eqz v14, :cond_6

    .line 530
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v14, Lcom/lx/launcher8/bean/TimeCell;

    iput v9, v14, Lcom/lx/launcher8/bean/TimeCell;->gravity:I

    goto/16 :goto_1

    .line 531
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    instance-of v14, v14, Lcom/lx/launcher8/bean/DynCell;

    if-eqz v14, :cond_1

    .line 532
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v14, v9}, Lcom/lx/launcher8/bean/ItemCell;->setImgGravity(I)V

    goto/16 :goto_1

    .line 536
    .end local v9           #gravity:I
    :pswitch_6
    const-string v14, "text_gravity"

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 537
    .local v13, textGravity:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v14, v13}, Lcom/lx/launcher8/bean/ItemCell;->setTextGarivty(I)V

    .line 538
    const-string v14, "text_color"

    const/4 v15, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 539
    .local v12, textColor:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iput v12, v14, Lcom/lx/launcher8/bean/ItemCell;->textColor:I

    goto/16 :goto_1

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public onBack()Z
    .locals 7

    .prologue
    .line 618
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfoString:Ljava/lang/String;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v6}, Lcom/lx/launcher8/bean/ItemCell;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/lx/launcher8/setting/view/SpecialSettingView;->isNameEqual()Z

    move-result v5

    if-nez v5, :cond_1

    .line 619
    :cond_0
    new-instance v2, Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;

    const v6, 0x7f0e0005

    invoke-direct {v2, v5, v6}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;-><init>(Landroid/content/Context;I)V

    .line 620
    .local v2, dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;
    new-instance v5, Lcom/lx/launcher8/setting/view/SpecialSettingView$11;

    invoke-direct {v5, p0, v2}, Lcom/lx/launcher8/setting/view/SpecialSettingView$11;-><init>(Lcom/lx/launcher8/setting/view/SpecialSettingView;Lcom/lx/launcher8/setting/view/DialogSaveTheme;)V

    invoke-virtual {v2, v5}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;

    const v6, 0x7f0a01c4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 638
    .local v4, title:Ljava/lang/String;
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0134

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, about:Ljava/lang/String;
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0077

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 640
    .local v3, ok:Ljava/lang/String;
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0078

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 641
    .local v1, cancel:Ljava/lang/String;
    invoke-virtual {v2, v4, v0, v3, v1}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->createWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->show()V

    .line 642
    const/4 v5, 0x1

    .line 644
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
    .locals 14

    .prologue
    .line 396
    iget v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->backColor:I

    iget-object v11, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v11, v11, Lcom/lx/launcher8/bean/ItemCell;->backColor:I

    if-eq v10, v11, :cond_0

    .line 397
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v10, v10, Lcom/lx/launcher8/bean/ItemCell;->backColor:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_7

    .line 398
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    iget v11, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->themeColor:I

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 402
    :goto_0
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v10, v10, Lcom/lx/launcher8/bean/ItemCell;->backColor:I

    iput v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->backColor:I

    .line 405
    :cond_0
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/16 v12, 0x11

    invoke-direct {v8, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 406
    .local v8, p:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;

    const/high16 v11, 0x42dc

    invoke-static {v10, v11}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v10

    iget-object v11, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;

    const/high16 v12, 0x42dc

    invoke-static {v11, v12}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/lx/launcher8/setting/view/SpecialSettingView;->getIconImgMargin(FF)[F

    move-result-object v7

    .line 407
    .local v7, ms:[F
    const/4 v10, 0x0

    aget v10, v7, v10

    float-to-int v10, v10

    const/4 v11, 0x1

    aget v11, v7, v11

    float-to-int v11, v11

    const/4 v12, 0x2

    aget v12, v7, v12

    float-to-int v12, v12

    const/4 v13, 0x3

    aget v13, v7, v13

    float-to-int v13, v13

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 408
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->iconImg:Landroid/widget/ImageView;

    sget-object v11, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 411
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    instance-of v10, v10, Lcom/lx/launcher8/bean/TimeCell;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v10, Lcom/lx/launcher8/bean/TimeCell;

    iget-object v10, v10, Lcom/lx/launcher8/bean/TimeCell;->backBitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_8

    .line 412
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->iconImg:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v10, Lcom/lx/launcher8/bean/TimeCell;

    iget-object v10, v10, Lcom/lx/launcher8/bean/TimeCell;->backBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 417
    :cond_1
    :goto_1
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v10}, Lcom/lx/launcher8/bean/ItemCell;->getCellAlphaFg()I

    move-result v2

    .line 418
    .local v2, cellFgAlpha:I
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v10}, Lcom/lx/launcher8/bean/ItemCell;->getCellAlphaBg()I

    move-result v1

    .line 419
    .local v1, cellBgAlpha:I
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v10}, Lcom/lx/launcher8/bean/ItemCell;->getTextAlpha()I

    move-result v3

    .line 420
    .local v3, cellTxAlpha:I
    iget v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellFgAlpha:I

    if-ne v10, v2, :cond_2

    iget v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellBgAlpha:I

    if-ne v10, v1, :cond_2

    iget v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellTxAlpha:I

    if-eq v10, v3, :cond_3

    .line 421
    :cond_2
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v13, 0x7f0a0166

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int/lit8 v12, v1, 0x64

    div-int/lit16 v12, v12, 0xff

    rsub-int/lit8 v12, v12, 0x64

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "% "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v13, 0x7f0a0167

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    mul-int/lit8 v12, v2, 0x64

    div-int/lit16 v12, v12, 0xff

    rsub-int/lit8 v12, v12, 0x64

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 422
    iput v2, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellFgAlpha:I

    .line 423
    iput v1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellBgAlpha:I

    .line 424
    iput v3, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellTxAlpha:I

    .line 427
    :cond_3
    const/4 v5, -0x1

    .line 428
    .local v5, gravity:I
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    instance-of v10, v10, Lcom/lx/launcher8/bean/TimeCell;

    if-eqz v10, :cond_9

    .line 429
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v10, Lcom/lx/launcher8/bean/TimeCell;

    iget v5, v10, Lcom/lx/launcher8/bean/TimeCell;->gravity:I

    .line 433
    :cond_4
    :goto_2
    const/4 v10, -0x1

    if-eq v5, v10, :cond_5

    .line 434
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/high16 v12, 0x4188

    invoke-direct {v9, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 435
    .local v9, params:Landroid/widget/LinearLayout$LayoutParams;
    if-nez v5, :cond_a

    .line 436
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v11, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v12, 0x7f0a00ed

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 437
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->iconImg:Landroid/widget/ImageView;

    sget-object v11, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 438
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;

    const/high16 v11, 0x4120

    invoke-static {v10, v11}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v10

    const/high16 v11, 0x3f00

    add-float v6, v10, v11

    .line 439
    .local v6, margin:F
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v10, v10, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    int-to-float v10, v10

    div-float v10, v6, v10

    float-to-int v10, v10

    iget-object v11, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v11, v11, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    int-to-float v11, v11

    div-float v11, v6, v11

    float-to-int v11, v11

    iget-object v12, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v12, v12, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    int-to-float v12, v12

    div-float v12, v6, v12

    float-to-int v12, v12

    iget-object v13, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v13, v13, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    int-to-float v13, v13

    div-float v13, v6, v13

    float-to-int v13, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 445
    .end local v6           #margin:F
    :goto_3
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->iconImg:Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 448
    .end local v9           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v12, v12, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v12, v12, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 449
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget-object v10, v10, Lcom/lx/launcher8/bean/ItemCell;->appName:Ljava/lang/String;

    if-nez v10, :cond_b

    .line 450
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v10, v10, Lcom/lx/launcher8/bean/ItemCell;->cellType:I

    and-int/lit16 v10, v10, 0xfff

    const/4 v11, 0x1

    if-eq v10, v11, :cond_6

    .line 451
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget-object v10, v10, Lcom/lx/launcher8/bean/ItemCell;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 452
    .local v4, cn:Landroid/content/ComponentName;
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v10

    check-cast v10, Lcom/lx/launcher8/AnallApp;

    invoke-virtual {v10}, Lcom/lx/launcher8/AnallApp;->getModel()Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lx/launcher8/db/LauncherModel;->getAppList()Lcom/anall/app/bean/AllAppsList;

    move-result-object v10

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/anall/app/bean/AllAppsList;->findApplicationInfoLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/anall/app/bean/AppInfo;

    move-result-object v0

    .line 453
    .local v0, app:Lcom/anall/app/bean/AppInfo;
    if-eqz v0, :cond_6

    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v11, v0, Lcom/anall/app/bean/AppInfo;->title:Ljava/lang/CharSequence;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 458
    .end local v0           #app:Lcom/anall/app/bean/AppInfo;
    .end local v4           #cn:Landroid/content/ComponentName;
    :cond_6
    :goto_4
    return-void

    .line 400
    .end local v1           #cellBgAlpha:I
    .end local v2           #cellFgAlpha:I
    .end local v3           #cellTxAlpha:I
    .end local v5           #gravity:I
    .end local v7           #ms:[F
    .end local v8           #p:Landroid/widget/FrameLayout$LayoutParams;
    :cond_7
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v11, v11, Lcom/lx/launcher8/bean/ItemCell;->backColor:I

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 413
    .restart local v7       #ms:[F
    .restart local v8       #p:Landroid/widget/FrameLayout$LayoutParams;
    :cond_8
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    instance-of v10, v10, Lcom/lx/launcher8/bean/DynCell;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v10, Lcom/lx/launcher8/bean/DynCell;

    iget-object v10, v10, Lcom/lx/launcher8/bean/DynCell;->icon:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_1

    .line 414
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->iconImg:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v10, Lcom/lx/launcher8/bean/DynCell;

    iget-object v10, v10, Lcom/lx/launcher8/bean/DynCell;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 430
    .restart local v1       #cellBgAlpha:I
    .restart local v2       #cellFgAlpha:I
    .restart local v3       #cellTxAlpha:I
    .restart local v5       #gravity:I
    :cond_9
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    instance-of v10, v10, Lcom/lx/launcher8/bean/DynCell;

    if-eqz v10, :cond_4

    .line 431
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v10}, Lcom/lx/launcher8/bean/ItemCell;->getImgGravity()I

    move-result v5

    goto/16 :goto_2

    .line 441
    .restart local v9       #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_a
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v11, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v12, 0x7f0a00ec

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 442
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->iconImg:Landroid/widget/ImageView;

    sget-object v11, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 443
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_3

    .line 456
    .end local v9           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_b
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v11, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget-object v11, v11, Lcom/lx/launcher8/bean/ItemCell;->appName:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    goto :goto_4
.end method

.method public onViewMovingFront()V
    .locals 0

    .prologue
    .line 706
    return-void
.end method
