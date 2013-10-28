.class public Lcom/lx/launcher8/setting/FolderSettingAct;
.super Lcom/lx/launcher8/NoSearchAct;
.source "FolderSettingAct.java"


# static fields
.field static final BUTTON_CANCEL:I = 0x21

.field static final BUTTON_CONFIRM:I = 0x20

.field public static final EXTRAL_PAGE:Ljava/lang/String; = "extral_page"


# instance fields
.field private final BUTTON_ANIM_ID:I

.field private final BUTTON_APP_ID:I

.field private final FOLDER_ID:I

.field private final REQUEST_CHOOSE_APP:I

.field private final REQUEST_PICK_COLOR:I

.field private final REQUEST_PICK_PIC:I

.field private final REQUEST_PICK_SIZE:I

.field private final REQUEST_PIC_POSITION:I

.field private final REQUEST_POPUP:I

.field private final REQUEST_TEXT_STYLE:I

.field private final REQUEST_TILE_BG_ALPHA:I

.field private cellInfoString:Ljava/lang/String;

.field clickListener:Landroid/view/View$OnClickListener;

.field private folderset:[I

.field private mBgColor:I

.field private mCellColor:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

.field private mCellSize:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private mCellTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private mDisplayFolder:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private mFCellView:Lcom/lx/launcher8/view/FolderCellView;

.field private mFirstTitle:Landroid/widget/TextView;

.field private mFolderAnimation:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private mFolderDisplay:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private mFolderName:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private mPicDirection:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private mRoot:Landroid/widget/LinearLayout;

.field private mRootView:Landroid/view/View;

.field private mSelectApp:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private mSelectPic:Landroid/widget/Button;

.field mTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;

.field private scrollTouch:Landroid/view/View$OnTouchListener;

.field private whichWay:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;-><init>()V

    .line 40
    const/16 v0, 0x64

    iput v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->FOLDER_ID:I

    .line 41
    const/16 v0, 0xc8

    iput v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->BUTTON_APP_ID:I

    .line 42
    const/16 v0, 0x12c

    iput v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->BUTTON_ANIM_ID:I

    .line 44
    const/16 v0, 0x12

    iput v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->REQUEST_CHOOSE_APP:I

    .line 45
    const/16 v0, 0x13

    iput v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->REQUEST_TEXT_STYLE:I

    .line 46
    const/16 v0, 0x14

    iput v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->REQUEST_PIC_POSITION:I

    .line 47
    const/16 v0, 0x15

    iput v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->REQUEST_PICK_SIZE:I

    .line 48
    const/16 v0, 0x16

    iput v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->REQUEST_TILE_BG_ALPHA:I

    .line 49
    const/16 v0, 0x17

    iput v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->REQUEST_PICK_COLOR:I

    .line 50
    const/16 v0, 0x18

    iput v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->REQUEST_PICK_PIC:I

    .line 51
    const/16 v0, 0x19

    iput v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->REQUEST_POPUP:I

    .line 64
    iput-object v1, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 65
    iput-object v1, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mSelectApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 66
    iput-object v1, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 67
    iput-object v1, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 70
    iput v2, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mBgColor:I

    .line 71
    iput v2, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->whichWay:I

    .line 286
    new-instance v0, Lcom/lx/launcher8/setting/FolderSettingAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/FolderSettingAct$1;-><init>(Lcom/lx/launcher8/setting/FolderSettingAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->clickListener:Landroid/view/View$OnClickListener;

    .line 508
    new-instance v0, Lcom/lx/launcher8/setting/FolderSettingAct$2;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/FolderSettingAct$2;-><init>(Lcom/lx/launcher8/setting/FolderSettingAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;

    .line 587
    new-instance v0, Lcom/lx/launcher8/setting/FolderSettingAct$3;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/FolderSettingAct$3;-><init>(Lcom/lx/launcher8/setting/FolderSettingAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->scrollTouch:Landroid/view/View$OnTouchListener;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/FolderSettingAct;)[I
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->folderset:[I

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/FolderSettingAct;)Lcom/lx/launcher8/view/FolderCellView;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFCellView:Lcom/lx/launcher8/view/FolderCellView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/FolderSettingAct;)V
    .locals 0
    .parameter

    .prologue
    .line 583
    invoke-direct {p0}, Lcom/lx/launcher8/setting/FolderSettingAct;->showERROR()V

    return-void
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/FolderSettingAct;)Lcom/lx/launcher8/bean/FolderCell;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/setting/FolderSettingAct;)Lcom/lx/launcher8/view/SettingLinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFolderName:Lcom/lx/launcher8/view/SettingLinearLayout;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/setting/FolderSettingAct;)I
    .locals 1
    .parameter

    .prologue
    .line 71
    iget v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->whichWay:I

    return v0
.end method

.method private createBottom()Landroid/view/View;
    .locals 15

    .prologue
    const/high16 v14, 0x4160

    const/high16 v13, 0x3f80

    const/4 v12, -0x2

    const/high16 v11, 0x4120

    const/4 v10, 0x0

    .line 124
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 125
    .local v0, bottom:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 126
    const/16 v8, 0x11

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 128
    const-string v8, "#dfe1e1e1"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 130
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 131
    .local v2, btnConfirm:Landroid/widget/Button;
    const v8, 0x7f0200ac

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 132
    const v8, 0x7f0a0077

    invoke-virtual {p0, v8}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 133
    const/4 v8, 0x2

    invoke-virtual {v2, v8, v14}, Landroid/widget/Button;->setTextSize(IF)V

    .line 134
    const/high16 v8, -0x100

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 135
    invoke-static {p0, v11}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v8

    float-to-int v8, v8

    invoke-static {p0, v11}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v2, v10, v8, v10, v9}, Landroid/widget/Button;->setPadding(IIII)V

    .line 136
    const/16 v8, 0x20

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setId(I)V

    .line 137
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-static {v12, v12, v13}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 140
    .local v6, params1:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 142
    .local v1, btnCancel:Landroid/widget/Button;
    const v8, 0x7f0200ac

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 143
    const v8, 0x7f0a0078

    invoke-virtual {p0, v8}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const/4 v8, 0x2

    invoke-virtual {v1, v8, v14}, Landroid/widget/Button;->setTextSize(IF)V

    .line 145
    const/high16 v8, -0x100

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 146
    invoke-static {p0, v11}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v8

    float-to-int v8, v8

    invoke-static {p0, v11}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v1, v10, v8, v10, v9}, Landroid/widget/Button;->setPadding(IIII)V

    .line 147
    const/16 v8, 0x21

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setId(I)V

    .line 148
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-static {v12, v12, v13}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 151
    .local v7, params2:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    const/4 v8, 0x1

    const/4 v9, -0x1

    invoke-static {v8, v9}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 154
    .local v5, lineParams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, 0x1

    invoke-virtual {v5, v10, v8, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 155
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 156
    .local v3, line1:Landroid/view/View;
    const-string v8, "#ffffff"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 157
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 159
    .local v4, line2:Landroid/view/View;
    const-string v8, "#a0a0a0"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 160
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 164
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 165
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 167
    return-object v0
.end method

.method private createView()V
    .locals 3

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/FolderSettingAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/lx/launcher8/bean/ItemCell;->getFromIntent(Landroid/content/Intent;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/bean/FolderCell;

    iput-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    .line 105
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/lx/launcher8/bean/FolderCell;

    invoke-direct {v0}, Lcom/lx/launcher8/bean/FolderCell;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v0}, Lcom/lx/launcher8/bean/FolderCell;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->cellInfoString:Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/FolderSettingAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extral_page"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->whichWay:I

    .line 110
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget v0, v0, Lcom/lx/launcher8/bean/FolderCell;->backColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 111
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mBgColor:I

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v0}, Lcom/lx/launcher8/bean/FolderCell;->getFolderSettings()[I

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->folderset:[I

    .line 116
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mRootView:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->scrollTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 118
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mRootView:Landroid/view/View;

    const v1, -0x161617

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 119
    invoke-direct {p0}, Lcom/lx/launcher8/setting/FolderSettingAct;->initView()V

    .line 121
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget v0, v0, Lcom/lx/launcher8/bean/FolderCell;->backColor:I

    iput v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mBgColor:I

    goto :goto_0
.end method

.method private initView()V
    .locals 15

    .prologue
    const/16 v14, 0xf

    const/16 v12, 0xa

    const/4 v8, 0x1

    const/4 v13, 0x0

    const/4 v9, 0x0

    .line 171
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mRootView:Landroid/view/View;

    const v10, 0x7f09013c

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lx/launcher8/view/CellFrame;

    .line 172
    .local v6, layout:Lcom/lx/launcher8/view/CellFrame;
    new-instance v7, Lcom/lx/launcher8/view/FolderCellView;

    iget-object v10, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-direct {v7, p0, v10}, Lcom/lx/launcher8/view/FolderCellView;-><init>(Landroid/content/Context;Lcom/lx/launcher8/bean/ItemCell;)V

    iput-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFCellView:Lcom/lx/launcher8/view/FolderCellView;

    .line 173
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFCellView:Lcom/lx/launcher8/view/FolderCellView;

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/view/CellFrame;->addView(Landroid/view/View;)V

    .line 174
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v7}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellAlpha()I

    move-result v7

    mul-int/lit16 v7, v7, 0xff

    div-int/lit8 v0, v7, 0x64

    .line 175
    .local v0, alphaBG:I
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFCellView:Lcom/lx/launcher8/view/FolderCellView;

    invoke-virtual {v7, v0}, Lcom/lx/launcher8/view/FolderCellView;->setGlobalAlpha(I)V

    .line 176
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v7}, Lcom/lx/launcher8/cfg/DeskSetting;->getCellFGAlpha()I

    move-result v7

    mul-int/lit16 v7, v7, 0xff

    div-int/lit8 v1, v7, 0x64

    .line 177
    .local v1, alphaFG:I
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFCellView:Lcom/lx/launcher8/view/FolderCellView;

    invoke-virtual {v7, v1}, Lcom/lx/launcher8/view/FolderCellView;->setGlobalFGAlpha(I)V

    .line 178
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFCellView:Lcom/lx/launcher8/view/FolderCellView;

    iget v10, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mBgColor:I

    invoke-virtual {v7, v10}, Lcom/lx/launcher8/view/FolderCellView;->setBackgroundColor(I)V

    .line 179
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFCellView:Lcom/lx/launcher8/view/FolderCellView;

    const/16 v10, 0x64

    invoke-virtual {v7, v10}, Lcom/lx/launcher8/view/FolderCellView;->setId(I)V

    .line 180
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFCellView:Lcom/lx/launcher8/view/FolderCellView;

    iget-object v10, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v10}, Lcom/lx/launcher8/view/FolderCellView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mRootView:Landroid/view/View;

    const v10, 0x7f09013e

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFolderName:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 183
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFolderName:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v10, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget-object v10, v10, Lcom/lx/launcher8/bean/FolderCell;->title:Ljava/lang/String;

    const v11, 0x7f0a01da

    invoke-virtual {p0, v11}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11, v9, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterEditText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IF)V

    .line 184
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFolderName:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v7, v12, v9, v12, v9}, Lcom/lx/launcher8/view/SettingLinearLayout;->setPadding(IIII)V

    .line 185
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFolderName:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v10, 0x7f0200c3

    new-instance v11, Lcom/lx/launcher8/setting/FolderSettingAct$5;

    invoke-direct {v11, p0}, Lcom/lx/launcher8/setting/FolderSettingAct$5;-><init>(Lcom/lx/launcher8/setting/FolderSettingAct;)V

    invoke-virtual {v7, v10, v11}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightImg(ILandroid/view/View$OnClickListener;)V

    .line 200
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mRootView:Landroid/view/View;

    const v10, 0x7f09013d

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mSelectPic:Landroid/widget/Button;

    .line 201
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mSelectPic:Landroid/widget/Button;

    iget-object v10, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mRootView:Landroid/view/View;

    const v10, 0x7f09013f

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mPicDirection:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 205
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mPicDirection:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v7, v14, v9, v14, v9}, Lcom/lx/launcher8/view/SettingLinearLayout;->setPadding(IIII)V

    .line 206
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mPicDirection:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v10, 0x7f0a0125

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10, v9, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 207
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mPicDirection:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 208
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mPicDirection:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v10, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v10}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v7}, Lcom/lx/launcher8/bean/FolderCell;->getImgGravity()I

    move-result v7

    if-nez v7, :cond_0

    .line 210
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mPicDirection:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v10, 0x7f0a00ed

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10, v9, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 216
    :goto_0
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mRootView:Landroid/view/View;

    const v10, 0x7f090140

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mDisplayFolder:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 217
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mDisplayFolder:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v10, 0x7f0a01dd

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10, v9, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 218
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mDisplayFolder:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v10, 0x7f0a01de

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10, v9, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterBottomText(Ljava/lang/CharSequence;IF)V

    .line 219
    iget-object v10, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mDisplayFolder:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->folderset:[I

    aget v7, v7, v9

    if-ne v7, v8, :cond_1

    move v7, v8

    :goto_1
    iget-object v11, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;

    const/16 v12, 0xc8

    invoke-virtual {v10, v7, v11, v12}, Lcom/lx/launcher8/view/SettingLinearLayout;->setSeekButton(ZLcom/lx/launcher8/view/SeekButton$OnTouchOverListener;I)V

    .line 222
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mRootView:Landroid/view/View;

    const v10, 0x7f090141

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFolderAnimation:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 223
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFolderAnimation:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v10, 0x7f0a01df

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10, v9, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 224
    iget-object v10, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFolderAnimation:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->folderset:[I

    aget v7, v7, v8

    if-ne v7, v8, :cond_2

    move v7, v8

    :goto_2
    iget-object v11, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;

    const/16 v12, 0x12c

    invoke-virtual {v10, v7, v11, v12}, Lcom/lx/launcher8/view/SettingLinearLayout;->setSeekButton(ZLcom/lx/launcher8/view/SeekButton$OnTouchOverListener;I)V

    .line 225
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->folderset:[I

    aget v7, v7, v9

    if-ne v7, v8, :cond_3

    .line 226
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFolderAnimation:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v7, v9}, Lcom/lx/launcher8/view/SettingLinearLayout;->setVisibility(I)V

    .line 232
    :goto_3
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mRootView:Landroid/view/View;

    const v10, 0x7f090142

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFolderDisplay:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 233
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFolderDisplay:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v10, 0x7f0a01e8

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10, v9, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 234
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFolderDisplay:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 235
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFolderDisplay:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v10, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v10}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->folderset:[I

    const/4 v10, 0x2

    aget v7, v7, v10

    if-nez v7, :cond_4

    .line 237
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFolderDisplay:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v10, 0x7f0a01e9

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10, v9, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 243
    :goto_4
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mRootView:Landroid/view/View;

    const v10, 0x7f090143

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 244
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v10, 0x7f0a0131

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10, v9, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 245
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget v11, v11, Lcom/lx/launcher8/bean/FolderCell;->spanX:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "*"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget v11, v11, Lcom/lx/launcher8/bean/FolderCell;->spanY:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10, v9, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 246
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 247
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v10, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v10}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mRootView:Landroid/view/View;

    const v10, 0x7f090144

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mSelectApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 252
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mSelectApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v10, Ljava/lang/StringBuilder;

    const v11, 0x7f0a01e2

    invoke-virtual {p0, v11}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget-object v11, v11, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10, v9, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 254
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mSelectApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 255
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mSelectApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v10, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v10}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mRootView:Landroid/view/View;

    const v10, 0x7f090145

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 259
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v10, 0x7f0a0132

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10, v9, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 260
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget v10, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mBgColor:I

    invoke-virtual {v7, v10}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    .line 261
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 262
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v10, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v10}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mRootView:Landroid/view/View;

    const v10, 0x7f090146

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 267
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v10, 0x7f0a0115

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10, v9, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 268
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v7}, Lcom/lx/launcher8/bean/FolderCell;->getCellAlphaFg()I

    move-result v4

    .line 269
    .local v4, cellFgAlpha:I
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v7}, Lcom/lx/launcher8/bean/FolderCell;->getCellAlphaBg()I

    move-result v3

    .line 270
    .local v3, cellBgAlpha:I
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v7}, Lcom/lx/launcher8/bean/FolderCell;->getTextAlpha()I

    move-result v5

    .line 271
    .local v5, cellTxAlpha:I
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v10, Ljava/lang/StringBuilder;

    const v11, 0x7f0a0166

    invoke-virtual {p0, v11}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int/lit8 v11, v3, 0x64

    div-int/lit16 v11, v11, 0xff

    rsub-int/lit8 v11, v11, 0x64

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "% "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f0a0167

    invoke-virtual {p0, v11}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    mul-int/lit8 v11, v4, 0x64

    div-int/lit16 v11, v11, 0xff

    rsub-int/lit8 v11, v11, 0x64

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10, v9, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 272
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 273
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mRootView:Landroid/view/View;

    const v8, 0x7f090147

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 276
    .local v2, btnDelete:Landroid/widget/Button;
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    return-void

    .line 212
    .end local v2           #btnDelete:Landroid/widget/Button;
    .end local v3           #cellBgAlpha:I
    .end local v4           #cellFgAlpha:I
    .end local v5           #cellTxAlpha:I
    :cond_0
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mPicDirection:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v10, 0x7f0a00ec

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10, v9, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    goto/16 :goto_0

    :cond_1
    move v7, v9

    .line 219
    goto/16 :goto_1

    :cond_2
    move v7, v9

    .line 224
    goto/16 :goto_2

    .line 228
    :cond_3
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFolderAnimation:Lcom/lx/launcher8/view/SettingLinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Lcom/lx/launcher8/view/SettingLinearLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 239
    :cond_4
    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFolderDisplay:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v10, 0x7f0a01ea

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10, v9, v13}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    goto/16 :goto_4
.end method

.method private showERROR()V
    .locals 2

    .prologue
    .line 584
    const v0, 0x7f0a01e6

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x320

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 585
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 17
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 423
    const/4 v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_0

    if-eqz p3, :cond_0

    .line 424
    packed-switch p1, :pswitch_data_0

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 426
    :pswitch_0
    const-string v13, "text_gravity"

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 427
    .local v12, textGravity:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v13, v12}, Lcom/lx/launcher8/bean/FolderCell;->setTextGarivty(I)V

    .line 428
    const-string v13, "text_color"

    const/4 v14, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 429
    .local v11, textColor:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    iput v11, v13, Lcom/lx/launcher8/bean/FolderCell;->textColor:I

    goto :goto_0

    .line 432
    .end local v11           #textColor:I
    .end local v12           #textGravity:I
    :pswitch_1
    const-string v13, "extral_value"

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 433
    .local v6, gravity:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v13, v6}, Lcom/lx/launcher8/bean/FolderCell;->setImgGravity(I)V

    .line 434
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v13}, Lcom/lx/launcher8/bean/FolderCell;->getImgGravity()I

    move-result v13

    if-nez v13, :cond_1

    .line 435
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mPicDirection:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v14, 0x7f0a00ed

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 439
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->folderset:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    if-nez v13, :cond_0

    .line 440
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFCellView:Lcom/lx/launcher8/view/FolderCellView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v13, v14}, Lcom/lx/launcher8/view/FolderCellView;->onConfigChange(Lcom/lx/launcher8/bean/ItemCell;)V

    goto :goto_0

    .line 437
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mPicDirection:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v14, 0x7f0a00ec

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    goto :goto_1

    .line 444
    .end local v6           #gravity:I
    :pswitch_2
    const-string v13, "extral_info"

    const v14, 0x10001

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 445
    .local v10, size:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v13, v10}, Lcom/lx/launcher8/bean/FolderCell;->setSize(I)V

    .line 446
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellSize:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget v15, v15, Lcom/lx/launcher8/bean/FolderCell;->spanX:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "*"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget v15, v15, Lcom/lx/launcher8/bean/FolderCell;->spanY:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 447
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFCellView:Lcom/lx/launcher8/view/FolderCellView;

    invoke-virtual {v13}, Lcom/lx/launcher8/view/FolderCellView;->styleChanged()V

    goto/16 :goto_0

    .line 451
    .end local v10           #size:I
    :pswitch_3
    invoke-static/range {p3 .. p3}, Lcom/lx/launcher8/bean/ItemCell;->getFromIntent(Landroid/content/Intent;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v7

    check-cast v7, Lcom/lx/launcher8/bean/FolderCell;

    .line 452
    .local v7, mFolderInfo:Lcom/lx/launcher8/bean/FolderCell;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget-object v14, v7, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    iput-object v14, v13, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    .line 453
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mSelectApp:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v14, Ljava/lang/StringBuilder;

    const v15, 0x7f0a01e2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget-object v15, v15, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    goto/16 :goto_0

    .line 456
    .end local v7           #mFolderInfo:Lcom/lx/launcher8/bean/FolderCell;
    :pswitch_4
    const-string v13, "extral_value"

    const/4 v14, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 457
    .local v5, color:I
    const/4 v13, -0x1

    if-eq v5, v13, :cond_2

    .line 458
    move-object/from16 v0, p0

    iput v5, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mBgColor:I

    .line 460
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mBgColor:I

    iput v14, v13, Lcom/lx/launcher8/bean/FolderCell;->backColor:I

    .line 461
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFCellView:Lcom/lx/launcher8/view/FolderCellView;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mBgColor:I

    invoke-virtual {v13, v14}, Lcom/lx/launcher8/view/FolderCellView;->setBackgroundColor(I)V

    .line 462
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFCellView:Lcom/lx/launcher8/view/FolderCellView;

    invoke-virtual {v13}, Lcom/lx/launcher8/view/FolderCellView;->onStart()V

    .line 463
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellColor:Lcom/lx/launcher8/view/SettingLinearLayout;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mBgColor:I

    invoke-virtual {v13, v14}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    goto/16 :goto_0

    .line 466
    .end local v5           #color:I
    :pswitch_5
    const-string v13, "extral_value"

    const/16 v14, 0x64

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 467
    .local v1, alpha:I
    const-string v13, "extral_value1"

    const/16 v14, 0x64

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 468
    .local v2, alphaFG:I
    const-string v13, "extral_value2"

    const/16 v14, 0x64

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 469
    .local v3, alphaTX:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellTransparent:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v14, Ljava/lang/StringBuilder;

    const v15, 0x7f0a0166

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "% "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f0a0167

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 470
    mul-int/lit16 v13, v1, 0xff

    div-int/lit8 v13, v13, 0x64

    rsub-int v1, v13, 0xff

    .line 471
    mul-int/lit16 v13, v2, 0xff

    div-int/lit8 v13, v13, 0x64

    rsub-int v2, v13, 0xff

    .line 472
    mul-int/lit16 v13, v3, 0xff

    div-int/lit8 v3, v13, 0x64

    .line 473
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v13, v1}, Lcom/lx/launcher8/bean/FolderCell;->setCellAlphaBg(I)V

    .line 474
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v13, v2}, Lcom/lx/launcher8/bean/FolderCell;->setCellAlphaFg(I)V

    .line 475
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v13, v3}, Lcom/lx/launcher8/bean/FolderCell;->setTextAlpha(I)V

    .line 476
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFCellView:Lcom/lx/launcher8/view/FolderCellView;

    invoke-virtual {v13, v2}, Lcom/lx/launcher8/view/FolderCellView;->setGlobalFGAlpha(I)V

    .line 477
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFCellView:Lcom/lx/launcher8/view/FolderCellView;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mBgColor:I

    invoke-virtual {v13, v14}, Lcom/lx/launcher8/view/FolderCellView;->setBackgroundColor(I)V

    .line 478
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFCellView:Lcom/lx/launcher8/view/FolderCellView;

    invoke-virtual {v13, v3}, Lcom/lx/launcher8/view/FolderCellView;->setTextAlpha(I)V

    goto/16 :goto_0

    .line 482
    .end local v1           #alpha:I
    .end local v2           #alphaFG:I
    .end local v3           #alphaTX:I
    :pswitch_6
    const-string v13, "return-data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 483
    .local v4, bt:Landroid/graphics/Bitmap;
    if-nez v4, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    invoke-static {v13}, Lcom/lx/launcher8/util/Utils;->getIntentExtra(Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 484
    :cond_3
    if-eqz v4, :cond_4

    .line 485
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    iput-object v4, v13, Lcom/lx/launcher8/bean/FolderCell;->icon:Landroid/graphics/Bitmap;

    .line 486
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    const/4 v14, 0x0

    iput v14, v13, Lcom/lx/launcher8/bean/FolderCell;->iconType:I

    .line 493
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFCellView:Lcom/lx/launcher8/view/FolderCellView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v13, v14}, Lcom/lx/launcher8/view/FolderCellView;->onConfigChange(Lcom/lx/launcher8/bean/ItemCell;)V

    goto/16 :goto_0

    .line 488
    :cond_4
    const-string v13, "extral_info"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 489
    .local v8, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    iput-object v8, v13, Lcom/lx/launcher8/bean/FolderCell;->iconPath:Ljava/lang/String;

    .line 490
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    iput-object v14, v13, Lcom/lx/launcher8/bean/FolderCell;->icon:Landroid/graphics/Bitmap;

    .line 491
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    const/4 v14, 0x1

    iput v14, v13, Lcom/lx/launcher8/bean/FolderCell;->iconType:I

    goto :goto_2

    .line 496
    .end local v4           #bt:Landroid/graphics/Bitmap;
    .end local v8           #path:Ljava/lang/String;
    :pswitch_7
    const-string v13, "extral_value"

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 497
    .local v9, popup:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->folderset:[I

    const/4 v14, 0x2

    aput v9, v13, v14

    .line 498
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->folderset:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    if-nez v13, :cond_5

    .line 499
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFolderDisplay:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v14, 0x7f0a01e9

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    .line 503
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->folderset:[I

    invoke-virtual {v13, v14}, Lcom/lx/launcher8/bean/FolderCell;->setFolderSettings([I)V

    goto/16 :goto_0

    .line 501
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFolderDisplay:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v14, 0x7f0a01ea

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    goto :goto_3

    .line 424
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, -0x2

    const/4 v3, -0x1

    .line 80
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v1, 0x7f030065

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/FolderSettingAct;->setContentView(I)V

    .line 82
    const v1, 0x7f090006

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/FolderSettingAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFirstTitle:Landroid/widget/TextView;

    .line 83
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFirstTitle:Landroid/widget/TextView;

    const v2, 0x7f0a01db

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFirstTitle:Landroid/widget/TextView;

    new-instance v2, Lcom/lx/launcher8/setting/FolderSettingAct$4;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/FolderSettingAct$4;-><init>(Lcom/lx/launcher8/setting/FolderSettingAct;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v1, 0x7f090190

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/FolderSettingAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mRoot:Landroid/widget/LinearLayout;

    .line 94
    invoke-direct {p0}, Lcom/lx/launcher8/setting/FolderSettingAct;->createView()V

    .line 95
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 96
    .local v0, ll:Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 97
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mRootView:Landroid/view/View;

    const/high16 v2, 0x3f80

    invoke-static {v3, v4, v2}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    invoke-direct {p0}, Lcom/lx/launcher8/setting/FolderSettingAct;->createBottom()Landroid/view/View;

    move-result-object v1

    invoke-static {v3, v4}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mRoot:Landroid/widget/LinearLayout;

    invoke-static {v3, v3}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 547
    const/4 v6, 0x4

    if-ne p1, v6, :cond_2

    .line 548
    iget-object v6, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->cellInfoString:Ljava/lang/String;

    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v7}, Lcom/lx/launcher8/bean/FolderCell;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget-object v6, v6, Lcom/lx/launcher8/bean/FolderCell;->title:Ljava/lang/String;

    iget-object v7, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFolderName:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v7}, Lcom/lx/launcher8/view/SettingLinearLayout;->getEditText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 549
    :cond_0
    new-instance v2, Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    const v6, 0x7f0e0005

    invoke-direct {v2, p0, v6}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;-><init>(Landroid/content/Context;I)V

    .line 550
    .local v2, dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;
    new-instance v6, Lcom/lx/launcher8/setting/FolderSettingAct$6;

    invoke-direct {v6, p0, v2}, Lcom/lx/launcher8/setting/FolderSettingAct$6;-><init>(Lcom/lx/launcher8/setting/FolderSettingAct;Lcom/lx/launcher8/setting/view/DialogSaveTheme;)V

    invoke-virtual {v2, v6}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    const v6, 0x7f0a01c4

    invoke-virtual {p0, v6}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 569
    .local v4, title:Ljava/lang/String;
    const v6, 0x7f0a0134

    invoke-virtual {p0, v6}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, about:Ljava/lang/String;
    const v6, 0x7f0a0077

    invoke-virtual {p0, v6}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 571
    .local v3, ok:Ljava/lang/String;
    const v6, 0x7f0a0078

    invoke-virtual {p0, v6}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 572
    .local v1, cancel:Ljava/lang/String;
    invoke-virtual {v2, v4, v0, v3, v1}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->createWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->show()V

    .line 580
    .end local v0           #about:Ljava/lang/String;
    .end local v1           #cancel:Ljava/lang/String;
    .end local v2           #dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;
    .end local v3           #ok:Ljava/lang/String;
    .end local v4           #title:Ljava/lang/String;
    :goto_0
    return v5

    .line 575
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/lx/launcher8/setting/FolderSettingAct;->setResult(I)V

    .line 576
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/FolderSettingAct;->finish()V

    goto :goto_0

    .line 580
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/NoSearchAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 418
    invoke-super {p0}, Lcom/lx/launcher8/NoSearchAct;->onResume()V

    .line 419
    return-void
.end method

.method protected onSeekChange(Lcom/lx/launcher8/view/SeekButton;Z)V
    .locals 4
    .parameter "v"
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 516
    invoke-virtual {p1}, Lcom/lx/launcher8/view/SeekButton;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 543
    :goto_0
    return-void

    .line 518
    :sswitch_0
    iget-object v3, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->folderset:[I

    if-eqz p2, :cond_0

    move v0, v1

    :goto_1
    aput v0, v3, v2

    .line 519
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget-object v3, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->folderset:[I

    invoke-virtual {v0, v3}, Lcom/lx/launcher8/bean/FolderCell;->setFolderSettings([I)V

    .line 520
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->folderset:[I

    aget v0, v0, v2

    if-ne v0, v1, :cond_1

    .line 521
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFolderAnimation:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFCellView:Lcom/lx/launcher8/view/FolderCellView;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/FolderCellView;->styleChanged()V

    goto :goto_0

    :cond_0
    move v0, v2

    .line 518
    goto :goto_1

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFolderAnimation:Lcom/lx/launcher8/view/SettingLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFCellView:Lcom/lx/launcher8/view/FolderCellView;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/FolderCellView;->onStop()V

    .line 526
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFCellView:Lcom/lx/launcher8/view/FolderCellView;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/FolderCellView;->styleChanged()V

    goto :goto_0

    .line 531
    :sswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->folderset:[I

    if-eqz p2, :cond_2

    move v2, v1

    :cond_2
    aput v2, v0, v1

    .line 532
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget-object v2, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->folderset:[I

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/bean/FolderCell;->setFolderSettings([I)V

    .line 533
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->folderset:[I

    aget v0, v0, v1

    if-ne v0, v1, :cond_3

    .line 534
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFCellView:Lcom/lx/launcher8/view/FolderCellView;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/FolderCellView;->styleChanged()V

    .line 535
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFCellView:Lcom/lx/launcher8/view/FolderCellView;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/FolderCellView;->onStart()V

    goto :goto_0

    .line 537
    :cond_3
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFCellView:Lcom/lx/launcher8/view/FolderCellView;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/FolderCellView;->onStop()V

    .line 538
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct;->mFCellView:Lcom/lx/launcher8/view/FolderCellView;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/FolderCellView;->styleChanged()V

    goto :goto_0

    .line 516
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_1
    .end sparse-switch
.end method
