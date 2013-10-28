.class public Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.source "SettingDeskItemsAct.java"


# static fields
.field public static final ANIMATION:I = 0x1f4

.field public static final APPLISTSTYLE:I = 0x258

.field public static final BACKGROUND:I = 0x12c

.field public static final CELLGAP:I = 0xc8

.field public static final EXTRAL_BOOLEAN:Ljava/lang/String; = "extral_boolean"

.field public static final EXTRAL_STATE:Ljava/lang/String; = "extral_state"

.field public static final EXTRAL_VALUE:Ljava/lang/String; = "extral_value"

.field public static final EXTRAL_VALUE1:Ljava/lang/String; = "extral_value1"

.field public static final EXTRAL_VALUE2:Ljava/lang/String; = "extral_value2"

.field public static final FOLDER_ANIMATION:I = 0x578

.field public static final FOLDER_DISPLAY:I = 0x514

.field public static final FOLDER_POPUP:I = 0x5dc

.field public static final INTENT_KEY:Ljava/lang/String; = "PAGE"

.field public static final PICPOSITION:I = 0x2bc

.field public static final SEEKBUTTON:I = 0x384

.field public static final SETTINGSCREEN:I = 0x640

.field public static final SETTINGSTYLE:I = 0x3e8

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
.field JumpAnimationText:Landroid/widget/TextView;

.field applistStyle:[I

.field background:[I

.field private cancelBtn:Landroid/widget/Button;

.field private confirmBtn:Landroid/widget/Button;

.field dragAnimationText:Landroid/widget/TextView;

.field folderAnim:[I

.field folderDisplay:[I

.field folderPopup:[I

.field gaps:[I

.field hideStatusBar:[I

.field holdTime:[I

.field mAboutTv:Landroid/widget/TextView;

.field protected mAppSet:Lcom/lx/launcher8/cfg/AppSetting;

.field private mConfirmBottom:Landroid/widget/LinearLayout;

.field mConfirmListener:Landroid/view/View$OnClickListener;

.field mHoldTimeView:Landroid/view/View;

.field protected mLockSet:Lcom/anall/screenlock/provider/LockSetting;

.field private mMainView:Landroid/view/View;

.field private mRootLl:Landroid/widget/LinearLayout;

.field mSpecialFunTileTextView:Landroid/view/View;

.field mStatusView:Landroid/view/View;

.field mTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;

.field private onCheckChange:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field picPositions:[I

.field seekBar:Landroid/widget/SeekBar;

.field seekBar1:Landroid/widget/SeekBar;

.field seekBar2:Landroid/widget/SeekBar;

.field seekState:Z

.field seekText:Landroid/widget/TextView;

.field settingStyles:[I

.field specialFunTileTexts:[I

.field specialFuns:[I

.field statusBar:[I

.field textColor:I

.field textPositions:[I

.field themePaper:I

.field private titleBarText:Ljava/lang/String;

.field private titleText:Ljava/lang/String;

.field whichPage:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 32
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;-><init>()V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->whichPage:I

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->textColor:I

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->themePaper:I

    .line 81
    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mMainView:Landroid/view/View;

    .line 83
    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleBarText:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleText:Ljava/lang/String;

    .line 316
    new-array v0, v5, [I

    aput v3, v0, v3

    aput v4, v0, v4

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->statusBar:[I

    .line 317
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->hideStatusBar:[I

    .line 318
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->holdTime:[I

    .line 377
    new-array v0, v5, [I

    aput v3, v0, v3

    aput v4, v0, v4

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->background:[I

    .line 397
    const/16 v0, 0xa

    new-array v0, v0, [I

    aput v3, v0, v3

    aput v4, v0, v4

    aput v2, v0, v5

    const/4 v1, 0x6

    aput v1, v0, v2

    const/4 v1, 0x5

    const/16 v2, 0x8

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xa

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x14

    aput v2, v0, v1

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->gaps:[I

    .line 420
    new-array v0, v5, [I

    aput v3, v0, v3

    aput v4, v0, v4

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->applistStyle:[I

    .line 443
    new-array v0, v4, [I

    aput v3, v0, v3

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->settingStyles:[I

    .line 478
    new-array v0, v4, [I

    aput v3, v0, v3

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->picPositions:[I

    .line 501
    new-array v0, v5, [I

    aput v3, v0, v3

    aput v4, v0, v4

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->textPositions:[I

    .line 521
    new-array v0, v5, [I

    aput v4, v0, v3

    aput v3, v0, v4

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->specialFuns:[I

    .line 522
    new-array v0, v4, [I

    aput v3, v0, v3

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->specialFunTileTexts:[I

    .line 750
    new-array v0, v4, [I

    aput v3, v0, v3

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->folderDisplay:[I

    .line 772
    new-array v0, v4, [I

    aput v3, v0, v3

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->folderAnim:[I

    .line 789
    new-array v0, v4, [I

    aput v3, v0, v3

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->folderPopup:[I

    .line 805
    new-instance v0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$1;-><init>(Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->onCheckChange:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 938
    new-instance v0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$2;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$2;-><init>(Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;

    .line 1013
    new-instance v0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$3;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$3;-><init>(Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mConfirmListener:Landroid/view/View$OnClickListener;

    .line 32
    return-void

    .line 317
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 318
    :array_1
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;)Lcom/lx/launcher8/cfg/DeskSetting;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;)V
    .locals 0
    .parameter

    .prologue
    .line 920
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->startBarService()V

    return-void
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;)V
    .locals 0
    .parameter

    .prologue
    .line 971
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->setProperty()V

    return-void
.end method

.method private addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;
    .locals 11
    .parameter "key"
    .parameter "text"
    .parameter "selected"

    .prologue
    const/4 v4, -0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 573
    new-instance v1, Landroid/widget/RadioGroup;

    invoke-direct {v1, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 574
    .local v1, group:Landroid/widget/RadioGroup;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 575
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 576
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, p2

    if-lt v2, v4, :cond_0

    .line 589
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->onCheckChange:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 590
    return-object v1

    .line 577
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030060

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 578
    .local v0, btn:Landroid/widget/RadioButton;
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 579
    aget-object v4, p2, v2

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 580
    add-int v4, p1, v2

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setId(I)V

    .line 581
    const/high16 v4, 0x41d0

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setTextSize(F)V

    .line 582
    if-ne v2, p3, :cond_1

    .line 583
    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 585
    :cond_1
    new-instance v4, Landroid/content/res/ColorStateList;

    new-array v5, v10, [[I

    new-array v6, v10, [I

    fill-array-data v6, :array_0

    aput-object v6, v5, v9

    new-array v6, v8, [I

    const v7, 0x101009e

    aput v7, v6, v9

    aput-object v6, v5, v8

    .line 586
    new-array v6, v10, [I

    const-string v7, "#31b2e7"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v9

    iget v7, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->textColor:I

    aput v7, v6, v8

    invoke-direct {v4, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 585
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 587
    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 576
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 585
    :array_0
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa0t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method private ceratePageApplistStyle()V
    .locals 7

    .prologue
    .line 427
    const v5, 0x7f0a00b5

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleBarText:Ljava/lang/String;

    .line 428
    const v5, 0x7f0a0120

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleText:Ljava/lang/String;

    .line 430
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 431
    .local v3, text:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 432
    .local v2, index:I
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v5}, Lcom/lx/launcher8/cfg/AppSetting;->getThemeAppList()I

    move-result v0

    .line 433
    .local v0, appListStyle:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->applistStyle:[I

    array-length v5, v5

    if-lt v1, v5, :cond_0

    .line 437
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mMainView:Landroid/view/View;

    const v6, 0x7f090192

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 438
    .local v4, tv:Landroid/widget/TextView;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 439
    const v5, 0x7f0a0121

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    const/16 v6, 0x258

    invoke-direct {p0, v6, v3, v2}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 441
    return-void

    .line 434
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->applistStyle:[I

    aget v5, v5, v1

    if-ne v5, v0, :cond_1

    .line 435
    move v2, v1

    .line 433
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private ceratePageCellgrap()V
    .locals 7

    .prologue
    .line 404
    const v5, 0x7f0a0008

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleBarText:Ljava/lang/String;

    .line 405
    const v5, 0x7f0a014f

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleText:Ljava/lang/String;

    .line 407
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 408
    .local v3, text:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 409
    .local v2, index:I
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v5}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellGap()I

    move-result v0

    .line 410
    .local v0, gap:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->gaps:[I

    array-length v5, v5

    if-lt v1, v5, :cond_0

    .line 414
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mMainView:Landroid/view/View;

    const v6, 0x7f090192

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 415
    .local v4, tv:Landroid/widget/TextView;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 416
    const v5, 0x7f0a015c

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    const/16 v6, 0xc8

    invoke-direct {p0, v6, v3, v2}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 418
    return-void

    .line 411
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->gaps:[I

    aget v5, v5, v1

    if-ne v5, v0, :cond_1

    .line 412
    move v2, v1

    .line 410
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private ceratePagePicPosition()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 485
    const v5, 0x7f0a004f

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleBarText:Ljava/lang/String;

    .line 486
    const v5, 0x7f0a0125

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleText:Ljava/lang/String;

    .line 488
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 489
    .local v3, text:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 490
    .local v1, index:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "extral_value"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 491
    .local v2, picPosition:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->picPositions:[I

    array-length v5, v5

    if-lt v0, v5, :cond_0

    .line 495
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mMainView:Landroid/view/View;

    const v6, 0x7f090192

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 496
    .local v4, tv:Landroid/widget/TextView;
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 497
    const v5, 0x7f0a0126

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    const/16 v6, 0x2bc

    invoke-direct {p0, v6, v3, v1}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 499
    return-void

    .line 492
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->picPositions:[I

    aget v5, v5, v0

    if-ne v5, v2, :cond_1

    .line 493
    move v1, v0

    .line 491
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private ceratePageSpecialFun()V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 530
    const v9, 0x7f0a004f

    invoke-virtual {p0, v9}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleBarText:Ljava/lang/String;

    .line 531
    const v9, 0x7f0a0151

    invoke-virtual {p0, v9}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleText:Ljava/lang/String;

    .line 533
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070005

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 534
    .local v7, text:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 535
    .local v1, index:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "extral_value"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 536
    .local v5, specialFun:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->specialFuns:[I

    array-length v9, v9

    if-lt v0, v9, :cond_1

    .line 541
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mMainView:Landroid/view/View;

    const v10, 0x7f090192

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 542
    .local v8, tv:Landroid/widget/TextView;
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 543
    const v9, 0x7f0a0152

    invoke-virtual {p0, v9}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    const/16 v10, 0x4b0

    invoke-direct {p0, v10, v7, v1}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 546
    const/high16 v9, 0x4120

    invoke-static {p0, v9}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v9

    float-to-int v4, v9

    .line 547
    .local v4, margin:I
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    .line 548
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    const/16 v10, 0x13

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 549
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    mul-int/lit8 v10, v4, 0x2

    invoke-virtual {v9, v11, v10, v11, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 550
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    const v10, 0x7f0a0218

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 551
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    const v10, -0xacacad

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 552
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    const/high16 v10, 0x4180

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 553
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 555
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "extral_value1"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 556
    .local v6, specialFunTileText:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070006

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 558
    .local v3, items:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 559
    .local v2, index2:I
    const/4 v0, 0x0

    :goto_1
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->specialFunTileTexts:[I

    array-length v9, v9

    if-lt v0, v9, :cond_3

    .line 564
    const/16 v9, 0x4ba

    invoke-direct {p0, v9, v3, v2}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v9

    iput-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mSpecialFunTileTextView:Landroid/view/View;

    .line 565
    const/4 v9, 0x1

    if-eq v1, v9, :cond_0

    .line 566
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 567
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mSpecialFunTileTextView:Landroid/view/View;

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 569
    :cond_0
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mSpecialFunTileTextView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 570
    return-void

    .line 537
    .end local v2           #index2:I
    .end local v3           #items:[Ljava/lang/String;
    .end local v4           #margin:I
    .end local v6           #specialFunTileText:I
    .end local v8           #tv:Landroid/widget/TextView;
    :cond_1
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->specialFuns:[I

    aget v9, v9, v0

    if-ne v9, v5, :cond_2

    .line 538
    move v1, v0

    .line 536
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 560
    .restart local v2       #index2:I
    .restart local v3       #items:[Ljava/lang/String;
    .restart local v4       #margin:I
    .restart local v6       #specialFunTileText:I
    .restart local v8       #tv:Landroid/widget/TextView;
    :cond_3
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->specialFunTileTexts:[I

    aget v9, v9, v0

    if-ne v9, v6, :cond_4

    .line 561
    move v2, v0

    .line 559
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private ceratePageTextPosition()V
    .locals 7

    .prologue
    .line 508
    const v4, 0x7f0a004f

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleBarText:Ljava/lang/String;

    .line 509
    const v4, 0x7f0a0127

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleText:Ljava/lang/String;

    .line 511
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 512
    .local v2, text:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 513
    .local v1, index:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extral_value"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 514
    .local v3, textPosition:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->textPositions:[I

    array-length v4, v4

    if-lt v0, v4, :cond_0

    .line 518
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    const/16 v5, 0x320

    invoke-direct {p0, v5, v2, v1}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 519
    return-void

    .line 515
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->textPositions:[I

    aget v4, v4, v0

    if-ne v4, v3, :cond_1

    .line 516
    move v1, v0

    .line 514
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private cerateScreenStyle()V
    .locals 6

    .prologue
    const v5, 0x7f0a0161

    .line 469
    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleBarText:Ljava/lang/String;

    .line 470
    const v3, 0x7f0a0135

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleText:Ljava/lang/String;

    .line 471
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, text:[Ljava/lang/String;
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v3}, Lcom/lx/launcher8/cfg/DeskSetting;->getScreenOrientation()I

    move-result v0

    .line 473
    .local v0, screen:I
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mMainView:Landroid/view/View;

    const v4, 0x7f090192

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 474
    .local v2, tv:Landroid/widget/TextView;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 475
    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    const/16 v4, 0x640

    invoke-direct {p0, v4, v1, v0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 477
    return-void
.end method

.method private cerateSettingStyle()V
    .locals 7

    .prologue
    .line 450
    const v5, 0x7f0a000c

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleBarText:Ljava/lang/String;

    .line 451
    const v5, 0x7f0a0157

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleText:Ljava/lang/String;

    .line 453
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 454
    .local v3, text:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 455
    .local v1, index:I
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v5}, Lcom/lx/launcher8/cfg/DeskSetting;->getSettingStyle()I

    move-result v2

    .line 456
    .local v2, settingStyle:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->settingStyles:[I

    array-length v5, v5

    if-lt v0, v5, :cond_0

    .line 460
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mMainView:Landroid/view/View;

    const v6, 0x7f090192

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 461
    .local v4, tv:Landroid/widget/TextView;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 462
    const v5, 0x7f0a015e

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    const/16 v6, 0x3e8

    invoke-direct {p0, v6, v3, v1}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 464
    return-void

    .line 457
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->settingStyles:[I

    aget v5, v5, v0

    if-ne v5, v2, :cond_1

    .line 458
    move v1, v0

    .line 456
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createPageAnimation()V
    .locals 11

    .prologue
    const v10, 0x7f030066

    const/16 v9, 0x14

    const/16 v8, 0xa

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 218
    const v4, 0x7f0a0008

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleBarText:Ljava/lang/String;

    .line 219
    const v4, 0x7f0a0149

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleText:Ljava/lang/String;

    .line 221
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v10, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 222
    .local v1, itemLayout_01:Landroid/widget/LinearLayout;
    const v4, 0x7f09018b

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 223
    .local v0, content:Landroid/widget/TextView;
    const v4, 0x7f0a014a

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/DeskSetting;->getScrollAllowed()I

    move-result v4

    if-ne v4, v5, :cond_0

    move v2, v5

    .line 225
    .local v2, open:Z
    :goto_0
    const v4, 0x7f09018d

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->dragAnimationText:Landroid/widget/TextView;

    .line 226
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->dragAnimationText:Landroid/widget/TextView;

    iget v7, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->textColor:I

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    if-eqz v2, :cond_1

    .line 228
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->dragAnimationText:Landroid/widget/TextView;

    const v7, 0x7f0a0158

    invoke-virtual {p0, v7}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :goto_1
    const v4, 0x7f09018e

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    .line 233
    .local v3, view:Lcom/lx/launcher8/setting/wp8/view/SeekButton;
    invoke-virtual {v3, v6}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setVisibility(I)V

    .line 234
    const/16 v4, 0x1f5

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setId(I)V

    .line 235
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;)V

    .line 236
    invoke-virtual {v3, v2}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    .line 237
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setFitColor(I)V

    .line 238
    iget v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->themePaper:I

    if-eqz v4, :cond_2

    .line 239
    invoke-virtual {v3, v9}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    .line 243
    :goto_2
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 247
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v10, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .end local v1           #itemLayout_01:Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 248
    .restart local v1       #itemLayout_01:Landroid/widget/LinearLayout;
    const v4, 0x7f09018b

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #content:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 249
    .restart local v0       #content:Landroid/widget/TextView;
    const v4, 0x7f0a014b

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/DeskSetting;->getAnimationSwitch()I

    move-result v4

    if-ne v4, v5, :cond_3

    move v2, v5

    .line 251
    :goto_3
    const v4, 0x7f09018d

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->JumpAnimationText:Landroid/widget/TextView;

    .line 252
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->JumpAnimationText:Landroid/widget/TextView;

    iget v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->textColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    if-eqz v2, :cond_4

    .line 254
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->JumpAnimationText:Landroid/widget/TextView;

    const v5, 0x7f0a0158

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :goto_4
    const v4, 0x7f09018e

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #view:Lcom/lx/launcher8/setting/wp8/view/SeekButton;
    check-cast v3, Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    .line 259
    .restart local v3       #view:Lcom/lx/launcher8/setting/wp8/view/SeekButton;
    invoke-virtual {v3, v6}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setVisibility(I)V

    .line 260
    const/16 v4, 0x1f6

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setId(I)V

    .line 261
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;)V

    .line 262
    invoke-virtual {v3, v2}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    .line 263
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setFitColor(I)V

    .line 264
    iget v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->themePaper:I

    if-eqz v4, :cond_5

    .line 265
    invoke-virtual {v3, v9}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    .line 270
    :goto_5
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 271
    return-void

    .end local v2           #open:Z
    .end local v3           #view:Lcom/lx/launcher8/setting/wp8/view/SeekButton;
    :cond_0
    move v2, v6

    .line 224
    goto/16 :goto_0

    .line 230
    .restart local v2       #open:Z
    :cond_1
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->dragAnimationText:Landroid/widget/TextView;

    const v7, 0x7f0a0159

    invoke-virtual {p0, v7}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 241
    .restart local v3       #view:Lcom/lx/launcher8/setting/wp8/view/SeekButton;
    :cond_2
    invoke-virtual {v3, v8}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    goto/16 :goto_2

    :cond_3
    move v2, v6

    .line 250
    goto :goto_3

    .line 256
    :cond_4
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->JumpAnimationText:Landroid/widget/TextView;

    const v5, 0x7f0a0159

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 267
    :cond_5
    invoke-virtual {v3, v8}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    goto :goto_5
.end method

.method private createPageBackground()V
    .locals 5

    .prologue
    .line 384
    const v3, 0x7f0a0008

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleBarText:Ljava/lang/String;

    .line 385
    const v3, 0x7f0a014c

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleText:Ljava/lang/String;

    .line 387
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v3}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v0

    .line 388
    .local v0, index:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f07

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, text:[Ljava/lang/String;
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mMainView:Landroid/view/View;

    const v4, 0x7f090192

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 391
    .local v2, tv:Landroid/widget/TextView;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 392
    const v3, 0x7f0a014d

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    const/16 v4, 0x12c

    invoke-direct {p0, v4, v1, v0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 394
    return-void
.end method

.method private createPageDTransparency()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 652
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->createPageTransparency()V

    .line 653
    const/high16 v5, 0x4120

    invoke-static {p0, v5}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v5

    float-to-int v2, v5

    .line 654
    .local v2, margin:I
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 655
    .local v4, tv:Landroid/widget/TextView;
    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 656
    invoke-virtual {v4, v8, v2, v8, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 657
    const v5, 0x7f0a012e

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 658
    const v5, -0xacacad

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 659
    const/high16 v5, 0x4180

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 660
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 661
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030064

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 662
    .local v1, item:Landroid/view/View;
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 664
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "extral_value1"

    const/16 v7, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 665
    .local v0, alpha:I
    const v5, 0x7f09019a

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar1:Landroid/widget/SeekBar;

    .line 666
    const v5, 0x7f090199

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lx/launcher8/view/DragSeekBar2;

    .line 667
    .local v3, seekBarText1:Lcom/lx/launcher8/view/DragSeekBar2;
    iget v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->themePaper:I

    if-eqz v5, :cond_0

    .line 668
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar1:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020198

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 672
    :goto_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar1:Landroid/widget/SeekBar;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v6

    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v7

    invoke-virtual {v5, v6, v8, v7, v8}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 673
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar1:Landroid/widget/SeekBar;

    new-instance v6, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$8;

    invoke-direct {v6, p0, v3}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$8;-><init>(Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;Lcom/lx/launcher8/view/DragSeekBar2;)V

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 684
    new-instance v5, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$9;

    invoke-direct {v5, p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$9;-><init>(Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;)V

    invoke-virtual {v3, v5}, Lcom/lx/launcher8/view/DragSeekBar2;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 695
    invoke-virtual {v3}, Lcom/lx/launcher8/view/DragSeekBar2;->requestFocus()Z

    .line 696
    invoke-virtual {v3, v0}, Lcom/lx/launcher8/view/DragSeekBar2;->setProgress(I)V

    .line 697
    return-void

    .line 670
    :cond_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar1:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02019b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private createPageStatusbar()V
    .locals 14

    .prologue
    .line 327
    const v9, 0x7f0a0008

    invoke-virtual {p0, v9}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleBarText:Ljava/lang/String;

    .line 328
    const v9, 0x7f0a0027

    invoke-virtual {p0, v9}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleText:Ljava/lang/String;

    .line 330
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v9}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeStatusBar()I

    move-result v2

    .line 333
    .local v2, index:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070011

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 335
    .local v7, text:[Ljava/lang/String;
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mMainView:Landroid/view/View;

    const v10, 0x7f090192

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 336
    .local v8, tv:Landroid/widget/TextView;
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    const v9, 0x7f0a014e

    invoke-virtual {p0, v9}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    const/16 v10, 0x190

    const/4 v11, 0x2

    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-direct {p0, v10, v7, v11}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 341
    const/high16 v9, 0x4120

    invoke-static {p0, v9}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v9

    float-to-int v5, v9

    .line 342
    .local v5, margin:I
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    .line 343
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    const/16 v10, 0x13

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 344
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    const/4 v10, 0x0

    mul-int/lit8 v11, v5, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 345
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    const v10, 0x7f0a01fa

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 346
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    const v10, -0xacacad

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 347
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    const/high16 v10, 0x4180

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 348
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 350
    const v9, 0x7f0a01fb

    invoke-virtual {p0, v9}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 351
    .local v6, second:Ljava/lang/String;
    const v9, 0x7f0a0200

    invoke-virtual {p0, v9}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, always:Ljava/lang/String;
    const/4 v9, 0x4

    new-array v4, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "5 "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "10 "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "20 "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x3

    aput-object v0, v4, v9

    .line 354
    .local v4, items:[Ljava/lang/String;
    const/4 v3, 0x1

    .line 355
    .local v3, index2:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->holdTime:[I

    array-length v9, v9

    if-lt v1, v9, :cond_2

    .line 360
    const/16 v9, 0x19a

    invoke-direct {p0, v9, v4, v3}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v9

    iput-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mHoldTimeView:Landroid/view/View;

    .line 361
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mHoldTimeView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 363
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070012

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 364
    add-int/lit8 v9, v2, -0x2

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 365
    const/16 v9, 0x1a4

    invoke-direct {p0, v9, v4, v3}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v9

    iput-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mStatusView:Landroid/view/View;

    .line 366
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mStatusView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 368
    const/4 v9, 0x1

    if-eq v2, v9, :cond_0

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mHoldTimeView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 369
    :cond_0
    const/4 v9, 0x2

    if-ge v2, v9, :cond_1

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mStatusView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 370
    :cond_1
    if-nez v2, :cond_4

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    :goto_1
    return-void

    .line 356
    :cond_2
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->holdTime:[I

    aget v9, v9, v1

    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v10}, Lcom/lx/launcher8/cfg/DeskSetting;->getStatusHoldTime()I

    move-result v10

    if-ne v9, v10, :cond_3

    .line 357
    move v3, v1

    .line 355
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    :cond_4
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAboutTv:Landroid/widget/TextView;

    const/4 v9, 0x1

    if-ne v2, v9, :cond_5

    const v9, 0x7f0a01fa

    :goto_2
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_5
    const v9, 0x7f0a01f6

    goto :goto_2
.end method

.method private createPageTTransparency()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 700
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->createPageDTransparency()V

    .line 701
    const/high16 v5, 0x4120

    invoke-static {p0, v5}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v5

    float-to-int v2, v5

    .line 702
    .local v2, margin:I
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 703
    .local v4, tv:Landroid/widget/TextView;
    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 704
    invoke-virtual {v4, v8, v2, v8, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 705
    const v5, 0x7f0a012f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 706
    const v5, -0xacacad

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 707
    const/high16 v5, 0x4180

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 708
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 709
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030064

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 710
    .local v1, item:Landroid/view/View;
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 712
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "extral_value2"

    const/16 v7, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 713
    .local v0, alpha:I
    const v5, 0x7f09019a

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar2:Landroid/widget/SeekBar;

    .line 714
    const v5, 0x7f090199

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lx/launcher8/view/DragSeekBar2;

    .line 715
    .local v3, seekBarText2:Lcom/lx/launcher8/view/DragSeekBar2;
    iget v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->themePaper:I

    if-eqz v5, :cond_0

    .line 716
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar2:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020198

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 720
    :goto_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar2:Landroid/widget/SeekBar;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar2:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v6

    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar2:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v7

    invoke-virtual {v5, v6, v8, v7, v8}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 721
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar2:Landroid/widget/SeekBar;

    new-instance v6, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$10;

    invoke-direct {v6, p0, v3}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$10;-><init>(Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;Lcom/lx/launcher8/view/DragSeekBar2;)V

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 732
    new-instance v5, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$11;

    invoke-direct {v5, p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$11;-><init>(Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;)V

    invoke-virtual {v3, v5}, Lcom/lx/launcher8/view/DragSeekBar2;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 743
    invoke-virtual {v3}, Lcom/lx/launcher8/view/DragSeekBar2;->requestFocus()Z

    .line 744
    invoke-virtual {v3, v0}, Lcom/lx/launcher8/view/DragSeekBar2;->setProgress(I)V

    .line 745
    return-void

    .line 718
    :cond_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar2:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02019b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private createPageTransparency()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 601
    const v5, 0x7f0a004f

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleBarText:Ljava/lang/String;

    .line 602
    const v5, 0x7f0a012c

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleText:Ljava/lang/String;

    .line 604
    const/high16 v5, 0x4120

    invoke-static {p0, v5}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v5

    float-to-int v2, v5

    .line 605
    .local v2, margin:I
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 606
    .local v4, tv:Landroid/widget/TextView;
    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 607
    invoke-virtual {v4, v8, v2, v8, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 608
    const v5, 0x7f0a012d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 609
    const v5, -0xacacad

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 610
    const/high16 v5, 0x4180

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 611
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 613
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030064

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 614
    .local v1, item:Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "extral_value"

    const/16 v7, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 615
    .local v0, alpha:I
    const v5, 0x7f09019a

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar:Landroid/widget/SeekBar;

    .line 616
    const v5, 0x7f090199

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lx/launcher8/view/DragSeekBar2;

    .line 617
    .local v3, seekBarText:Lcom/lx/launcher8/view/DragSeekBar2;
    iget v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->themePaper:I

    if-eqz v5, :cond_0

    .line 618
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020198

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 622
    :goto_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar:Landroid/widget/SeekBar;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v6

    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v7

    invoke-virtual {v5, v6, v8, v7, v8}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 623
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar:Landroid/widget/SeekBar;

    new-instance v6, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$6;

    invoke-direct {v6, p0, v3}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$6;-><init>(Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;Lcom/lx/launcher8/view/DragSeekBar2;)V

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 634
    new-instance v5, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$7;

    invoke-direct {v5, p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$7;-><init>(Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;)V

    invoke-virtual {v3, v5}, Lcom/lx/launcher8/view/DragSeekBar2;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 645
    invoke-virtual {v3}, Lcom/lx/launcher8/view/DragSeekBar2;->requestFocus()Z

    .line 646
    invoke-virtual {v3, v0}, Lcom/lx/launcher8/view/DragSeekBar2;->setProgress(I)V

    .line 648
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 649
    return-void

    .line 620
    :cond_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02019b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private createSeekButton()V
    .locals 10

    .prologue
    const/16 v9, 0x14

    const/16 v8, 0xa

    const/4 v7, 0x0

    .line 283
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extral_state"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, state:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const v4, 0x7f0a015d

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 286
    :cond_1
    const v4, 0x7f0a0008

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleBarText:Ljava/lang/String;

    .line 287
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extral_value1"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-lt v4, v9, :cond_3

    const v4, 0x7f0a00b5

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleBarText:Ljava/lang/String;

    .line 289
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extral_value"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleText:Ljava/lang/String;

    .line 291
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030066

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 292
    .local v1, itemLayout_01:Landroid/widget/LinearLayout;
    const v4, 0x7f09018b

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 293
    .local v0, content:Landroid/widget/TextView;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extral_boolean"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekState:Z

    .line 295
    const v4, 0x7f09018d

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekText:Landroid/widget/TextView;

    .line 296
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekText:Landroid/widget/TextView;

    iget v5, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->textColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 297
    iget-boolean v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekState:Z

    if-eqz v4, :cond_4

    .line 298
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekText:Landroid/widget/TextView;

    const v5, 0x7f0a0158

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    :goto_1
    const v4, 0x7f09018e

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    .line 303
    .local v3, view:Lcom/lx/launcher8/setting/wp8/view/SeekButton;
    invoke-virtual {v3, v7}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setVisibility(I)V

    .line 304
    const/16 v4, 0x384

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setId(I)V

    .line 305
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;)V

    .line 306
    iget-boolean v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekState:Z

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    .line 307
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setFitColor(I)V

    .line 308
    iget v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->themePaper:I

    if-eqz v4, :cond_5

    .line 309
    invoke-virtual {v3, v9}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    .line 313
    :goto_2
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 314
    return-void

    .line 288
    .end local v0           #content:Landroid/widget/TextView;
    .end local v1           #itemLayout_01:Landroid/widget/LinearLayout;
    .end local v3           #view:Lcom/lx/launcher8/setting/wp8/view/SeekButton;
    :cond_3
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extral_value1"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-lt v4, v8, :cond_2

    const v4, 0x7f0a0176

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleBarText:Ljava/lang/String;

    goto/16 :goto_0

    .line 300
    .restart local v0       #content:Landroid/widget/TextView;
    .restart local v1       #itemLayout_01:Landroid/widget/LinearLayout;
    :cond_4
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekText:Landroid/widget/TextView;

    const v5, 0x7f0a0159

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 311
    .restart local v3       #view:Lcom/lx/launcher8/setting/wp8/view/SeekButton;
    :cond_5
    invoke-virtual {v3, v8}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    goto :goto_2
.end method

.method private createView()V
    .locals 9

    .prologue
    const v8, 0x7f090191

    const/high16 v7, -0x100

    const/4 v6, -0x1

    .line 95
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030062

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mMainView:Landroid/view/View;

    .line 96
    new-instance v3, Lcom/anall/screenlock/provider/LockSetting;

    invoke-direct {v3, p0}, Lcom/anall/screenlock/provider/LockSetting;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    .line 97
    new-instance v3, Lcom/lx/launcher8/cfg/AppSetting;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/cfg/AppSetting;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;

    .line 101
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mMainView:Landroid/view/View;

    const v4, 0x7f090190

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    .line 102
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mMainView:Landroid/view/View;

    const v4, 0x7f09005c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mConfirmBottom:Landroid/widget/LinearLayout;

    .line 103
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mMainView:Landroid/view/View;

    const v4, 0x7f090194

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->confirmBtn:Landroid/widget/Button;

    .line 104
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mMainView:Landroid/view/View;

    const v4, 0x7f090196

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->cancelBtn:Landroid/widget/Button;

    .line 105
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mMainView:Landroid/view/View;

    const v4, 0x7f090067

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 107
    .local v2, showContentLinear:Landroid/widget/Button;
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v3}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v3

    iput v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->themePaper:I

    .line 108
    iget v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->themePaper:I

    if-eqz v3, :cond_0

    .line 109
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mMainView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 110
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->confirmBtn:Landroid/widget/Button;

    const v4, 0x7f0200ab

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 111
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->cancelBtn:Landroid/widget/Button;

    const v4, 0x7f0200a4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 112
    const v3, 0x7f020175

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 113
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mConfirmBottom:Landroid/widget/LinearLayout;

    const-string v4, "#88FFFFFF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 114
    iput v6, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->textColor:I

    .line 126
    :goto_0
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->confirmBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mConfirmListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->cancelBtn:Landroid/widget/Button;

    new-instance v4, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$4;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$4;-><init>(Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mMainView:Landroid/view/View;

    const v4, 0x7f090195

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 136
    .local v1, confirmBtnText:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mMainView:Landroid/view/View;

    const v4, 0x7f090197

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 137
    .local v0, cancelBtnText:Landroid/widget/TextView;
    iget v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->textColor:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    iget v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->textColor:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    new-instance v3, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$5;

    invoke-direct {v3, p0, v1, v0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$5;-><init>(Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "PAGE"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->whichPage:I

    .line 150
    iget v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->whichPage:I

    sparse-switch v3, :sswitch_data_0

    .line 208
    :goto_1
    return-void

    .line 116
    .end local v0           #cancelBtnText:Landroid/widget/TextView;
    .end local v1           #confirmBtnText:Landroid/widget/TextView;
    :cond_0
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mMainView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 117
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->confirmBtn:Landroid/widget/Button;

    const v4, 0x7f0200aa

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 118
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->cancelBtn:Landroid/widget/Button;

    const v4, 0x7f0200a3

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 119
    const v3, 0x7f020174

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 120
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mConfirmBottom:Landroid/widget/LinearLayout;

    const-string v4, "#88000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 121
    iput v7, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->textColor:I

    goto :goto_0

    .line 152
    .restart local v0       #cancelBtnText:Landroid/widget/TextView;
    .restart local v1       #confirmBtnText:Landroid/widget/TextView;
    :sswitch_0
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->createPageTransparency()V

    goto :goto_1

    .line 155
    :sswitch_1
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->createPageDTransparency()V

    goto :goto_1

    .line 158
    :sswitch_2
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->createPageTTransparency()V

    goto :goto_1

    .line 161
    :sswitch_3
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->ceratePageCellgrap()V

    goto :goto_1

    .line 164
    :sswitch_4
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->createPageBackground()V

    goto :goto_1

    .line 167
    :sswitch_5
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->createPageStatusbar()V

    goto :goto_1

    .line 170
    :sswitch_6
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->createPageAnimation()V

    goto :goto_1

    .line 173
    :sswitch_7
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->ceratePageApplistStyle()V

    goto :goto_1

    .line 176
    :sswitch_8
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->ceratePagePicPosition()V

    goto :goto_1

    .line 179
    :sswitch_9
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->ceratePageTextPosition()V

    goto :goto_1

    .line 182
    :sswitch_a
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->ceratePageSpecialFun()V

    goto :goto_1

    .line 185
    :sswitch_b
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->cerateSettingStyle()V

    goto :goto_1

    .line 189
    :sswitch_c
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->createSeekButton()V

    goto :goto_1

    .line 192
    :sswitch_d
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->pageFolderDisplay()V

    goto :goto_1

    .line 195
    :sswitch_e
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->pageFolderAnim()V

    goto :goto_1

    .line 198
    :sswitch_f
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->pageFolderPopup()V

    goto :goto_1

    .line 201
    :sswitch_10
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->cerateScreenStyle()V

    goto :goto_1

    .line 204
    :sswitch_11
    const-string v3, "\u8be5\u9875\u9762\u4e0d\u5b58\u5728"

    const/16 v4, 0x12c

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 205
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->finish()V

    goto :goto_1

    .line 150
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_11
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
        0x384 -> :sswitch_c
        0x3e8 -> :sswitch_b
        0x4b0 -> :sswitch_a
        0x514 -> :sswitch_d
        0x578 -> :sswitch_e
        0x5dc -> :sswitch_f
        0x640 -> :sswitch_10
    .end sparse-switch
.end method

.method private pageFolderAnim()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 776
    const v4, 0x7f0a004f

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleBarText:Ljava/lang/String;

    .line 777
    const v4, 0x7f0a01df

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleText:Ljava/lang/String;

    .line 779
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const v4, 0x7f0a01e5

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    const/4 v4, 0x1

    const v5, 0x7f0a01e4

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 780
    .local v2, text:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 781
    .local v1, index:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extral_value"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 782
    .local v3, textPosition:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->folderAnim:[I

    array-length v4, v4

    if-lt v0, v4, :cond_0

    .line 786
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    const/16 v5, 0x578

    invoke-direct {p0, v5, v2, v1}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 787
    return-void

    .line 783
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->folderAnim:[I

    aget v4, v4, v0

    if-ne v4, v3, :cond_1

    .line 784
    move v1, v0

    .line 782
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private pageFolderDisplay()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 755
    const v4, 0x7f0a004f

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleBarText:Ljava/lang/String;

    .line 756
    const v4, 0x7f0a01e0

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleText:Ljava/lang/String;

    .line 758
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const v4, 0x7f0a01e3

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    const/4 v4, 0x1

    const v5, 0x7f0a01de

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 759
    .local v2, text:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 760
    .local v1, index:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extral_value"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 761
    .local v3, textPosition:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->folderDisplay:[I

    array-length v4, v4

    if-lt v0, v4, :cond_0

    .line 766
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    const/16 v5, 0x514

    invoke-direct {p0, v5, v2, v1}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 767
    return-void

    .line 762
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->folderDisplay:[I

    aget v4, v4, v0

    if-ne v4, v3, :cond_1

    .line 763
    move v1, v0

    .line 761
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private pageFolderPopup()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 791
    const v4, 0x7f0a004f

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleBarText:Ljava/lang/String;

    .line 792
    const v4, 0x7f0a01e8

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleText:Ljava/lang/String;

    .line 794
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const v4, 0x7f0a01e9

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    const/4 v4, 0x1

    const v5, 0x7f0a01ea

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 795
    .local v2, text:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 796
    .local v1, index:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extral_value"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 797
    .local v3, textPosition:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->folderPopup:[I

    array-length v4, v4

    if-lt v0, v4, :cond_0

    .line 801
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    const/16 v5, 0x5dc

    invoke-direct {p0, v5, v2, v1}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 802
    return-void

    .line 798
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->folderPopup:[I

    aget v4, v4, v0

    if-ne v4, v3, :cond_1

    .line 799
    move v1, v0

    .line 797
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setProperty()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 972
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extral_value1"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1011
    :goto_0
    return-void

    .line 974
    :sswitch_0
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekState:Z

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/cfg/DeskSetting;->setDisplayCellText(I)V

    goto :goto_0

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0, v3}, Lcom/lx/launcher8/cfg/DeskSetting;->setDisplayCellText(I)V

    goto :goto_0

    .line 981
    :sswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    iget-boolean v1, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekState:Z

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/cfg/DeskSetting;->setLockLauncherEnable(Z)V

    goto :goto_0

    .line 984
    :sswitch_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    iget-boolean v1, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekState:Z

    invoke-virtual {v0, v1}, Lcom/anall/screenlock/provider/LockSetting;->setLockGap(Z)V

    goto :goto_0

    .line 987
    :sswitch_3
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekState:Z

    if-eqz v0, :cond_1

    .line 988
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0, v3}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemeLock(I)V

    goto :goto_0

    .line 990
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemeLock(I)V

    goto :goto_0

    .line 994
    :sswitch_4
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekState:Z

    if-eqz v0, :cond_2

    .line 995
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v0, v3}, Lcom/anall/screenlock/provider/LockSetting;->setLockStatusBar(I)V

    goto :goto_0

    .line 997
    :cond_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v0, v2}, Lcom/anall/screenlock/provider/LockSetting;->setLockStatusBar(I)V

    goto :goto_0

    .line 1001
    :sswitch_5
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekState:Z

    if-eqz v0, :cond_3

    .line 1002
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v0, v4}, Lcom/lx/launcher8/cfg/AppSetting;->setAppIconColor(I)V

    goto :goto_0

    .line 1004
    :cond_3
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/AppSetting;->getThemeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/cfg/AppSetting;->setAppIconColor(I)V

    goto :goto_0

    .line 1008
    :sswitch_6
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;

    iget-boolean v1, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekState:Z

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/cfg/AppSetting;->setThemeAppListHeader(Z)V

    goto :goto_0

    .line 972
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x9 -> :sswitch_2
        0xa -> :sswitch_3
        0xb -> :sswitch_4
        0x14 -> :sswitch_5
        0x15 -> :sswitch_6
    .end sparse-switch
.end method

.method private startBarService()V
    .locals 3

    .prologue
    .line 921
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeStatusBar()I

    move-result v0

    .line 922
    .local v0, statusStyle:I
    packed-switch v0, :pswitch_data_0

    .line 936
    :goto_0
    return-void

    .line 926
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/anall/statusbar/BarService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    .line 930
    :pswitch_1
    const-string v1, "~~~~~StartBarService~~~~~"

    const-string v2, "SetttingDeskItemsAct"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/anall/statusbar/BarService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 922
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
.method protected initData()V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->createView()V

    .line 90
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mTitleBar:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleBarText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->titleText:Ljava/lang/String;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 92
    return-void
.end method

.method protected onDestroy()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 1070
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "special_id"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1071
    .local v3, specialID:I
    if-eq v3, v6, :cond_0

    .line 1072
    packed-switch v3, :pswitch_data_0

    .line 1089
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onDestroy()V

    .line 1090
    return-void

    .line 1074
    :pswitch_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 1075
    .local v0, alphaBg:I
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 1076
    .local v1, alphaFg:I
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar2:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    .line 1077
    .local v2, alphaTx:I
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    rsub-int/lit8 v5, v0, 0x64

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/cfg/DeskSetting;->setCellAlpha(I)V

    .line 1078
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    rsub-int/lit8 v5, v1, 0x64

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/cfg/DeskSetting;->setCellFGAlpha(I)V

    .line 1079
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    rsub-int/lit8 v5, v2, 0x64

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/cfg/DeskSetting;->setCellTextAlpha(I)V

    goto :goto_0

    .line 1082
    .end local v0           #alphaBg:I
    .end local v1           #alphaFg:I
    .end local v2           #alphaTx:I
    :pswitch_1
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 1083
    .restart local v0       #alphaBg:I
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 1084
    .restart local v1       #alphaFg:I
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;

    rsub-int/lit8 v5, v0, 0x64

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/cfg/AppSetting;->setAppAlphaBg(I)V

    .line 1085
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;

    rsub-int/lit8 v5, v1, 0x64

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/cfg/AppSetting;->setAppAlphaFg(I)V

    goto :goto_0

    .line 1072
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

    .line 1031
    if-ne p1, v7, :cond_9

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->whichPage:I

    if-eq v3, v5, :cond_0

    .line 1032
    iget v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->whichPage:I

    const/16 v4, 0x96

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->whichPage:I

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_9

    .line 1033
    :cond_0
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1034
    .local v1, data:Landroid/content/Intent;
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 1035
    .local v0, alpha:I
    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 1036
    :cond_1
    if-le v0, v5, :cond_2

    const/16 v0, 0x64

    .line 1037
    :cond_2
    const-string v3, "extral_value"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1038
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar1:Landroid/widget/SeekBar;

    if-eqz v3, :cond_5

    .line 1039
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 1040
    if-gez v0, :cond_3

    const/4 v0, 0x0

    .line 1041
    :cond_3
    if-le v0, v5, :cond_4

    const/16 v0, 0x64

    .line 1042
    :cond_4
    const-string v3, "extral_value1"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1044
    :cond_5
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar2:Landroid/widget/SeekBar;

    if-eqz v3, :cond_8

    .line 1045
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekBar2:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 1046
    if-gez v0, :cond_6

    const/4 v0, 0x0

    .line 1047
    :cond_6
    if-le v0, v5, :cond_7

    const/16 v0, 0x64

    .line 1048
    :cond_7
    const-string v3, "extral_value2"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1050
    :cond_8
    invoke-virtual {p0, v6, v1}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->setResult(ILandroid/content/Intent;)V

    .line 1051
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->finish()V

    .line 1065
    .end local v0           #alpha:I
    .end local v1           #data:Landroid/content/Intent;
    :goto_0
    return v2

    .line 1053
    :cond_9
    if-ne p1, v7, :cond_a

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->whichPage:I

    const/16 v4, 0x384

    if-ne v3, v4, :cond_a

    .line 1054
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1055
    .restart local v1       #data:Landroid/content/Intent;
    const-string v3, "extral_boolean"

    iget-boolean v4, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->seekState:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1056
    invoke-virtual {p0, v6, v1}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->setResult(ILandroid/content/Intent;)V

    .line 1057
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->finish()V

    goto :goto_0

    .line 1059
    .end local v1           #data:Landroid/content/Intent;
    :cond_a
    if-ne p1, v7, :cond_b

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->whichPage:I

    const/16 v4, 0x4b0

    if-ne v3, v4, :cond_b

    .line 1060
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1061
    .restart local v1       #data:Landroid/content/Intent;
    invoke-virtual {p0, v6, v1}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->setResult(ILandroid/content/Intent;)V

    .line 1062
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->finish()V

    goto :goto_0

    .line 1065
    .end local v1           #data:Landroid/content/Intent;
    :cond_b
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method
