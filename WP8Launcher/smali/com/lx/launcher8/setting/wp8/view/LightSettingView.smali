.class public Lcom/lx/launcher8/setting/wp8/view/LightSettingView;
.super Ljava/lang/Object;
.source "LightSettingView.java"

# interfaces
.implements Lcom/lx/launcher8/setting/view/SettingView;


# static fields
.field static final REQUEST_LIGHT_LONG:I = 0x23

.field static final REQUEST_LIGHT_MODE:I = 0x22

.field static final REQUEST_OPEN_MODE:I = 0x21

.field static final REQUEST_PICK_COLOR:I = 0x1

.field static final REQUEST_PICK_PIC:I = 0x3

.field static final REQUEST_PICK_SECOND_PIC:I = 0x9

.field static final REQUEST_PICK_SIZE:I = 0x4

.field static final REQUEST_PIC_POSITION:I = 0x5

.field static final REQUEST_TEXT_STYLE:I = 0x6

.field static final REQUEST_TILE_BG_ALPHA:I = 0x7


# instance fields
.field protected appNameLinear:Lcom/lx/launcher8/view/SettingLinear;

.field private backColor:I

.field protected bindingApp:Lcom/lx/launcher8/view/SettingLinear;

.field protected btnCancel:Landroid/widget/Button;

.field protected btnConfirm:Landroid/widget/Button;

.field protected btnDelete:Landroid/widget/TextView;

.field private cellBgAlpha:I

.field private cellFgAlpha:I

.field protected cellInfo:Lcom/lx/launcher8/bean/LightCell;

.field private cellInfoString:Ljava/lang/String;

.field private cellTxAlpha:I

.field private deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

.field private gravity:I

.field protected iconImg:Landroid/widget/ImageView;

.field protected iconImgBg:Landroid/widget/LinearLayout;

.field protected mAct:Landroid/app/Activity;

.field private mClick:Landroid/view/View$OnClickListener;

.field protected mContext:Landroid/content/Context;

.field protected mMainView:Landroid/view/View;

.field protected picPositionLinear:Lcom/lx/launcher8/view/SettingLinear;

.field private scrollView:Landroid/widget/ScrollView;

.field protected selectIcon:Landroid/widget/FrameLayout;

.field protected selectIconBtn:Landroid/widget/Button;

.field protected setTileSize:Lcom/lx/launcher8/view/SettingLinear;

.field private text:[Ljava/lang/String;

.field private themeColor:I

.field protected tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

.field protected tileBgTransparent:Lcom/lx/launcher8/view/SettingLinear;

.field protected tileLightLong:Lcom/lx/launcher8/view/SettingLinear;

.field protected tileLightMode:Lcom/lx/launcher8/view/SettingLinear;

.field protected tileOpenMode:Lcom/lx/launcher8/view/SettingLinear;

.field protected tileSecondPic:Lcom/lx/launcher8/view/SettingLinear;

.field protected tileShowFunc:Lcom/lx/launcher8/view/SettingLinear;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/lx/launcher8/bean/LightCell;)V
    .locals 4
    .parameter "act"
    .parameter "cellInfo"

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->scrollView:Landroid/widget/ScrollView;

    .line 56
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->view:Landroid/view/View;

    .line 57
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 58
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    .line 59
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfoString:Ljava/lang/String;

    .line 60
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->text:[Ljava/lang/String;

    .line 61
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->themeColor:I

    .line 62
    const/4 v0, -0x2

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->backColor:I

    .line 63
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->gravity:I

    .line 64
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellFgAlpha:I

    .line 65
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellBgAlpha:I

    .line 66
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellTxAlpha:I

    .line 68
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mContext:Landroid/content/Context;

    .line 69
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    .line 70
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mMainView:Landroid/view/View;

    .line 71
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->iconImg:Landroid/widget/ImageView;

    .line 72
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->selectIconBtn:Landroid/widget/Button;

    .line 73
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->selectIcon:Landroid/widget/FrameLayout;

    .line 74
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    .line 75
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinear;

    .line 76
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinear;

    .line 77
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinear;

    .line 78
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    .line 79
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    .line 80
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinear;

    .line 81
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinear;

    .line 82
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinear;

    .line 83
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->btnDelete:Landroid/widget/TextView;

    .line 84
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->btnConfirm:Landroid/widget/Button;

    .line 85
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->btnCancel:Landroid/widget/Button;

    .line 86
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileOpenMode:Lcom/lx/launcher8/view/SettingLinear;

    .line 87
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileLightMode:Lcom/lx/launcher8/view/SettingLinear;

    .line 88
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileLightLong:Lcom/lx/launcher8/view/SettingLinear;

    .line 540
    new-instance v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/LightSettingView;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mClick:Landroid/view/View$OnClickListener;

    .line 91
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    .line 92
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    .line 94
    invoke-virtual {p2}, Lcom/lx/launcher8/bean/LightCell;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfoString:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030070

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mMainView:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030062

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->view:Landroid/view/View;

    .line 98
    new-instance v0, Lcom/lx/launcher8/cfg/DeskSetting;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 99
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->text:[Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->initView()V

    .line 102
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->initData()V

    .line 104
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->view:Landroid/view/View;

    const v1, 0x7f090191

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->scrollView:Landroid/widget/ScrollView;

    .line 105
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFadingEdgeLength(I)V

    .line 106
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->removeAllViews()V

    .line 108
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->scrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 109
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mMainView:Landroid/view/View;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x4248

    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 110
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

    .line 636
    const/4 v3, 0x0

    .local v3, l:F
    const/4 v5, 0x0

    .local v5, t:F
    const/4 v4, 0x0

    .local v4, r:F
    const/4 v0, 0x0

    .line 637
    .local v0, b:F
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v6, v6, Lcom/lx/launcher8/bean/LightCell;->spanX:I

    int-to-float v1, v6

    .line 638
    .local v1, cellX:F
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v6, v6, Lcom/lx/launcher8/bean/LightCell;->spanY:I

    int-to-float v2, v6

    .line 639
    .local v2, cellY:F
    div-float v6, v1, v2

    const/high16 v7, 0x4000

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    .line 640
    div-float v5, p2, v10

    .line 641
    div-float v0, p2, v10

    .line 670
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

    .line 642
    :cond_1
    div-float v6, v1, v2

    cmpl-float v6, v6, v8

    if-nez v6, :cond_2

    .line 643
    div-float v5, p2, v8

    .line 644
    div-float v0, p2, v8

    goto :goto_0

    .line 645
    :cond_2
    div-float v6, v1, v2

    cmpl-float v6, v6, v10

    if-nez v6, :cond_3

    .line 646
    mul-float v6, p2, v8

    div-float v5, v6, v9

    .line 647
    mul-float v6, p2, v8

    div-float v0, v6, v9

    goto :goto_0

    .line 648
    :cond_3
    div-float v6, v1, v2

    const/high16 v7, 0x3f00

    cmpl-float v6, v6, v7

    if-nez v6, :cond_4

    .line 649
    div-float v3, p1, v10

    .line 650
    div-float v4, p1, v10

    goto :goto_0

    .line 651
    :cond_4
    div-float v6, v1, v2

    const v7, 0x3eaaaaab

    cmpl-float v6, v6, v7

    if-nez v6, :cond_5

    .line 652
    div-float v3, p1, v8

    .line 653
    div-float v4, p1, v8

    goto :goto_0

    .line 654
    :cond_5
    div-float v6, v1, v2

    const/high16 v7, 0x3e80

    cmpl-float v6, v6, v7

    if-nez v6, :cond_6

    .line 655
    mul-float v6, p1, v8

    div-float v3, v6, v9

    .line 656
    mul-float v6, p1, v8

    div-float v4, v6, v9

    goto :goto_0

    .line 657
    :cond_6
    div-float v6, v1, v2

    const/high16 v7, 0x3fc0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_7

    .line 658
    div-float v5, p2, v11

    .line 659
    div-float v0, p2, v11

    goto :goto_0

    .line 660
    :cond_7
    div-float v6, v1, v2

    const v7, 0x3faaaaab

    cmpl-float v6, v6, v7

    if-nez v6, :cond_8

    .line 661
    div-float v5, p2, v9

    .line 662
    div-float v0, p2, v9

    goto :goto_0

    .line 663
    :cond_8
    div-float v6, v1, v2

    const v7, 0x3f2aaaab

    cmpl-float v6, v6, v7

    if-nez v6, :cond_9

    .line 664
    div-float v3, p1, v11

    .line 665
    div-float v4, p1, v11

    goto :goto_0

    .line 666
    :cond_9
    div-float v6, v1, v2

    const/high16 v7, 0x3f40

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    .line 667
    div-float v3, p1, v9

    .line 668
    div-float v4, p1, v9

    goto/16 :goto_0
.end method

.method private initData()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 433
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->themeColor:I

    .line 435
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->selectIconBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->selectIcon:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0124

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 439
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinear;

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget-object v0, v0, Lcom/lx/launcher8/bean/LightCell;->title:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0055

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 441
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->text:[Ljava/lang/String;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    invoke-virtual {v3}, Lcom/lx/launcher8/bean/LightCell;->getTextGravity()I

    move-result v3

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->text:[Ljava/lang/String;

    array-length v4, v4

    rem-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 442
    invoke-static {}, Lcom/lx/launcher8/util/ColorManager;->getInstance()Lcom/lx/launcher8/util/ColorManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v3, v3, Lcom/lx/launcher8/bean/LightCell;->textColor:I

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/util/ColorManager;->getColorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 440
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 443
    const-string v2, "#31b2e7"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 439
    invoke-virtual {v1, v0, v5, v2}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 444
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$5;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$5;-><init>(Lcom/lx/launcher8/setting/wp8/view/LightSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0125

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 460
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0131

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 463
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v2, v2, Lcom/lx/launcher8/bean/LightCell;->spanX:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v2, v2, Lcom/lx/launcher8/bean/LightCell;->spanY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 464
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$6;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$6;-><init>(Lcom/lx/launcher8/setting/wp8/view/LightSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0052

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 475
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget-object v0, v0, Lcom/lx/launcher8/bean/LightCell;->appName:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 476
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0132

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 479
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v0, v0, Lcom/lx/launcher8/bean/LightCell;->backColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 480
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    iget v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->themeColor:I

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setBottomColorView(I)V

    .line 481
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    invoke-static {}, Lcom/lx/launcher8/util/ColorManager;->getInstance()Lcom/lx/launcher8/util/ColorManager;

    move-result-object v1

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->themeColor:I

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/util/ColorManager;->getColorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 486
    :goto_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0115

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 489
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0166

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "100% "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0167

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 490
    const-string v2, "100% "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

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

    .line 489
    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 491
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$7;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$7;-><init>(Lcom/lx/launcher8/setting/wp8/view/LightSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->btnDelete:Landroid/widget/TextView;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$8;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$8;-><init>(Lcom/lx/launcher8/setting/wp8/view/LightSettingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->btnConfirm:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->btnCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget-object v0, v0, Lcom/lx/launcher8/bean/LightCell;->title:Ljava/lang/String;

    goto/16 :goto_0

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget-object v0, v0, Lcom/lx/launcher8/bean/LightCell;->appName:Ljava/lang/String;

    goto/16 :goto_1

    .line 483
    :cond_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v1, v1, Lcom/lx/launcher8/bean/LightCell;->backColor:I

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setBottomColorView(I)V

    .line 484
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    invoke-static {}, Lcom/lx/launcher8/util/ColorManager;->getInstance()Lcom/lx/launcher8/util/ColorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v2, v2, Lcom/lx/launcher8/bean/LightCell;->backColor:I

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/util/ColorManager;->getColorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_2
.end method

.method private initView()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/high16 v8, -0x100

    const/4 v7, 0x0

    .line 351
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901d1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->iconImg:Landroid/widget/ImageView;

    .line 352
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901d2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->selectIconBtn:Landroid/widget/Button;

    .line 353
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901cf

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->selectIcon:Landroid/widget/FrameLayout;

    .line 354
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901d0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    .line 355
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901d3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinear;

    .line 356
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901d4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinear;

    .line 357
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901d5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinear;

    .line 358
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901d6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    .line 359
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f090122

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    .line 360
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901d7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinear;

    .line 361
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901dd

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinear;

    .line 362
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901e4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinear;

    .line 363
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901df

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileOpenMode:Lcom/lx/launcher8/view/SettingLinear;

    .line 364
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901e1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileLightMode:Lcom/lx/launcher8/view/SettingLinear;

    .line 365
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mMainView:Landroid/view/View;

    const v6, 0x7f0901e3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileLightLong:Lcom/lx/launcher8/view/SettingLinear;

    .line 367
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->view:Landroid/view/View;

    const v6, 0x7f090194

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->btnConfirm:Landroid/widget/Button;

    .line 368
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->view:Landroid/view/View;

    const v6, 0x7f090196

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->btnCancel:Landroid/widget/Button;

    .line 370
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->view:Landroid/view/View;

    const v6, 0x7f090198

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->btnDelete:Landroid/widget/TextView;

    .line 371
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->view:Landroid/view/View;

    const v6, 0x7f090195

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 372
    .local v2, confirmBtnText:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->view:Landroid/view/View;

    const v6, 0x7f090197

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 373
    .local v0, cancelBtnText:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->view:Landroid/view/View;

    const v6, 0x7f090067

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 374
    .local v3, showContentLinear:Landroid/widget/Button;
    new-instance v5, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$4;

    invoke-direct {v5, p0, v2, v0}, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$4;-><init>(Lcom/lx/launcher8/setting/wp8/view/LightSettingView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->view:Landroid/view/View;

    const v6, 0x7f09005c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 398
    .local v1, confirmBottom:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 399
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v5}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v5

    if-eqz v5, :cond_1

    .line 401
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->btnConfirm:Landroid/widget/Button;

    const v6, 0x7f0200ab

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 402
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->btnCancel:Landroid/widget/Button;

    const v6, 0x7f0200a4

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 403
    const v5, 0x7f020175

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 404
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 405
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 406
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->btnDelete:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 407
    const-string v5, "#313131"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 408
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->selectIcon:Landroid/widget/FrameLayout;

    const-string v6, "#313131"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 420
    :goto_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v5, v5, Lcom/lx/launcher8/bean/LightCell;->cellType:I

    and-int/lit16 v4, v5, 0xfff

    .line 421
    .local v4, type:I
    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    .line 422
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileOpenMode:Lcom/lx/launcher8/view/SettingLinear;

    invoke-virtual {v5, v7}, Lcom/lx/launcher8/view/SettingLinear;->setVisibility(I)V

    .line 423
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileLightMode:Lcom/lx/launcher8/view/SettingLinear;

    invoke-virtual {v5, v7}, Lcom/lx/launcher8/view/SettingLinear;->setVisibility(I)V

    .line 424
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileLightLong:Lcom/lx/launcher8/view/SettingLinear;

    invoke-virtual {v5, v7}, Lcom/lx/launcher8/view/SettingLinear;->setVisibility(I)V

    .line 425
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileOpenMode:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileLightMode:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileLightLong:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    :cond_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setVisibility(I)V

    .line 430
    return-void

    .line 410
    .end local v4           #type:I
    :cond_1
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->btnConfirm:Landroid/widget/Button;

    const v6, 0x7f0200aa

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 411
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->btnCancel:Landroid/widget/Button;

    const v6, 0x7f0200a3

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 412
    const v5, 0x7f020174

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 413
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 414
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 415
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->btnDelete:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 416
    const-string v5, "#dddddd"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 417
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->selectIcon:Landroid/widget/FrameLayout;

    const-string v6, "#dddddd"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public getBottomBtns()[Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 675
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->view:Landroid/view/View;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 24
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 226
    const/16 v19, -0x1

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    if-nez p3, :cond_1

    .line 227
    :cond_0
    const/16 v19, 0x0

    .line 315
    :goto_0
    return v19

    .line 229
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 315
    :cond_2
    :goto_1
    const/16 v19, 0x0

    goto :goto_0

    .line 231
    :sswitch_0
    const-string v19, "return-data"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 232
    .local v7, bt:Landroid/graphics/Bitmap;
    if-nez v7, :cond_3

    .line 233
    invoke-static/range {p3 .. p3}, Lcom/lx/launcher8/util/Utils;->getIntentExtra(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 234
    :cond_3
    if-eqz v7, :cond_4

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v7, v0, Lcom/lx/launcher8/bean/LightCell;->icon:Landroid/graphics/Bitmap;

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/lx/launcher8/bean/LightCell;->iconType:I

    goto :goto_1

    .line 238
    :cond_4
    const-string v19, "extral_info"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 239
    .local v12, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v12, v0, Lcom/lx/launcher8/bean/LightCell;->iconPath:Ljava/lang/String;

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v12}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/lx/launcher8/bean/LightCell;->icon:Landroid/graphics/Bitmap;

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/lx/launcher8/bean/LightCell;->iconType:I

    goto :goto_1

    .line 245
    .end local v7           #bt:Landroid/graphics/Bitmap;
    .end local v12           #path:Ljava/lang/String;
    :sswitch_1
    const-string v19, "return-data"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 246
    .restart local v7       #bt:Landroid/graphics/Bitmap;
    if-nez v7, :cond_5

    .line 247
    invoke-static/range {p3 .. p3}, Lcom/lx/launcher8/util/Utils;->getIntentExtra(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 248
    :cond_5
    if-eqz v7, :cond_6

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v7, v0, Lcom/lx/launcher8/bean/LightCell;->icon2:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 251
    :cond_6
    const-string v19, "extral_info"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 252
    .restart local v12       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v12}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/lx/launcher8/bean/LightCell;->icon2:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 256
    .end local v7           #bt:Landroid/graphics/Bitmap;
    .end local v12           #path:Ljava/lang/String;
    :sswitch_2
    const-string v19, "changeid"

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 257
    .local v10, id:I
    const-string v19, "extral_value"

    const/16 v20, -0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 258
    .local v8, color:I
    const v19, 0x7f090042

    move/from16 v0, v19

    if-ne v10, v0, :cond_8

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput v8, v0, Lcom/lx/launcher8/bean/LightCell;->textColor:I

    .line 264
    :cond_7
    :goto_2
    const-string v19, "extral_name"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 265
    .local v11, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v11, v1, v2}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_1

    .line 260
    .end local v11           #name:Ljava/lang/String;
    :cond_8
    const v19, 0x7f090044

    move/from16 v0, v19

    if-ne v10, v0, :cond_7

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput v8, v0, Lcom/lx/launcher8/bean/LightCell;->backColor:I

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/lx/launcher8/view/SettingLinear;->setBottomColorView(I)V

    goto :goto_2

    .line 268
    .end local v8           #color:I
    .end local v10           #id:I
    :sswitch_3
    const-string v19, "extral_info"

    const v20, 0x10001

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 269
    .local v13, size:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/lx/launcher8/bean/LightCell;->setSize(I)V

    goto/16 :goto_1

    .line 272
    .end local v13           #size:I
    :sswitch_4
    const-string v19, "extral_value"

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 273
    .local v9, gravity:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/lx/launcher8/bean/LightCell;->setImgGravity(I)V

    goto/16 :goto_1

    .line 276
    .end local v9           #gravity:I
    :sswitch_5
    const-string v19, "text_gravity"

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 277
    .local v15, textGravity:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/lx/launcher8/bean/LightCell;->setTextGarivty(I)V

    .line 278
    const-string v19, "text_color"

    const/16 v20, -0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 279
    .local v14, textColor:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput v14, v0, Lcom/lx/launcher8/bean/LightCell;->textColor:I

    .line 280
    const-string v19, "text_name"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 281
    .local v16, textName:Ljava/lang/String;
    if-eqz v16, :cond_9

    const-string v19, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/lx/launcher8/bean/LightCell;->title:Ljava/lang/String;

    .line 284
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinear;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/lx/launcher8/bean/LightCell;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    move-object/from16 v19, v0

    const v22, 0x7f0a0055

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v19

    :goto_3
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    const-string v19, " "

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->text:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lx/launcher8/bean/LightCell;->getTextGravity()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->text:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    rem-int v22, v22, v23

    aget-object v21, v21, v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 286
    invoke-static {}, Lcom/lx/launcher8/util/ColorManager;->getInstance()Lcom/lx/launcher8/util/ColorManager;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/lx/launcher8/bean/LightCell;->textColor:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/lx/launcher8/util/ColorManager;->getColorName(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    const-string v22, "#31b2e7"

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    .line 284
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 287
    const-string v19, "special_fun_text_type"

    const/16 v20, -0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 288
    .local v17, type:I
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/bean/LightCell;->setTextDisplayType(I)V

    goto/16 :goto_1

    .line 284
    .end local v17           #type:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/lx/launcher8/bean/LightCell;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    goto/16 :goto_3

    .line 292
    .end local v14           #textColor:I
    .end local v15           #textGravity:I
    .end local v16           #textName:Ljava/lang/String;
    :sswitch_6
    const-string v19, "extral_value"

    const/16 v20, 0x64

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 293
    .local v4, alpha:I
    const-string v19, "extral_value1"

    const/16 v20, 0x64

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 294
    .local v5, alphaFG:I
    const-string v19, "extral_value2"

    const/16 v20, 0x64

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 295
    .local v6, alphaTX:I
    mul-int/lit16 v0, v4, 0xff

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x64

    move/from16 v0, v19

    rsub-int v4, v0, 0xff

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/lx/launcher8/bean/LightCell;->setCellAlphaBg(I)V

    .line 297
    mul-int/lit16 v0, v5, 0xff

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x64

    move/from16 v0, v19

    rsub-int v5, v0, 0xff

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/lx/launcher8/bean/LightCell;->setCellAlphaFg(I)V

    .line 299
    mul-int/lit16 v0, v6, 0xff

    move/from16 v19, v0

    div-int/lit8 v6, v19, 0x64

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/bean/LightCell;->setTextAlpha(I)V

    goto/16 :goto_1

    .line 303
    .end local v4           #alpha:I
    .end local v5           #alphaFG:I
    .end local v6           #alphaTX:I
    :sswitch_7
    const-string v19, "item"

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 304
    .local v18, val:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move/from16 v0, v18

    move-object/from16 v1, v19

    iput v0, v1, Lcom/lx/launcher8/bean/LightCell;->openMode:I

    goto/16 :goto_1

    .line 307
    .end local v18           #val:I
    :sswitch_8
    const-string v19, "item"

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 308
    .restart local v18       #val:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move/from16 v0, v18

    move-object/from16 v1, v19

    iput v0, v1, Lcom/lx/launcher8/bean/LightCell;->lightMode:I

    goto/16 :goto_1

    .line 311
    .end local v18           #val:I
    :sswitch_9
    const-string v19, "item"

    const/16 v20, 0x2

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 312
    .restart local v18       #val:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move/from16 v0, v18

    move-object/from16 v1, v19

    iput v0, v1, Lcom/lx/launcher8/bean/LightCell;->lightLong:I

    goto/16 :goto_1

    .line 229
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x3 -> :sswitch_0
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x9 -> :sswitch_1
        0x21 -> :sswitch_7
        0x22 -> :sswitch_8
        0x23 -> :sswitch_9
    .end sparse-switch
.end method

.method public onBack()Z
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfoString:Ljava/lang/String;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    invoke-virtual {v1}, Lcom/lx/launcher8/bean/LightCell;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Lcom/lx/launcher8/view/PopupDialog;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mContext:Landroid/content/Context;

    const v2, 0x7f0a01c4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;->setTitle(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0134

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;->setMsg(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0077

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$2;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$2;-><init>(Lcom/lx/launcher8/setting/wp8/view/LightSettingView;)V

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setOkButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0078

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$3;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/LightSettingView$3;-><init>(Lcom/lx/launcher8/setting/wp8/view/LightSettingView;)V

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setCancelButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Lcom/lx/launcher8/view/PopupDialog;->show()V

    .line 340
    const/4 v0, 0x1

    .line 342
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 12

    .prologue
    .line 114
    iget v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->backColor:I

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v9, v9, Lcom/lx/launcher8/bean/LightCell;->backColor:I

    if-eq v8, v9, :cond_0

    .line 115
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v8, v8, Lcom/lx/launcher8/bean/LightCell;->backColor:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    .line 116
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    iget v9, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->themeColor:I

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 120
    :goto_0
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v8, v8, Lcom/lx/launcher8/bean/LightCell;->backColor:I

    iput v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->backColor:I

    .line 123
    :cond_0
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    invoke-virtual {v8}, Lcom/lx/launcher8/bean/LightCell;->getImgGravity()I

    move-result v3

    .line 125
    .local v3, gravity:I
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/16 v10, 0x11

    invoke-direct {v6, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 126
    .local v6, p:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mContext:Landroid/content/Context;

    const/high16 v9, 0x42f0

    invoke-static {v8, v9}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v8

    .line 127
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mContext:Landroid/content/Context;

    const/high16 v10, 0x42f0

    invoke-static {v9, v10}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v9

    .line 126
    invoke-direct {p0, v8, v9}, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->getIconImgMargin(FF)[F

    move-result-object v5

    .line 128
    .local v5, ms:[F
    const/4 v8, 0x0

    aget v8, v5, v8

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

    .line 129
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, 0x4188

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 132
    .local v7, params:Landroid/widget/LinearLayout$LayoutParams;
    if-nez v3, :cond_7

    .line 133
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->iconImg:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 134
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mContext:Landroid/content/Context;

    const/high16 v9, 0x4120

    invoke-static {v8, v9}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v8

    const/high16 v9, 0x3f00

    add-float v4, v8, v9

    .line 135
    .local v4, margin:F
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v8, v8, Lcom/lx/launcher8/bean/LightCell;->spanX:I

    int-to-float v8, v8

    div-float v8, v4, v8

    float-to-int v8, v8

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v9, v9, Lcom/lx/launcher8/bean/LightCell;->spanY:I

    int-to-float v9, v9

    div-float v9, v4, v9

    float-to-int v9, v9

    .line 136
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v10, v10, Lcom/lx/launcher8/bean/LightCell;->spanX:I

    int-to-float v10, v10

    div-float v10, v4, v10

    float-to-int v10, v10

    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v11, v11, Lcom/lx/launcher8/bean/LightCell;->spanY:I

    int-to-float v11, v11

    div-float v11, v4, v11

    float-to-int v11, v11

    .line 135
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 141
    .end local v4           #margin:F
    :goto_1
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->iconImg:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->gravity:I

    if-eq v8, v3, :cond_1

    .line 144
    if-nez v3, :cond_8

    .line 145
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a00ed

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 149
    :goto_2
    iput v3, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->gravity:I

    .line 152
    :cond_1
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget-object v8, v8, Lcom/lx/launcher8/bean/LightCell;->icon:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_2

    .line 153
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->iconImg:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget-object v9, v9, Lcom/lx/launcher8/bean/LightCell;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 156
    :cond_2
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v8, v8, Lcom/lx/launcher8/bean/LightCell;->cellType:I

    and-int/lit16 v8, v8, 0xfff

    const/16 v9, 0x20

    if-ne v8, v9, :cond_3

    .line 157
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinear;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/lx/launcher8/view/SettingLinear;->setVisibility(I)V

    .line 158
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a017f

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 159
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget-object v8, v8, Lcom/lx/launcher8/bean/LightCell;->icon2:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_9

    .line 160
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget-object v9, v9, Lcom/lx/launcher8/bean/LightCell;->icon2:Landroid/graphics/Bitmap;

    iget v10, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->themeColor:I

    invoke-virtual {v8, v9, v10}, Lcom/lx/launcher8/view/SettingLinear;->setBottomImageView(Landroid/graphics/Bitmap;I)V

    .line 163
    :goto_3
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinear;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/lx/launcher8/view/SettingLinear;->setVisibility(I)V

    .line 167
    :cond_3
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    invoke-virtual {v8}, Lcom/lx/launcher8/bean/LightCell;->getCellAlphaFg()I

    move-result v1

    .line 168
    .local v1, cellFgAlpha:I
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    invoke-virtual {v8}, Lcom/lx/launcher8/bean/LightCell;->getCellAlphaBg()I

    move-result v0

    .line 169
    .local v0, cellBgAlpha:I
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    invoke-virtual {v8}, Lcom/lx/launcher8/bean/LightCell;->getTextAlpha()I

    move-result v2

    .line 170
    .local v2, cellTxAlpha:I
    iget v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellFgAlpha:I

    if-ne v8, v1, :cond_4

    iget v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellBgAlpha:I

    if-ne v8, v0, :cond_4

    iget v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellTxAlpha:I

    if-eq v8, v2, :cond_5

    .line 171
    :cond_4
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinear;

    .line 172
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

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

    .line 173
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

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

    .line 174
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

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

    .line 172
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 174
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 171
    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 175
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellFgAlpha:I

    .line 176
    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellBgAlpha:I

    .line 177
    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellTxAlpha:I

    .line 180
    :cond_5
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v10, v10, Lcom/lx/launcher8/bean/LightCell;->spanX:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v10, v10, Lcom/lx/launcher8/bean/LightCell;->spanY:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 182
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileOpenMode:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a017c

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 183
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v8, v8, Lcom/lx/launcher8/bean/LightCell;->openMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    .line 184
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileOpenMode:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a00fa

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 189
    :goto_4
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileLightMode:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a017d

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 190
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v8, v8, Lcom/lx/launcher8/bean/LightCell;->lightMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b

    .line 191
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileLightMode:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a0101

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 196
    :goto_5
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileLightLong:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a017e

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 197
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v8, v8, Lcom/lx/launcher8/bean/LightCell;->lightLong:I

    packed-switch v8, :pswitch_data_0

    .line 211
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileLightLong:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a00fb

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 214
    :goto_6
    return-void

    .line 118
    .end local v0           #cellBgAlpha:I
    .end local v1           #cellFgAlpha:I
    .end local v2           #cellTxAlpha:I
    .end local v3           #gravity:I
    .end local v5           #ms:[F
    .end local v6           #p:Landroid/widget/FrameLayout$LayoutParams;
    .end local v7           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v9, v9, Lcom/lx/launcher8/bean/LightCell;->backColor:I

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 138
    .restart local v3       #gravity:I
    .restart local v5       #ms:[F
    .restart local v6       #p:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v7       #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->iconImg:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 139
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    .line 147
    :cond_8
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a00ec

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_2

    .line 162
    :cond_9
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinear;

    const v9, 0x7f0200eb

    iget v10, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->themeColor:I

    invoke-virtual {v8, v9, v10}, Lcom/lx/launcher8/view/SettingLinear;->setBottomImageView(II)V

    goto/16 :goto_3

    .line 186
    .restart local v0       #cellBgAlpha:I
    .restart local v1       #cellFgAlpha:I
    .restart local v2       #cellTxAlpha:I
    :cond_a
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileOpenMode:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a00f9

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_4

    .line 193
    :cond_b
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileLightMode:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a0100

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_5

    .line 199
    :pswitch_0
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileLightLong:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a00fc

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto :goto_6

    .line 202
    :pswitch_1
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileLightLong:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a00fd

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto :goto_6

    .line 205
    :pswitch_2
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileLightLong:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a00fe

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_6

    .line 208
    :pswitch_3
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->tileLightLong:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a00ff

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_6

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onViewMovingFront()V
    .locals 0

    .prologue
    .line 680
    return-void
.end method
