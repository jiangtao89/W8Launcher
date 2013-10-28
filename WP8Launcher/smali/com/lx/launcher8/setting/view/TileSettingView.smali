.class public Lcom/lx/launcher8/setting/view/TileSettingView;
.super Ljava/lang/Object;
.source "TileSettingView.java"

# interfaces
.implements Lcom/lx/launcher8/setting/view/SettingView;


# static fields
.field static final BUTTON_CANCEL:I = 0x14

.field static final BUTTON_CONFIRM:I = 0xa

.field static final REQUEST_PICK_APP:I = 0x2

.field static final REQUEST_PICK_COLOR:I = 0x1

.field static final REQUEST_PICK_PIC:I = 0x3

.field static final REQUEST_PICK_SECOND_PIC:I = 0x9

.field static final REQUEST_PICK_SIZE:I = 0x4

.field static final REQUEST_PIC_POSITION:I = 0x5

.field static final REQUEST_SET_SPECIAL_FUN:I = 0x8

.field static final REQUEST_TEXT_STYLE:I = 0x6

.field static final REQUEST_TILE_BG_ALPHA:I = 0x7


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

.field private cellInfo:Lcom/lx/launcher8/bean/AppCell;

.field private cellInfoString:Ljava/lang/String;

.field private cellTxAlpha:I

.field private cellType:I

.field private deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

.field private gravity:I

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

.field private tileSecondPic:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private tileShowFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private tileSpecialFunc:Lcom/lx/launcher8/view/SettingLinearLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/lx/launcher8/bean/AppCell;)V
    .locals 7
    .parameter "act"
    .parameter "cellInfo"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x2

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;

    .line 66
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;

    .line 68
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mMainView:Landroid/view/View;

    .line 70
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->scrollView:Landroid/widget/ScrollView;

    .line 72
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->ll:Landroid/widget/LinearLayout;

    .line 74
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->iconImg:Landroid/widget/ImageView;

    .line 75
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->selectIcon:Landroid/widget/FrameLayout;

    .line 76
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    .line 77
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 78
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 79
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 80
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 81
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 82
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 83
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 84
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 85
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileSpecialFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 86
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->btnDelete:Landroid/widget/Button;

    .line 87
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->btnConfirm:Landroid/widget/Button;

    .line 88
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->btnCancel:Landroid/widget/Button;

    .line 89
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->bottom:Landroid/widget/LinearLayout;

    .line 91
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 93
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    .line 95
    iput v5, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellType:I

    .line 97
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfoString:Ljava/lang/String;

    .line 328
    iput v3, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->themeColor:I

    .line 330
    iput v4, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->backColor:I

    .line 332
    iput v3, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->gravity:I

    .line 334
    iput v3, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellFgAlpha:I

    .line 335
    iput v3, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellBgAlpha:I

    .line 336
    iput v3, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellTxAlpha:I

    .line 528
    new-instance v0, Lcom/lx/launcher8/setting/view/TileSettingView$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/view/TileSettingView$1;-><init>(Lcom/lx/launcher8/setting/view/TileSettingView;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mClick:Landroid/view/View$OnClickListener;

    .line 100
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;

    .line 101
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    .line 103
    invoke-virtual {p2}, Lcom/lx/launcher8/bean/AppCell;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfoString:Ljava/lang/String;

    .line 104
    instance-of v0, p2, Lcom/lx/launcher8/bean/FolderCell;

    if-eqz v0, :cond_0

    iput v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellType:I

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006f

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mMainView:Landroid/view/View;

    .line 107
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/TileSettingView;->initView()V

    .line 109
    new-instance v0, Lcom/lx/launcher8/cfg/DeskSetting;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 111
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/TileSettingView;->initData()V

    .line 113
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->scrollView:Landroid/widget/ScrollView;

    .line 114
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setFadingEdgeLength(I)V

    .line 115
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->scrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 118
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->ll:Landroid/widget/LinearLayout;

    .line 119
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 120
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->ll:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->scrollView:Landroid/widget/ScrollView;

    const/high16 v2, 0x3f80

    invoke-static {v3, v4, v2}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->ll:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->bottom:Landroid/widget/LinearLayout;

    invoke-static {v3, v4}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 124
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/view/TileSettingView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/view/TileSettingView;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/view/TileSettingView;)Lcom/lx/launcher8/bean/AppCell;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/view/TileSettingView;)Lcom/lx/launcher8/view/SettingLinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    return-object v0
.end method

.method private createShortcut(Landroid/content/Intent;)V
    .locals 13
    .parameter "data"

    .prologue
    .line 649
    const-string v10, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 650
    .local v6, intent:Landroid/content/Intent;
    const-string v10, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 651
    .local v7, name:Ljava/lang/String;
    const-string v10, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 652
    .local v1, bitmap:Landroid/os/Parcelable;
    const/4 v3, 0x0

    .line 654
    .local v3, icon:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 655
    .local v4, iconResource:Landroid/content/Intent$ShortcutIconResource;
    if-eqz v1, :cond_2

    instance-of v10, v1, Landroid/graphics/Bitmap;

    if-eqz v10, :cond_2

    move-object v3, v1

    .line 656
    check-cast v3, Landroid/graphics/Bitmap;

    .line 674
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 675
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02014d

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 678
    :cond_1
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iput-object v7, v10, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    .line 679
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v11, v11, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    iput-object v11, v10, Lcom/lx/launcher8/bean/AppCell;->appName:Ljava/lang/String;

    .line 680
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v10, v10, Lcom/lx/launcher8/bean/AppCell;->appName:Ljava/lang/String;

    invoke-static {v3, v10}, Lcom/lx/launcher8/util/Utils;->createIntralBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 683
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iput-object v6, v10, Lcom/lx/launcher8/bean/AppCell;->intent:Landroid/content/Intent;

    .line 684
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    const v11, 0x38001

    iput v11, v10, Lcom/lx/launcher8/bean/AppCell;->cellType:I

    .line 686
    return-void

    .line 659
    :cond_2
    const-string v10, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 660
    .local v2, extra:Landroid/os/Parcelable;
    if-eqz v2, :cond_0

    instance-of v10, v2, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v10, :cond_0

    .line 662
    :try_start_0
    move-object v0, v2

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v4, v0

    .line 663
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 665
    .local v8, packageManager:Landroid/content/pm/PackageManager;
    iget-object v10, v4, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 664
    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    .line 666
    .local v9, resources:Landroid/content/res/Resources;
    iget-object v10, v4, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 667
    .local v5, id:I
    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;

    invoke-static {v10, v11}, Lcom/anall/app/bean/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 669
    .end local v5           #id:I
    .end local v8           #packageManager:Landroid/content/pm/PackageManager;
    .end local v9           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v10

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

    .line 689
    const/4 v3, 0x0

    .local v3, l:F
    const/4 v5, 0x0

    .local v5, t:F
    const/4 v4, 0x0

    .local v4, r:F
    const/4 v0, 0x0

    .line 690
    .local v0, b:F
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v6, v6, Lcom/lx/launcher8/bean/AppCell;->spanX:I

    int-to-float v1, v6

    .line 691
    .local v1, cellX:F
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v6, v6, Lcom/lx/launcher8/bean/AppCell;->spanY:I

    int-to-float v2, v6

    .line 692
    .local v2, cellY:F
    div-float v6, v1, v2

    const/high16 v7, 0x4000

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    .line 693
    div-float v5, p2, v10

    .line 694
    div-float v0, p2, v10

    .line 723
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

    .line 695
    :cond_1
    div-float v6, v1, v2

    cmpl-float v6, v6, v8

    if-nez v6, :cond_2

    .line 696
    div-float v5, p2, v8

    .line 697
    div-float v0, p2, v8

    goto :goto_0

    .line 698
    :cond_2
    div-float v6, v1, v2

    cmpl-float v6, v6, v10

    if-nez v6, :cond_3

    .line 699
    mul-float v6, p2, v8

    div-float v5, v6, v9

    .line 700
    mul-float v6, p2, v8

    div-float v0, v6, v9

    goto :goto_0

    .line 701
    :cond_3
    div-float v6, v1, v2

    const/high16 v7, 0x3f00

    cmpl-float v6, v6, v7

    if-nez v6, :cond_4

    .line 702
    div-float v3, p1, v10

    .line 703
    div-float v4, p1, v10

    goto :goto_0

    .line 704
    :cond_4
    div-float v6, v1, v2

    const v7, 0x3eaaaaab

    cmpl-float v6, v6, v7

    if-nez v6, :cond_5

    .line 705
    div-float v3, p1, v8

    .line 706
    div-float v4, p1, v8

    goto :goto_0

    .line 707
    :cond_5
    div-float v6, v1, v2

    const/high16 v7, 0x3e80

    cmpl-float v6, v6, v7

    if-nez v6, :cond_6

    .line 708
    mul-float v6, p1, v8

    div-float v3, v6, v9

    .line 709
    mul-float v6, p1, v8

    div-float v4, v6, v9

    goto :goto_0

    .line 710
    :cond_6
    div-float v6, v1, v2

    const/high16 v7, 0x3fc0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_7

    .line 711
    div-float v5, p2, v11

    .line 712
    div-float v0, p2, v11

    goto :goto_0

    .line 713
    :cond_7
    div-float v6, v1, v2

    const v7, 0x3faaaaab

    cmpl-float v6, v6, v7

    if-nez v6, :cond_8

    .line 714
    div-float v5, p2, v9

    .line 715
    div-float v0, p2, v9

    goto :goto_0

    .line 716
    :cond_8
    div-float v6, v1, v2

    const v7, 0x3f2aaaab

    cmpl-float v6, v6, v7

    if-nez v6, :cond_9

    .line 717
    div-float v3, p1, v11

    .line 718
    div-float v4, p1, v11

    goto :goto_0

    .line 719
    :cond_9
    div-float v6, v1, v2

    const/high16 v7, 0x3f40

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    .line 720
    div-float v3, p1, v9

    .line 721
    div-float v4, p1, v9

    goto/16 :goto_0
.end method


# virtual methods
.method public getBottomBtns()[Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 728
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellInfo()Lcom/lx/launcher8/bean/AppCell;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->ll:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected initData()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 190
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->themeColor:I

    .line 192
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->selectIcon:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->selectIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 195
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v1, v1, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0124

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterEditText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IF)V

    .line 196
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    const/16 v1, 0xa

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v4, v2, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setPadding(IIII)V

    .line 197
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v1, 0x7f0200c1

    new-instance v2, Lcom/lx/launcher8/setting/view/TileSettingView$2;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/view/TileSettingView$2;-><init>(Lcom/lx/launcher8/setting/view/TileSettingView;)V

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightImg(ILandroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0125

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 211
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    const/16 v1, 0xf

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v4, v2, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setPadding(IIII)V

    .line 212
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 213
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0131

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 216
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v2, v2, Lcom/lx/launcher8/bean/AppCell;->spanX:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v2, v2, Lcom/lx/launcher8/bean/AppCell;->spanY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 217
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 218
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v1, Lcom/lx/launcher8/setting/view/TileSettingView$3;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/view/TileSettingView$3;-><init>(Lcom/lx/launcher8/setting/view/TileSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0052

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 228
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v1, v1, Lcom/lx/launcher8/bean/AppCell;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 229
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 230
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellType:I

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v8}, Lcom/lx/launcher8/view/SettingLinearLayout;->setVisibility(I)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0132

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 234
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v0, v0, Lcom/lx/launcher8/bean/AppCell;->backColor:I

    if-ne v0, v7, :cond_2

    .line 235
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->themeColor:I

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    .line 239
    :goto_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 240
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0115

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 243
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0166

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "100% "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;

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

    .line 244
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 245
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v1, Lcom/lx/launcher8/setting/view/TileSettingView$4;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/view/TileSettingView$4;-><init>(Lcom/lx/launcher8/setting/view/TileSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0153

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 264
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0154

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterBottomText(Ljava/lang/CharSequence;IF)V

    .line 265
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a00bf

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 266
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 267
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v1, Lcom/lx/launcher8/setting/view/TileSettingView$5;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/view/TileSettingView$5;-><init>(Lcom/lx/launcher8/setting/view/TileSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0214

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 279
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0215

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterBottomText(Ljava/lang/CharSequence;IF)V

    .line 280
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v1, 0x7f0200ec

    iget v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->themeColor:I

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightImageView(II)V

    .line 281
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 282
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileSpecialFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    const-string v1, "\u52a8\u6001\u56fe\u5e93\u56fe\u7247"

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 285
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileSpecialFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    const-string v1, "\u65e0"

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 286
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileSpecialFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 287
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileSpecialFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v1, Lcom/lx/launcher8/setting/view/TileSettingView$6;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/view/TileSettingView$6;-><init>(Lcom/lx/launcher8/setting/view/TileSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->btnDelete:Landroid/widget/Button;

    new-instance v1, Lcom/lx/launcher8/setting/view/TileSettingView$7;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/view/TileSettingView$7;-><init>(Lcom/lx/launcher8/setting/view/TileSettingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cell_delete_or_not"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->btnDelete:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->btnConfirm:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->btnCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    return-void

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v1, v1, Lcom/lx/launcher8/bean/AppCell;->backColor:I

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    goto/16 :goto_0
.end method

.method protected initView()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x1

    const/4 v11, -0x2

    const/high16 v10, 0x4120

    const/4 v9, 0x0

    .line 127
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f0901d1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->iconImg:Landroid/widget/ImageView;

    .line 128
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f0901cf

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->selectIcon:Landroid/widget/FrameLayout;

    .line 129
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f0901d0

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    .line 130
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f0901d3

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 131
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f0901d4

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 132
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f0901d5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 133
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f0901d6

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 134
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f090122

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 135
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f0901d7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 136
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f0901dd

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 137
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f0901e4

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 138
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f0901e5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileSpecialFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 139
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f090147

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->btnDelete:Landroid/widget/Button;

    .line 141
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->bottom:Landroid/widget/LinearLayout;

    .line 142
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->bottom:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 143
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->bottom:Landroid/widget/LinearLayout;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 145
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->bottom:Landroid/widget/LinearLayout;

    const-string v7, "#dfe1e1e1"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 147
    new-instance v6, Landroid/widget/Button;

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->btnConfirm:Landroid/widget/Button;

    .line 148
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->btnConfirm:Landroid/widget/Button;

    const v7, 0x7f0200ac

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 149
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->btnConfirm:Landroid/widget/Button;

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v8, 0x7f0a0077

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->btnConfirm:Landroid/widget/Button;

    const/4 v7, 0x2

    const/high16 v8, 0x4160

    invoke-virtual {v6, v7, v8}, Landroid/widget/Button;->setTextSize(IF)V

    .line 151
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->btnConfirm:Landroid/widget/Button;

    const/high16 v7, -0x100

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 152
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->btnConfirm:Landroid/widget/Button;

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;

    invoke-static {v7, v10}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;

    invoke-static {v8, v10}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v6, v9, v7, v9, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 153
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->btnConfirm:Landroid/widget/Button;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setId(I)V

    .line 154
    const/high16 v6, 0x3f80

    invoke-static {v11, v11, v6}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 156
    .local v3, params1:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->btnConfirm:Landroid/widget/Button;

    invoke-virtual {v6, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    new-instance v6, Landroid/widget/Button;

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->btnCancel:Landroid/widget/Button;

    .line 158
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->btnCancel:Landroid/widget/Button;

    const v7, 0x7f0200ac

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 159
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->btnCancel:Landroid/widget/Button;

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v8, 0x7f0a0078

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->btnCancel:Landroid/widget/Button;

    const/4 v7, 0x2

    const/high16 v8, 0x4160

    invoke-virtual {v6, v7, v8}, Landroid/widget/Button;->setTextSize(IF)V

    .line 161
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->btnCancel:Landroid/widget/Button;

    const/high16 v7, -0x100

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 162
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->btnCancel:Landroid/widget/Button;

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;

    invoke-static {v7, v10}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;

    invoke-static {v8, v10}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v6, v9, v7, v9, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 163
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->btnCancel:Landroid/widget/Button;

    const/16 v7, 0x14

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setId(I)V

    .line 164
    const/high16 v6, 0x3f80

    invoke-static {v11, v11, v6}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 166
    .local v4, params2:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v6, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    const/4 v6, -0x1

    invoke-static {v12, v6}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 169
    .local v2, lineParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v9, v12, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 170
    new-instance v0, Landroid/view/View;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 171
    .local v0, line1:Landroid/view/View;
    const-string v6, "#ffffff"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 172
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    new-instance v1, Landroid/view/View;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 174
    .local v1, line2:Landroid/view/View;
    const-string v6, "#a0a0a0"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 175
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->bottom:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->btnConfirm:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 178
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->bottom:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 179
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->bottom:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 180
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->bottom:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    iget v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellType:I

    if-ne v6, v12, :cond_0

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->bottom:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 183
    :cond_0
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v6, v6, Lcom/lx/launcher8/bean/AppCell;->cellType:I

    and-int/lit16 v5, v6, 0xfff

    .line 184
    .local v5, type:I
    const/4 v6, 0x7

    if-eq v5, v6, :cond_1

    if-ne v5, v13, :cond_2

    .line 185
    :cond_1
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v6, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setVisibility(I)V

    .line 187
    :goto_0
    return-void

    .line 186
    :cond_2
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f0901db

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 23
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 431
    const/16 v18, -0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 432
    const/16 v18, 0x0

    .line 525
    :goto_0
    return v18

    .line 434
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 525
    :cond_1
    :goto_1
    const/16 v18, 0x0

    goto :goto_0

    .line 436
    :pswitch_0
    const-string v18, "extral_short_cut"

    const/16 v19, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 437
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/lx/launcher8/setting/view/TileSettingView;->createShortcut(Landroid/content/Intent;)V

    .line 448
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/TileSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;

    move-object/from16 v20, v0

    const v21, 0x7f0a0124

    invoke-virtual/range {v20 .. v21}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterEditText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IF)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/TileSettingView;->iconImg:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 439
    :cond_2
    const-string v18, "extral_info"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    .line 440
    .local v8, cn:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;

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

    .line 441
    .local v6, app:Lcom/anall/app/bean/AppInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v18, v0

    iget-object v0, v6, Lcom/anall/app/bean/AppInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/lx/launcher8/bean/AppCell;->appName:Ljava/lang/String;

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v18, v0

    iget-object v0, v6, Lcom/anall/app/bean/AppInfo;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/lx/launcher8/bean/AppCell;->intent:Landroid/content/Intent;

    goto/16 :goto_2

    .line 459
    .end local v6           #app:Lcom/anall/app/bean/AppInfo;
    .end local v8           #cn:Landroid/content/ComponentName;
    :pswitch_1
    const-string v18, "return-data"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 460
    .local v7, bt:Landroid/graphics/Bitmap;
    if-nez v7, :cond_3

    invoke-static/range {p3 .. p3}, Lcom/lx/launcher8/util/Utils;->getIntentExtra(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 461
    :cond_3
    if-eqz v7, :cond_4

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v7, v0, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/lx/launcher8/bean/AppCell;->iconType:I

    goto/16 :goto_1

    .line 465
    :cond_4
    const-string v18, "extral_info"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 466
    .local v13, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v13, v0, Lcom/lx/launcher8/bean/AppCell;->iconPath:Ljava/lang/String;

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v13}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/lx/launcher8/bean/AppCell;->iconType:I

    goto/16 :goto_1

    .line 472
    .end local v7           #bt:Landroid/graphics/Bitmap;
    .end local v13           #path:Ljava/lang/String;
    :pswitch_2
    const-string v18, "return-data"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 473
    .restart local v7       #bt:Landroid/graphics/Bitmap;
    if-nez v7, :cond_5

    invoke-static/range {p3 .. p3}, Lcom/lx/launcher8/util/Utils;->getIntentExtra(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 474
    :cond_5
    if-eqz v7, :cond_6

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v7, v0, Lcom/lx/launcher8/bean/AppCell;->icon2:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 477
    :cond_6
    const-string v18, "extral_info"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 478
    .restart local v13       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v13}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/lx/launcher8/bean/AppCell;->icon2:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 482
    .end local v7           #bt:Landroid/graphics/Bitmap;
    .end local v13           #path:Ljava/lang/String;
    :pswitch_3
    const-string v18, "changeid"

    const/16 v19, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 483
    .local v12, id:I
    const-string v18, "extral_value"

    const/16 v19, -0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 484
    .local v9, color:I
    const v18, 0x7f090042

    move/from16 v0, v18

    if-ne v12, v0, :cond_7

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput v9, v0, Lcom/lx/launcher8/bean/AppCell;->textColor:I

    goto/16 :goto_1

    .line 486
    :cond_7
    const v18, 0x7f090044

    move/from16 v0, v18

    if-ne v12, v0, :cond_1

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput v9, v0, Lcom/lx/launcher8/bean/AppCell;->backColor:I

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    goto/16 :goto_1

    .line 492
    .end local v9           #color:I
    .end local v12           #id:I
    :pswitch_4
    const-string v18, "extral_info"

    const v19, 0x10001

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 493
    .local v14, size:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/lx/launcher8/bean/AppCell;->setSize(I)V

    goto/16 :goto_1

    .line 496
    .end local v14           #size:I
    :pswitch_5
    const-string v18, "extral_value"

    const/16 v19, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 497
    .local v11, gravity:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/lx/launcher8/bean/AppCell;->setImgGravity(I)V

    goto/16 :goto_1

    .line 500
    .end local v11           #gravity:I
    :pswitch_6
    const-string v18, "text_gravity"

    const/16 v19, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 501
    .local v16, textGravity:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/bean/AppCell;->setTextGarivty(I)V

    .line 502
    const-string v18, "text_color"

    const/16 v19, -0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 503
    .local v15, textColor:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput v15, v0, Lcom/lx/launcher8/bean/AppCell;->textColor:I

    .line 504
    const-string v18, "special_fun_text_type"

    const/16 v19, -0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 505
    .local v17, type:I
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/bean/AppCell;->setTextDisplayType(I)V

    goto/16 :goto_1

    .line 508
    .end local v15           #textColor:I
    .end local v16           #textGravity:I
    .end local v17           #type:I
    :pswitch_7
    const-string v18, "extral_value"

    const/16 v19, 0x64

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 509
    .local v3, alpha:I
    const-string v18, "extral_value1"

    const/16 v19, 0x64

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 510
    .local v4, alphaFG:I
    const-string v18, "extral_value2"

    const/16 v19, 0x64

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 511
    .local v5, alphaTX:I
    mul-int/lit16 v0, v3, 0xff

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x64

    move/from16 v0, v18

    rsub-int v3, v0, 0xff

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/lx/launcher8/bean/AppCell;->setCellAlphaBg(I)V

    .line 513
    mul-int/lit16 v0, v4, 0xff

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x64

    move/from16 v0, v18

    rsub-int v4, v0, 0xff

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/lx/launcher8/bean/AppCell;->setCellAlphaFg(I)V

    .line 515
    mul-int/lit16 v0, v5, 0xff

    move/from16 v18, v0

    div-int/lit8 v5, v18, 0x64

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/lx/launcher8/bean/AppCell;->setTextAlpha(I)V

    goto/16 :goto_1

    .line 519
    .end local v3           #alpha:I
    .end local v4           #alphaFG:I
    .end local v5           #alphaTX:I
    :pswitch_8
    const-string v18, "extral_value"

    const/16 v19, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 520
    .local v10, fun:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/lx/launcher8/bean/AppCell;->setFunction(I)V

    .line 521
    const-string v18, "extral_value1"

    const/16 v19, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 522
    .restart local v17       #type:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/bean/AppCell;->setTextDisplayType(I)V

    goto/16 :goto_1

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_2
    .end packed-switch
.end method

.method public onBack()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 618
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfoString:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v6, v6, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 645
    :cond_0
    :goto_0
    return v5

    .line 619
    :cond_1
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfoString:Ljava/lang/String;

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    invoke-virtual {v7}, Lcom/lx/launcher8/bean/AppCell;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v6, v6, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v7}, Lcom/lx/launcher8/view/SettingLinearLayout;->getEditText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 620
    :cond_2
    new-instance v2, Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;

    const v6, 0x7f0e0005

    invoke-direct {v2, v5, v6}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;-><init>(Landroid/content/Context;I)V

    .line 621
    .local v2, dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;
    new-instance v5, Lcom/lx/launcher8/setting/view/TileSettingView$8;

    invoke-direct {v5, p0, v2}, Lcom/lx/launcher8/setting/view/TileSettingView$8;-><init>(Lcom/lx/launcher8/setting/view/TileSettingView;Lcom/lx/launcher8/setting/view/DialogSaveTheme;)V

    invoke-virtual {v2, v5}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 638
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;

    const v6, 0x7f0a01c4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 639
    .local v4, title:Ljava/lang/String;
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0134

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 640
    .local v0, about:Ljava/lang/String;
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0077

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 641
    .local v3, ok:Ljava/lang/String;
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0078

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 642
    .local v1, cancel:Ljava/lang/String;
    invoke-virtual {v2, v4, v0, v3, v1}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->createWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->show()V

    .line 643
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 15

    .prologue
    .line 343
    iget v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->backColor:I

    iget-object v12, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v12, v12, Lcom/lx/launcher8/bean/AppCell;->backColor:I

    if-eq v11, v12, :cond_0

    .line 344
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v11, v11, Lcom/lx/launcher8/bean/AppCell;->backColor:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_7

    .line 345
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    iget v12, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->themeColor:I

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 349
    :goto_0
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v11, v11, Lcom/lx/launcher8/bean/AppCell;->backColor:I

    iput v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->backColor:I

    .line 352
    :cond_0
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    invoke-virtual {v11}, Lcom/lx/launcher8/bean/AppCell;->getImgGravity()I

    move-result v6

    .line 354
    .local v6, gravity:I
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/16 v13, 0x11

    invoke-direct {v9, v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 355
    .local v9, p:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;

    const/high16 v12, 0x42dc

    invoke-static {v11, v12}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v11

    iget-object v12, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;

    const/high16 v13, 0x42dc

    invoke-static {v12, v13}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v12

    invoke-direct {p0, v11, v12}, Lcom/lx/launcher8/setting/view/TileSettingView;->getIconImgMargin(FF)[F

    move-result-object v8

    .line 356
    .local v8, ms:[F
    const/4 v11, 0x0

    aget v11, v8, v11

    float-to-int v11, v11

    const/4 v12, 0x1

    aget v12, v8, v12

    float-to-int v12, v12

    const/4 v13, 0x2

    aget v13, v8, v13

    float-to-int v13, v13

    const/4 v14, 0x3

    aget v14, v8, v14

    float-to-int v14, v14

    invoke-virtual {v9, v11, v12, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 357
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/high16 v13, 0x4188

    invoke-direct {v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 360
    .local v10, params:Landroid/widget/LinearLayout$LayoutParams;
    if-nez v6, :cond_8

    .line 361
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->iconImg:Landroid/widget/ImageView;

    sget-object v12, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 362
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mContext:Landroid/content/Context;

    const/high16 v12, 0x4120

    invoke-static {v11, v12}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v11

    const/high16 v12, 0x3f00

    add-float v7, v11, v12

    .line 363
    .local v7, margin:F
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v11, v11, Lcom/lx/launcher8/bean/AppCell;->spanX:I

    int-to-float v11, v11

    div-float v11, v7, v11

    float-to-int v11, v11

    iget-object v12, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v12, v12, Lcom/lx/launcher8/bean/AppCell;->spanY:I

    int-to-float v12, v12

    div-float v12, v7, v12

    float-to-int v12, v12

    iget-object v13, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v13, v13, Lcom/lx/launcher8/bean/AppCell;->spanX:I

    int-to-float v13, v13

    div-float v13, v7, v13

    float-to-int v13, v13

    iget-object v14, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v14, v14, Lcom/lx/launcher8/bean/AppCell;->spanY:I

    int-to-float v14, v14

    div-float v14, v7, v14

    float-to-int v14, v14

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 368
    .end local v7           #margin:F
    :goto_1
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->iconImg:Landroid/widget/ImageView;

    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    iget v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->gravity:I

    if-eq v11, v6, :cond_1

    .line 371
    if-nez v6, :cond_9

    .line 372
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v12, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v13, 0x7f0a00ed

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 376
    :goto_2
    iput v6, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->gravity:I

    .line 379
    :cond_1
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v11, v11, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_2

    .line 380
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->iconImg:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v12, v12, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 383
    :cond_2
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    invoke-virtual {v11}, Lcom/lx/launcher8/bean/AppCell;->getFunction()I

    move-result v5

    .line 384
    .local v5, fun:I
    if-nez v5, :cond_a

    .line 385
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v12, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v13, 0x7f0a00bf

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 386
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/lx/launcher8/view/SettingLinearLayout;->setVisibility(I)V

    .line 396
    :cond_3
    :goto_3
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    invoke-virtual {v11}, Lcom/lx/launcher8/bean/AppCell;->getCellAlphaFg()I

    move-result v2

    .line 397
    .local v2, cellFgAlpha:I
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    invoke-virtual {v11}, Lcom/lx/launcher8/bean/AppCell;->getCellAlphaBg()I

    move-result v1

    .line 398
    .local v1, cellBgAlpha:I
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    invoke-virtual {v11}, Lcom/lx/launcher8/bean/AppCell;->getTextAlpha()I

    move-result v3

    .line 399
    .local v3, cellTxAlpha:I
    iget v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellFgAlpha:I

    if-ne v11, v2, :cond_4

    iget v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellBgAlpha:I

    if-ne v11, v1, :cond_4

    iget v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellTxAlpha:I

    if-eq v11, v3, :cond_5

    .line 400
    :cond_4
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v12, Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v14, 0x7f0a0166

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int/lit8 v13, v1, 0x64

    div-int/lit16 v13, v13, 0xff

    rsub-int/lit8 v13, v13, 0x64

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "% "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v14, 0x7f0a0167

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    mul-int/lit8 v13, v2, 0x64

    div-int/lit16 v13, v13, 0xff

    rsub-int/lit8 v13, v13, 0x64

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 401
    iput v2, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellFgAlpha:I

    .line 402
    iput v1, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellBgAlpha:I

    .line 403
    iput v3, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellTxAlpha:I

    .line 406
    :cond_5
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v12, Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v13, v13, Lcom/lx/launcher8/bean/AppCell;->spanX:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "*"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v13, v13, Lcom/lx/launcher8/bean/AppCell;->spanY:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 407
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v11, v11, Lcom/lx/launcher8/bean/AppCell;->appName:Ljava/lang/String;

    if-nez v11, :cond_d

    .line 408
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v11, v11, Lcom/lx/launcher8/bean/AppCell;->cellType:I

    and-int/lit16 v11, v11, 0xfff

    const/4 v12, 0x1

    if-eq v11, v12, :cond_6

    .line 409
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v11, v11, Lcom/lx/launcher8/bean/AppCell;->cellType:I

    and-int/lit16 v11, v11, 0xfff

    const/4 v12, 0x3

    if-eq v11, v12, :cond_6

    .line 410
    const/4 v4, 0x0

    .line 411
    .local v4, cn:Landroid/content/ComponentName;
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v11, v11, Lcom/lx/launcher8/bean/AppCell;->intent:Landroid/content/Intent;

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v11, v11, Lcom/lx/launcher8/bean/AppCell;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 412
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v11

    check-cast v11, Lcom/lx/launcher8/AnallApp;

    invoke-virtual {v11}, Lcom/lx/launcher8/AnallApp;->getModel()Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lx/launcher8/db/LauncherModel;->getAppList()Lcom/anall/app/bean/AllAppsList;

    move-result-object v11

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/anall/app/bean/AllAppsList;->findApplicationInfoLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/anall/app/bean/AppInfo;

    move-result-object v0

    .line 413
    .local v0, app:Lcom/anall/app/bean/AppInfo;
    if-eqz v0, :cond_6

    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v12, v0, Lcom/anall/app/bean/AppInfo;->title:Ljava/lang/CharSequence;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 420
    .end local v0           #app:Lcom/anall/app/bean/AppInfo;
    .end local v4           #cn:Landroid/content/ComponentName;
    :cond_6
    :goto_4
    return-void

    .line 347
    .end local v1           #cellBgAlpha:I
    .end local v2           #cellFgAlpha:I
    .end local v3           #cellTxAlpha:I
    .end local v5           #fun:I
    .end local v6           #gravity:I
    .end local v8           #ms:[F
    .end local v9           #p:Landroid/widget/FrameLayout$LayoutParams;
    .end local v10           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v12, v12, Lcom/lx/launcher8/bean/AppCell;->backColor:I

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 365
    .restart local v6       #gravity:I
    .restart local v8       #ms:[F
    .restart local v9       #p:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v10       #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->iconImg:Landroid/widget/ImageView;

    sget-object v12, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 366
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    .line 374
    :cond_9
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v12, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v13, 0x7f0a00ec

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    goto/16 :goto_2

    .line 387
    .restart local v5       #fun:I
    :cond_a
    const/4 v11, 0x2

    if-ne v5, v11, :cond_b

    .line 388
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v12, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v13, 0x7f0a00c0

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 389
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/lx/launcher8/view/SettingLinearLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 390
    :cond_b
    const/4 v11, 0x1

    if-ne v5, v11, :cond_3

    .line 391
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v12, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v13, 0x7f0a00c1

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 392
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v11, v11, Lcom/lx/launcher8/bean/AppCell;->icon2:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v12, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v12, v12, Lcom/lx/launcher8/bean/AppCell;->icon2:Landroid/graphics/Bitmap;

    iget v13, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->themeColor:I

    invoke-virtual {v11, v12, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightImageView(Landroid/graphics/Bitmap;I)V

    .line 393
    :cond_c
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/lx/launcher8/view/SettingLinearLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 417
    .restart local v1       #cellBgAlpha:I
    .restart local v2       #cellFgAlpha:I
    .restart local v3       #cellTxAlpha:I
    :cond_d
    iget-object v11, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v12, p0, Lcom/lx/launcher8/setting/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v12, v12, Lcom/lx/launcher8/bean/AppCell;->appName:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    goto/16 :goto_4
.end method

.method public onViewMovingFront()V
    .locals 0

    .prologue
    .line 733
    return-void
.end method
