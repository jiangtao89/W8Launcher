.class public Lcom/lx/launcher8/setting/wp8/view/TileSettingView;
.super Ljava/lang/Object;
.source "TileSettingView.java"

# interfaces
.implements Lcom/lx/launcher8/setting/view/SettingView;


# static fields
.field static final REQUEST_PICK_APP:I = 0x2

.field static final REQUEST_PICK_COLOR:I = 0x1

.field static final REQUEST_PICK_PIC:I = 0x3

.field static final REQUEST_PICK_SECOND_PIC:I = 0x9

.field static final REQUEST_PICK_SIZE:I = 0x4

.field static final REQUEST_PIC_POSITION:I = 0x5

.field static final REQUEST_PRIVACY_MODE:I = 0x21

.field static final REQUEST_SET_SPECIAL_FUN:I = 0x8

.field static final REQUEST_TEXT_STYLE:I = 0x6

.field static final REQUEST_TILE_BG_ALPHA:I = 0x7


# instance fields
.field private appNameLinear:Lcom/lx/launcher8/view/SettingLinear;

.field private backColor:I

.field protected bindingApp:Lcom/lx/launcher8/view/SettingLinear;

.field protected btnCancel:Landroid/widget/Button;

.field protected btnConfirm:Landroid/widget/Button;

.field private btnDelete:Landroid/widget/TextView;

.field private cellBgAlpha:I

.field private cellFgAlpha:I

.field protected cellInfo:Lcom/lx/launcher8/bean/AppCell;

.field private cellInfoString:Ljava/lang/String;

.field private cellTxAlpha:I

.field private deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

.field private gravity:I

.field private iconImg:Landroid/widget/ImageView;

.field private iconImgBg:Landroid/widget/LinearLayout;

.field protected mAct:Landroid/app/Activity;

.field private mCellType:I

.field private mClick:Landroid/view/View$OnClickListener;

.field protected mContext:Landroid/content/Context;

.field protected mMainView:Landroid/view/View;

.field protected picPositionLinear:Lcom/lx/launcher8/view/SettingLinear;

.field private scrollView:Landroid/widget/ScrollView;

.field protected selectIcon:Landroid/widget/FrameLayout;

.field protected selectIconBtn:Landroid/widget/Button;

.field private setTileSize:Lcom/lx/launcher8/view/SettingLinear;

.field private text:[Ljava/lang/String;

.field private themeColor:I

.field private tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

.field private tileBgTransparent:Lcom/lx/launcher8/view/SettingLinear;

.field private tilePrivacyMode:Lcom/lx/launcher8/view/SettingLinear;

.field private tileSecondPic:Lcom/lx/launcher8/view/SettingLinear;

.field protected tileShowFunc:Lcom/lx/launcher8/view/SettingLinear;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/lx/launcher8/bean/AppCell;)V
    .locals 4
    .parameter "act"
    .parameter "cellInfo"

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mContext:Landroid/content/Context;

    .line 65
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    .line 66
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mMainView:Landroid/view/View;

    .line 67
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->scrollView:Landroid/widget/ScrollView;

    .line 68
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->view:Landroid/view/View;

    .line 69
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->iconImg:Landroid/widget/ImageView;

    .line 70
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->selectIconBtn:Landroid/widget/Button;

    .line 71
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->selectIcon:Landroid/widget/FrameLayout;

    .line 72
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    .line 73
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinear;

    .line 74
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinear;

    .line 75
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinear;

    .line 76
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    .line 77
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    .line 78
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinear;

    .line 79
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinear;

    .line 80
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinear;

    .line 81
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tilePrivacyMode:Lcom/lx/launcher8/view/SettingLinear;

    .line 82
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->btnDelete:Landroid/widget/TextView;

    .line 83
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->btnConfirm:Landroid/widget/Button;

    .line 84
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->btnCancel:Landroid/widget/Button;

    .line 85
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 86
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    .line 87
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfoString:Ljava/lang/String;

    .line 88
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->text:[Ljava/lang/String;

    .line 317
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->themeColor:I

    .line 319
    const/4 v0, -0x2

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->backColor:I

    .line 321
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->gravity:I

    .line 323
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellFgAlpha:I

    .line 324
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellBgAlpha:I

    .line 325
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellTxAlpha:I

    .line 554
    new-instance v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/TileSettingView;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mClick:Landroid/view/View$OnClickListener;

    .line 92
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    .line 93
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    .line 95
    invoke-virtual {p2}, Lcom/lx/launcher8/bean/AppCell;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfoString:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030070

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mMainView:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030062

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->view:Landroid/view/View;

    .line 99
    new-instance v0, Lcom/lx/launcher8/cfg/DeskSetting;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 101
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->text:[Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->initView()V

    .line 104
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->initData()V

    .line 106
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->view:Landroid/view/View;

    const v1, 0x7f090191

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->scrollView:Landroid/widget/ScrollView;

    .line 107
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFadingEdgeLength(I)V

    .line 108
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 109
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->removeAllViews()V

    .line 110
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->scrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 111
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mMainView:Landroid/view/View;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x4248

    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 112
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/view/TileSettingView;)Lcom/lx/launcher8/cfg/DeskSetting;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/view/TileSettingView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->btnDelete:Landroid/widget/TextView;

    return-object v0
.end method

.method private createShortcut(Landroid/content/Intent;)V
    .locals 13
    .parameter "data"

    .prologue
    .line 681
    const-string v10, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 682
    .local v6, intent:Landroid/content/Intent;
    const-string v10, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 683
    .local v7, name:Ljava/lang/String;
    const-string v10, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 684
    .local v1, bitmap:Landroid/os/Parcelable;
    const/4 v3, 0x0

    .line 686
    .local v3, icon:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 687
    .local v4, iconResource:Landroid/content/Intent$ShortcutIconResource;
    if-eqz v1, :cond_2

    instance-of v10, v1, Landroid/graphics/Bitmap;

    if-eqz v10, :cond_2

    move-object v3, v1

    .line 688
    check-cast v3, Landroid/graphics/Bitmap;

    .line 705
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 706
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02014d

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 709
    :cond_1
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iput-object v7, v10, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    .line 710
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v11, v11, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    iput-object v11, v10, Lcom/lx/launcher8/bean/AppCell;->appName:Ljava/lang/String;

    .line 711
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v10, v10, Lcom/lx/launcher8/bean/AppCell;->appName:Ljava/lang/String;

    invoke-static {v3, v10}, Lcom/lx/launcher8/util/Utils;->createIntralBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 714
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iput-object v6, v10, Lcom/lx/launcher8/bean/AppCell;->intent:Landroid/content/Intent;

    .line 715
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    const v11, 0x38001

    iput v11, v10, Lcom/lx/launcher8/bean/AppCell;->cellType:I

    .line 717
    return-void

    .line 691
    :cond_2
    const-string v10, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 692
    .local v2, extra:Landroid/os/Parcelable;
    if-eqz v2, :cond_0

    instance-of v10, v2, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v10, :cond_0

    .line 694
    :try_start_0
    move-object v0, v2

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v4, v0

    .line 695
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 696
    .local v8, packageManager:Landroid/content/pm/PackageManager;
    iget-object v10, v4, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    .line 697
    .local v9, resources:Landroid/content/res/Resources;
    iget-object v10, v4, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 698
    .local v5, id:I
    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mContext:Landroid/content/Context;

    invoke-static {v10, v11}, Lcom/anall/app/bean/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 700
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

    .line 720
    const/4 v3, 0x0

    .local v3, l:F
    const/4 v5, 0x0

    .local v5, t:F
    const/4 v4, 0x0

    .local v4, r:F
    const/4 v0, 0x0

    .line 721
    .local v0, b:F
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v6, v6, Lcom/lx/launcher8/bean/AppCell;->spanX:I

    int-to-float v1, v6

    .line 722
    .local v1, cellX:F
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v6, v6, Lcom/lx/launcher8/bean/AppCell;->spanY:I

    int-to-float v2, v6

    .line 723
    .local v2, cellY:F
    div-float v6, v1, v2

    const/high16 v7, 0x4000

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    .line 724
    div-float v5, p2, v10

    .line 725
    div-float v0, p2, v10

    .line 754
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

    .line 726
    :cond_1
    div-float v6, v1, v2

    cmpl-float v6, v6, v8

    if-nez v6, :cond_2

    .line 727
    div-float v5, p2, v8

    .line 728
    div-float v0, p2, v8

    goto :goto_0

    .line 729
    :cond_2
    div-float v6, v1, v2

    cmpl-float v6, v6, v10

    if-nez v6, :cond_3

    .line 730
    mul-float v6, p2, v8

    div-float v5, v6, v9

    .line 731
    mul-float v6, p2, v8

    div-float v0, v6, v9

    goto :goto_0

    .line 732
    :cond_3
    div-float v6, v1, v2

    const/high16 v7, 0x3f00

    cmpl-float v6, v6, v7

    if-nez v6, :cond_4

    .line 733
    div-float v3, p1, v10

    .line 734
    div-float v4, p1, v10

    goto :goto_0

    .line 735
    :cond_4
    div-float v6, v1, v2

    const v7, 0x3eaaaaab

    cmpl-float v6, v6, v7

    if-nez v6, :cond_5

    .line 736
    div-float v3, p1, v8

    .line 737
    div-float v4, p1, v8

    goto :goto_0

    .line 738
    :cond_5
    div-float v6, v1, v2

    const/high16 v7, 0x3e80

    cmpl-float v6, v6, v7

    if-nez v6, :cond_6

    .line 739
    mul-float v6, p1, v8

    div-float v3, v6, v9

    .line 740
    mul-float v6, p1, v8

    div-float v4, v6, v9

    goto :goto_0

    .line 741
    :cond_6
    div-float v6, v1, v2

    const/high16 v7, 0x3fc0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_7

    .line 742
    div-float v5, p2, v11

    .line 743
    div-float v0, p2, v11

    goto :goto_0

    .line 744
    :cond_7
    div-float v6, v1, v2

    const v7, 0x3faaaaab

    cmpl-float v6, v6, v7

    if-nez v6, :cond_8

    .line 745
    div-float v5, p2, v9

    .line 746
    div-float v0, p2, v9

    goto :goto_0

    .line 747
    :cond_8
    div-float v6, v1, v2

    const v7, 0x3f2aaaab

    cmpl-float v6, v6, v7

    if-nez v6, :cond_9

    .line 748
    div-float v3, p1, v11

    .line 749
    div-float v4, p1, v11

    goto :goto_0

    .line 750
    :cond_9
    div-float v6, v1, v2

    const/high16 v7, 0x3f40

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    .line 751
    div-float v3, p1, v9

    .line 752
    div-float v4, p1, v9

    goto/16 :goto_0
.end method


# virtual methods
.method public getBottomBtns()[Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 759
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->view:Landroid/view/View;

    return-object v0
.end method

.method protected initData()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 189
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->themeColor:I

    .line 191
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->selectIconBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->selectIcon:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0124

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 195
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinear;

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v0, v0, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

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

    .line 197
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->text:[Ljava/lang/String;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    invoke-virtual {v3}, Lcom/lx/launcher8/bean/AppCell;->getTextGravity()I

    move-result v3

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->text:[Ljava/lang/String;

    array-length v4, v4

    rem-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 198
    invoke-static {}, Lcom/lx/launcher8/util/ColorManager;->getInstance()Lcom/lx/launcher8/util/ColorManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v3, v3, Lcom/lx/launcher8/bean/AppCell;->textColor:I

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/util/ColorManager;->getColorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    const-string v2, "#31b2e7"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 195
    invoke-virtual {v1, v0, v5, v2}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 200
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$3;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$3;-><init>(Lcom/lx/launcher8/setting/wp8/view/TileSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0125

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 216
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0131

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 219
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v2, v2, Lcom/lx/launcher8/bean/AppCell;->spanX:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v2, v2, Lcom/lx/launcher8/bean/AppCell;->spanY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 220
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$4;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$4;-><init>(Lcom/lx/launcher8/setting/wp8/view/TileSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0052

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 231
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v0, v0, Lcom/lx/launcher8/bean/AppCell;->appName:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 232
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0132

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 235
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v0, v0, Lcom/lx/launcher8/bean/AppCell;->backColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 236
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    iget v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->themeColor:I

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setBottomColorView(I)V

    .line 237
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    invoke-static {}, Lcom/lx/launcher8/util/ColorManager;->getInstance()Lcom/lx/launcher8/util/ColorManager;

    move-result-object v1

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->themeColor:I

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/util/ColorManager;->getColorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 242
    :goto_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0115

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 245
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0166

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "100% "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0167

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 246
    const-string v2, "100% "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

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

    .line 245
    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 247
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$5;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$5;-><init>(Lcom/lx/launcher8/setting/wp8/view/TileSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0153

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 267
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a00bf

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#31b2e7"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v5, v2}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 268
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$6;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$6;-><init>(Lcom/lx/launcher8/setting/wp8/view/TileSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0214

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 281
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0215

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 282
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinear;

    const v1, 0x7f0200ec

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->themeColor:I

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/SettingLinear;->setBottomImageView(II)V

    .line 283
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tilePrivacyMode:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0105

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 286
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tilePrivacyMode:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->btnDelete:Landroid/widget/TextView;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$7;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$7;-><init>(Lcom/lx/launcher8/setting/wp8/view/TileSettingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->btnConfirm:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->btnCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v0, v0, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    goto/16 :goto_0

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v0, v0, Lcom/lx/launcher8/bean/AppCell;->appName:Ljava/lang/String;

    goto/16 :goto_1

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v1, v1, Lcom/lx/launcher8/bean/AppCell;->backColor:I

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->setBottomColorView(I)V

    .line 240
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    invoke-static {}, Lcom/lx/launcher8/util/ColorManager;->getInstance()Lcom/lx/launcher8/util/ColorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v2, v2, Lcom/lx/launcher8/bean/AppCell;->backColor:I

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/util/ColorManager;->getColorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_2
.end method

.method protected initView()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, -0x1

    const/high16 v6, -0x100

    .line 115
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901d1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->iconImg:Landroid/widget/ImageView;

    .line 116
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901d2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->selectIconBtn:Landroid/widget/Button;

    .line 117
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901cf

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->selectIcon:Landroid/widget/FrameLayout;

    .line 118
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901d0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    .line 119
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901d3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinear;

    .line 120
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901d4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinear;

    .line 121
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901d5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinear;

    .line 122
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901d6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    .line 123
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f090122

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    .line 124
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901d7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinear;

    .line 125
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901dd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinear;

    .line 126
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901e4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinear;

    .line 127
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mMainView:Landroid/view/View;

    const v5, 0x7f0901ea

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tilePrivacyMode:Lcom/lx/launcher8/view/SettingLinear;

    .line 128
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->view:Landroid/view/View;

    const v5, 0x7f090194

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->btnConfirm:Landroid/widget/Button;

    .line 129
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->view:Landroid/view/View;

    const v5, 0x7f090196

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->btnCancel:Landroid/widget/Button;

    .line 130
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->view:Landroid/view/View;

    const v5, 0x7f090198

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->btnDelete:Landroid/widget/TextView;

    .line 131
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->view:Landroid/view/View;

    const v5, 0x7f090195

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 132
    .local v2, confirmBtnText:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->view:Landroid/view/View;

    const v5, 0x7f090197

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 133
    .local v0, cancelBtnText:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->view:Landroid/view/View;

    const v5, 0x7f090067

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 134
    .local v3, showContentLinear:Landroid/widget/Button;
    new-instance v4, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$2;

    invoke-direct {v4, p0, v2, v0}, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$2;-><init>(Lcom/lx/launcher8/setting/wp8/view/TileSettingView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->view:Landroid/view/View;

    const v5, 0x7f09005c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 158
    .local v1, confirmBottom:Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 159
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v4

    if-eqz v4, :cond_2

    .line 161
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->btnConfirm:Landroid/widget/Button;

    const v5, 0x7f0200ab

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 162
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->btnCancel:Landroid/widget/Button;

    const v5, 0x7f0200a4

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 163
    const v4, 0x7f020175

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 164
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->btnDelete:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    const-string v4, "#313131"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 168
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->selectIcon:Landroid/widget/FrameLayout;

    const-string v5, "#313131"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 180
    :goto_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v4, v4, Lcom/lx/launcher8/bean/AppCell;->cellType:I

    and-int/lit16 v4, v4, 0xfff

    iput v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mCellType:I

    .line 181
    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mCellType:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mCellType:I

    if-eq v4, v8, :cond_0

    .line 182
    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mCellType:I

    const/16 v5, 0x80

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mCellType:I

    const/16 v5, 0x81

    if-eq v4, v5, :cond_0

    .line 183
    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mCellType:I

    const/16 v5, 0x21

    if-ne v4, v5, :cond_1

    .line 184
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    invoke-virtual {v4, v8}, Lcom/lx/launcher8/view/SettingLinear;->setVisibility(I)V

    .line 186
    :cond_1
    return-void

    .line 170
    :cond_2
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->btnConfirm:Landroid/widget/Button;

    const v5, 0x7f0200aa

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 171
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->btnCancel:Landroid/widget/Button;

    const v5, 0x7f0200a3

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 172
    const v4, 0x7f020174

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 173
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->btnDelete:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    const-string v4, "#dddddd"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 177
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->selectIcon:Landroid/widget/FrameLayout;

    const-string v5, "#dddddd"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 26
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 435
    const/16 v21, -0x1

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    if-nez p3, :cond_1

    .line 436
    :cond_0
    const/16 v21, 0x0

    .line 551
    :goto_0
    return v21

    .line 438
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 551
    :cond_2
    :goto_1
    const/16 v21, 0x0

    goto :goto_0

    .line 440
    :sswitch_0
    const-string v21, "extral_short_cut"

    const/16 v22, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 441
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->createShortcut(Landroid/content/Intent;)V

    .line 453
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinear;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    move-object/from16 v21, v0

    const v24, 0x7f0a0055

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v21

    :goto_3
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 454
    const-string v21, " "

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->text:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/lx/launcher8/bean/AppCell;->getTextGravity()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->text:[Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    rem-int v24, v24, v25

    aget-object v23, v23, v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, " "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 455
    invoke-static {}, Lcom/lx/launcher8/util/ColorManager;->getInstance()Lcom/lx/launcher8/util/ColorManager;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/lx/launcher8/bean/AppCell;->textColor:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/lx/launcher8/util/ColorManager;->getColorName(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x0

    const-string v24, "#31b2e7"

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v24

    .line 453
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->iconImg:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 443
    :cond_3
    const-string v21, "extral_info"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    .line 444
    .local v9, cn:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v21

    check-cast v21, Lcom/lx/launcher8/AnallApp;

    invoke-virtual/range {v21 .. v21}, Lcom/lx/launcher8/AnallApp;->getModel()Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lx/launcher8/db/LauncherModel;->getAppList()Lcom/anall/app/bean/AllAppsList;

    move-result-object v21

    .line 445
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/anall/app/bean/AllAppsList;->findApplicationInfoLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/anall/app/bean/AppInfo;

    move-result-object v7

    .line 446
    .local v7, app:Lcom/anall/app/bean/AppInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v21, v0

    iget-object v0, v7, Lcom/anall/app/bean/AppInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/lx/launcher8/bean/AppCell;->appName:Ljava/lang/String;

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v21, v0

    iget-object v0, v7, Lcom/anall/app/bean/AppInfo;->intent:Landroid/content/Intent;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/lx/launcher8/bean/AppCell;->intent:Landroid/content/Intent;

    goto/16 :goto_2

    .line 453
    .end local v7           #app:Lcom/anall/app/bean/AppInfo;
    .end local v9           #cn:Landroid/content/ComponentName;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    move-object/from16 v21, v0

    goto/16 :goto_3

    .line 466
    :sswitch_1
    const-string v21, "return-data"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    .line 467
    .local v8, bt:Landroid/graphics/Bitmap;
    if-nez v8, :cond_5

    .line 468
    invoke-static/range {p3 .. p3}, Lcom/lx/launcher8/util/Utils;->getIntentExtra(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 469
    :cond_5
    if-eqz v8, :cond_6

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v8, v0, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/lx/launcher8/bean/AppCell;->iconType:I

    goto/16 :goto_1

    .line 473
    :cond_6
    const-string v21, "extral_info"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 474
    .local v15, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v15, v0, Lcom/lx/launcher8/bean/AppCell;->iconPath:Ljava/lang/String;

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v15}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/lx/launcher8/bean/AppCell;->iconType:I

    goto/16 :goto_1

    .line 480
    .end local v8           #bt:Landroid/graphics/Bitmap;
    .end local v15           #path:Ljava/lang/String;
    :sswitch_2
    const-string v21, "return-data"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    .line 481
    .restart local v8       #bt:Landroid/graphics/Bitmap;
    if-nez v8, :cond_7

    .line 482
    invoke-static/range {p3 .. p3}, Lcom/lx/launcher8/util/Utils;->getIntentExtra(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 483
    :cond_7
    if-eqz v8, :cond_8

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v8, v0, Lcom/lx/launcher8/bean/AppCell;->icon2:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 486
    :cond_8
    const-string v21, "extral_info"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 487
    .restart local v15       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v15}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/lx/launcher8/bean/AppCell;->icon2:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 491
    .end local v8           #bt:Landroid/graphics/Bitmap;
    .end local v15           #path:Ljava/lang/String;
    :sswitch_3
    const-string v21, "changeid"

    const/16 v22, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 492
    .local v13, id:I
    const-string v21, "extral_value"

    const/16 v22, -0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 493
    .local v10, color:I
    const v21, 0x7f090042

    move/from16 v0, v21

    if-ne v13, v0, :cond_a

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput v10, v0, Lcom/lx/launcher8/bean/AppCell;->textColor:I

    .line 499
    :cond_9
    :goto_4
    const-string v21, "extral_name"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 500
    .local v14, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v14, v1, v2}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_1

    .line 495
    .end local v14           #name:Ljava/lang/String;
    :cond_a
    const v21, 0x7f090044

    move/from16 v0, v21

    if-ne v13, v0, :cond_9

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput v10, v0, Lcom/lx/launcher8/bean/AppCell;->backColor:I

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinear;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcom/lx/launcher8/view/SettingLinear;->setBottomColorView(I)V

    goto :goto_4

    .line 503
    .end local v10           #color:I
    .end local v13           #id:I
    :sswitch_4
    const-string v21, "extral_info"

    const v22, 0x10001

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 504
    .local v16, size:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/bean/AppCell;->setSize(I)V

    goto/16 :goto_1

    .line 507
    .end local v16           #size:I
    :sswitch_5
    const-string v21, "extral_value"

    const/16 v22, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 508
    .local v12, gravity:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/lx/launcher8/bean/AppCell;->setImgGravity(I)V

    goto/16 :goto_1

    .line 511
    .end local v12           #gravity:I
    :sswitch_6
    const-string v21, "text_gravity"

    const/16 v22, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 512
    .local v18, textGravity:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/bean/AppCell;->setTextGarivty(I)V

    .line 513
    const-string v21, "text_color"

    const/16 v22, -0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 514
    .local v17, textColor:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v21, v0

    move/from16 v0, v17

    move-object/from16 v1, v21

    iput v0, v1, Lcom/lx/launcher8/bean/AppCell;->textColor:I

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v21, v0

    const-string v22, "text_name"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_b

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v21, v0

    const-string v22, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    .line 522
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinear;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    move-object/from16 v21, v0

    const v24, 0x7f0a0055

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v21

    :goto_5
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 523
    const-string v21, " "

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->text:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/lx/launcher8/bean/AppCell;->getTextGravity()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->text:[Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    rem-int v24, v24, v25

    aget-object v23, v23, v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, " "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 524
    invoke-static {}, Lcom/lx/launcher8/util/ColorManager;->getInstance()Lcom/lx/launcher8/util/ColorManager;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/lx/launcher8/bean/AppCell;->textColor:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/lx/launcher8/util/ColorManager;->getColorName(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x0

    const-string v24, "#31b2e7"

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v24

    .line 522
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 525
    const-string v21, "special_fun_text_type"

    const/16 v22, -0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 526
    .local v19, type:I
    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/bean/AppCell;->setTextDisplayType(I)V

    goto/16 :goto_1

    .line 522
    .end local v19           #type:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    move-object/from16 v21, v0

    goto/16 :goto_5

    .line 530
    .end local v17           #textColor:I
    .end local v18           #textGravity:I
    :sswitch_7
    const-string v21, "extral_value"

    const/16 v22, 0x64

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 531
    .local v4, alpha:I
    const-string v21, "extral_value1"

    const/16 v22, 0x64

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 532
    .local v5, alphaFG:I
    const-string v21, "extral_value2"

    const/16 v22, 0x64

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 533
    .local v6, alphaTX:I
    mul-int/lit16 v0, v4, 0xff

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x64

    move/from16 v0, v21

    rsub-int v4, v0, 0xff

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/lx/launcher8/bean/AppCell;->setCellAlphaBg(I)V

    .line 535
    mul-int/lit16 v0, v5, 0xff

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x64

    move/from16 v0, v21

    rsub-int v5, v0, 0xff

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/lx/launcher8/bean/AppCell;->setCellAlphaFg(I)V

    .line 537
    mul-int/lit16 v0, v6, 0xff

    move/from16 v21, v0

    div-int/lit8 v6, v21, 0x64

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/bean/AppCell;->setTextAlpha(I)V

    goto/16 :goto_1

    .line 541
    .end local v4           #alpha:I
    .end local v5           #alphaFG:I
    .end local v6           #alphaTX:I
    :sswitch_8
    const-string v21, "extral_value"

    const/16 v22, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 542
    .local v11, fun:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/lx/launcher8/bean/AppCell;->setFunction(I)V

    .line 543
    const-string v21, "extral_value1"

    const/16 v22, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 544
    .restart local v19       #type:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/bean/AppCell;->setTextDisplayType(I)V

    goto/16 :goto_1

    .line 547
    .end local v11           #fun:I
    .end local v19           #type:I
    :sswitch_9
    const-string v21, "item"

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 548
    .local v20, val:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/lx/launcher8/bean/AppCell;->appName:Ljava/lang/String;

    goto/16 :goto_1

    .line 438
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_2
        0x21 -> :sswitch_9
    .end sparse-switch
.end method

.method public onBack()Z
    .locals 3

    .prologue
    .line 656
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfoString:Ljava/lang/String;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    invoke-virtual {v1}, Lcom/lx/launcher8/bean/AppCell;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    new-instance v0, Lcom/lx/launcher8/view/PopupDialog;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mContext:Landroid/content/Context;

    const v2, 0x7f0a01c4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;->setTitle(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 658
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0134

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;->setMsg(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 659
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0077

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$8;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$8;-><init>(Lcom/lx/launcher8/setting/wp8/view/TileSettingView;)V

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setOkButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 667
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0078

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$9;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/TileSettingView$9;-><init>(Lcom/lx/launcher8/setting/wp8/view/TileSettingView;)V

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setCancelButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 674
    invoke-virtual {v0}, Lcom/lx/launcher8/view/PopupDialog;->show()V

    .line 675
    const/4 v0, 0x1

    .line 677
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 15

    .prologue
    .line 329
    iget v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->backColor:I

    iget-object v12, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v12, v12, Lcom/lx/launcher8/bean/AppCell;->backColor:I

    if-eq v11, v12, :cond_0

    .line 330
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v11, v11, Lcom/lx/launcher8/bean/AppCell;->backColor:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_9

    .line 331
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    iget v12, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->themeColor:I

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 335
    :goto_0
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v11, v11, Lcom/lx/launcher8/bean/AppCell;->backColor:I

    iput v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->backColor:I

    .line 338
    :cond_0
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    invoke-virtual {v11}, Lcom/lx/launcher8/bean/AppCell;->getImgGravity()I

    move-result v6

    .line 340
    .local v6, gravity:I
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/16 v13, 0x11

    invoke-direct {v9, v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 341
    .local v9, p:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mContext:Landroid/content/Context;

    const/high16 v12, 0x42f0

    invoke-static {v11, v12}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v11

    .line 342
    iget-object v12, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mContext:Landroid/content/Context;

    const/high16 v13, 0x42f0

    invoke-static {v12, v13}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v12

    .line 341
    invoke-direct {p0, v11, v12}, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->getIconImgMargin(FF)[F

    move-result-object v8

    .line 343
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

    .line 344
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/high16 v13, 0x4188

    invoke-direct {v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 347
    .local v10, params:Landroid/widget/LinearLayout$LayoutParams;
    if-nez v6, :cond_a

    .line 348
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->iconImg:Landroid/widget/ImageView;

    sget-object v12, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 349
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mContext:Landroid/content/Context;

    const/high16 v12, 0x4120

    invoke-static {v11, v12}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v11

    const/high16 v12, 0x3f00

    add-float v7, v11, v12

    .line 350
    .local v7, margin:F
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v11, v11, Lcom/lx/launcher8/bean/AppCell;->spanX:I

    int-to-float v11, v11

    div-float v11, v7, v11

    float-to-int v11, v11

    iget-object v12, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v12, v12, Lcom/lx/launcher8/bean/AppCell;->spanY:I

    int-to-float v12, v12

    div-float v12, v7, v12

    float-to-int v12, v12

    .line 351
    iget-object v13, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v13, v13, Lcom/lx/launcher8/bean/AppCell;->spanX:I

    int-to-float v13, v13

    div-float v13, v7, v13

    float-to-int v13, v13

    iget-object v14, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v14, v14, Lcom/lx/launcher8/bean/AppCell;->spanY:I

    int-to-float v14, v14

    div-float v14, v7, v14

    float-to-int v14, v14

    .line 350
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 356
    .end local v7           #margin:F
    :goto_1
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->iconImg:Landroid/widget/ImageView;

    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    iget v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->gravity:I

    if-eq v11, v6, :cond_1

    .line 359
    if-nez v6, :cond_b

    .line 360
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v12, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v13, 0x7f0a00ed

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 364
    :goto_2
    iput v6, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->gravity:I

    .line 367
    :cond_1
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v11, v11, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_2

    .line 368
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->iconImg:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v12, v12, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 371
    :cond_2
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    invoke-virtual {v11}, Lcom/lx/launcher8/bean/AppCell;->getFunction()I

    move-result v5

    .line 372
    .local v5, fun:I
    if-nez v5, :cond_c

    .line 373
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v12, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v13, 0x7f0a00bf

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const-string v14, "#31b2e7"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 374
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinear;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/lx/launcher8/view/SettingLinear;->setVisibility(I)V

    .line 385
    :cond_3
    :goto_3
    iget v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mCellType:I

    const/16 v12, 0x80

    if-eq v11, v12, :cond_4

    iget v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mCellType:I

    const/16 v12, 0x81

    if-eq v11, v12, :cond_4

    .line 386
    iget v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mCellType:I

    const/16 v12, 0x21

    if-ne v11, v12, :cond_5

    .line 387
    :cond_4
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinear;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/lx/launcher8/view/SettingLinear;->setVisibility(I)V

    .line 388
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinear;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/lx/launcher8/view/SettingLinear;->setVisibility(I)V

    .line 389
    iget v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mCellType:I

    const/16 v12, 0x80

    if-ne v11, v12, :cond_5

    .line 390
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tilePrivacyMode:Lcom/lx/launcher8/view/SettingLinear;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/lx/launcher8/view/SettingLinear;->setVisibility(I)V

    .line 391
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tilePrivacyMode:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v12, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v13, 0x7f0a0106

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 395
    :cond_5
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    invoke-virtual {v11}, Lcom/lx/launcher8/bean/AppCell;->getCellAlphaFg()I

    move-result v2

    .line 396
    .local v2, cellFgAlpha:I
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    invoke-virtual {v11}, Lcom/lx/launcher8/bean/AppCell;->getCellAlphaBg()I

    move-result v1

    .line 397
    .local v1, cellBgAlpha:I
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    invoke-virtual {v11}, Lcom/lx/launcher8/bean/AppCell;->getTextAlpha()I

    move-result v3

    .line 398
    .local v3, cellTxAlpha:I
    iget v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellFgAlpha:I

    if-ne v11, v2, :cond_6

    iget v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellBgAlpha:I

    if-ne v11, v1, :cond_6

    iget v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellTxAlpha:I

    if-eq v11, v3, :cond_7

    .line 399
    :cond_6
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinear;

    .line 400
    new-instance v12, Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

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

    .line 401
    iget-object v13, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

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

    const-string v13, "% "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 402
    iget-object v13, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v14, 0x7f0a0168

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    mul-int/lit8 v13, v3, 0x64

    div-int/lit16 v13, v13, 0xff

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 400
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 402
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 399
    invoke-virtual {v11, v12, v13, v14}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 403
    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellFgAlpha:I

    .line 404
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellBgAlpha:I

    .line 405
    iput v3, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellTxAlpha:I

    .line 408
    :cond_7
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v12, Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v13, v13, Lcom/lx/launcher8/bean/AppCell;->spanX:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "*"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v13, v13, Lcom/lx/launcher8/bean/AppCell;->spanY:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 409
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v11, v11, Lcom/lx/launcher8/bean/AppCell;->appName:Ljava/lang/String;

    if-nez v11, :cond_f

    .line 410
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v11, v11, Lcom/lx/launcher8/bean/AppCell;->cellType:I

    and-int/lit16 v11, v11, 0xfff

    const/4 v12, 0x1

    if-eq v11, v12, :cond_8

    .line 411
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v11, v11, Lcom/lx/launcher8/bean/AppCell;->cellType:I

    and-int/lit16 v11, v11, 0xfff

    const/4 v12, 0x3

    if-eq v11, v12, :cond_8

    .line 412
    const/4 v4, 0x0

    .line 413
    .local v4, cn:Landroid/content/ComponentName;
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v11, v11, Lcom/lx/launcher8/bean/AppCell;->intent:Landroid/content/Intent;

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v11, v11, Lcom/lx/launcher8/bean/AppCell;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 414
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v11

    check-cast v11, Lcom/lx/launcher8/AnallApp;

    invoke-virtual {v11}, Lcom/lx/launcher8/AnallApp;->getModel()Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lx/launcher8/db/LauncherModel;->getAppList()Lcom/anall/app/bean/AllAppsList;

    move-result-object v11

    .line 415
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/anall/app/bean/AllAppsList;->findApplicationInfoLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/anall/app/bean/AppInfo;

    move-result-object v0

    .line 416
    .local v0, app:Lcom/anall/app/bean/AppInfo;
    if-eqz v0, :cond_8

    .line 417
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v12, v0, Lcom/anall/app/bean/AppInfo;->title:Ljava/lang/CharSequence;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 423
    .end local v0           #app:Lcom/anall/app/bean/AppInfo;
    .end local v4           #cn:Landroid/content/ComponentName;
    :cond_8
    :goto_4
    return-void

    .line 333
    .end local v1           #cellBgAlpha:I
    .end local v2           #cellFgAlpha:I
    .end local v3           #cellTxAlpha:I
    .end local v5           #fun:I
    .end local v6           #gravity:I
    .end local v8           #ms:[F
    .end local v9           #p:Landroid/widget/FrameLayout$LayoutParams;
    .end local v10           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_9
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget v12, v12, Lcom/lx/launcher8/bean/AppCell;->backColor:I

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 353
    .restart local v6       #gravity:I
    .restart local v8       #ms:[F
    .restart local v9       #p:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v10       #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_a
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->iconImg:Landroid/widget/ImageView;

    sget-object v12, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 354
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    .line 362
    :cond_b
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v12, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v13, 0x7f0a00ec

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_2

    .line 375
    .restart local v5       #fun:I
    :cond_c
    const/4 v11, 0x2

    if-ne v5, v11, :cond_d

    .line 376
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinear;

    .line 377
    iget-object v12, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v13, 0x7f0a00c0

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const-string v14, "#31b2e7"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 378
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinear;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/lx/launcher8/view/SettingLinear;->setVisibility(I)V

    goto/16 :goto_3

    .line 379
    :cond_d
    const/4 v11, 0x1

    if-ne v5, v11, :cond_3

    .line 380
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v12, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->mAct:Landroid/app/Activity;

    const v13, 0x7f0a00c1

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const-string v14, "#31b2e7"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 381
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v11, v11, Lcom/lx/launcher8/bean/AppCell;->icon2:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_e

    .line 382
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v12, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v12, v12, Lcom/lx/launcher8/bean/AppCell;->icon2:Landroid/graphics/Bitmap;

    iget v13, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->themeColor:I

    invoke-virtual {v11, v12, v13}, Lcom/lx/launcher8/view/SettingLinear;->setBottomImageView(Landroid/graphics/Bitmap;I)V

    .line 383
    :cond_e
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinear;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/lx/launcher8/view/SettingLinear;->setVisibility(I)V

    goto/16 :goto_3

    .line 421
    .restart local v1       #cellBgAlpha:I
    .restart local v2       #cellFgAlpha:I
    .restart local v3       #cellTxAlpha:I
    :cond_f
    iget-object v11, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v12, p0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    iget-object v12, v12, Lcom/lx/launcher8/bean/AppCell;->appName:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_4
.end method

.method public onViewMovingFront()V
    .locals 0

    .prologue
    .line 764
    return-void
.end method
