.class public Lcom/lx/launcher8/setting/view/LightSettingView;
.super Ljava/lang/Object;
.source "LightSettingView.java"

# interfaces
.implements Lcom/lx/launcher8/setting/view/SettingView;


# static fields
.field static final BUTTON_CANCEL:I = 0x14

.field static final BUTTON_CONFIRM:I = 0xa

.field static final REQUEST_LIGHT_LONG:I = 0x23

.field static final REQUEST_LIGHT_MODE:I = 0x22

.field static final REQUEST_OPEN_MODE:I = 0x21

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

.field private cellInfo:Lcom/lx/launcher8/bean/LightCell;

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

.field private picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private scrollView:Landroid/widget/ScrollView;

.field private selectIcon:Landroid/widget/FrameLayout;

.field private setTileSize:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private themeColor:I

.field private tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private tileBgTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private tileLightLong:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private tileLightMode:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private tileOpenMode:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private tileSecondPic:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private tileShowFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private tvSecondTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/lx/launcher8/bean/LightCell;)V
    .locals 6
    .parameter "act"
    .parameter "cellInfo"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;

    .line 69
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

    .line 71
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mMainView:Landroid/view/View;

    .line 73
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->scrollView:Landroid/widget/ScrollView;

    .line 75
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->ll:Landroid/widget/LinearLayout;

    .line 77
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->iconImg:Landroid/widget/ImageView;

    .line 78
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->selectIcon:Landroid/widget/FrameLayout;

    .line 79
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    .line 80
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 81
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 82
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 83
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 84
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 85
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 86
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 87
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 88
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->btnDelete:Landroid/widget/Button;

    .line 89
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->btnConfirm:Landroid/widget/Button;

    .line 90
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->btnCancel:Landroid/widget/Button;

    .line 91
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->bottom:Landroid/widget/LinearLayout;

    .line 92
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileOpenMode:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 93
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileLightMode:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 94
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileLightLong:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 95
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tvSecondTitle:Landroid/widget/TextView;

    .line 97
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 98
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    .line 99
    iput-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfoString:Ljava/lang/String;

    .line 308
    iput v3, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->themeColor:I

    .line 310
    iput v4, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->backColor:I

    .line 312
    iput v3, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->gravity:I

    .line 314
    iput v3, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellFgAlpha:I

    .line 315
    iput v3, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellBgAlpha:I

    .line 316
    iput v3, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellTxAlpha:I

    .line 539
    new-instance v0, Lcom/lx/launcher8/setting/view/LightSettingView$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/view/LightSettingView$1;-><init>(Lcom/lx/launcher8/setting/view/LightSettingView;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mClick:Landroid/view/View$OnClickListener;

    .line 102
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

    .line 103
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    .line 105
    invoke-virtual {p2}, Lcom/lx/launcher8/bean/LightCell;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfoString:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006f

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mMainView:Landroid/view/View;

    .line 108
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/LightSettingView;->initView()V

    .line 110
    new-instance v0, Lcom/lx/launcher8/cfg/DeskSetting;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 112
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/LightSettingView;->initData()V

    .line 114
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->scrollView:Landroid/widget/ScrollView;

    .line 115
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setFadingEdgeLength(I)V

    .line 116
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 117
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->scrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 119
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->ll:Landroid/widget/LinearLayout;

    .line 120
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->ll:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 121
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->ll:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->scrollView:Landroid/widget/ScrollView;

    const/high16 v2, 0x3f80

    invoke-static {v3, v4, v2}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->ll:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->bottom:Landroid/widget/LinearLayout;

    invoke-static {v3, v4}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 125
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/view/LightSettingView;)Lcom/lx/launcher8/bean/LightCell;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/view/LightSettingView;)Lcom/lx/launcher8/view/SettingLinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    return-object v0
.end method

.method private createShortcut(Landroid/content/Intent;)V
    .locals 13
    .parameter "data"

    .prologue
    .line 678
    const-string v10, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 679
    .local v6, intent:Landroid/content/Intent;
    const-string v10, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 680
    .local v7, name:Ljava/lang/String;
    const-string v10, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 681
    .local v1, bitmap:Landroid/os/Parcelable;
    const/4 v3, 0x0

    .line 683
    .local v3, icon:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 684
    .local v4, iconResource:Landroid/content/Intent$ShortcutIconResource;
    if-eqz v1, :cond_2

    instance-of v10, v1, Landroid/graphics/Bitmap;

    if-eqz v10, :cond_2

    move-object v3, v1

    .line 685
    check-cast v3, Landroid/graphics/Bitmap;

    .line 703
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 704
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02014d

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 707
    :cond_1
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iput-object v7, v10, Lcom/lx/launcher8/bean/LightCell;->title:Ljava/lang/String;

    .line 708
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget-object v11, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget-object v11, v11, Lcom/lx/launcher8/bean/LightCell;->title:Ljava/lang/String;

    iput-object v11, v10, Lcom/lx/launcher8/bean/LightCell;->appName:Ljava/lang/String;

    .line 709
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget-object v10, v10, Lcom/lx/launcher8/bean/LightCell;->appName:Ljava/lang/String;

    invoke-static {v3, v10}, Lcom/lx/launcher8/util/Utils;->createIntralBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 712
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iput-object v6, v10, Lcom/lx/launcher8/bean/LightCell;->intent:Landroid/content/Intent;

    .line 713
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    const v11, 0x38001

    iput v11, v10, Lcom/lx/launcher8/bean/LightCell;->cellType:I

    .line 715
    return-void

    .line 688
    :cond_2
    const-string v10, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 689
    .local v2, extra:Landroid/os/Parcelable;
    if-eqz v2, :cond_0

    instance-of v10, v2, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v10, :cond_0

    .line 691
    :try_start_0
    move-object v0, v2

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v4, v0

    .line 692
    iget-object v10, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 694
    .local v8, packageManager:Landroid/content/pm/PackageManager;
    iget-object v10, v4, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 693
    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    .line 695
    .local v9, resources:Landroid/content/res/Resources;
    iget-object v10, v4, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 696
    .local v5, id:I
    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iget-object v11, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;

    invoke-static {v10, v11}, Lcom/anall/app/bean/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 698
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

    .line 718
    const/4 v3, 0x0

    .local v3, l:F
    const/4 v5, 0x0

    .local v5, t:F
    const/4 v4, 0x0

    .local v4, r:F
    const/4 v0, 0x0

    .line 719
    .local v0, b:F
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v6, v6, Lcom/lx/launcher8/bean/LightCell;->spanX:I

    int-to-float v1, v6

    .line 720
    .local v1, cellX:F
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v6, v6, Lcom/lx/launcher8/bean/LightCell;->spanY:I

    int-to-float v2, v6

    .line 721
    .local v2, cellY:F
    div-float v6, v1, v2

    const/high16 v7, 0x4000

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    .line 722
    div-float v5, p2, v10

    .line 723
    div-float v0, p2, v10

    .line 752
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

    .line 724
    :cond_1
    div-float v6, v1, v2

    cmpl-float v6, v6, v8

    if-nez v6, :cond_2

    .line 725
    div-float v5, p2, v8

    .line 726
    div-float v0, p2, v8

    goto :goto_0

    .line 727
    :cond_2
    div-float v6, v1, v2

    cmpl-float v6, v6, v10

    if-nez v6, :cond_3

    .line 728
    mul-float v6, p2, v8

    div-float v5, v6, v9

    .line 729
    mul-float v6, p2, v8

    div-float v0, v6, v9

    goto :goto_0

    .line 730
    :cond_3
    div-float v6, v1, v2

    const/high16 v7, 0x3f00

    cmpl-float v6, v6, v7

    if-nez v6, :cond_4

    .line 731
    div-float v3, p1, v10

    .line 732
    div-float v4, p1, v10

    goto :goto_0

    .line 733
    :cond_4
    div-float v6, v1, v2

    const v7, 0x3eaaaaab

    cmpl-float v6, v6, v7

    if-nez v6, :cond_5

    .line 734
    div-float v3, p1, v8

    .line 735
    div-float v4, p1, v8

    goto :goto_0

    .line 736
    :cond_5
    div-float v6, v1, v2

    const/high16 v7, 0x3e80

    cmpl-float v6, v6, v7

    if-nez v6, :cond_6

    .line 737
    mul-float v6, p1, v8

    div-float v3, v6, v9

    .line 738
    mul-float v6, p1, v8

    div-float v4, v6, v9

    goto :goto_0

    .line 739
    :cond_6
    div-float v6, v1, v2

    const/high16 v7, 0x3fc0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_7

    .line 740
    div-float v5, p2, v11

    .line 741
    div-float v0, p2, v11

    goto :goto_0

    .line 742
    :cond_7
    div-float v6, v1, v2

    const v7, 0x3faaaaab

    cmpl-float v6, v6, v7

    if-nez v6, :cond_8

    .line 743
    div-float v5, p2, v9

    .line 744
    div-float v0, p2, v9

    goto :goto_0

    .line 745
    :cond_8
    div-float v6, v1, v2

    const v7, 0x3f2aaaab

    cmpl-float v6, v6, v7

    if-nez v6, :cond_9

    .line 746
    div-float v3, p1, v11

    .line 747
    div-float v4, p1, v11

    goto :goto_0

    .line 748
    :cond_9
    div-float v6, v1, v2

    const/high16 v7, 0x3f40

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    .line 749
    div-float v3, p1, v9

    .line 750
    div-float v4, p1, v9

    goto/16 :goto_0
.end method


# virtual methods
.method public getBottomBtns()[Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 757
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellInfo()Lcom/lx/launcher8/bean/AppCell;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->ll:Landroid/widget/LinearLayout;

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

    .line 201
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->deskSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->themeColor:I

    .line 203
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->selectIcon:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->selectIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 206
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget-object v1, v1, Lcom/lx/launcher8/bean/LightCell;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0124

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterEditText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IF)V

    .line 207
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v8, v4, v8, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setPadding(IIII)V

    .line 208
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v1, 0x7f0200c1

    new-instance v2, Lcom/lx/launcher8/setting/view/LightSettingView$2;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/view/LightSettingView$2;-><init>(Lcom/lx/launcher8/setting/view/LightSettingView;)V

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightImg(ILandroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0125

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 222
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    const/16 v1, 0xf

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v4, v2, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setPadding(IIII)V

    .line 223
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 224
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0131

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 227
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v2, v2, Lcom/lx/launcher8/bean/LightCell;->spanX:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v2, v2, Lcom/lx/launcher8/bean/LightCell;->spanY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 228
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 229
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v1, Lcom/lx/launcher8/setting/view/LightSettingView$3;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/view/LightSettingView$3;-><init>(Lcom/lx/launcher8/setting/view/LightSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0132

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 239
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v0, v0, Lcom/lx/launcher8/bean/LightCell;->backColor:I

    if-ne v0, v7, :cond_1

    .line 240
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget v1, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->themeColor:I

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    .line 244
    :goto_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 245
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0115

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 248
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v3, 0x7f0a0166

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "100% "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

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

    .line 249
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 250
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v1, Lcom/lx/launcher8/setting/view/LightSettingView$4;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/view/LightSettingView$4;-><init>(Lcom/lx/launcher8/setting/view/LightSettingView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0214

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 269
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v2, 0x7f0a0215

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterBottomText(Ljava/lang/CharSequence;IF)V

    .line 270
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v1, 0x7f0200ec

    iget v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->themeColor:I

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightImageView(II)V

    .line 271
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 272
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->btnDelete:Landroid/widget/Button;

    new-instance v1, Lcom/lx/launcher8/setting/view/LightSettingView$5;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/view/LightSettingView$5;-><init>(Lcom/lx/launcher8/setting/view/LightSettingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cell_delete_or_not"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->btnDelete:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->btnConfirm:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->btnCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v1, v1, Lcom/lx/launcher8/bean/LightCell;->backColor:I

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    goto/16 :goto_0
.end method

.method protected initView()V
    .locals 14

    .prologue
    const/high16 v13, 0x3f80

    const/16 v12, 0x8

    const/4 v11, -0x2

    const/high16 v10, 0x4120

    const/4 v9, 0x0

    .line 128
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f0901d1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->iconImg:Landroid/widget/ImageView;

    .line 129
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f0901cf

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->selectIcon:Landroid/widget/FrameLayout;

    .line 130
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f0901d0

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    .line 131
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f0901d3

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 132
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f0901d4

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 133
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f0901d5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 134
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f0901d6

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 135
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f090122

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 136
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f0901d7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 137
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f0901dd

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 138
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f0901e4

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 139
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f090147

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->btnDelete:Landroid/widget/Button;

    .line 140
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f0901df

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileOpenMode:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 141
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f0901e1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileLightMode:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 142
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f0901e3

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileLightLong:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 143
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f0901dc

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tvSecondTitle:Landroid/widget/TextView;

    .line 145
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->bottom:Landroid/widget/LinearLayout;

    .line 146
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->bottom:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 147
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->bottom:Landroid/widget/LinearLayout;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 148
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->bottom:Landroid/widget/LinearLayout;

    const-string v7, "#dfe1e1e1"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 150
    new-instance v6, Landroid/widget/Button;

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->btnConfirm:Landroid/widget/Button;

    .line 151
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->btnConfirm:Landroid/widget/Button;

    const v7, 0x7f0200ac

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 152
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->btnConfirm:Landroid/widget/Button;

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v8, 0x7f0a0077

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->btnConfirm:Landroid/widget/Button;

    const/4 v7, 0x2

    const/high16 v8, 0x4160

    invoke-virtual {v6, v7, v8}, Landroid/widget/Button;->setTextSize(IF)V

    .line 154
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->btnConfirm:Landroid/widget/Button;

    const/high16 v7, -0x100

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 155
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->btnConfirm:Landroid/widget/Button;

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;

    invoke-static {v7, v10}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;

    invoke-static {v8, v10}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v6, v9, v7, v9, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 156
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->btnConfirm:Landroid/widget/Button;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setId(I)V

    .line 157
    invoke-static {v11, v11, v13}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 158
    .local v3, params1:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->btnConfirm:Landroid/widget/Button;

    invoke-virtual {v6, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    new-instance v6, Landroid/widget/Button;

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->btnCancel:Landroid/widget/Button;

    .line 160
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->btnCancel:Landroid/widget/Button;

    const v7, 0x7f0200ac

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 161
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->btnCancel:Landroid/widget/Button;

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v8, 0x7f0a0078

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->btnCancel:Landroid/widget/Button;

    const/4 v7, 0x2

    const/high16 v8, 0x4160

    invoke-virtual {v6, v7, v8}, Landroid/widget/Button;->setTextSize(IF)V

    .line 163
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->btnCancel:Landroid/widget/Button;

    const/high16 v7, -0x100

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 164
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->btnCancel:Landroid/widget/Button;

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;

    invoke-static {v7, v10}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;

    invoke-static {v8, v10}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v6, v9, v7, v9, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 165
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->btnCancel:Landroid/widget/Button;

    const/16 v7, 0x14

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setId(I)V

    .line 166
    invoke-static {v11, v11, v13}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 167
    .local v4, params2:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v6, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-static {v6, v7}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 170
    .local v2, lineParams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, 0x1

    invoke-virtual {v2, v9, v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 171
    new-instance v0, Landroid/view/View;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 172
    .local v0, line1:Landroid/view/View;
    const-string v6, "#ffffff"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 173
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    new-instance v1, Landroid/view/View;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 175
    .local v1, line2:Landroid/view/View;
    const-string v6, "#a0a0a0"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 176
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->bottom:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->btnConfirm:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 179
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->bottom:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 180
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->bottom:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->bottom:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 183
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v6, v6, Lcom/lx/launcher8/bean/LightCell;->cellType:I

    and-int/lit16 v5, v6, 0xfff

    .line 184
    .local v5, type:I
    const/16 v6, 0x20

    if-ne v5, v6, :cond_0

    .line 185
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileOpenMode:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v6, v9}, Lcom/lx/launcher8/view/SettingLinearLayout;->setVisibility(I)V

    .line 186
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileLightMode:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v6, v9}, Lcom/lx/launcher8/view/SettingLinearLayout;->setVisibility(I)V

    .line 187
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileLightLong:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v6, v9}, Lcom/lx/launcher8/view/SettingLinearLayout;->setVisibility(I)V

    .line 188
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileOpenMode:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileLightMode:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileLightLong:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    :cond_0
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->bindingApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v6, v12}, Lcom/lx/launcher8/view/SettingLinearLayout;->setVisibility(I)V

    .line 193
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v6, v12}, Lcom/lx/launcher8/view/SettingLinearLayout;->setVisibility(I)V

    .line 194
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tvSecondTitle:Landroid/widget/TextView;

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f0901db

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f0901e0

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mMainView:Landroid/view/View;

    const v7, 0x7f0901e2

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 198
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 24
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 430
    const/16 v19, -0x1

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 431
    const/16 v19, 0x0

    .line 536
    :goto_0
    return v19

    .line 433
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 536
    :cond_1
    :goto_1
    const/16 v19, 0x0

    goto :goto_0

    .line 435
    :sswitch_0
    const-string v19, "extral_short_cut"

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 436
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/lx/launcher8/setting/view/LightSettingView;->createShortcut(Landroid/content/Intent;)V

    .line 447
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/lx/launcher8/bean/LightCell;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

    move-object/from16 v21, v0

    const v22, 0x7f0a0124

    invoke-virtual/range {v21 .. v22}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterEditText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IF)V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->iconImg:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/lx/launcher8/bean/LightCell;->icon:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 438
    :cond_2
    const-string v19, "extral_info"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    .line 439
    .local v8, cn:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v19

    check-cast v19, Lcom/lx/launcher8/AnallApp;

    invoke-virtual/range {v19 .. v19}, Lcom/lx/launcher8/AnallApp;->getModel()Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/lx/launcher8/db/LauncherModel;->getAppList()Lcom/anall/app/bean/AllAppsList;

    move-result-object v19

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/anall/app/bean/AllAppsList;->findApplicationInfoLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/anall/app/bean/AppInfo;

    move-result-object v6

    .line 440
    .local v6, app:Lcom/anall/app/bean/AppInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    iget-object v0, v6, Lcom/anall/app/bean/AppInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/lx/launcher8/bean/LightCell;->title:Ljava/lang/String;

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/lx/launcher8/bean/LightCell;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/lx/launcher8/bean/LightCell;->appName:Ljava/lang/String;

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    iget-object v0, v6, Lcom/anall/app/bean/AppInfo;->intent:Landroid/content/Intent;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/lx/launcher8/bean/LightCell;->intent:Landroid/content/Intent;

    goto/16 :goto_2

    .line 458
    .end local v6           #app:Lcom/anall/app/bean/AppInfo;
    .end local v8           #cn:Landroid/content/ComponentName;
    :sswitch_1
    const-string v19, "return-data"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 459
    .local v7, bt:Landroid/graphics/Bitmap;
    if-nez v7, :cond_3

    invoke-static/range {p3 .. p3}, Lcom/lx/launcher8/util/Utils;->getIntentExtra(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 460
    :cond_3
    if-eqz v7, :cond_4

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v7, v0, Lcom/lx/launcher8/bean/LightCell;->icon:Landroid/graphics/Bitmap;

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/lx/launcher8/bean/LightCell;->iconType:I

    goto/16 :goto_1

    .line 464
    :cond_4
    const-string v19, "extral_info"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 465
    .local v13, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v13, v0, Lcom/lx/launcher8/bean/LightCell;->iconPath:Ljava/lang/String;

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v13}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/lx/launcher8/bean/LightCell;->icon:Landroid/graphics/Bitmap;

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/lx/launcher8/bean/LightCell;->iconType:I

    goto/16 :goto_1

    .line 471
    .end local v7           #bt:Landroid/graphics/Bitmap;
    .end local v13           #path:Ljava/lang/String;
    :sswitch_2
    const-string v19, "return-data"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 472
    .restart local v7       #bt:Landroid/graphics/Bitmap;
    if-nez v7, :cond_5

    invoke-static/range {p3 .. p3}, Lcom/lx/launcher8/util/Utils;->getIntentExtra(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 473
    :cond_5
    if-eqz v7, :cond_6

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v7, v0, Lcom/lx/launcher8/bean/LightCell;->icon2:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 476
    :cond_6
    const-string v19, "extral_info"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 477
    .restart local v13       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v13}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/lx/launcher8/bean/LightCell;->icon2:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 481
    .end local v7           #bt:Landroid/graphics/Bitmap;
    .end local v13           #path:Ljava/lang/String;
    :sswitch_3
    const-string v19, "changeid"

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 482
    .local v12, id:I
    const-string v19, "extral_value"

    const/16 v20, -0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 483
    .local v9, color:I
    const v19, 0x7f090042

    move/from16 v0, v19

    if-ne v12, v0, :cond_7

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput v9, v0, Lcom/lx/launcher8/bean/LightCell;->textColor:I

    goto/16 :goto_1

    .line 485
    :cond_7
    const v19, 0x7f090044

    move/from16 v0, v19

    if-ne v12, v0, :cond_1

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput v9, v0, Lcom/lx/launcher8/bean/LightCell;->backColor:I

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileBgColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    goto/16 :goto_1

    .line 491
    .end local v9           #color:I
    .end local v12           #id:I
    :sswitch_4
    const-string v19, "extral_info"

    const v20, 0x10001

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 492
    .local v14, size:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/lx/launcher8/bean/LightCell;->setSize(I)V

    goto/16 :goto_1

    .line 495
    .end local v14           #size:I
    :sswitch_5
    const-string v19, "extral_value"

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 496
    .local v11, gravity:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/lx/launcher8/bean/LightCell;->setImgGravity(I)V

    goto/16 :goto_1

    .line 499
    .end local v11           #gravity:I
    :sswitch_6
    const-string v19, "text_gravity"

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 500
    .local v16, textGravity:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/bean/LightCell;->setTextGarivty(I)V

    .line 501
    const-string v19, "text_color"

    const/16 v20, -0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 502
    .local v15, textColor:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput v15, v0, Lcom/lx/launcher8/bean/LightCell;->textColor:I

    .line 503
    const-string v19, "special_fun_text_type"

    const/16 v20, -0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 504
    .local v17, type:I
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/bean/LightCell;->setTextDisplayType(I)V

    goto/16 :goto_1

    .line 507
    .end local v15           #textColor:I
    .end local v16           #textGravity:I
    .end local v17           #type:I
    :sswitch_7
    const-string v19, "extral_value"

    const/16 v20, 0x64

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 508
    .local v3, alpha:I
    const-string v19, "extral_value1"

    const/16 v20, 0x64

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 509
    .local v4, alphaFG:I
    const-string v19, "extral_value2"

    const/16 v20, 0x64

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 510
    .local v5, alphaTX:I
    mul-int/lit16 v0, v3, 0xff

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x64

    move/from16 v0, v19

    rsub-int v3, v0, 0xff

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/lx/launcher8/bean/LightCell;->setCellAlphaBg(I)V

    .line 512
    mul-int/lit16 v0, v4, 0xff

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x64

    move/from16 v0, v19

    rsub-int v4, v0, 0xff

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/lx/launcher8/bean/LightCell;->setCellAlphaFg(I)V

    .line 514
    mul-int/lit16 v0, v5, 0xff

    move/from16 v19, v0

    div-int/lit8 v5, v19, 0x64

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/lx/launcher8/bean/LightCell;->setTextAlpha(I)V

    goto/16 :goto_1

    .line 518
    .end local v3           #alpha:I
    .end local v4           #alphaFG:I
    .end local v5           #alphaTX:I
    :sswitch_8
    const-string v19, "extral_value"

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 519
    .local v10, fun:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/lx/launcher8/bean/LightCell;->setFunction(I)V

    .line 520
    const-string v19, "extral_value1"

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 521
    .restart local v17       #type:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/bean/LightCell;->setTextDisplayType(I)V

    goto/16 :goto_1

    .line 524
    .end local v10           #fun:I
    .end local v17           #type:I
    :sswitch_9
    const-string v19, "item"

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 525
    .local v18, val:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move/from16 v0, v18

    move-object/from16 v1, v19

    iput v0, v1, Lcom/lx/launcher8/bean/LightCell;->openMode:I

    goto/16 :goto_1

    .line 528
    .end local v18           #val:I
    :sswitch_a
    const-string v19, "item"

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 529
    .restart local v18       #val:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move/from16 v0, v18

    move-object/from16 v1, v19

    iput v0, v1, Lcom/lx/launcher8/bean/LightCell;->lightMode:I

    goto/16 :goto_1

    .line 532
    .end local v18           #val:I
    :sswitch_b
    const-string v19, "item"

    const/16 v20, 0x2

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 533
    .restart local v18       #val:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    move-object/from16 v19, v0

    move/from16 v0, v18

    move-object/from16 v1, v19

    iput v0, v1, Lcom/lx/launcher8/bean/LightCell;->lightLong:I

    goto/16 :goto_1

    .line 433
    nop

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
        0x22 -> :sswitch_a
        0x23 -> :sswitch_b
    .end sparse-switch
.end method

.method public onBack()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 647
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfoString:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget-object v6, v6, Lcom/lx/launcher8/bean/LightCell;->title:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 674
    :cond_0
    :goto_0
    return v5

    .line 648
    :cond_1
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfoString:Ljava/lang/String;

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    invoke-virtual {v7}, Lcom/lx/launcher8/bean/LightCell;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget-object v6, v6, Lcom/lx/launcher8/bean/LightCell;->title:Ljava/lang/String;

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->appNameLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v7}, Lcom/lx/launcher8/view/SettingLinearLayout;->getEditText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 649
    :cond_2
    new-instance v2, Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;

    const v6, 0x7f0e0005

    invoke-direct {v2, v5, v6}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;-><init>(Landroid/content/Context;I)V

    .line 650
    .local v2, dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;
    new-instance v5, Lcom/lx/launcher8/setting/view/LightSettingView$6;

    invoke-direct {v5, p0, v2}, Lcom/lx/launcher8/setting/view/LightSettingView$6;-><init>(Lcom/lx/launcher8/setting/view/LightSettingView;Lcom/lx/launcher8/setting/view/DialogSaveTheme;)V

    invoke-virtual {v2, v5}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 667
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;

    const v6, 0x7f0a01c4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 668
    .local v4, title:Ljava/lang/String;
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0134

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, about:Ljava/lang/String;
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0077

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 670
    .local v3, ok:Ljava/lang/String;
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0078

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 671
    .local v1, cancel:Ljava/lang/String;
    invoke-virtual {v2, v4, v0, v3, v1}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->createWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->show()V

    .line 672
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 12

    .prologue
    .line 323
    iget v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->backColor:I

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v9, v9, Lcom/lx/launcher8/bean/LightCell;->backColor:I

    if-eq v8, v9, :cond_0

    .line 324
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v8, v8, Lcom/lx/launcher8/bean/LightCell;->backColor:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    .line 325
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    iget v9, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->themeColor:I

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 329
    :goto_0
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v8, v8, Lcom/lx/launcher8/bean/LightCell;->backColor:I

    iput v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->backColor:I

    .line 332
    :cond_0
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    invoke-virtual {v8}, Lcom/lx/launcher8/bean/LightCell;->getImgGravity()I

    move-result v3

    .line 334
    .local v3, gravity:I
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/16 v10, 0x11

    invoke-direct {v6, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 335
    .local v6, p:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;

    const/high16 v9, 0x42dc

    invoke-static {v8, v9}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v8

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;

    const/high16 v10, 0x42dc

    invoke-static {v9, v10}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v9

    invoke-direct {p0, v8, v9}, Lcom/lx/launcher8/setting/view/LightSettingView;->getIconImgMargin(FF)[F

    move-result-object v5

    .line 336
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

    .line 337
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, 0x4188

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 340
    .local v7, params:Landroid/widget/LinearLayout$LayoutParams;
    if-nez v3, :cond_7

    .line 341
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->iconImg:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 342
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;

    const/high16 v9, 0x4120

    invoke-static {v8, v9}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v8

    const/high16 v9, 0x3f00

    add-float v4, v8, v9

    .line 343
    .local v4, margin:F
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v8, v8, Lcom/lx/launcher8/bean/LightCell;->spanX:I

    int-to-float v8, v8

    div-float v8, v4, v8

    float-to-int v8, v8

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v9, v9, Lcom/lx/launcher8/bean/LightCell;->spanY:I

    int-to-float v9, v9

    div-float v9, v4, v9

    float-to-int v9, v9

    iget-object v10, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v10, v10, Lcom/lx/launcher8/bean/LightCell;->spanX:I

    int-to-float v10, v10

    div-float v10, v4, v10

    float-to-int v10, v10

    iget-object v11, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v11, v11, Lcom/lx/launcher8/bean/LightCell;->spanY:I

    int-to-float v11, v11

    div-float v11, v4, v11

    float-to-int v11, v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 348
    .end local v4           #margin:F
    :goto_1
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->iconImg:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    iget v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->gravity:I

    if-eq v8, v3, :cond_1

    .line 351
    if-nez v3, :cond_8

    .line 352
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a00ed

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 356
    :goto_2
    iput v3, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->gravity:I

    .line 359
    :cond_1
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget-object v8, v8, Lcom/lx/launcher8/bean/LightCell;->icon:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_2

    .line 360
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->iconImg:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget-object v9, v9, Lcom/lx/launcher8/bean/LightCell;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 363
    :cond_2
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v8, v8, Lcom/lx/launcher8/bean/LightCell;->cellType:I

    and-int/lit16 v8, v8, 0xfff

    const/16 v9, 0x20

    if-ne v8, v9, :cond_3

    .line 364
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a017f

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 365
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget-object v8, v8, Lcom/lx/launcher8/bean/LightCell;->icon2:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_9

    .line 366
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget-object v9, v9, Lcom/lx/launcher8/bean/LightCell;->icon2:Landroid/graphics/Bitmap;

    iget v10, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->themeColor:I

    invoke-virtual {v8, v9, v10}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightImageView(Landroid/graphics/Bitmap;I)V

    .line 369
    :goto_3
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/lx/launcher8/view/SettingLinearLayout;->setVisibility(I)V

    .line 373
    :cond_3
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    invoke-virtual {v8}, Lcom/lx/launcher8/bean/LightCell;->getCellAlphaFg()I

    move-result v1

    .line 374
    .local v1, cellFgAlpha:I
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    invoke-virtual {v8}, Lcom/lx/launcher8/bean/LightCell;->getCellAlphaBg()I

    move-result v0

    .line 375
    .local v0, cellBgAlpha:I
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    invoke-virtual {v8}, Lcom/lx/launcher8/bean/LightCell;->getTextAlpha()I

    move-result v2

    .line 376
    .local v2, cellTxAlpha:I
    iget v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellFgAlpha:I

    if-ne v8, v1, :cond_4

    iget v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellBgAlpha:I

    if-ne v8, v0, :cond_4

    iget v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellTxAlpha:I

    if-eq v8, v2, :cond_5

    .line 377
    :cond_4
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileBgTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

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

    iget-object v10, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

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

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 378
    iput v1, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellFgAlpha:I

    .line 379
    iput v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellBgAlpha:I

    .line 380
    iput v2, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellTxAlpha:I

    .line 383
    :cond_5
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->setTileSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v10, v10, Lcom/lx/launcher8/bean/LightCell;->spanX:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v10, v10, Lcom/lx/launcher8/bean/LightCell;->spanY:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 385
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileOpenMode:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a017c

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 386
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v8, v8, Lcom/lx/launcher8/bean/LightCell;->openMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    .line 387
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileOpenMode:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a00fa

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 393
    :goto_4
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileLightMode:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a017d

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 394
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v8, v8, Lcom/lx/launcher8/bean/LightCell;->lightMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b

    .line 395
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileLightMode:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a0101

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 401
    :goto_5
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileLightLong:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a017e

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 402
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v8, v8, Lcom/lx/launcher8/bean/LightCell;->lightLong:I

    packed-switch v8, :pswitch_data_0

    .line 416
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileLightLong:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a00fb

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 419
    :goto_6
    return-void

    .line 327
    .end local v0           #cellBgAlpha:I
    .end local v1           #cellFgAlpha:I
    .end local v2           #cellTxAlpha:I
    .end local v3           #gravity:I
    .end local v5           #ms:[F
    .end local v6           #p:Landroid/widget/FrameLayout$LayoutParams;
    .end local v7           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->iconImgBg:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->cellInfo:Lcom/lx/launcher8/bean/LightCell;

    iget v9, v9, Lcom/lx/launcher8/bean/LightCell;->backColor:I

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 345
    .restart local v3       #gravity:I
    .restart local v5       #ms:[F
    .restart local v6       #p:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v7       #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->iconImg:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 346
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    .line 354
    :cond_8
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a00ec

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    goto/16 :goto_2

    .line 368
    :cond_9
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileSecondPic:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v9, 0x7f0200eb

    iget v10, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->themeColor:I

    invoke-virtual {v8, v9, v10}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightImageView(II)V

    goto/16 :goto_3

    .line 390
    .restart local v0       #cellBgAlpha:I
    .restart local v1       #cellFgAlpha:I
    .restart local v2       #cellTxAlpha:I
    :cond_a
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileOpenMode:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a00f9

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    goto/16 :goto_4

    .line 398
    :cond_b
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileLightMode:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a0100

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    goto/16 :goto_5

    .line 404
    :pswitch_0
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileLightLong:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a00fc

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    goto :goto_6

    .line 407
    :pswitch_1
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileLightLong:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a00fd

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    goto :goto_6

    .line 410
    :pswitch_2
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileLightLong:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a00fe

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    goto/16 :goto_6

    .line 413
    :pswitch_3
    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->tileLightLong:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/LightSettingView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a00ff

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    goto/16 :goto_6

    .line 402
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
    .line 762
    return-void
.end method
