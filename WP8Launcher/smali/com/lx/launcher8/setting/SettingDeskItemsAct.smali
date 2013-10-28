.class public Lcom/lx/launcher8/setting/SettingDeskItemsAct;
.super Lcom/lx/launcher8/NoSearchAct;
.source "SettingDeskItemsAct.java"


# static fields
.field public static final ANIMATION:I = 0x1f4

.field public static final APPLISTSTYLE:I = 0x258

.field public static final BACKGROUND:I = 0x12c

.field public static final CELLGAP:I = 0xc8

.field public static final EXTRAL_VALUE:Ljava/lang/String; = "extral_value"

.field public static final EXTRAL_VALUE1:Ljava/lang/String; = "extral_value1"

.field public static final EXTRAL_VALUE2:Ljava/lang/String; = "extral_value2"

.field public static final FOLDERPOPUP:I = 0x578

.field public static final FOLDER_ONE:I = 0x3e8

.field public static final FOLDER_TWO:I = 0x44c

.field public static final FOLDER_VALUE:Ljava/lang/String; = "folder_value"

.field public static final INTENT_KEY:Ljava/lang/String; = "PAGE"

.field public static final PICPOSITION:I = 0x2bc

.field public static final SETTINGSCREEN:I = 0x5dc

.field public static final SETTINGSTYLE:I = 0x514

.field public static final SPECIALFUN:I = 0x4b0

.field public static final SPECIALFUN_TILE_TEXT:I = 0x4ba

.field public static final SPECIAL_ID:Ljava/lang/String; = "special_id"

.field public static final STATUSBAR:I = 0x190

.field public static final STATUSBAR_HIDE_STYLE:I = 0x1a4

.field public static final STATUSBAR_HOLD_TIME:I = 0x19a

.field public static final TEXTPOSITION:I = 0x320

.field public static final TRANSPARENCY:I = 0x64

.field public static final TRANSPARENCY_DOUBLE:I = 0x96

.field public static final TRANSPARENCY_THIRD:I = 0xb4


# instance fields
.field applistStyle:[I

.field background:[I

.field folderPopup:[I

.field gaps:[I

.field hideStatusBar:[I

.field holdTime:[I

.field mAboutTv:Landroid/widget/TextView;

.field private mAppSet:Lcom/lx/launcher8/cfg/AppSetting;

.field private mFirstTitle:Landroid/widget/TextView;

.field mHoldTimeView:Landroid/view/View;

.field private mRootView:Landroid/widget/LinearLayout;

.field mSpecialFunTileTextView:Landroid/view/View;

.field mStatusView:Landroid/view/View;

.field private mTitleAbout:Landroid/widget/TextView;

.field mTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;

.field private onCheckChange:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field picPositions:[I

.field screenStyle:[I

.field seekBar:Landroid/widget/SeekBar;

.field seekBar1:Landroid/widget/SeekBar;

.field seekBar2:Landroid/widget/SeekBar;

.field settingStyles:[I

.field specialFunTileTexts:[I

.field specialFuns:[I

.field statusBar:[I

.field textPositions:[I

.field whichPage:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v1, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 32
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->whichPage:I

    .line 269
    new-array v0, v5, [I

    aput v3, v0, v3

    aput v4, v0, v4

    iput-object v0, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->statusBar:[I

    .line 270
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->hideStatusBar:[I

    .line 271
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->holdTime:[I

    .line 329
    new-array v0, v5, [I

    aput v3, v0, v3

    aput v4, v0, v4

    iput-object v0, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->background:[I

    .line 343
    const/16 v0, 0xa

    new-array v0, v0, [I

    aput v3, v0, v3

    aput v4, v0, v4

    aput v1, v0, v5

    aput v6, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v1, v0, v6

    const/4 v1, 0x7

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x14

    aput v2, v0, v1

    iput-object v0, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->gaps:[I

    .line 363
    new-array v0, v5, [I

    aput v3, v0, v3

    aput v4, v0, v4

    iput-object v0, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->applistStyle:[I

    .line 383
    new-array v0, v4, [I

    aput v3, v0, v3

    iput-object v0, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->picPositions:[I

    .line 403
    new-array v0, v4, [I

    aput v3, v0, v3

    iput-object v0, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->folderPopup:[I

    .line 422
    new-array v0, v4, [I

    aput v3, v0, v3

    iput-object v0, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->settingStyles:[I

    .line 437
    new-array v0, v5, [I

    aput v3, v0, v3

    aput v4, v0, v4

    iput-object v0, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->screenStyle:[I

    .line 453
    new-array v0, v5, [I

    aput v3, v0, v3

    aput v4, v0, v4

    iput-object v0, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->textPositions:[I

    .line 473
    new-array v0, v5, [I

    aput v4, v0, v3

    aput v3, v0, v4

    iput-object v0, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->specialFuns:[I

    .line 474
    new-array v0, v4, [I

    aput v3, v0, v3

    iput-object v0, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->specialFunTileTexts:[I

    .line 730
    new-instance v0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct$1;-><init>(Lcom/lx/launcher8/setting/SettingDeskItemsAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->onCheckChange:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 865
    new-instance v0, Lcom/lx/launcher8/setting/SettingDeskItemsAct$2;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct$2;-><init>(Lcom/lx/launcher8/setting/SettingDeskItemsAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;

    .line 32
    return-void

    .line 270
    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 271
    :array_1
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/SettingDeskItemsAct;)Lcom/lx/launcher8/cfg/DeskSetting;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/SettingDeskItemsAct;)Lcom/lx/launcher8/cfg/AppSetting;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/SettingDeskItemsAct;)V
    .locals 0
    .parameter

    .prologue
    .line 847
    invoke-direct {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->startBarService()V

    return-void
.end method

.method private addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;
    .locals 10
    .parameter "key"
    .parameter "text"
    .parameter "selected"

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 521
    new-instance v1, Landroid/widget/RadioGroup;

    invoke-direct {v1, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 522
    .local v1, group:Landroid/widget/RadioGroup;
    const v5, 0x7f0201e4

    invoke-virtual {v1, v5}, Landroid/widget/RadioGroup;->setBackgroundResource(I)V

    .line 523
    invoke-virtual {v1, v9}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 524
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 526
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 527
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, p2

    if-lt v2, v5, :cond_0

    .line 547
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->onCheckChange:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v1, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 548
    return-object v1

    .line 528
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 529
    const v6, 0x7f03005f

    const/4 v7, 0x0

    .line 528
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 530
    .local v0, btn:Landroid/widget/RadioButton;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 531
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, -0x2

    .line 530
    invoke-direct {v3, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 532
    .restart local v3       #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    aget-object v5, p2, v2

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 534
    add-int v5, p1, v2

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setId(I)V

    .line 535
    if-ne v2, p3, :cond_1

    .line 536
    invoke-virtual {v0, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 538
    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 539
    array-length v5, p2

    add-int/lit8 v5, v5, -0x1

    if-eq v2, v5, :cond_2

    .line 540
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 541
    .local v4, view:Landroid/view/View;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 542
    .restart local v3       #lp:Landroid/widget/LinearLayout$LayoutParams;
    const-string v5, "#dcdcdc"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 543
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 527
    .end local v4           #view:Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private ceratePageApplistStyle()V
    .locals 6

    .prologue
    .line 369
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mFirstTitle:Landroid/widget/TextView;

    const v5, 0x7f0a0120

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mTitleAbout:Landroid/widget/TextView;

    const v5, 0x7f0a0121

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 374
    .local v3, text:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 375
    .local v2, index:I
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/AppSetting;->getThemeAppList()I

    move-result v0

    .line 376
    .local v0, appListStyle:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->applistStyle:[I

    array-length v4, v4

    if-lt v1, v4, :cond_0

    .line 380
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mRootView:Landroid/widget/LinearLayout;

    const/16 v5, 0x258

    invoke-direct {p0, v5, v3, v2}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 381
    return-void

    .line 377
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->applistStyle:[I

    aget v4, v4, v1

    if-ne v4, v0, :cond_1

    .line 378
    move v2, v1

    .line 376
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private ceratePageCellgrap()V
    .locals 6

    .prologue
    .line 349
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mFirstTitle:Landroid/widget/TextView;

    const v5, 0x7f0a0135

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mTitleAbout:Landroid/widget/TextView;

    const v5, 0x7f0a014f

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, text:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 355
    .local v2, index:I
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellGap()I

    move-result v0

    .line 356
    .local v0, gap:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->gaps:[I

    array-length v4, v4

    if-lt v1, v4, :cond_0

    .line 360
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mRootView:Landroid/widget/LinearLayout;

    const/16 v5, 0xc8

    invoke-direct {p0, v5, v3, v2}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 361
    return-void

    .line 357
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->gaps:[I

    aget v4, v4, v1

    if-ne v4, v0, :cond_1

    .line 358
    move v2, v1

    .line 356
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private ceratePagePicPosition()V
    .locals 7

    .prologue
    .line 389
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mFirstTitle:Landroid/widget/TextView;

    const v5, 0x7f0a004f

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mTitleAbout:Landroid/widget/TextView;

    const v5, 0x7f0a0125

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, text:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 395
    .local v1, index:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extral_value"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 396
    .local v2, picPosition:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->picPositions:[I

    array-length v4, v4

    if-lt v0, v4, :cond_0

    .line 400
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mRootView:Landroid/widget/LinearLayout;

    const/16 v5, 0x2bc

    invoke-direct {p0, v5, v3, v1}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 401
    return-void

    .line 397
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->picPositions:[I

    aget v4, v4, v0

    if-ne v4, v2, :cond_1

    .line 398
    move v1, v0

    .line 396
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private ceratePageSpecialFun()V
    .locals 13

    .prologue
    const v12, 0x7f0a0150

    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 481
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mFirstTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v12}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mTitleAbout:Landroid/widget/TextView;

    invoke-virtual {p0, v12}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070005

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 486
    .local v7, text:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 487
    .local v1, index:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "extral_value"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 488
    .local v5, specialFun:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->specialFuns:[I

    array-length v8, v8

    if-lt v0, v8, :cond_1

    .line 492
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mRootView:Landroid/widget/LinearLayout;

    const/16 v9, 0x4b0

    invoke-direct {p0, v9, v7, v1}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 494
    const/high16 v8, 0x4120

    invoke-static {p0, v8}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v8

    float-to-int v4, v8

    .line 495
    .local v4, margin:I
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    .line 496
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    const/16 v9, 0x13

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 497
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    invoke-virtual {v8, v10, v4, v10, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 498
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    const v9, 0x7f0a0218

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 499
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    const v9, -0xacacad

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 500
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    const/high16 v9, 0x4180

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 501
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mRootView:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 503
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "extral_value1"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 504
    .local v6, specialFunTileText:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070006

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 506
    .local v3, items:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 507
    .local v2, index2:I
    const/4 v0, 0x0

    :goto_1
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->specialFunTileTexts:[I

    array-length v8, v8

    if-lt v0, v8, :cond_3

    .line 512
    const/16 v8, 0x4ba

    invoke-direct {p0, v8, v3, v2}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v8

    iput-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mSpecialFunTileTextView:Landroid/view/View;

    .line 513
    const/4 v8, 0x1

    if-eq v1, v8, :cond_0

    .line 514
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 515
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mSpecialFunTileTextView:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 517
    :cond_0
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mRootView:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mSpecialFunTileTextView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 518
    return-void

    .line 489
    .end local v2           #index2:I
    .end local v3           #items:[Ljava/lang/String;
    .end local v4           #margin:I
    .end local v6           #specialFunTileText:I
    :cond_1
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->specialFuns:[I

    aget v8, v8, v0

    if-ne v8, v5, :cond_2

    .line 490
    move v1, v0

    .line 488
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 508
    .restart local v2       #index2:I
    .restart local v3       #items:[Ljava/lang/String;
    .restart local v4       #margin:I
    .restart local v6       #specialFunTileText:I
    :cond_3
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->specialFunTileTexts:[I

    aget v8, v8, v0

    if-ne v8, v6, :cond_4

    .line 509
    move v2, v0

    .line 507
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private ceratePageTextPosition()V
    .locals 7

    .prologue
    .line 459
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mFirstTitle:Landroid/widget/TextView;

    const v5, 0x7f0a0127

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mTitleAbout:Landroid/widget/TextView;

    const v5, 0x7f0a0128

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 464
    .local v2, text:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 465
    .local v1, index:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extral_value"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 466
    .local v3, textPosition:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->textPositions:[I

    array-length v4, v4

    if-lt v0, v4, :cond_0

    .line 470
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mRootView:Landroid/widget/LinearLayout;

    const/16 v5, 0x320

    invoke-direct {p0, v5, v2, v1}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 471
    return-void

    .line 467
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->textPositions:[I

    aget v4, v4, v0

    if-ne v4, v3, :cond_1

    .line 468
    move v1, v0

    .line 466
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private cerateScreenStyle()V
    .locals 6

    .prologue
    .line 440
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mFirstTitle:Landroid/widget/TextView;

    const v5, 0x7f0a0162

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mTitleAbout:Landroid/widget/TextView;

    const v5, 0x7f0a0161

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 444
    .local v3, text:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 445
    .local v1, index:I
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/DeskSetting;->getScreenOrientation()I

    move-result v2

    .line 446
    .local v2, settingStyle:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->screenStyle:[I

    array-length v4, v4

    if-lt v0, v4, :cond_0

    .line 450
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mRootView:Landroid/widget/LinearLayout;

    const/16 v5, 0x5dc

    invoke-direct {p0, v5, v3, v1}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 451
    return-void

    .line 447
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->screenStyle:[I

    aget v4, v4, v0

    if-ne v4, v2, :cond_1

    .line 448
    move v1, v0

    .line 446
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private cerateSettingStyle()V
    .locals 6

    .prologue
    .line 425
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mFirstTitle:Landroid/widget/TextView;

    const v5, 0x7f0a0157

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mTitleAbout:Landroid/widget/TextView;

    const v5, 0x7f0a015e

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 429
    .local v3, text:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 430
    .local v1, index:I
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/DeskSetting;->getSettingStyle()I

    move-result v2

    .line 431
    .local v2, settingStyle:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->settingStyles:[I

    array-length v4, v4

    if-lt v0, v4, :cond_0

    .line 435
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mRootView:Landroid/widget/LinearLayout;

    const/16 v5, 0x514

    invoke-direct {p0, v5, v3, v1}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 436
    return-void

    .line 432
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->settingStyles:[I

    aget v4, v4, v0

    if-ne v4, v2, :cond_1

    .line 433
    move v1, v0

    .line 431
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createFolderPopup()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 406
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mFirstTitle:Landroid/widget/TextView;

    const v5, 0x7f0a01db

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mTitleAbout:Landroid/widget/TextView;

    const v5, 0x7f0a01e8

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const v4, 0x7f0a01e9

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    .line 411
    const v5, 0x7f0a01ea

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 412
    .local v3, text:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 413
    .local v1, index:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extral_value"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 414
    .local v2, picPosition:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->folderPopup:[I

    array-length v4, v4

    if-lt v0, v4, :cond_0

    .line 418
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mRootView:Landroid/widget/LinearLayout;

    const/16 v5, 0x578

    invoke-direct {p0, v5, v3, v1}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 419
    return-void

    .line 415
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->folderPopup:[I

    aget v4, v4, v0

    if-ne v4, v2, :cond_1

    .line 416
    move v1, v0

    .line 414
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createPageAnimation()V
    .locals 14

    .prologue
    const v13, 0x7f03005e

    const/4 v12, -0x1

    const/16 v11, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 220
    iget-object v9, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mFirstTitle:Landroid/widget/TextView;

    const v10, 0x7f0a0135

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v9, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mTitleAbout:Landroid/widget/TextView;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 226
    .local v2, ll:Landroid/widget/LinearLayout;
    const v9, 0x7f0201e4

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 227
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 228
    const/4 v9, -0x2

    invoke-static {v12, v9}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 229
    .local v4, params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v9, 0xf

    invoke-virtual {v4, v11, v9, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 230
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 233
    const/4 v10, 0x0

    invoke-virtual {v9, v13, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 232
    check-cast v1, Landroid/widget/LinearLayout;

    .line 235
    .local v1, itemLayout_01:Landroid/widget/LinearLayout;
    const v9, 0x7f09018b

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 234
    check-cast v0, Landroid/widget/TextView;

    .line 236
    .local v0, content:Landroid/widget/TextView;
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 237
    const v9, 0x7f0a014a

    invoke-virtual {p0, v9}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v9, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v9}, Lcom/lx/launcher8/cfg/DeskSetting;->getScrollAllowed()I

    move-result v9

    if-ne v9, v7, :cond_0

    move v3, v7

    .line 240
    .local v3, open:Z
    :goto_0
    const v9, 0x7f09018e

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 239
    check-cast v6, Lcom/lx/launcher8/view/SeekButton;

    .line 241
    .local v6, view:Lcom/lx/launcher8/view/SeekButton;
    invoke-virtual {v6, v8}, Lcom/lx/launcher8/view/SeekButton;->setVisibility(I)V

    .line 242
    const/16 v9, 0x1f5

    invoke-virtual {v6, v9}, Lcom/lx/launcher8/view/SeekButton;->setId(I)V

    .line 243
    iget-object v9, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;

    invoke-virtual {v6, v9}, Lcom/lx/launcher8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 244
    invoke-virtual {v6, v3}, Lcom/lx/launcher8/view/SeekButton;->setState(Z)V

    .line 245
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 247
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 248
    .local v5, v:Landroid/view/View;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .end local v4           #params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v4, v12, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 249
    .restart local v4       #params:Landroid/widget/LinearLayout$LayoutParams;
    const-string v9, "#dcdcdc"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 250
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 253
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 254
    const/4 v10, 0x0

    .line 253
    invoke-virtual {v9, v13, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .end local v1           #itemLayout_01:Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 255
    .restart local v1       #itemLayout_01:Landroid/widget/LinearLayout;
    const v9, 0x7f09018b

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #content:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 256
    .restart local v0       #content:Landroid/widget/TextView;
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 257
    const v9, 0x7f0a014b

    invoke-virtual {p0, v9}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v9, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v9}, Lcom/lx/launcher8/cfg/DeskSetting;->getAnimationSwitch()I

    move-result v9

    if-ne v9, v7, :cond_1

    move v3, v7

    .line 259
    :goto_1
    const v7, 0x7f09018e

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #view:Lcom/lx/launcher8/view/SeekButton;
    check-cast v6, Lcom/lx/launcher8/view/SeekButton;

    .line 260
    .restart local v6       #view:Lcom/lx/launcher8/view/SeekButton;
    invoke-virtual {v6, v8}, Lcom/lx/launcher8/view/SeekButton;->setVisibility(I)V

    .line 261
    const/16 v7, 0x1f6

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/view/SeekButton;->setId(I)V

    .line 262
    iget-object v7, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 263
    invoke-virtual {v6, v3}, Lcom/lx/launcher8/view/SeekButton;->setState(Z)V

    .line 264
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 266
    iget-object v7, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 267
    return-void

    .end local v3           #open:Z
    .end local v5           #v:Landroid/view/View;
    .end local v6           #view:Lcom/lx/launcher8/view/SeekButton;
    :cond_0
    move v3, v8

    .line 238
    goto/16 :goto_0

    .restart local v3       #open:Z
    .restart local v5       #v:Landroid/view/View;
    .restart local v6       #view:Lcom/lx/launcher8/view/SeekButton;
    :cond_1
    move v3, v8

    .line 258
    goto :goto_1
.end method

.method private createPageBackground()V
    .locals 4

    .prologue
    .line 335
    iget-object v2, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mFirstTitle:Landroid/widget/TextView;

    const v3, 0x7f0a0135

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v2, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mTitleAbout:Landroid/widget/TextView;

    const v3, 0x7f0a014c

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v2, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v2}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v0

    .line 339
    .local v0, index:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f07

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, text:[Ljava/lang/String;
    iget-object v2, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mRootView:Landroid/widget/LinearLayout;

    const/16 v3, 0x12c

    invoke-direct {p0, v3, v1, v0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 341
    return-void
.end method

.method private createPageDTransparency()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 617
    invoke-direct {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->createPageTransparency()V

    .line 618
    const/high16 v5, 0x4120

    invoke-static {p0, v5}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v5

    float-to-int v2, v5

    .line 619
    .local v2, margin:I
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 620
    .local v4, tv:Landroid/widget/TextView;
    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 621
    mul-int/lit8 v5, v2, 0x3

    invoke-virtual {v4, v8, v5, v8, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 622
    const v5, 0x7f0a012e

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 623
    const v5, -0xacacad

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 624
    const/high16 v5, 0x4180

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 625
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 626
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 627
    const v6, 0x7f030063

    const/4 v7, 0x0

    .line 626
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 628
    .local v1, item:Landroid/view/View;
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 630
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "extral_value1"

    const/16 v7, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 631
    .local v0, alpha:I
    const v5, 0x7f09019a

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar1:Landroid/widget/SeekBar;

    .line 633
    const v5, 0x7f090199

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 632
    check-cast v3, Lcom/lx/launcher8/view/DragSeekBar;

    .line 634
    .local v3, seekBarText1:Lcom/lx/launcher8/view/DragSeekBar;
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar1:Landroid/widget/SeekBar;

    iget-object v6, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v6

    .line 635
    iget-object v7, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v7

    .line 634
    invoke-virtual {v5, v6, v8, v7, v8}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 636
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/lx/launcher8/view/DragSeekBar;->setPadding(I)V

    .line 637
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar1:Landroid/widget/SeekBar;

    new-instance v6, Lcom/lx/launcher8/setting/SettingDeskItemsAct$6;

    invoke-direct {v6, p0, v3}, Lcom/lx/launcher8/setting/SettingDeskItemsAct$6;-><init>(Lcom/lx/launcher8/setting/SettingDeskItemsAct;Lcom/lx/launcher8/view/DragSeekBar;)V

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 653
    new-instance v5, Lcom/lx/launcher8/setting/SettingDeskItemsAct$7;

    invoke-direct {v5, p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct$7;-><init>(Lcom/lx/launcher8/setting/SettingDeskItemsAct;)V

    invoke-virtual {v3, v5}, Lcom/lx/launcher8/view/DragSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 669
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->requestFocus()Z

    .line 670
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v5, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 671
    return-void
.end method

.method private createPageStatusbar()V
    .locals 11

    .prologue
    .line 279
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mFirstTitle:Landroid/widget/TextView;

    const v9, 0x7f0a0027

    invoke-virtual {p0, v9}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mTitleAbout:Landroid/widget/TextView;

    const v9, 0x7f0a014e

    invoke-virtual {p0, v9}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v8}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeStatusBar()I

    move-result v2

    .line 283
    .local v2, index:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070011

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 284
    .local v7, text:[Ljava/lang/String;
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mRootView:Landroid/widget/LinearLayout;

    const/16 v9, 0x190

    const/4 v10, 0x2

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-direct {p0, v9, v7, v10}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 286
    const/high16 v8, 0x4120

    invoke-static {p0, v8}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v8

    float-to-int v5, v8

    .line 287
    .local v5, margin:I
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    .line 288
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    const/16 v9, 0x13

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 289
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v5, v10, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 290
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    const v9, 0x7f0a01fa

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 291
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    const v9, -0xacacad

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 292
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    const/high16 v9, 0x4180

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 293
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mRootView:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 295
    const v8, 0x7f0a01fb

    invoke-virtual {p0, v8}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 296
    .local v6, second:Ljava/lang/String;
    const v8, 0x7f0a0200

    invoke-virtual {p0, v8}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, always:Ljava/lang/String;
    const/4 v8, 0x4

    new-array v4, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "5 "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "10 "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x2

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "20 "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x3

    .line 298
    aput-object v0, v4, v8

    .line 300
    .local v4, items:[Ljava/lang/String;
    const/4 v3, 0x1

    .line 301
    .local v3, index2:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->holdTime:[I

    array-length v8, v8

    if-lt v1, v8, :cond_2

    .line 306
    const/16 v8, 0x19a

    invoke-direct {p0, v8, v4, v3}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v8

    iput-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mHoldTimeView:Landroid/view/View;

    .line 307
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mRootView:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mHoldTimeView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 309
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070012

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 310
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "index = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 311
    add-int/lit8 v8, v2, -0x2

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 312
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "index2 = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 313
    const/16 v8, 0x1a4

    invoke-direct {p0, v8, v4, v3}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v8

    iput-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mStatusView:Landroid/view/View;

    .line 314
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mRootView:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mStatusView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 316
    const/4 v8, 0x1

    if-eq v2, v8, :cond_0

    .line 317
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mHoldTimeView:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 318
    :cond_0
    const/4 v8, 0x2

    if-ge v2, v8, :cond_1

    .line 319
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mStatusView:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 320
    :cond_1
    if-nez v2, :cond_4

    .line 321
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 327
    :goto_1
    return-void

    .line 302
    :cond_2
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->holdTime:[I

    aget v8, v8, v1

    iget-object v9, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v9}, Lcom/lx/launcher8/cfg/DeskSetting;->getStatusHoldTime()I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 303
    move v3, v1

    .line 301
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 323
    :cond_4
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    iget-object v9, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    const/4 v8, 0x1

    if-ne v2, v8, :cond_5

    const v8, 0x7f0a01fa

    :goto_2
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 325
    :cond_5
    const v8, 0x7f0a01f6

    goto :goto_2
.end method

.method private createPageTTransparency()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 674
    invoke-direct {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->createPageDTransparency()V

    .line 675
    const/high16 v5, 0x4120

    invoke-static {p0, v5}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v5

    float-to-int v2, v5

    .line 676
    .local v2, margin:I
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 677
    .local v4, tv:Landroid/widget/TextView;
    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 678
    mul-int/lit8 v5, v2, 0x3

    invoke-virtual {v4, v8, v5, v8, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 679
    const v5, 0x7f0a012f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 680
    const v5, -0xacacad

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 681
    const/high16 v5, 0x4180

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 682
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 683
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 684
    const v6, 0x7f030063

    const/4 v7, 0x0

    .line 683
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 685
    .local v1, item:Landroid/view/View;
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 687
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "extral_value2"

    const/16 v7, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 688
    .local v0, alpha:I
    const v5, 0x7f09019a

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar2:Landroid/widget/SeekBar;

    .line 690
    const v5, 0x7f090199

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 689
    check-cast v3, Lcom/lx/launcher8/view/DragSeekBar;

    .line 691
    .local v3, seekBarText2:Lcom/lx/launcher8/view/DragSeekBar;
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar2:Landroid/widget/SeekBar;

    iget-object v6, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar2:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v6

    .line 692
    iget-object v7, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar2:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v7

    .line 691
    invoke-virtual {v5, v6, v8, v7, v8}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 693
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar2:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/lx/launcher8/view/DragSeekBar;->setPadding(I)V

    .line 694
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar2:Landroid/widget/SeekBar;

    new-instance v6, Lcom/lx/launcher8/setting/SettingDeskItemsAct$8;

    invoke-direct {v6, p0, v3}, Lcom/lx/launcher8/setting/SettingDeskItemsAct$8;-><init>(Lcom/lx/launcher8/setting/SettingDeskItemsAct;Lcom/lx/launcher8/view/DragSeekBar;)V

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 710
    new-instance v5, Lcom/lx/launcher8/setting/SettingDeskItemsAct$9;

    invoke-direct {v5, p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct$9;-><init>(Lcom/lx/launcher8/setting/SettingDeskItemsAct;)V

    invoke-virtual {v3, v5}, Lcom/lx/launcher8/view/DragSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 726
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar2:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->requestFocus()Z

    .line 727
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar2:Landroid/widget/SeekBar;

    invoke-virtual {v5, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 728
    return-void
.end method

.method private createPageTransparency()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 557
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mFirstTitle:Landroid/widget/TextView;

    const v6, 0x7f0a004f

    invoke-virtual {p0, v6}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mTitleAbout:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 561
    const/high16 v5, 0x4120

    invoke-static {p0, v5}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v5

    float-to-int v2, v5

    .line 562
    .local v2, margin:I
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 563
    .local v4, tv:Landroid/widget/TextView;
    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 564
    invoke-virtual {v4, v8, v2, v8, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 565
    const v5, 0x7f0a012d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 566
    const v5, -0xacacad

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 567
    const/high16 v5, 0x4180

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 568
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 569
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 570
    const v6, 0x7f030063

    const/4 v7, 0x0

    .line 569
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 571
    .local v1, item:Landroid/widget/LinearLayout;
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 573
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "extral_value"

    const/16 v7, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 574
    .local v0, alpha:I
    const v5, 0x7f09019a

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar:Landroid/widget/SeekBar;

    .line 576
    const v5, 0x7f090199

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 575
    check-cast v3, Lcom/lx/launcher8/view/DragSeekBar;

    .line 577
    .local v3, seekBarText:Lcom/lx/launcher8/view/DragSeekBar;
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar:Landroid/widget/SeekBar;

    iget-object v6, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v6

    .line 578
    iget-object v7, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v7

    .line 577
    invoke-virtual {v5, v6, v8, v7, v8}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 579
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/lx/launcher8/view/DragSeekBar;->setPadding(I)V

    .line 580
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar:Landroid/widget/SeekBar;

    new-instance v6, Lcom/lx/launcher8/setting/SettingDeskItemsAct$4;

    invoke-direct {v6, p0, v3}, Lcom/lx/launcher8/setting/SettingDeskItemsAct$4;-><init>(Lcom/lx/launcher8/setting/SettingDeskItemsAct;Lcom/lx/launcher8/view/DragSeekBar;)V

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 596
    new-instance v5, Lcom/lx/launcher8/setting/SettingDeskItemsAct$5;

    invoke-direct {v5, p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct$5;-><init>(Lcom/lx/launcher8/setting/SettingDeskItemsAct;)V

    invoke-virtual {v3, v5}, Lcom/lx/launcher8/view/DragSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 612
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->requestFocus()Z

    .line 613
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 614
    return-void
.end method

.method private getData(I)[Z
    .locals 5
    .parameter "data"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 209
    const/4 v1, 0x3

    new-array v0, v1, [Z

    .line 210
    .local v0, boo:[Z
    shr-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    aput-boolean v1, v0, v2

    .line 211
    shr-int/lit8 v1, p1, 0x1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    aput-boolean v1, v0, v3

    .line 212
    const/4 v1, 0x2

    rem-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_2

    :goto_2
    aput-boolean v2, v0, v1

    .line 213
    return-object v0

    :cond_0
    move v1, v3

    .line 210
    goto :goto_0

    :cond_1
    move v1, v3

    .line 211
    goto :goto_1

    :cond_2
    move v2, v3

    .line 212
    goto :goto_2
.end method

.method private startBarService()V
    .locals 3

    .prologue
    .line 848
    iget-object v1, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeStatusBar()I

    move-result v0

    .line 849
    .local v0, statusStyle:I
    packed-switch v0, :pswitch_data_0

    .line 863
    :goto_0
    return-void

    .line 853
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/anall/statusbar/BarService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    .line 857
    :pswitch_1
    const-string v1, "~~~~~StartBarService~~~~~"

    const-string v2, "SetttingDeskItemsAct"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/anall/statusbar/BarService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 849
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v0, 0x7f030061

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->setContentView(I)V

    .line 74
    new-instance v0, Lcom/anall/screenlock/provider/LockSetting;

    invoke-direct {v0, p0}, Lcom/anall/screenlock/provider/LockSetting;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v0, Lcom/lx/launcher8/cfg/AppSetting;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/cfg/AppSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;

    .line 77
    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mFirstTitle:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f090090

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mTitleAbout:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f090190

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mRootView:Landroid/widget/LinearLayout;

    .line 80
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PAGE"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->whichPage:I

    .line 81
    iget v0, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->whichPage:I

    sparse-switch v0, :sswitch_data_0

    .line 133
    :goto_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mFirstTitle:Landroid/widget/TextView;

    new-instance v1, Lcom/lx/launcher8/setting/SettingDeskItemsAct$3;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct$3;-><init>(Lcom/lx/launcher8/setting/SettingDeskItemsAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    return-void

    .line 83
    :sswitch_0
    invoke-direct {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->createPageTransparency()V

    goto :goto_0

    .line 86
    :sswitch_1
    invoke-direct {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->createPageDTransparency()V

    goto :goto_0

    .line 89
    :sswitch_2
    invoke-direct {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->createPageTTransparency()V

    goto :goto_0

    .line 92
    :sswitch_3
    invoke-direct {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->ceratePageCellgrap()V

    goto :goto_0

    .line 95
    :sswitch_4
    invoke-direct {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->createPageBackground()V

    goto :goto_0

    .line 98
    :sswitch_5
    invoke-direct {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->createPageStatusbar()V

    goto :goto_0

    .line 101
    :sswitch_6
    invoke-direct {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->createPageAnimation()V

    goto :goto_0

    .line 104
    :sswitch_7
    invoke-direct {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->ceratePageApplistStyle()V

    goto :goto_0

    .line 110
    :sswitch_8
    invoke-direct {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->ceratePagePicPosition()V

    goto :goto_0

    .line 113
    :sswitch_9
    invoke-direct {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->ceratePageTextPosition()V

    goto :goto_0

    .line 116
    :sswitch_a
    invoke-direct {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->ceratePageSpecialFun()V

    goto :goto_0

    .line 119
    :sswitch_b
    invoke-direct {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->cerateSettingStyle()V

    goto :goto_0

    .line 122
    :sswitch_c
    invoke-direct {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->createFolderPopup()V

    goto :goto_0

    .line 125
    :sswitch_d
    invoke-direct {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->cerateScreenStyle()V

    goto :goto_0

    .line 128
    :sswitch_e
    const-string v0, "\u8be5\u9875\u9762\u4e0d\u5b58\u5728"

    const/16 v1, 0x12c

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 129
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->finish()V

    goto :goto_0

    .line 81
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_e
        0x64 -> :sswitch_0
        0x96 -> :sswitch_1
        0xb4 -> :sswitch_2
        0xc8 -> :sswitch_3
        0x12c -> :sswitch_4
        0x190 -> :sswitch_5
        0x1f4 -> :sswitch_6
        0x258 -> :sswitch_7
        0x2bc -> :sswitch_8
        0x320 -> :sswitch_9
        0x4b0 -> :sswitch_a
        0x514 -> :sswitch_b
        0x578 -> :sswitch_c
        0x5dc -> :sswitch_d
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 934
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "special_id"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 935
    .local v3, specialID:I
    if-eq v3, v6, :cond_0

    .line 936
    packed-switch v3, :pswitch_data_0

    .line 953
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/lx/launcher8/NoSearchAct;->onDestroy()V

    .line 954
    return-void

    .line 938
    :pswitch_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 939
    .local v0, alphaBg:I
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 940
    .local v1, alphaFg:I
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar2:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    .line 941
    .local v2, alphaTx:I
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    rsub-int/lit8 v5, v0, 0x64

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/cfg/DeskSetting;->setCellAlpha(I)V

    .line 942
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    rsub-int/lit8 v5, v1, 0x64

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/cfg/DeskSetting;->setCellFGAlpha(I)V

    .line 943
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    rsub-int/lit8 v5, v2, 0x64

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/cfg/DeskSetting;->setCellTextAlpha(I)V

    goto :goto_0

    .line 946
    .end local v0           #alphaBg:I
    .end local v1           #alphaFg:I
    .end local v2           #alphaTx:I
    :pswitch_1
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 947
    .restart local v0       #alphaBg:I
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 948
    .restart local v1       #alphaFg:I
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;

    rsub-int/lit8 v5, v0, 0x64

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/cfg/AppSetting;->setAppAlphaBg(I)V

    .line 949
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;

    rsub-int/lit8 v5, v1, 0x64

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/cfg/AppSetting;->setAppAlphaFg(I)V

    goto :goto_0

    .line 936
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v7, 0x4

    const/4 v2, 0x1

    const/4 v6, -0x1

    const/16 v5, 0x64

    .line 895
    if-ne p1, v7, :cond_9

    iget v3, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->whichPage:I

    if-eq v3, v5, :cond_0

    .line 896
    iget v3, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->whichPage:I

    const/16 v4, 0x96

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->whichPage:I

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_9

    .line 897
    :cond_0
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 898
    .local v1, data:Landroid/content/Intent;
    iget-object v3, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 899
    .local v0, alpha:I
    if-gez v0, :cond_1

    .line 900
    const/4 v0, 0x0

    .line 901
    :cond_1
    if-le v0, v5, :cond_2

    .line 902
    const/16 v0, 0x64

    .line 903
    :cond_2
    const-string v3, "extral_value"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 904
    iget-object v3, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar1:Landroid/widget/SeekBar;

    if-eqz v3, :cond_5

    .line 905
    iget-object v3, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 906
    if-gez v0, :cond_3

    .line 907
    const/4 v0, 0x0

    .line 908
    :cond_3
    if-le v0, v5, :cond_4

    .line 909
    const/16 v0, 0x64

    .line 910
    :cond_4
    const-string v3, "extral_value1"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 912
    :cond_5
    iget-object v3, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar2:Landroid/widget/SeekBar;

    if-eqz v3, :cond_8

    .line 913
    iget-object v3, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->seekBar2:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 914
    if-gez v0, :cond_6

    .line 915
    const/4 v0, 0x0

    .line 916
    :cond_6
    if-le v0, v5, :cond_7

    .line 917
    const/16 v0, 0x64

    .line 918
    :cond_7
    const-string v3, "extral_value2"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 920
    :cond_8
    invoke-virtual {p0, v6, v1}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->setResult(ILandroid/content/Intent;)V

    .line 921
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->finish()V

    .line 929
    .end local v0           #alpha:I
    .end local v1           #data:Landroid/content/Intent;
    :goto_0
    return v2

    .line 923
    :cond_9
    if-ne p1, v7, :cond_a

    iget v3, p0, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->whichPage:I

    const/16 v4, 0x4b0

    if-ne v3, v4, :cond_a

    .line 924
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 925
    .restart local v1       #data:Landroid/content/Intent;
    invoke-virtual {p0, v6, v1}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->setResult(ILandroid/content/Intent;)V

    .line 926
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingDeskItemsAct;->finish()V

    goto :goto_0

    .line 929
    .end local v1           #data:Landroid/content/Intent;
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/NoSearchAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method
