.class public Lcom/lx/launcher8/setting/wp8/ThemePickAct;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.source "ThemePickAct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/ThemePickAct$ThemeAdapater;
    }
.end annotation


# instance fields
.field private adapter:Lcom/lx/launcher8/setting/wp8/ThemePickAct$ThemeAdapater;

.field private gapL:I

.field private gapS:I

.field private h:I

.field private mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mThemeHelper:Lcom/lx/launcher8/db/ThemeHelper;

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->mContext:Landroid/content/Context;

    .line 42
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->adapter:Lcom/lx/launcher8/setting/wp8/ThemePickAct$ThemeAdapater;

    .line 159
    new-instance v0, Lcom/lx/launcher8/setting/wp8/ThemePickAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/ThemePickAct$1;-><init>(Lcom/lx/launcher8/setting/wp8/ThemePickAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->mHandler:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/ThemePickAct;)Lcom/lx/launcher8/util/BitmapManager;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/ThemePickAct;)Lcom/lx/launcher8/db/ThemeHelper;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->mThemeHelper:Lcom/lx/launcher8/db/ThemeHelper;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/ThemePickAct;)I
    .locals 1
    .parameter

    .prologue
    .line 188
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->w:I

    return v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/wp8/ThemePickAct;)I
    .locals 1
    .parameter

    .prologue
    .line 189
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->h:I

    return v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/setting/wp8/ThemePickAct;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/setting/wp8/ThemePickAct;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lx/launcher8/setting/wp8/ThemePickAct;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->saveTheme(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/lx/launcher8/setting/wp8/ThemePickAct;)Lcom/lx/launcher8/setting/wp8/ThemePickAct$ThemeAdapater;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->adapter:Lcom/lx/launcher8/setting/wp8/ThemePickAct$ThemeAdapater;

    return-object v0
.end method

.method private createGrid(I)Landroid/widget/GridView;
    .locals 7
    .parameter "column"

    .prologue
    .line 192
    const/high16 v3, 0x4080

    invoke-static {p0, v3}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->gapS:I

    .line 193
    const/high16 v3, 0x4140

    invoke-static {p0, v3}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->gapL:I

    .line 194
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 195
    .local v2, width:I
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 196
    .local v0, height:I
    iget v3, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->gapL:I

    add-int/lit8 v4, p1, 0x1

    mul-int/2addr v3, v4

    sub-int v3, v2, v3

    div-int/2addr v3, p1

    iput v3, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->w:I

    .line 197
    iget v3, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->w:I

    mul-int/2addr v3, v0

    div-int/2addr v3, v2

    iput v3, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->h:I

    .line 198
    new-instance v1, Landroid/widget/GridView;

    invoke-direct {v1, p0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 199
    .local v1, view:Landroid/widget/GridView;
    invoke-virtual {v1, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 200
    iget v3, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->gapL:I

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 201
    iget v3, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->gapL:I

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 202
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 203
    iget v3, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->gapL:I

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->gapL:I

    iget v5, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->gapL:I

    iget v6, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->gapL:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 204
    const/high16 v3, 0x200

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setScrollBarStyle(I)V

    .line 205
    return-object v1
.end method

.method private saveTheme(Ljava/lang/String;)V
    .locals 4
    .parameter "name"

    .prologue
    .line 142
    const v2, 0x7f0a0194

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a0119

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 143
    .local v1, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/AnallApp;

    invoke-virtual {v2}, Lcom/lx/launcher8/AnallApp;->compoundCellScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 144
    .local v0, bt:Landroid/graphics/Bitmap;
    new-instance v2, Lcom/lx/launcher8/setting/wp8/ThemePickAct$4;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/lx/launcher8/setting/wp8/ThemePickAct$4;-><init>(Lcom/lx/launcher8/setting/wp8/ThemePickAct;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/ProgressDialog;)V

    .line 156
    invoke-virtual {v2}, Lcom/lx/launcher8/setting/wp8/ThemePickAct$4;->start()V

    .line 157
    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    const/16 v6, 0x14

    .line 47
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->getSecondBgColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 48
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->getSecondBgColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setBackgroundColor(I)V

    .line 50
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->mTitleBar:Landroid/widget/TextView;

    const v5, 0x7f0a0008

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-static {}, Lcom/lx/launcher8/util/BitmapManager;->getInstance()Lcom/lx/launcher8/util/BitmapManager;

    move-result-object v4

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

    .line 54
    iput-object p0, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->mContext:Landroid/content/Context;

    .line 55
    new-instance v4, Lcom/lx/launcher8/db/ThemeHelper;

    invoke-direct {v4}, Lcom/lx/launcher8/db/ThemeHelper;-><init>()V

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->mThemeHelper:Lcom/lx/launcher8/db/ThemeHelper;

    .line 56
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->createGrid(I)Landroid/widget/GridView;

    move-result-object v3

    .line 57
    .local v3, view:Landroid/widget/GridView;
    new-instance v4, Lcom/lx/launcher8/setting/wp8/ThemePickAct$ThemeAdapater;

    invoke-direct {v4, p0, p0}, Lcom/lx/launcher8/setting/wp8/ThemePickAct$ThemeAdapater;-><init>(Lcom/lx/launcher8/setting/wp8/ThemePickAct;Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->adapter:Lcom/lx/launcher8/setting/wp8/ThemePickAct$ThemeAdapater;

    .line 58
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->adapter:Lcom/lx/launcher8/setting/wp8/ThemePickAct$ThemeAdapater;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 61
    .local v2, save:Landroid/widget/Button;
    const v4, 0x7f0a0194

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const/high16 v4, 0x4190

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextSize(F)V

    .line 63
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 64
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->getSelectorButton()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 65
    new-instance v4, Lcom/lx/launcher8/setting/wp8/ThemePickAct$2;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/setting/wp8/ThemePickAct$2;-><init>(Lcom/lx/launcher8/setting/wp8/ThemePickAct;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 113
    .local v0, ll:Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 114
    const/high16 v4, 0x3f80

    invoke-static {v8, v7, v4}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    invoke-static {v8, v7}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 116
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x0

    invoke-virtual {v1, v6, v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 117
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    const v4, 0x7f0a0013

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 120
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onPause()V

    .line 138
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

    invoke-virtual {v0}, Lcom/lx/launcher8/util/BitmapManager;->clearCache()V

    .line 139
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onResume()V

    .line 125
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/ThemePickAct$3;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/ThemePickAct$3;-><init>(Lcom/lx/launcher8/setting/wp8/ThemePickAct;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    return-void
.end method
