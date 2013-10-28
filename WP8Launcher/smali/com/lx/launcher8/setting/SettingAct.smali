.class public Lcom/lx/launcher8/setting/SettingAct;
.super Lcom/lx/launcher8/setting/PageSetAct;
.source "SettingAct.java"


# static fields
.field public static final EXTRAL_PAGE:Ljava/lang/String; = "extral_page"

.field protected static final REQUEST_PICK_APP:I = 0x2

.field protected static final REQUEST_PICK_COLOR:I = 0x1

.field protected static final REQUEST_PICK_IMAGE:I = 0x3

.field protected static final REQUEST_PICK_TEXT:I = 0x5

.field protected static final REQUEST_SAVE_IMAGE:I = 0x4


# instance fields
.field private final DESK_FOURTH:I

.field private final DESK_FRIST:I

.field private final DESK_SECOND:I

.field private final DESK_THIRD:I

.field gaps:[I

.field private mAppBCView:Landroid/view/View;

.field private mAppFBack:Landroid/widget/TextView;

.field private mAppIndex:Landroid/widget/TextView;

.field private mAppLayout:Landroid/view/View;

.field private mAppSet:Lcom/lx/launcher8/cfg/AppSetting;

.field private mAppTCView:Landroid/view/View;

.field mClickListener:Landroid/view/View$OnClickListener;

.field private mItemSelect:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mLockColorView:Landroid/view/View;

.field private mLockSet:Lcom/anall/screenlock/provider/LockSetting;

.field private mLockState:Landroid/widget/TextView;

.field private mLockStyle:Landroid/widget/TextView;

.field private mSettingDesk:Lcom/lx/launcher8/setting/view/SetDeskScrollView;

.field private mThemeAnima:Landroid/widget/TextView;

.field private mThemeCell:Landroid/widget/TextView;

.field private mThemeColorView:Landroid/view/View;

.field private mThemeLock:Landroid/widget/TextView;

.field private mThemeScroll:Landroid/widget/TextView;

.field private mThemeState:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x6

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 35
    invoke-direct {p0}, Lcom/lx/launcher8/setting/PageSetAct;-><init>()V

    .line 52
    const/16 v0, 0x64

    iput v0, p0, Lcom/lx/launcher8/setting/SettingAct;->DESK_FRIST:I

    .line 53
    const/16 v0, 0xc8

    iput v0, p0, Lcom/lx/launcher8/setting/SettingAct;->DESK_SECOND:I

    .line 54
    const/16 v0, 0x12c

    iput v0, p0, Lcom/lx/launcher8/setting/SettingAct;->DESK_THIRD:I

    .line 55
    const/16 v0, 0x190

    iput v0, p0, Lcom/lx/launcher8/setting/SettingAct;->DESK_FOURTH:I

    .line 205
    new-instance v0, Lcom/lx/launcher8/setting/SettingAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/SettingAct$1;-><init>(Lcom/lx/launcher8/setting/SettingAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/SettingAct;->mClickListener:Landroid/view/View$OnClickListener;

    .line 341
    new-instance v0, Lcom/lx/launcher8/setting/SettingAct$2;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/SettingAct$2;-><init>(Lcom/lx/launcher8/setting/SettingAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/SettingAct;->mItemSelect:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 417
    new-array v0, v5, [I

    aput v1, v0, v1

    aput v2, v0, v2

    const/4 v1, 0x3

    aput v3, v0, v1

    aput v4, v0, v3

    const/4 v1, 0x5

    aput v5, v0, v1

    const/16 v1, 0xa

    aput v1, v0, v4

    const/4 v1, 0x7

    const/16 v2, 0xc

    aput v2, v0, v1

    iput-object v0, p0, Lcom/lx/launcher8/setting/SettingAct;->gaps:[I

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/SettingAct;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/SettingAct;->saveTheme(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/SettingAct;)Lcom/lx/launcher8/cfg/DeskSetting;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lx/launcher8/setting/SettingAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/SettingAct;Ljava/lang/Class;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lx/launcher8/setting/SettingAct;->reFreshTheme(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/SettingAct;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/SettingAct;->getGapValue(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/setting/SettingAct;)Lcom/anall/screenlock/provider/LockSetting;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lx/launcher8/setting/SettingAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    return-object v0
.end method

.method private changeTextHit(Landroid/view/View;IIIZ)Landroid/widget/TextView;
    .locals 1
    .parameter "parent"
    .parameter "id"
    .parameter "ridON"
    .parameter "ridOFF"
    .parameter "enable"

    .prologue
    .line 430
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 431
    .local v0, tv:Landroid/widget/TextView;
    if-eqz p5, :cond_0

    .end local p3
    :goto_0
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 432
    return-object v0

    .restart local p3
    :cond_0
    move p3, p4

    .line 431
    goto :goto_0
.end method

.method private findGapIndex(I)I
    .locals 2
    .parameter "gap"

    .prologue
    .line 419
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/SettingAct;->gaps:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 423
    const/4 v0, 0x6

    .end local v0           #i:I
    :cond_0
    return v0

    .line 420
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lcom/lx/launcher8/setting/SettingAct;->gaps:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_0

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getGapValue(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/lx/launcher8/setting/SettingAct;->gaps:[I

    aget v0, v0, p1

    return v0
.end method

.method private initDeskSettings()V
    .locals 30

    .prologue
    .line 116
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/setting/SettingAct;->mSettingDesk:Lcom/lx/launcher8/setting/view/SetDeskScrollView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lx/launcher8/setting/SettingAct;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v7}, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/setting/SettingAct;->mSettingDesk:Lcom/lx/launcher8/setting/view/SetDeskScrollView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lx/launcher8/setting/SettingAct;->mTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;

    invoke-virtual {v1, v7}, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->setOnTouchOverListener(Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/setting/SettingAct;->mSettingDesk:Lcom/lx/launcher8/setting/view/SetDeskScrollView;

    const/16 v7, 0xa

    const/16 v8, 0xa

    const/16 v10, 0xa

    const/16 v13, 0x1e

    invoke-virtual {v1, v7, v8, v10, v13}, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->setMargins(IIII)V

    .line 119
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/setting/SettingAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getDisplayCellText()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v29, 0x1

    .line 120
    .local v29, showText:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/setting/SettingAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getLockLauncherEnable()Z

    move-result v27

    .line 121
    .local v27, editable:Z
    const v2, 0x7f0a0008

    .line 122
    .local v2, titleId:I
    const/4 v1, 0x5

    new-array v3, v1, [I

    fill-array-data v3, :array_0

    .line 123
    .local v3, picResID_01:[I
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/setting/SettingAct;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f07000d

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, text:[Ljava/lang/String;
    const/4 v1, 0x5

    new-array v5, v1, [Lcom/lx/launcher8/util/Utils$SettingsStyle;

    const/4 v1, 0x0

    sget-object v7, Lcom/lx/launcher8/util/Utils$SettingsStyle;->COLOR:Lcom/lx/launcher8/util/Utils$SettingsStyle;

    aput-object v7, v5, v1

    const/4 v1, 0x1

    sget-object v7, Lcom/lx/launcher8/util/Utils$SettingsStyle;->TEXT:Lcom/lx/launcher8/util/Utils$SettingsStyle;

    aput-object v7, v5, v1

    const/4 v1, 0x2

    sget-object v7, Lcom/lx/launcher8/util/Utils$SettingsStyle;->TEXT:Lcom/lx/launcher8/util/Utils$SettingsStyle;

    aput-object v7, v5, v1

    const/4 v1, 0x3

    sget-object v7, Lcom/lx/launcher8/util/Utils$SettingsStyle;->BUTTON:Lcom/lx/launcher8/util/Utils$SettingsStyle;

    aput-object v7, v5, v1

    const/4 v1, 0x4

    sget-object v7, Lcom/lx/launcher8/util/Utils$SettingsStyle;->BUTTON:Lcom/lx/launcher8/util/Utils$SettingsStyle;

    aput-object v7, v5, v1

    .line 125
    .local v5, style_01:[Lcom/lx/launcher8/util/Utils$SettingsStyle;
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/setting/SettingAct;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f070001

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v28

    .line 126
    .local v28, gaps:[Ljava/lang/String;
    const/4 v1, 0x5

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v1, 0x1

    const v7, 0x7f0a0008

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v1, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lx/launcher8/setting/SettingAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v7}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellGap()I

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/lx/launcher8/setting/SettingAct;->findGapIndex(I)I

    move-result v7

    aget-object v7, v28, v7

    aput-object v7, v6, v1

    const/4 v1, 0x3

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v1, 0x4

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v1

    .line 127
    .local v6, obj_01:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/setting/SettingAct;->mSettingDesk:Lcom/lx/launcher8/setting/view/SetDeskScrollView;

    const/16 v7, 0x64

    invoke-virtual/range {v1 .. v7}, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->addItems(I[I[Ljava/lang/String;[Lcom/lx/launcher8/util/Utils$SettingsStyle;[Ljava/lang/Object;I)V

    .line 129
    const v2, 0x7f0a0021

    .line 130
    const/4 v1, 0x2

    new-array v9, v1, [I

    fill-array-data v9, :array_1

    .line 131
    .local v9, picResID_02:[I
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/setting/SettingAct;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f07000e

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 132
    const/4 v1, 0x2

    new-array v11, v1, [Lcom/lx/launcher8/util/Utils$SettingsStyle;

    const/4 v1, 0x0

    sget-object v7, Lcom/lx/launcher8/util/Utils$SettingsStyle;->TEXT:Lcom/lx/launcher8/util/Utils$SettingsStyle;

    aput-object v7, v11, v1

    const/4 v1, 0x1

    sget-object v7, Lcom/lx/launcher8/util/Utils$SettingsStyle;->NONE:Lcom/lx/launcher8/util/Utils$SettingsStyle;

    aput-object v7, v11, v1

    .line 133
    .local v11, style_02:[Lcom/lx/launcher8/util/Utils$SettingsStyle;
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/setting/SettingAct;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v7, 0x7f07

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v26

    .line 134
    .local v26, back:[Ljava/lang/String;
    const/4 v1, 0x2

    new-array v12, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lx/launcher8/setting/SettingAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v7}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v7

    aget-object v7, v26, v7

    aput-object v7, v12, v1

    .line 135
    .local v12, obj_02:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lx/launcher8/setting/SettingAct;->mSettingDesk:Lcom/lx/launcher8/setting/view/SetDeskScrollView;

    const/16 v13, 0xc8

    move v8, v2

    move-object v10, v4

    invoke-virtual/range {v7 .. v13}, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->addItems(I[I[Ljava/lang/String;[Lcom/lx/launcher8/util/Utils$SettingsStyle;[Ljava/lang/Object;I)V

    .line 137
    const v2, 0x7f0a0010

    .line 138
    const/4 v1, 0x2

    new-array v15, v1, [I

    fill-array-data v15, :array_2

    .line 139
    .local v15, picResID_03:[I
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/setting/SettingAct;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f07000f

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 140
    const/4 v1, 0x2

    new-array v0, v1, [Lcom/lx/launcher8/util/Utils$SettingsStyle;

    move-object/from16 v17, v0

    const/4 v1, 0x0

    sget-object v7, Lcom/lx/launcher8/util/Utils$SettingsStyle;->NONE:Lcom/lx/launcher8/util/Utils$SettingsStyle;

    aput-object v7, v17, v1

    const/4 v1, 0x1

    sget-object v7, Lcom/lx/launcher8/util/Utils$SettingsStyle;->NONE:Lcom/lx/launcher8/util/Utils$SettingsStyle;

    aput-object v7, v17, v1

    .line 141
    .local v17, style_03:[Lcom/lx/launcher8/util/Utils$SettingsStyle;
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 142
    .local v18, obj_03:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/SettingAct;->mSettingDesk:Lcom/lx/launcher8/setting/view/SetDeskScrollView;

    const/16 v19, 0x12c

    move v14, v2

    move-object/from16 v16, v4

    invoke-virtual/range {v13 .. v19}, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->addItems(I[I[Ljava/lang/String;[Lcom/lx/launcher8/util/Utils$SettingsStyle;[Ljava/lang/Object;I)V

    .line 144
    const v2, 0x7f0a00c8

    .line 145
    const/4 v1, 0x3

    new-array v0, v1, [I

    move-object/from16 v21, v0

    fill-array-data v21, :array_3

    .line 146
    .local v21, picResID_04:[I
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/setting/SettingAct;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f070010

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 147
    const/4 v1, 0x3

    new-array v0, v1, [Lcom/lx/launcher8/util/Utils$SettingsStyle;

    move-object/from16 v23, v0

    const/4 v1, 0x0

    sget-object v7, Lcom/lx/launcher8/util/Utils$SettingsStyle;->NONE:Lcom/lx/launcher8/util/Utils$SettingsStyle;

    aput-object v7, v23, v1

    const/4 v1, 0x1

    sget-object v7, Lcom/lx/launcher8/util/Utils$SettingsStyle;->NONE:Lcom/lx/launcher8/util/Utils$SettingsStyle;

    aput-object v7, v23, v1

    const/4 v1, 0x2

    sget-object v7, Lcom/lx/launcher8/util/Utils$SettingsStyle;->NONE:Lcom/lx/launcher8/util/Utils$SettingsStyle;

    aput-object v7, v23, v1

    .line 148
    .local v23, style_04:[Lcom/lx/launcher8/util/Utils$SettingsStyle;
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    move-object/from16 v24, v0

    .line 149
    .local v24, obj_04:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/setting/SettingAct;->mSettingDesk:Lcom/lx/launcher8/setting/view/SetDeskScrollView;

    move-object/from16 v19, v0

    const/16 v25, 0x190

    move/from16 v20, v2

    move-object/from16 v22, v4

    invoke-virtual/range {v19 .. v25}, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->addItems(I[I[Ljava/lang/String;[Lcom/lx/launcher8/util/Utils$SettingsStyle;[Ljava/lang/Object;I)V

    .line 150
    return-void

    .line 119
    .end local v2           #titleId:I
    .end local v3           #picResID_01:[I
    .end local v4           #text:[Ljava/lang/String;
    .end local v5           #style_01:[Lcom/lx/launcher8/util/Utils$SettingsStyle;
    .end local v6           #obj_01:[Ljava/lang/Object;
    .end local v9           #picResID_02:[I
    .end local v11           #style_02:[Lcom/lx/launcher8/util/Utils$SettingsStyle;
    .end local v12           #obj_02:[Ljava/lang/Object;
    .end local v15           #picResID_03:[I
    .end local v17           #style_03:[Lcom/lx/launcher8/util/Utils$SettingsStyle;
    .end local v18           #obj_03:[Ljava/lang/Object;
    .end local v21           #picResID_04:[I
    .end local v23           #style_04:[Lcom/lx/launcher8/util/Utils$SettingsStyle;
    .end local v24           #obj_04:[Ljava/lang/Object;
    .end local v26           #back:[Ljava/lang/String;
    .end local v27           #editable:Z
    .end local v28           #gaps:[Ljava/lang/String;
    .end local v29           #showText:Z
    :cond_0
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 122
    :array_0
    .array-data 0x4
        0xb0t 0x1t 0x2t 0x7ft
        0xb1t 0x1t 0x2t 0x7ft
        0xb2t 0x1t 0x2t 0x7ft
        0xb3t 0x1t 0x2t 0x7ft
        0xb4t 0x1t 0x2t 0x7ft
    .end array-data

    .line 130
    :array_1
    .array-data 0x4
        0xb5t 0x1t 0x2t 0x7ft
        0xb6t 0x1t 0x2t 0x7ft
    .end array-data

    .line 138
    :array_2
    .array-data 0x4
        0xb7t 0x1t 0x2t 0x7ft
        0xb8t 0x1t 0x2t 0x7ft
    .end array-data

    .line 145
    :array_3
    .array-data 0x4
        0xbat 0x1t 0x2t 0x7ft
        0xbbt 0x1t 0x2t 0x7ft
        0xb9t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method private saveTheme(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 330
    const v1, 0x7f0a0194

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/SettingAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0119

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/SettingAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 331
    .local v0, dialog:Landroid/app/ProgressDialog;
    new-instance v1, Lcom/lx/launcher8/setting/SettingAct$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/lx/launcher8/setting/SettingAct$3;-><init>(Lcom/lx/launcher8/setting/SettingAct;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    .line 338
    invoke-virtual {v1}, Lcom/lx/launcher8/setting/SettingAct$3;->start()V

    .line 339
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v10, 0x64

    .line 153
    if-nez p2, :cond_1

    .line 154
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/setting/PageSetAct;->onActivityResult(IILandroid/content/Intent;)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 159
    :pswitch_1
    const-string v8, "changeId"

    const v9, 0x7f0901b7

    invoke-virtual {p3, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 160
    .local v3, id:I
    const-string v8, "extral_value"

    const/high16 v9, -0x100

    invoke-virtual {p3, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 161
    .local v0, color:I
    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 163
    :sswitch_0
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v8, v0}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemeColor(I)V

    .line 165
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingAct;->mSettingDesk:Lcom/lx/launcher8/setting/view/SetDeskScrollView;

    invoke-virtual {v8, v10, v10}, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->getItem(II)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f09018c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 168
    :sswitch_1
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v8, v0}, Lcom/anall/screenlock/provider/LockSetting;->setThemeLockColor(I)V

    .line 169
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingAct;->mLockColorView:Landroid/view/View;

    invoke-virtual {v8, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 172
    :sswitch_2
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingAct;->mAppTCView:Landroid/view/View;

    invoke-virtual {v8, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 173
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v8, v0}, Lcom/lx/launcher8/cfg/AppSetting;->setThemeAppTextColor(I)V

    goto :goto_0

    .line 176
    :sswitch_3
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingAct;->mAppBCView:Landroid/view/View;

    invoke-virtual {v8, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 177
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v8, v0}, Lcom/lx/launcher8/cfg/AppSetting;->setAppIconColor(I)V

    goto :goto_0

    .line 182
    .end local v0           #color:I
    .end local v3           #id:I
    :pswitch_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 183
    .local v7, uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-class v8, Lcom/lx/launcher8/crop/CropImage;

    invoke-direct {v4, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingAct;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 185
    .local v1, dis:Landroid/util/DisplayMetrics;
    const-string v8, "aspectX"

    iget v9, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    const-string v8, "aspectY"

    iget v9, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    const-string v8, "noFaceDetection"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 188
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 189
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingAct;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "lockbg"

    invoke-direct {v2, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 190
    .local v2, file:Ljava/io/File;
    const-string v8, "output"

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 191
    const/4 v8, 0x4

    invoke-virtual {p0, v4, v8}, Lcom/lx/launcher8/setting/SettingAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 194
    .end local v1           #dis:Landroid/util/DisplayMetrics;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v7           #uri:Landroid/net/Uri;
    :pswitch_3
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingAct;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "lockbg"

    invoke-direct {v2, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 195
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/anall/screenlock/provider/LockSetting;->setThemeLockBg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 198
    .end local v2           #file:Ljava/io/File;
    :pswitch_4
    const-string v8, "changeId"

    const/4 v9, -0x1

    invoke-virtual {p3, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 199
    .local v5, itemID:I
    const-string v8, "extral_value"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 200
    .local v6, text:Ljava/lang/String;
    iget-object v8, p0, Lcom/lx/launcher8/setting/SettingAct;->mSettingDesk:Lcom/lx/launcher8/setting/view/SetDeskScrollView;

    div-int/lit8 v9, v5, 0x64

    mul-int/lit8 v9, v9, 0x64

    invoke-virtual {v8, v9, v5}, Lcom/lx/launcher8/setting/view/SetDeskScrollView;->getItem(II)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f09018d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 161
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x7f09019b -> :sswitch_2
        0x7f09019f -> :sswitch_3
        0x7f0901ae -> :sswitch_1
    .end sparse-switch
.end method

.method protected onSeekChange(Lcom/lx/launcher8/view/SeekButton;Z)V
    .locals 6
    .parameter "v"
    .parameter "enable"

    .prologue
    const v4, 0x7f0a0026

    const v3, 0x7f0a0025

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 367
    invoke-virtual {p1}, Lcom/lx/launcher8/view/SeekButton;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 409
    :goto_0
    return-void

    .line 369
    :sswitch_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    if-eqz p2, :cond_0

    :goto_1
    invoke-virtual {v5, v1}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemeStatusBar(I)V

    .line 370
    iget-object v2, p0, Lcom/lx/launcher8/setting/SettingAct;->mThemeState:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    move v1, v3

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    move v1, v2

    .line 369
    goto :goto_1

    :cond_1
    move v1, v4

    .line 370
    goto :goto_2

    .line 373
    :sswitch_1
    iget-object v3, p0, Lcom/lx/launcher8/setting/SettingAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    if-eqz p2, :cond_2

    :goto_3
    invoke-virtual {v3, v2}, Lcom/lx/launcher8/cfg/DeskSetting;->setDisplayCellText(I)V

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_3

    .line 377
    :sswitch_2
    iget-object v1, p0, Lcom/lx/launcher8/setting/SettingAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1, p2}, Lcom/lx/launcher8/cfg/DeskSetting;->setLockLauncherEnable(Z)V

    goto :goto_0

    .line 381
    :sswitch_3
    iget-object v3, p0, Lcom/lx/launcher8/setting/SettingAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    if-eqz p2, :cond_3

    :goto_4
    invoke-virtual {v3, v1}, Lcom/lx/launcher8/cfg/DeskSetting;->setScrollAllowed(I)V

    .line 382
    iget-object v2, p0, Lcom/lx/launcher8/setting/SettingAct;->mThemeScroll:Landroid/widget/TextView;

    if-eqz p2, :cond_4

    const v1, 0x7f0a00c9

    :goto_5
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 381
    goto :goto_4

    .line 382
    :cond_4
    const v1, 0x7f0a00ca

    goto :goto_5

    .line 385
    :sswitch_4
    iget-object v3, p0, Lcom/lx/launcher8/setting/SettingAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    if-eqz p2, :cond_5

    :goto_6
    invoke-virtual {v3, v1}, Lcom/lx/launcher8/cfg/DeskSetting;->setAnimationSwitch(I)V

    .line 386
    iget-object v2, p0, Lcom/lx/launcher8/setting/SettingAct;->mThemeAnima:Landroid/widget/TextView;

    if-eqz p2, :cond_6

    const v1, 0x7f0a00d8

    :goto_7
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_5
    move v1, v2

    .line 385
    goto :goto_6

    .line 386
    :cond_6
    const v1, 0x7f0a00d9

    goto :goto_7

    .line 389
    :sswitch_5
    iget-object v3, p0, Lcom/lx/launcher8/setting/SettingAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    if-eqz p2, :cond_7

    :goto_8
    invoke-virtual {v3, v1}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemeLock(I)V

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_8

    .line 393
    :sswitch_6
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    if-eqz p2, :cond_8

    :goto_9
    invoke-virtual {v5, v1}, Lcom/anall/screenlock/provider/LockSetting;->setLockStatusBar(I)V

    .line 394
    iget-object v1, p0, Lcom/lx/launcher8/setting/SettingAct;->mLockState:Landroid/widget/TextView;

    if-eqz p2, :cond_9

    :goto_a
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_8
    move v1, v2

    .line 393
    goto :goto_9

    :cond_9
    move v3, v4

    .line 394
    goto :goto_a

    .line 397
    :sswitch_7
    if-eqz p2, :cond_b

    const/4 v0, -0x1

    .line 398
    .local v0, color:I
    :goto_b
    iget-object v3, p0, Lcom/lx/launcher8/setting/SettingAct;->mAppFBack:Landroid/widget/TextView;

    if-eqz p2, :cond_c

    const v1, 0x7f0a00d4

    :goto_c
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 399
    iget-object v1, p0, Lcom/lx/launcher8/setting/SettingAct;->mAppLayout:Landroid/view/View;

    if-eqz p2, :cond_a

    const/16 v2, 0x8

    :cond_a
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 400
    iget-object v1, p0, Lcom/lx/launcher8/setting/SettingAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/cfg/AppSetting;->setAppIconColor(I)V

    goto/16 :goto_0

    .line 397
    .end local v0           #color:I
    :cond_b
    iget-object v1, p0, Lcom/lx/launcher8/setting/SettingAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/AppSetting;->getThemeColor()I

    move-result v0

    goto :goto_b

    .line 398
    .restart local v0       #color:I
    :cond_c
    const v1, 0x7f0a00d5

    goto :goto_c

    .line 403
    .end local v0           #color:I
    :sswitch_8
    iget-object v2, p0, Lcom/lx/launcher8/setting/SettingAct;->mAppIndex:Landroid/widget/TextView;

    if-eqz p2, :cond_d

    const v1, 0x7f0a0040

    :goto_d
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 404
    iget-object v1, p0, Lcom/lx/launcher8/setting/SettingAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v1, p2}, Lcom/lx/launcher8/cfg/AppSetting;->setThemeAppListHeader(Z)V

    goto/16 :goto_0

    .line 403
    :cond_d
    const v1, 0x7f0a0041

    goto :goto_d

    .line 367
    :sswitch_data_0
    .sparse-switch
        0x67 -> :sswitch_1
        0x68 -> :sswitch_2
        0x7f09019e -> :sswitch_7
        0x7f0901a9 -> :sswitch_8
        0x7f0901b2 -> :sswitch_5
        0x7f0901b5 -> :sswitch_6
        0x7f0901bc -> :sswitch_0
        0x7f0901c2 -> :sswitch_3
        0x7f0901c4 -> :sswitch_4
    .end sparse-switch
.end method

.method protected pickColor(II)V
    .locals 2
    .parameter "type"
    .parameter "id"

    .prologue
    .line 412
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lx/launcher8/setting/ColorPickerAct;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 413
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extral_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 414
    const-string v1, "changeId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 415
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/SettingAct;->startActivityForResult(Landroid/content/Intent;I)V

    .line 416
    return-void
.end method

.method protected setupViews()V
    .locals 17

    .prologue
    .line 58
    new-instance v1, Lcom/anall/screenlock/provider/LockSetting;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/anall/screenlock/provider/LockSetting;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lx/launcher8/setting/SettingAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    .line 59
    new-instance v1, Lcom/lx/launcher8/cfg/AppSetting;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/lx/launcher8/cfg/AppSetting;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lx/launcher8/setting/SettingAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/setting/SettingAct;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v13

    .line 63
    .local v13, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030069

    const/4 v3, 0x0

    invoke-virtual {v13, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 64
    .local v2, loackView:Landroid/view/View;
    const v1, 0x7f030068

    const/4 v3, 0x0

    invoke-virtual {v13, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 65
    .local v8, appView:Landroid/view/View;
    new-instance v1, Lcom/lx/launcher8/setting/view/SetDeskScrollView;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/lx/launcher8/setting/view/SetDeskScrollView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lx/launcher8/setting/SettingAct;->mSettingDesk:Lcom/lx/launcher8/setting/view/SetDeskScrollView;

    .line 66
    const v1, 0x7f0a0008

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/SettingAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/SettingAct;->mSettingDesk:Lcom/lx/launcher8/setting/view/SetDeskScrollView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/lx/launcher8/setting/SettingAct;->addPage(Ljava/lang/String;Landroid/view/View;)V



    .line 68
    const v1, 0x7f0a002a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/SettingAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v8}, Lcom/lx/launcher8/setting/SettingAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/setting/SettingAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "extral_page"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 71
    .local v15, page:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lx/launcher8/setting/SettingAct;->scrollToPage(I)V

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/setting/SettingAct;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 75
    .local v16, res:Landroid/content/res/Resources;
    invoke-direct/range {p0 .. p0}, Lcom/lx/launcher8/setting/SettingAct;->initDeskSettings()V

    .line 76
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/setting/SettingAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeStatusBar()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v6, 0x1

    .line 78
    .local v6, enable:Z
    :goto_0
    const v1, 0x7f0901ac

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/SettingAct;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v1, 0x7f0901ae

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/SettingAct;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v1, 0x7f0901af

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lx/launcher8/setting/SettingAct;->mLockColorView:Landroid/view/View;

    .line 81
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/setting/SettingAct;->mLockColorView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/SettingAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v3}, Lcom/anall/screenlock/provider/LockSetting;->getThemeLockColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 82
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/setting/SettingAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeLock()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v6, 0x1

    .line 83
    :goto_1
    const v1, 0x7f0901b2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1, v6}, Lcom/lx/launcher8/setting/SettingAct;->followSetting(Landroid/view/View;IZ)Lcom/lx/launcher8/view/SeekButton;

    .line 86
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/setting/SettingAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v1}, Lcom/anall/screenlock/provider/LockSetting;->getLockStatusBar()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v6, 0x1

    .line 87
    :goto_2
    const v1, 0x7f0901b5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1, v6}, Lcom/lx/launcher8/setting/SettingAct;->followSetting(Landroid/view/View;IZ)Lcom/lx/launcher8/view/SeekButton;

    .line 88
    const v3, 0x7f0901b4

    const v4, 0x7f0a0025

    .line 89
    const v5, 0x7f0a0026

    move-object/from16 v1, p0

    .line 88
    invoke-direct/range {v1 .. v6}, Lcom/lx/launcher8/setting/SettingAct;->changeTextHit(Landroid/view/View;IIIZ)Landroid/widget/TextView;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lx/launcher8/setting/SettingAct;->mLockState:Landroid/widget/TextView;

    .line 90
    const v1, 0x7f0901b6

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/lx/launcher8/view/MutiChooseView;

    .line 91
    .local v14, mv:Lcom/lx/launcher8/view/MutiChooseView;
    const v1, 0x7f070002

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/SettingAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v3}, Lcom/anall/screenlock/provider/LockSetting;->getLockTheme()I

    move-result v3

    invoke-virtual {v14, v1, v3}, Lcom/lx/launcher8/view/MutiChooseView;->setItems([Ljava/lang/String;I)V

    .line 92
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/setting/SettingAct;->mItemSelect:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v14, v1}, Lcom/lx/launcher8/view/MutiChooseView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 94
    const v1, 0x7f09019b

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/SettingAct;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v1, 0x7f0901a0

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lx/launcher8/setting/SettingAct;->mAppTCView:Landroid/view/View;

    .line 96
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/setting/SettingAct;->mAppTCView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/SettingAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v3}, Lcom/lx/launcher8/cfg/AppSetting;->getThemeAppTextColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 97
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/setting/SettingAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/AppSetting;->getAppIconColor()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    const/4 v6, 0x1

    .line 98
    :goto_3
    const v1, 0x7f09019e

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v1, v6}, Lcom/lx/launcher8/setting/SettingAct;->followSetting(Landroid/view/View;IZ)Lcom/lx/launcher8/view/SeekButton;

    .line 99
    const v1, 0x7f09019f

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lx/launcher8/setting/SettingAct;->mAppLayout:Landroid/view/View;

    .line 100
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/SettingAct;->mAppLayout:Landroid/view/View;

    if-eqz v6, :cond_4

    const/16 v1, 0x8

    :goto_4
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    const v9, 0x7f09019d

    const v10, 0x7f0a00d4

    .line 102
    const v11, 0x7f0a00d5

    move-object/from16 v7, p0

    move v12, v6

    .line 101
    invoke-direct/range {v7 .. v12}, Lcom/lx/launcher8/setting/SettingAct;->changeTextHit(Landroid/view/View;IIIZ)Landroid/widget/TextView;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lx/launcher8/setting/SettingAct;->mAppFBack:Landroid/widget/TextView;

    .line 103
    const v1, 0x7f09019f

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/SettingAct;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v1, 0x7f0901a0

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lx/launcher8/setting/SettingAct;->mAppBCView:Landroid/view/View;

    .line 105
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/setting/SettingAct;->mAppBCView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/SettingAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v3}, Lcom/lx/launcher8/cfg/AppSetting;->getAppIconColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 106
    const v1, 0x7f0901a2

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/SettingAct;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v1, 0x7f0901a3

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/SettingAct;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v1, 0x7f0901a4

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/SettingAct;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lx/launcher8/setting/SettingAct;->mAppSet:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/AppSetting;->isShowAppListHeader()Z

    move-result v6

    .line 110
    const v1, 0x7f0901a9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v1, v6}, Lcom/lx/launcher8/setting/SettingAct;->followSetting(Landroid/view/View;IZ)Lcom/lx/launcher8/view/SeekButton;

    .line 111
    const v9, 0x7f0901a8

    const v10, 0x7f0a0040

    .line 112
    const v11, 0x7f0a0041

    move-object/from16 v7, p0

    move v12, v6

    .line 111
    invoke-direct/range {v7 .. v12}, Lcom/lx/launcher8/setting/SettingAct;->changeTextHit(Landroid/view/View;IIIZ)Landroid/widget/TextView;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lx/launcher8/setting/SettingAct;->mAppIndex:Landroid/widget/TextView;

    .line 113
    return-void

    .line 76
    .end local v6           #enable:Z
    .end local v14           #mv:Lcom/lx/launcher8/view/MutiChooseView;
    :cond_0
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 82
    .restart local v6       #enable:Z
    :cond_1
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 86
    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 97
    .restart local v14       #mv:Lcom/lx/launcher8/view/MutiChooseView;
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 100
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_4
.end method
