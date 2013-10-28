.class public Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;
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

.field static final REQUEST_SHOW_GROUP:I = 0x8

.field static final REQUEST_TEXT_STYLE:I = 0x6

.field static final REQUEST_TILE_BG_ALPHA:I = 0x4


# instance fields
.field private appNameLinear:Lcom/lx/launcher8/view/SettingLinear;

.field private backColor:I

.field private bindingApp:Lcom/lx/launcher8/view/SettingLinear;

.field private btnCancel:Landroid/widget/Button;

.field private btnConfirm:Landroid/widget/Button;

.field private btnDelete:Landroid/widget/TextView;

.field private cellBgAlpha:I

.field private cellFgAlpha:I

.field private cellInfo:Lcom/lx/launcher8/bean/ItemCell;

.field private cellInfoString:Ljava/lang/String;

.field private cellTxAlpha:I

.field private deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

.field private iconImg:Landroid/widget/ImageView;

.field private iconImgBg:Landroid/widget/LinearLayout;

.field private mAct:Landroid/app/Activity;

.field private mClick:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mMainView:Landroid/view/View;

.field private picPositionLinear:Lcom/lx/launcher8/view/SettingLinear;

.field private scrollView:Landroid/widget/ScrollView;

.field private selectIcon:Landroid/widget/FrameLayout;

.field private selectIconBtn:Landroid/widget/Button;

.field private setTileSize:Lcom/lx/launcher8/view/SettingLinear;

.field private text:[Ljava/lang/String;

.field private themeColor:I

.field private tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

.field private tileBgTransparent:Lcom/lx/launcher8/view/SettingLinear;

.field private tileShowFunc:Lcom/lx/launcher8/view/SettingLinear;

.field private titleShowGroup:Lcom/lx/launcher8/view/SettingLinear;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/lx/launcher8/bean/ItemCell;)V
    .locals 4
    .parameter "act"
    .parameter "cellInfo"

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mContext:Landroid/content/Context;

    .line 67
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    .line 69
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mMainView:Landroid/view/View;

    .line 71
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->scrollView:Landroid/widget/ScrollView;

    .line 73
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->view:Landroid/view/View;

    .line 75
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->iconImg:Landroid/widget/ImageView;

    .line 76
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->selectIconBtn:Landroid/widget/Button;

    .line 77
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->selectIcon:Landroid/widget/FrameLayout;

    .line 78
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    .line 79
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinear;

    .line 80
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinear;

    .line 81
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinear;

    .line 82
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    .line 83
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    .line 84
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinear;

    .line 85
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinear;

    .line 86
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->titleShowGroup:Lcom/lx/launcher8/view/SettingLinear;

    .line 88
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->btnDelete:Landroid/widget/TextView;

    .line 89
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->btnConfirm:Landroid/widget/Button;

    .line 90
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->btnCancel:Landroid/widget/Button;

    .line 92
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 94
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    .line 96
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfoString:Ljava/lang/String;

    .line 98
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->text:[Ljava/lang/String;

    .line 368
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->themeColor:I

    .line 370
    const/4 v0, -0x2

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->backColor:I

    .line 372
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellFgAlpha:I

    .line 373
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellBgAlpha:I

    .line 374
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellTxAlpha:I

    .line 538
    new-instance v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mClick:Landroid/view/View$OnClickListener;

    .line 101
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    .line 102
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    .line 104
    invoke-virtual {p2}, Lcom/lx/launcher8/bean/ItemCell;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfoString:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030070

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mMainView:Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030062

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->view:Landroid/view/View;

    .line 108
    new-instance v0, Lcom/lx/launcher8/cfg/DeskSetting;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 110
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->text:[Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->initView()V

    .line 114
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->initData()V

    .line 117
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->view:Landroid/view/View;

    const v1, 0x7f090191

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->scrollView:Landroid/widget/ScrollView;

    .line 118
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFadingEdgeLength(I)V

    .line 119
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 120
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->removeAllViews()V

    .line 121
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->scrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 122
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mMainView:Landroid/view/View;

    const/16 v1, 0x46

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 124
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->view:Landroid/view/View;

    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 125
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Lcom/lx/launcher8/bean/ItemCell;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->btnDelete:Landroid/widget/TextView;

    return-object v0
.end method

.method private createShortcut(Landroid/content/Intent;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 640
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 641
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 642
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iput-object v1, v2, Lcom/lx/launcher8/bean/ItemCell;->title:Ljava/lang/String;

    .line 643
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget-object v3, v3, Lcom/lx/launcher8/bean/ItemCell;->title:Ljava/lang/String;

    iput-object v3, v2, Lcom/lx/launcher8/bean/ItemCell;->appName:Ljava/lang/String;

    .line 644
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iput-object v0, v2, Lcom/lx/launcher8/bean/ItemCell;->intent:Landroid/content/Intent;

    .line 645
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

    .line 648
    const/4 v3, 0x0

    .local v3, l:F
    const/4 v5, 0x0

    .local v5, t:F
    const/4 v4, 0x0

    .local v4, r:F
    const/4 v0, 0x0

    .line 649
    .local v0, b:F
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v6, v6, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    int-to-float v1, v6

    .line 650
    .local v1, cellX:F
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v6, v6, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    int-to-float v2, v6

    .line 651
    .local v2, cellY:F
    div-float v6, v1, v2

    const/high16 v7, 0x4000

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    .line 652
    div-float v5, p2, v10

    .line 653
    div-float v0, p2, v10

    .line 682
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

    .line 654
    :cond_1
    div-float v6, v1, v2

    cmpl-float v6, v6, v8

    if-nez v6, :cond_2

    .line 655
    div-float v5, p2, v8

    .line 656
    div-float v0, p2, v8

    goto :goto_0

    .line 657
    :cond_2
    div-float v6, v1, v2

    cmpl-float v6, v6, v10

    if-nez v6, :cond_3

    .line 658
    mul-float v6, p2, v8

    div-float v5, v6, v9

    .line 659
    mul-float v6, p2, v8

    div-float v0, v6, v9

    goto :goto_0

    .line 660
    :cond_3
    div-float v6, v1, v2

    const/high16 v7, 0x3f00

    cmpl-float v6, v6, v7

    if-nez v6, :cond_4

    .line 661
    div-float v3, p1, v10

    .line 662
    div-float v4, p1, v10

    goto :goto_0

    .line 663
    :cond_4
    div-float v6, v1, v2

    const v7, 0x3eaaaaab

    cmpl-float v6, v6, v7

    if-nez v6, :cond_5

    .line 664
    div-float v3, p1, v8

    .line 665
    div-float v4, p1, v8

    goto :goto_0

    .line 666
    :cond_5
    div-float v6, v1, v2

    const/high16 v7, 0x3e80

    cmpl-float v6, v6, v7

    if-nez v6, :cond_6

    .line 667
    mul-float v6, p1, v8

    div-float v3, v6, v9

    .line 668
    mul-float v6, p1, v8

    div-float v4, v6, v9

    goto :goto_0

    .line 669
    :cond_6
    div-float v6, v1, v2

    const/high16 v7, 0x3fc0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_7

    .line 670
    div-float v5, p2, v11

    .line 671
    div-float v0, p2, v11

    goto :goto_0

    .line 672
    :cond_7
    div-float v6, v1, v2

    const v7, 0x3faaaaab

    cmpl-float v6, v6, v7

    if-nez v6, :cond_8

    .line 673
    div-float v5, p2, v9

    .line 674
    div-float v0, p2, v9

    goto :goto_0

    .line 675
    :cond_8
    div-float v6, v1, v2

    const v7, 0x3f2aaaab

    cmpl-float v6, v6, v7

    if-nez v6, :cond_9

    .line 676
    div-float v3, p1, v11

    .line 677
    div-float v4, p1, v11

    goto :goto_0

    .line 678
    :cond_9
    div-float v6, v1, v2

    const/high16 v7, 0x3f40

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    .line 679
    div-float v3, p1, v9

    .line 680
    div-float v4, p1, v9

    goto/16 :goto_0
.end method


# virtual methods
.method checkGroupStateIfNeed()V
    .locals 5

    .prologue
    .line 362
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v1, v1, Lcom/lx/launcher8/bean/ItemCell;->cellType:I

    and-int/lit16 v1, v1, 0xfff

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 363
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v1, Lcom/lx/launcher8/bean/DynCell;

    invoke-virtual {v1}, Lcom/lx/launcher8/bean/DynCell;->isShowGroup()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0a015a

    .line 364
    .local v0, rid:I
    :goto_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->titleShowGroup:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 366
    .end local v0           #rid:I
    :cond_0
    return-void

    .line 363
    :cond_1
    const v0, 0x7f0a015b

    goto :goto_0
.end method

.method public getBottomBtns()[Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 687
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->view:Landroid/view/View;

    return-object v0
.end method

.method protected initData()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 199
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->themeColor:I

    .line 201
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->selectIconBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->selectIcon:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0124

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 205
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget-object v2, v2, Lcom/lx/launcher8/bean/ItemCell;->title:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->text:[Ljava/lang/String;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v3}, Lcom/lx/launcher8/bean/ItemCell;->getTextGravity()I

    move-result v3

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->text:[Ljava/lang/String;

    array-length v4, v4

    rem-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/lx/launcher8/util/ColorManager;->getInstance()Lcom/lx/launcher8/util/ColorManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v3, v3, Lcom/lx/launcher8/bean/ItemCell;->textColor:I

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/util/ColorManager;->getColorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#31b2e7"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v5, v2}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 206
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$3;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$3;-><init>(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0125

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 218
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0131

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 221
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v2, v2, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v2, v2, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 222
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$4;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$4;-><init>(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinear;

    invoke-virtual {v0, v7}, Lcom/lx/launcher8/view/SettingLinear;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0052

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 233
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget-object v0, v0, Lcom/lx/launcher8/bean/ItemCell;->appName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 234
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0132

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 237
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v0, v0, Lcom/lx/launcher8/bean/ItemCell;->backColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 238
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    iget v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->themeColor:I

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setBottomColorView(I)V

    .line 239
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    invoke-static {}, Lcom/lx/launcher8/util/ColorManager;->getInstance()Lcom/lx/launcher8/util/ColorManager;

    move-result-object v1

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->themeColor:I

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/util/ColorManager;->getColorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 244
    :goto_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0115

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 247
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0166

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "100% "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0167

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "100% "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;

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

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 248
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$5;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$5;-><init>(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v0, v0, Lcom/lx/launcher8/bean/ItemCell;->cellType:I

    and-int/lit16 v0, v0, 0xfff

    packed-switch v0, :pswitch_data_0

    .line 331
    :goto_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->btnDelete:Landroid/widget/TextView;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$9;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$9;-><init>(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->btnConfirm:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->btnCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget-object v0, v0, Lcom/lx/launcher8/bean/ItemCell;->appName:Ljava/lang/String;

    goto/16 :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v1, v1, Lcom/lx/launcher8/bean/ItemCell;->backColor:I

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setBottomColorView(I)V

    .line 242
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    invoke-static {}, Lcom/lx/launcher8/util/ColorManager;->getInstance()Lcom/lx/launcher8/util/ColorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v2, v2, Lcom/lx/launcher8/bean/ItemCell;->backColor:I

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/util/ColorManager;->getColorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_1

    .line 268
    :pswitch_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0141

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 269
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a013e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 270
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$6;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$6;-><init>(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 279
    :pswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->titleShowGroup:Lcom/lx/launcher8/view/SettingLinear;

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/SettingLinear;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->titleShowGroup:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0037

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 281
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->checkGroupStateIfNeed()V

    .line 282
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->titleShowGroup:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$7;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$7;-><init>(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0039

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 294
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0036

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 295
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$8;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$8;-><init>(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 327
    :pswitch_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    invoke-virtual {v0, v7}, Lcom/lx/launcher8/view/SettingLinear;->setVisibility(I)V

    goto/16 :goto_2

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected initView()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/high16 v6, -0x100

    .line 128
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901d1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->iconImg:Landroid/widget/ImageView;

    .line 129
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901d2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->selectIconBtn:Landroid/widget/Button;

    .line 130
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901cf

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->selectIcon:Landroid/widget/FrameLayout;

    .line 131
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901d0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    .line 132
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901d3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinear;

    .line 133
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901d4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinear;

    .line 134
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901d5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinear;

    .line 135
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901d6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    .line 136
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f090122

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    .line 137
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901d7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinear;

    .line 138
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901dd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinear;

    .line 139
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901e9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->titleShowGroup:Lcom/lx/launcher8/view/SettingLinear;

    .line 143
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->view:Landroid/view/View;

    const v5, 0x7f090194

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->btnConfirm:Landroid/widget/Button;

    .line 144
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->view:Landroid/view/View;

    const v5, 0x7f090196

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->btnCancel:Landroid/widget/Button;

    .line 145
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->view:Landroid/view/View;

    const v5, 0x7f090198

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->btnDelete:Landroid/widget/TextView;

    .line 146
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->view:Landroid/view/View;

    const v5, 0x7f090195

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 147
    .local v2, confirmBtnText:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->view:Landroid/view/View;

    const v5, 0x7f090197

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 148
    .local v0, cancelBtnText:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->view:Landroid/view/View;

    const v5, 0x7f090067

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 149
    .local v3, showContentLinear:Landroid/widget/Button;
    new-instance v4, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$2;

    invoke-direct {v4, p0, v2, v0}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$2;-><init>(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->view:Landroid/view/View;

    const v5, 0x7f09005c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 166
    .local v1, confirmBottom:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 167
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v4

    if-eqz v4, :cond_1

    .line 169
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->btnConfirm:Landroid/widget/Button;

    const v5, 0x7f0200ab

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 170
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->btnCancel:Landroid/widget/Button;

    const v5, 0x7f0200a4

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 171
    const v4, 0x7f020175

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 172
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->btnDelete:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    const-string v4, "#313131"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 176
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->selectIcon:Landroid/widget/FrameLayout;

    const-string v5, "#313131"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 187
    :goto_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinear;

    invoke-virtual {v4, v8}, Lcom/lx/launcher8/view/SettingLinear;->setVisibility(I)V

    .line 189
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v4, v4, Lcom/lx/launcher8/bean/ItemCell;->cellType:I

    and-int/lit16 v4, v4, 0xfff

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 190
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v4, v4, Lcom/lx/launcher8/bean/ItemCell;->cellType:I

    and-int/lit16 v4, v4, 0xfff

    const/4 v5, 0x6

    if-eq v4, v5, :cond_0

    .line 191
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v4, v4, Lcom/lx/launcher8/bean/ItemCell;->cellType:I

    and-int/lit16 v4, v4, 0xfff

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    .line 193
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->selectIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 194
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinear;

    invoke-virtual {v4, v9}, Lcom/lx/launcher8/view/SettingLinear;->setVisibility(I)V

    .line 196
    :cond_0
    return-void

    .line 178
    :cond_1
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->btnConfirm:Landroid/widget/Button;

    const v5, 0x7f0200aa

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 179
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->btnCancel:Landroid/widget/Button;

    const v5, 0x7f0200a3

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 180
    const v4, 0x7f020174

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 181
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->btnDelete:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    const-string v4, "#dddddd"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 185
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->selectIcon:Landroid/widget/FrameLayout;

    const-string v5, "#dddddd"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 23
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 452
    const/16 v18, -0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 453
    const/16 v18, 0x0

    .line 535
    :goto_0
    return v18

    .line 455
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 535
    :cond_1
    :goto_1
    const/16 v18, 0x0

    goto :goto_0

    .line 457
    :pswitch_0
    const-string v18, "extral_short_cut"

    const/16 v19, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 458
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->createShortcut(Landroid/content/Intent;)V

    .line 466
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/lx/launcher8/bean/ItemCell;->appName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinear;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/lx/launcher8/bean/ItemCell;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->text:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lx/launcher8/bean/ItemCell;->getTextGravity()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->text:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    rem-int v21, v21, v22

    aget-object v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Lcom/lx/launcher8/util/ColorManager;->getInstance()Lcom/lx/launcher8/util/ColorManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/lx/launcher8/bean/ItemCell;->textColor:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/lx/launcher8/util/ColorManager;->getColorName(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const-string v21, "#31b2e7"

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    invoke-virtual/range {v18 .. v21}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_1

    .line 460
    :cond_2
    const-string v18, "extral_info"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    .line 461
    .local v8, cn:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v18

    check-cast v18, Lcom/lx/launcher8/AnallApp;

    invoke-virtual/range {v18 .. v18}, Lcom/lx/launcher8/AnallApp;->getModel()Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/lx/launcher8/db/LauncherModel;->getAppList()Lcom/anall/app/bean/AllAppsList;

    move-result-object v18

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/anall/app/bean/AllAppsList;->findApplicationInfoLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/anall/app/bean/AppInfo;

    move-result-object v6

    .line 462
    .local v6, app:Lcom/anall/app/bean/AppInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    move-object/from16 v18, v0

    iget-object v0, v6, Lcom/anall/app/bean/AppInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/lx/launcher8/bean/ItemCell;->title:Ljava/lang/String;

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/lx/launcher8/bean/ItemCell;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/lx/launcher8/bean/ItemCell;->appName:Ljava/lang/String;

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    move-object/from16 v18, v0

    iget-object v0, v6, Lcom/anall/app/bean/AppInfo;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/lx/launcher8/bean/ItemCell;->intent:Landroid/content/Intent;

    goto/16 :goto_2

    .line 470
    .end local v6           #app:Lcom/anall/app/bean/AppInfo;
    .end local v8           #cn:Landroid/content/ComponentName;
    :pswitch_1
    const-string v18, "extral_value"

    const/16 v19, -0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 471
    .local v9, color:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput v9, v0, Lcom/lx/launcher8/bean/ItemCell;->backColor:I

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/lx/launcher8/view/SettingLinear;->setBottomColorView(I)V

    .line 473
    const-string v18, "extral_name"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 474
    .local v12, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v12, v1, v2}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_1

    .line 477
    .end local v9           #color:I
    .end local v12           #name:Ljava/lang/String;
    :pswitch_2
    const-string v18, "extral_info"

    const v19, 0x10001

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 478
    .local v14, size:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/lx/launcher8/bean/ItemCell;->setSize(I)V

    goto/16 :goto_1

    .line 481
    .end local v14           #size:I
    :pswitch_3
    const-string v18, "extral_value"

    const/16 v19, 0x64

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 482
    .local v3, alpha:I
    const-string v18, "extral_value1"

    const/16 v19, 0x64

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 483
    .local v4, alphaFG:I
    const-string v18, "extral_value2"

    const/16 v19, 0x64

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 484
    .local v5, alphaTX:I
    mul-int/lit16 v0, v3, 0xff

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x64

    move/from16 v0, v18

    rsub-int v3, v0, 0xff

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/lx/launcher8/bean/ItemCell;->setCellAlphaBg(I)V

    .line 486
    mul-int/lit16 v0, v4, 0xff

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x64

    move/from16 v0, v18

    rsub-int v4, v0, 0xff

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/lx/launcher8/bean/ItemCell;->setCellAlphaFg(I)V

    .line 488
    mul-int/lit16 v0, v5, 0xff

    move/from16 v18, v0

    div-int/lit8 v5, v18, 0x64

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/lx/launcher8/bean/ItemCell;->setTextAlpha(I)V

    goto/16 :goto_1

    .line 492
    .end local v3           #alpha:I
    .end local v4           #alphaFG:I
    .end local v5           #alphaTX:I
    :pswitch_4
    const-string v18, "text_gravity"

    const/16 v19, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 493
    .local v16, textGravity:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/bean/ItemCell;->setTextGarivty(I)V

    .line 494
    const-string v18, "text_color"

    const/16 v19, -0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 495
    .local v15, textColor:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput v15, v0, Lcom/lx/launcher8/bean/ItemCell;->textColor:I

    .line 496
    const-string v18, "text_name"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 497
    .local v17, textName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/lx/launcher8/bean/ItemCell;->title:Ljava/lang/String;

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinear;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/lx/launcher8/bean/ItemCell;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->text:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lx/launcher8/bean/ItemCell;->getTextGravity()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->text:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    rem-int v21, v21, v22

    aget-object v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Lcom/lx/launcher8/util/ColorManager;->getInstance()Lcom/lx/launcher8/util/ColorManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/lx/launcher8/bean/ItemCell;->textColor:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/lx/launcher8/util/ColorManager;->getColorName(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const-string v21, "#31b2e7"

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    invoke-virtual/range {v18 .. v21}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_1

    .line 501
    .end local v15           #textColor:I
    .end local v16           #textGravity:I
    .end local v17           #textName:Ljava/lang/String;
    :pswitch_5
    const-string v18, "extral_value"

    const/16 v19, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 502
    .local v11, gravity:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/lx/launcher8/bean/TimeCell;

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    move-object/from16 v18, v0

    check-cast v18, Lcom/lx/launcher8/bean/TimeCell;

    move-object/from16 v0, v18

    iput v11, v0, Lcom/lx/launcher8/bean/TimeCell;->gravity:I

    goto/16 :goto_1

    .line 504
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/lx/launcher8/bean/DynCell;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/lx/launcher8/bean/ItemCell;->setImgGravity(I)V

    goto/16 :goto_1

    .line 509
    .end local v11           #gravity:I
    :pswitch_6
    const-string v18, "return-data"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 510
    .local v7, bt:Landroid/graphics/Bitmap;
    if-nez v7, :cond_4

    invoke-static/range {p3 .. p3}, Lcom/lx/launcher8/util/Utils;->getIntentExtra(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 511
    :cond_4
    if-nez v7, :cond_5

    .line 512
    const-string v18, "extral_info"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 513
    .local v13, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v13}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 515
    .end local v13           #path:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/lx/launcher8/bean/TimeCell;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    move-object/from16 v18, v0

    check-cast v18, Lcom/lx/launcher8/bean/TimeCell;

    move-object/from16 v0, v18

    iput-object v7, v0, Lcom/lx/launcher8/bean/TimeCell;->backBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 517
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/lx/launcher8/bean/DynCell;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    move-object/from16 v18, v0

    check-cast v18, Lcom/lx/launcher8/bean/DynCell;

    move-object/from16 v0, v18

    iput-object v7, v0, Lcom/lx/launcher8/bean/DynCell;->icon:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 530
    .end local v7           #bt:Landroid/graphics/Bitmap;
    :pswitch_7
    const-string v18, "extral_boolean"

    const/16 v19, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 531
    .local v10, enable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    move-object/from16 v18, v0

    check-cast v18, Lcom/lx/launcher8/bean/DynCell;

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/lx/launcher8/bean/DynCell;->setShowGroup(Z)V

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->checkGroupStateIfNeed()V

    goto/16 :goto_1

    .line 455
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public onBack()Z
    .locals 3

    .prologue
    .line 614
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfoString:Ljava/lang/String;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v1}, Lcom/lx/launcher8/bean/ItemCell;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 615
    new-instance v0, Lcom/lx/launcher8/view/PopupDialog;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mContext:Landroid/content/Context;

    const v2, 0x7f0a01c4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;->setTitle(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0134

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;->setMsg(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 616
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0077

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$10;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$10;-><init>(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)V

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setOkButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 626
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0078

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$11;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$11;-><init>(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)V

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setCancelButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 633
    invoke-virtual {v0}, Lcom/lx/launcher8/view/PopupDialog;->show()V

    .line 634
    const/4 v0, 0x1

    .line 636
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 14

    .prologue
    .line 378
    iget v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->backColor:I

    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v11, v11, Lcom/lx/launcher8/bean/ItemCell;->backColor:I

    if-eq v10, v11, :cond_0

    .line 379
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v10, v10, Lcom/lx/launcher8/bean/ItemCell;->backColor:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_7

    .line 380
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    iget v11, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->themeColor:I

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 384
    :goto_0
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v10, v10, Lcom/lx/launcher8/bean/ItemCell;->backColor:I

    iput v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->backColor:I

    .line 387
    :cond_0
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/16 v12, 0x11

    invoke-direct {v8, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 388
    .local v8, p:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mContext:Landroid/content/Context;

    const/high16 v11, 0x42f0

    invoke-static {v10, v11}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v10

    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mContext:Landroid/content/Context;

    const/high16 v12, 0x42f0

    invoke-static {v11, v12}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->getIconImgMargin(FF)[F

    move-result-object v7

    .line 389
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

    .line 390
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->iconImg:Landroid/widget/ImageView;

    sget-object v11, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 393
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    instance-of v10, v10, Lcom/lx/launcher8/bean/TimeCell;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v10, Lcom/lx/launcher8/bean/TimeCell;

    iget-object v10, v10, Lcom/lx/launcher8/bean/TimeCell;->backBitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_8

    .line 394
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->iconImg:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v10, Lcom/lx/launcher8/bean/TimeCell;

    iget-object v10, v10, Lcom/lx/launcher8/bean/TimeCell;->backBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 399
    :cond_1
    :goto_1
    const/4 v5, -0x1

    .line 400
    .local v5, gravity:I
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    instance-of v10, v10, Lcom/lx/launcher8/bean/TimeCell;

    if-eqz v10, :cond_9

    .line 401
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v10, Lcom/lx/launcher8/bean/TimeCell;

    iget v5, v10, Lcom/lx/launcher8/bean/TimeCell;->gravity:I

    .line 405
    :cond_2
    :goto_2
    const/4 v10, -0x1

    if-eq v5, v10, :cond_3

    .line 406
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/high16 v12, 0x4188

    invoke-direct {v9, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 407
    .local v9, params:Landroid/widget/LinearLayout$LayoutParams;
    if-nez v5, :cond_a

    .line 408
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v12, 0x7f0a00ed

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 409
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->iconImg:Landroid/widget/ImageView;

    sget-object v11, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 410
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mContext:Landroid/content/Context;

    const/high16 v11, 0x4120

    invoke-static {v10, v11}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v10

    const/high16 v11, 0x3f00

    add-float v6, v10, v11

    .line 411
    .local v6, margin:F
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v10, v10, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    int-to-float v10, v10

    div-float v10, v6, v10

    float-to-int v10, v10

    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v11, v11, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    int-to-float v11, v11

    div-float v11, v6, v11

    float-to-int v11, v11

    iget-object v12, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v12, v12, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    int-to-float v12, v12

    div-float v12, v6, v12

    float-to-int v12, v12

    iget-object v13, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v13, v13, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    int-to-float v13, v13

    div-float v13, v6, v13

    float-to-int v13, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 417
    .end local v6           #margin:F
    :goto_3
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->iconImg:Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    .end local v9           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v10}, Lcom/lx/launcher8/bean/ItemCell;->getCellAlphaFg()I

    move-result v2

    .line 421
    .local v2, cellFgAlpha:I
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v10}, Lcom/lx/launcher8/bean/ItemCell;->getCellAlphaBg()I

    move-result v1

    .line 422
    .local v1, cellBgAlpha:I
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v10}, Lcom/lx/launcher8/bean/ItemCell;->getTextAlpha()I

    move-result v3

    .line 423
    .local v3, cellTxAlpha:I
    iget v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellFgAlpha:I

    if-ne v10, v2, :cond_4

    iget v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellBgAlpha:I

    if-ne v10, v1, :cond_4

    iget v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellTxAlpha:I

    if-eq v10, v3, :cond_5

    .line 424
    :cond_4
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;

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

    iget-object v12, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;

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

    const-string v12, "% "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v13, 0x7f0a0168

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    mul-int/lit8 v12, v3, 0x64

    div-int/lit16 v12, v12, 0xff

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 425
    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellFgAlpha:I

    .line 426
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellBgAlpha:I

    .line 427
    iput v3, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellTxAlpha:I

    .line 430
    :cond_5
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v12, v12, Lcom/lx/launcher8/bean/ItemCell;->spanX:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v12, v12, Lcom/lx/launcher8/bean/ItemCell;->spanY:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 431
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget-object v10, v10, Lcom/lx/launcher8/bean/ItemCell;->appName:Ljava/lang/String;

    if-nez v10, :cond_b

    .line 432
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v10, v10, Lcom/lx/launcher8/bean/ItemCell;->cellType:I

    and-int/lit16 v10, v10, 0xfff

    const/4 v11, 0x1

    if-eq v10, v11, :cond_6

    .line 433
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget-object v10, v10, Lcom/lx/launcher8/bean/ItemCell;->intent:Landroid/content/Intent;

    if-eqz v10, :cond_6

    .line 434
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget-object v10, v10, Lcom/lx/launcher8/bean/ItemCell;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 435
    .local v4, cn:Landroid/content/ComponentName;
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;

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

    .line 436
    .local v0, app:Lcom/anall/app/bean/AppInfo;
    if-eqz v0, :cond_6

    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v11, v0, Lcom/anall/app/bean/AppInfo;->title:Ljava/lang/CharSequence;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 441
    .end local v0           #app:Lcom/anall/app/bean/AppInfo;
    .end local v4           #cn:Landroid/content/ComponentName;
    :cond_6
    :goto_4
    return-void

    .line 382
    .end local v1           #cellBgAlpha:I
    .end local v2           #cellFgAlpha:I
    .end local v3           #cellTxAlpha:I
    .end local v5           #gravity:I
    .end local v7           #ms:[F
    .end local v8           #p:Landroid/widget/FrameLayout$LayoutParams;
    :cond_7
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget v11, v11, Lcom/lx/launcher8/bean/ItemCell;->backColor:I

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 395
    .restart local v7       #ms:[F
    .restart local v8       #p:Landroid/widget/FrameLayout$LayoutParams;
    :cond_8
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    instance-of v10, v10, Lcom/lx/launcher8/bean/DynCell;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v10, Lcom/lx/launcher8/bean/DynCell;

    iget-object v10, v10, Lcom/lx/launcher8/bean/DynCell;->icon:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_1

    .line 396
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->iconImg:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v10, Lcom/lx/launcher8/bean/DynCell;

    iget-object v10, v10, Lcom/lx/launcher8/bean/DynCell;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 402
    .restart local v5       #gravity:I
    :cond_9
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    instance-of v10, v10, Lcom/lx/launcher8/bean/DynCell;

    if-eqz v10, :cond_2

    .line 403
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v10}, Lcom/lx/launcher8/bean/ItemCell;->getImgGravity()I

    move-result v5

    goto/16 :goto_2

    .line 413
    .restart local v9       #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_a
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;

    const v12, 0x7f0a00ec

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 414
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->iconImg:Landroid/widget/ImageView;

    sget-object v11, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 415
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_3

    .line 439
    .end local v9           #params:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v1       #cellBgAlpha:I
    .restart local v2       #cellFgAlpha:I
    .restart local v3       #cellTxAlpha:I
    :cond_b
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->cellInfo:Lcom/lx/launcher8/bean/ItemCell;

    iget-object v11, v11, Lcom/lx/launcher8/bean/ItemCell;->appName:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto :goto_4
.end method

.method public onViewMovingFront()V
    .locals 0

    .prologue
    .line 692
    return-void
.end method
