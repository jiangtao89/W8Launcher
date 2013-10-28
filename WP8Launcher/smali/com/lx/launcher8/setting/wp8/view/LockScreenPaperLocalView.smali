.class public Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;
.super Ljava/lang/Object;
.source "LockScreenPaperLocalView.java"

# interfaces
.implements Lcom/lx/launcher8/setting/view/SettingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;
    }
.end annotation


# static fields
.field private static final REQUEST_PICK_IMAGE:I = 0x18

.field private static final REQUEST_SAVE_IMAGE:I = 0x19

.field private static final REQUEST_SELECT_IMAGE:I = 0x19


# instance fields
.field private adapter:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;

.field private bottomBtns:[Landroid/widget/LinearLayout;

.field private gapL:I

.field private gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

.field private h:I

.field private mAct:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

.field private mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

.field private mContext:Landroid/content/Context;

.field private mLockSet:Lcom/anall/screenlock/provider/LockSetting;

.field private mMainView:Landroid/view/View;

.field private mPaperType:I

.field private paperList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/setting/bean/PaperInfo;",
            ">;"
        }
    .end annotation
.end field

.field private screenHeight:I

.field private screenWidth:I

.field private selectedPaperPath:Ljava/lang/String;

.field private w:I


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;I)V
    .locals 5
    .parameter "act"
    .parameter "paperType"

    .prologue
    const/4 v4, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;

    .line 71
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mAct:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    .line 72
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;

    .line 73
    iput p2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mPaperType:I

    .line 75
    invoke-static {}, Lcom/lx/launcher8/util/BitmapManager;->getInstance()Lcom/lx/launcher8/util/BitmapManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

    .line 76
    new-instance v1, Lcom/anall/screenlock/provider/LockSetting;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/anall/screenlock/provider/LockSetting;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    .line 78
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 79
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->screenWidth:I

    .line 80
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->screenHeight:I

    .line 82
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mMainView:Landroid/view/View;

    .line 84
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->bottomBtns:[Landroid/widget/LinearLayout;

    .line 85
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->bottomBtns:[Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mAct:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    const v3, 0x7f0a00b0

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {p1, v2, v3}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->createBottomBtn(Ljava/lang/String;[I)Landroid/widget/LinearLayout;

    move-result-object v2

    aput-object v2, v1, v4

    .line 87
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->bottomBtns:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v4

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$1;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void

    .line 85
    nop

    :array_0
    .array-data 0x4
        0x4ft 0x1t 0x2t 0x7ft
        0x52t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)Lcom/lx/launcher8/util/BitmapManager;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->selectedPaperPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)I
    .locals 1
    .parameter

    .prologue
    .line 68
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->screenWidth:I

    return v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)I
    .locals 1
    .parameter

    .prologue
    .line 68
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->screenHeight:I

    return v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)I
    .locals 1
    .parameter

    .prologue
    .line 137
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->w:I

    return v0
.end method

.method static synthetic access$7(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)I
    .locals 1
    .parameter

    .prologue
    .line 138
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->h:I

    return v0
.end method

.method static synthetic access$8(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mAct:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)I
    .locals 1
    .parameter

    .prologue
    .line 64
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mPaperType:I

    return v0
.end method

.method private createGrid(I)Lcom/lx/launcher8/view/PullToRefreshGridView;
    .locals 7
    .parameter "column"

    .prologue
    const/4 v6, 0x0

    .line 141
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;

    const/high16 v3, 0x4140

    invoke-static {v2, v3}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->gapL:I

    .line 142
    iget v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->screenWidth:I

    .line 143
    .local v1, width:I
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mPaperType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 144
    add-int/lit8 p1, p1, -0x1

    .line 145
    mul-int/lit8 v1, v1, 0x2

    .line 147
    :cond_0
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->screenWidth:I

    int-to-double v2, v2

    const-wide v4, 0x3feccccccccccccdL

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->gapL:I

    add-int/lit8 v5, p1, 0x1

    mul-int/2addr v4, v5

    int-to-double v4, v4

    sub-double/2addr v2, v4

    int-to-double v4, p1

    div-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->w:I

    .line 148
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->screenHeight:I

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->w:I

    mul-int/2addr v2, v3

    div-int/2addr v2, v1

    iput v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->h:I

    .line 149
    new-instance v0, Lcom/lx/launcher8/view/PullToRefreshGridView;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/lx/launcher8/view/PullToRefreshGridView;-><init>(Landroid/content/Context;)V

    .line 150
    .local v0, view:Lcom/lx/launcher8/view/PullToRefreshGridView;
    invoke-virtual {v0, p1}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setNumColumns(I)V

    .line 151
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->gapL:I

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setHorizontalSpacing(I)V

    .line 152
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->gapL:I

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setVerticalSpacing(I)V

    .line 153
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setStretchMode(I)V

    .line 154
    invoke-virtual {v0, v6}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setFadingEdgeLength(I)V

    .line 155
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->gapL:I

    mul-int/lit8 v2, v2, 0x3

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->gapL:I

    mul-int/lit8 v3, v3, 0x3

    invoke-virtual {v0, v2, v6, v3, v6}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setPadding(IIII)V

    .line 156
    const/high16 v2, 0x200

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setScrollBarStyle(I)V

    .line 157
    return-object v0
.end method

.method private createView()Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 113
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->createGrid(I)Lcom/lx/launcher8/view/PullToRefreshGridView;

    move-result-object v3

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    .line 114
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    sget-object v4, Lcom/lx/launcher8/view/PullToRefreshBase$Mode;->DISABLED:Lcom/lx/launcher8/view/PullToRefreshBase$Mode;

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setMode(Lcom/lx/launcher8/view/PullToRefreshBase$Mode;)V

    .line 115
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->loadPaperList()V

    .line 116
    new-instance v3, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;-><init>(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;)V

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->adapter:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;

    .line 117
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->adapter:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/view/PullToRefreshGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 120
    .local v2, tv:Landroid/widget/TextView;
    const/high16 v3, 0x4248

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 121
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mAct:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget v3, v3, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mTitleColorValue:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;

    const/high16 v4, 0x4120

    invoke-static {v3, v4}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v3

    float-to-int v1, v3

    .line 123
    .local v1, padding:I
    invoke-virtual {v2, v1, v7, v1, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 124
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mAct:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    const v4, 0x7f0a00f0

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 127
    .local v0, ll:Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 128
    invoke-static {v6, v5}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->gridView:Lcom/lx/launcher8/view/PullToRefreshGridView;

    const/high16 v4, 0x3f80

    invoke-static {v6, v5, v4}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    return-object v0
.end method

.method private initSelectPath()V
    .locals 2

    .prologue
    .line 206
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mPaperType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 207
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v0}, Lcom/anall/screenlock/provider/LockSetting;->getThemeLockBg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->selectedPaperPath:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->selectedPaperPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 209
    const-string v0, "none"

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->selectedPaperPath:Ljava/lang/String;

    .line 210
    :cond_0
    const-string v0, "none"

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->selectedPaperPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    sget-object v0, Lcom/lx/launcher8/util/Utils;->DEFAULT_LOCKSCREEN_PAPER:Ljava/lang/String;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->selectedPaperPath:Ljava/lang/String;

    .line 217
    :cond_1
    :goto_0
    return-void

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v0}, Lcom/anall/screenlock/provider/LockSetting;->getPaperBg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->selectedPaperPath:Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->selectedPaperPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 215
    const-string v0, "none"

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->selectedPaperPath:Ljava/lang/String;

    goto :goto_0
.end method

.method private loadPaperList()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 163
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 165
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;

    iget v5, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mPaperType:I

    invoke-static {v5}, Lcom/lx/launcher8/util/CachePathUtil;->getDownloadPaperInfo(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 166
    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mPaperType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 168
    :try_start_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "lockscreen"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, paths:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v1, v4, :cond_2

    .line 180
    .end local v1           #i:I
    .end local v2           #paths:[Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "lockbg"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 181
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v4}, Lcom/anall/screenlock/provider/LockSetting;->getThemeLockBg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 182
    new-instance v3, Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-direct {v3}, Lcom/lx/launcher8/setting/bean/PaperInfo;-><init>()V

    .line 183
    .local v3, pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    invoke-virtual {v3, v8}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setRid(I)V

    .line 184
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setTitle(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setPreUrl(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setActUrl(Ljava/lang/String;)V

    .line 187
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 188
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 189
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/lx/launcher8/util/BitmapManager;->addCacheBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 190
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    .end local v0           #file:Ljava/io/File;
    .end local v3           #pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    :cond_1
    return-void

    .line 170
    .restart local v1       #i:I
    .restart local v2       #paths:[Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v3, Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-direct {v3}, Lcom/lx/launcher8/setting/bean/PaperInfo;-><init>()V

    .line 171
    .restart local v3       #pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    rsub-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setRid(I)V

    .line 172
    aget-object v4, v2, v1

    const/4 v5, 0x0

    aget-object v6, v2, v1

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setTitle(Ljava/lang/String;)V

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lockscreen"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setPreUrl(Ljava/lang/String;)V

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lockscreen"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setActUrl(Ljava/lang/String;)V

    .line 175
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 177
    .end local v1           #i:I
    .end local v2           #paths:[Ljava/lang/String;
    .end local v3           #pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    :catch_0
    move-exception v4

    goto/16 :goto_1
.end method


# virtual methods
.method public getBottomBtns()[Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->bottomBtns:[Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v8, 0x19

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v4, 0x1

    .line 221
    const/16 v6, 0x18

    if-ne p1, v6, :cond_1

    if-ne p2, v7, :cond_1

    if-eqz p3, :cond_1

    .line 222
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 223
    .local v3, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;

    const-class v6, Lcom/lx/launcher8/crop/CropImage;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "aspectX"

    iget v6, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->screenWidth:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    const-string v5, "aspectY"

    iget v6, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->screenHeight:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    const-string v5, "noFaceDetection"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 227
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 228
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "lockbg"

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 229
    .local v0, file:Ljava/io/File;
    const-string v5, "output"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 230
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mAct:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    invoke-virtual {v5, v1, v8}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->startActivityForResult(Landroid/content/Intent;I)V

    .line 268
    .end local v0           #file:Ljava/io/File;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return v4

    .line 232
    :cond_1
    if-ne p1, v8, :cond_3

    if-ne p2, v7, :cond_3

    if-eqz p3, :cond_3

    .line 233
    new-instance v0, Ljava/io/File;

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "lockbg"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 234
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 235
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/anall/screenlock/provider/LockSetting;->setThemeLockBg(Ljava/lang/String;)V

    .line 236
    new-instance v2, Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-direct {v2}, Lcom/lx/launcher8/setting/bean/PaperInfo;-><init>()V

    .line 237
    .local v2, pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    invoke-virtual {v2, v5}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setRid(I)V

    .line 238
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setTitle(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setPreUrl(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setActUrl(Ljava/lang/String;)V

    .line 241
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 242
    :cond_2
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/lx/launcher8/util/BitmapManager;->addCacheBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 243
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->adapter:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .end local v0           #file:Ljava/io/File;
    .end local v2           #pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    :cond_3
    move v4, v5

    .line 268
    goto :goto_0
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->initSelectPath()V

    .line 200
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->loadPaperList()V

    .line 201
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->adapter:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView;->adapter:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->notifyDataSetChanged()V

    .line 203
    :cond_0
    return-void
.end method

.method public onViewMovingFront()V
    .locals 0

    .prologue
    .line 287
    return-void
.end method
