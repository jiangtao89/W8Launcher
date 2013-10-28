.class public Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;
.super Ljava/lang/Object;
.source "ThemeLocalView.java"

# interfaces
.implements Lcom/lx/launcher8/setting/view/SettingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;,
        Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ViewHolder;
    }
.end annotation


# instance fields
.field private gapL:I

.field private h:I

.field private mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

.field private mAdapater:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;

.field private mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

.field private mHandler:Landroid/os/Handler;

.field private mMainView:Landroid/view/View;

.field private mThemeHelper:Lcom/lx/launcher8/db/ThemeHelper;

.field private w:I


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/setting/wp8/ThemeMainAct;)V
    .locals 1
    .parameter "act"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mHandler:Landroid/os/Handler;

    .line 50
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    .line 51
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->createView()V

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;)Lcom/lx/launcher8/util/BitmapManager;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;)Lcom/lx/launcher8/setting/wp8/ThemeMainAct;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;)Lcom/lx/launcher8/db/ThemeHelper;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mThemeHelper:Lcom/lx/launcher8/db/ThemeHelper;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;)I
    .locals 1
    .parameter

    .prologue
    .line 103
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->w:I

    return v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;)I
    .locals 1
    .parameter

    .prologue
    .line 104
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->h:I

    return v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->saveTheme(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;)Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mAdapater:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;

    return-object v0
.end method

.method private createGrid(I)Landroid/widget/GridView;
    .locals 7
    .parameter "column"

    .prologue
    .line 106
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    const/high16 v4, 0x4140

    invoke-static {v3, v4}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->gapL:I

    .line 107
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    invoke-virtual {v3}, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 108
    .local v2, width:I
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    invoke-virtual {v3}, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 109
    .local v0, height:I
    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->gapL:I

    add-int/lit8 v4, p1, 0x1

    mul-int/2addr v3, v4

    sub-int v3, v2, v3

    div-int/2addr v3, p1

    iput v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->w:I

    .line 110
    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->w:I

    mul-int/2addr v3, v0

    div-int/2addr v3, v2

    iput v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->h:I

    .line 111
    new-instance v1, Landroid/widget/GridView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    invoke-direct {v1, v3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 112
    .local v1, view:Landroid/widget/GridView;
    invoke-virtual {v1, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 113
    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->gapL:I

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 114
    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->gapL:I

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 115
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 116
    iget v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->gapL:I

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->gapL:I

    iget v5, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->gapL:I

    iget v6, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->gapL:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 117
    const/high16 v3, 0x200

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setScrollBarStyle(I)V

    .line 118
    return-object v1
.end method

.method private createView()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    const/16 v6, 0x14

    .line 55
    invoke-static {}, Lcom/lx/launcher8/util/BitmapManager;->getInstance()Lcom/lx/launcher8/util/BitmapManager;

    move-result-object v4

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

    .line 57
    new-instance v4, Lcom/lx/launcher8/db/ThemeHelper;

    invoke-direct {v4}, Lcom/lx/launcher8/db/ThemeHelper;-><init>()V

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mThemeHelper:Lcom/lx/launcher8/db/ThemeHelper;

    .line 58
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->createGrid(I)Landroid/widget/GridView;

    move-result-object v3

    .line 59
    .local v3, view:Landroid/widget/GridView;
    new-instance v4, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    invoke-direct {v4, p0, v5}, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;-><init>(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mAdapater:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;

    .line 60
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mAdapater:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    new-instance v2, Landroid/widget/Button;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    invoke-direct {v2, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 63
    .local v2, save:Landroid/widget/Button;
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    const v5, 0x7f0a0194

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const/high16 v4, 0x4190

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextSize(F)V

    .line 65
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    invoke-virtual {v4}, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 66
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    invoke-virtual {v4}, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->getSelectorButton()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 67
    new-instance v4, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$2;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$2;-><init>(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, ll:Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 94
    const/high16 v4, 0x3f80

    invoke-static {v8, v7, v4}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    invoke-static {v8, v7}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 96
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x0

    invoke-virtual {v1, v6, v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 97
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mMainView:Landroid/view/View;

    .line 100
    return-void
.end method

.method private saveTheme(Ljava/lang/String;)V
    .locals 6
    .parameter "name"

    .prologue
    .line 162
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    const v4, 0x7f0a0194

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    const v5, 0x7f0a0119

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 163
    .local v1, dialog:Landroid/app/ProgressDialog;
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/AnallApp;

    invoke-virtual {v2}, Lcom/lx/launcher8/AnallApp;->compoundCellScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 164
    .local v0, bt:Landroid/graphics/Bitmap;
    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$4;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$4;-><init>(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/ProgressDialog;)V

    .line 176
    invoke-virtual {v2}, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$4;->start()V

    .line 177
    return-void
.end method


# virtual methods
.method public getBottomBtns()[Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->reloadThemes()V

    .line 123
    return-void
.end method

.method public onViewMovingFront()V
    .locals 0

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->reloadThemes()V

    .line 159
    return-void
.end method

.method protected reloadThemes()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$3;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$3;-><init>(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    return-void
.end method
