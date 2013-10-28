.class public Lcom/lx/launcher8/setting/ThemePickAct;
.super Lcom/lx/launcher8/NoSearchAct;
.source "ThemePickAct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater;
    }
.end annotation


# instance fields
.field private adapter:Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater;

.field private gapL:I

.field private gapS:I

.field private h:I

.field private mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

.field private mContext:Landroid/content/Context;

.field private mFirstTitle:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mRootView:Landroid/widget/LinearLayout;

.field private mThemeHelper:Lcom/lx/launcher8/db/ThemeHelper;

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/lx/launcher8/setting/ThemePickAct;->mContext:Landroid/content/Context;

    .line 47
    iput-object v0, p0, Lcom/lx/launcher8/setting/ThemePickAct;->adapter:Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater;

    .line 180
    new-instance v0, Lcom/lx/launcher8/setting/ThemePickAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/ThemePickAct$1;-><init>(Lcom/lx/launcher8/setting/ThemePickAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/ThemePickAct;->mHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/ThemePickAct;)Lcom/lx/launcher8/util/BitmapManager;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemePickAct;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/ThemePickAct;)Lcom/lx/launcher8/db/ThemeHelper;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemePickAct;->mThemeHelper:Lcom/lx/launcher8/db/ThemeHelper;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/ThemePickAct;)I
    .locals 1
    .parameter

    .prologue
    .line 211
    iget v0, p0, Lcom/lx/launcher8/setting/ThemePickAct;->w:I

    return v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/ThemePickAct;)I
    .locals 1
    .parameter

    .prologue
    .line 212
    iget v0, p0, Lcom/lx/launcher8/setting/ThemePickAct;->h:I

    return v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/setting/ThemePickAct;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemePickAct;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/setting/ThemePickAct;)Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemePickAct;->adapter:Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lx/launcher8/setting/ThemePickAct;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemePickAct;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lx/launcher8/setting/ThemePickAct;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/ThemePickAct;->saveTheme(Ljava/lang/String;)V

    return-void
.end method

.method private createGrid(I)Landroid/widget/GridView;
    .locals 7
    .parameter "column"

    .prologue
    .line 215
    const/high16 v3, 0x4000

    invoke-static {p0, v3}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/lx/launcher8/setting/ThemePickAct;->gapS:I

    .line 216
    const/high16 v3, 0x4140

    invoke-static {p0, v3}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/lx/launcher8/setting/ThemePickAct;->gapL:I

    .line 217
    iget-object v3, p0, Lcom/lx/launcher8/setting/ThemePickAct;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 218
    .local v2, width:I
    iget-object v3, p0, Lcom/lx/launcher8/setting/ThemePickAct;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 219
    .local v0, height:I
    iget v3, p0, Lcom/lx/launcher8/setting/ThemePickAct;->gapL:I

    add-int/lit8 v4, p1, 0x1

    mul-int/2addr v3, v4

    sub-int v3, v2, v3

    div-int/2addr v3, p1

    iput v3, p0, Lcom/lx/launcher8/setting/ThemePickAct;->w:I

    .line 220
    iget v3, p0, Lcom/lx/launcher8/setting/ThemePickAct;->w:I

    mul-int/2addr v3, v0

    div-int/2addr v3, v2

    iput v3, p0, Lcom/lx/launcher8/setting/ThemePickAct;->h:I

    .line 221
    new-instance v1, Landroid/widget/GridView;

    invoke-direct {v1, p0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 222
    .local v1, view:Landroid/widget/GridView;
    invoke-virtual {v1, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 223
    iget v3, p0, Lcom/lx/launcher8/setting/ThemePickAct;->gapL:I

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 224
    iget v3, p0, Lcom/lx/launcher8/setting/ThemePickAct;->gapL:I

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 225
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 226
    iget v3, p0, Lcom/lx/launcher8/setting/ThemePickAct;->gapL:I

    iget v4, p0, Lcom/lx/launcher8/setting/ThemePickAct;->gapL:I

    iget v5, p0, Lcom/lx/launcher8/setting/ThemePickAct;->gapL:I

    iget v6, p0, Lcom/lx/launcher8/setting/ThemePickAct;->gapL:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 227
    const/high16 v3, 0x200

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setScrollBarStyle(I)V

    .line 228
    return-object v1
.end method

.method private createView()Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0xf

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 102
    new-instance v4, Lcom/lx/launcher8/db/ThemeHelper;

    invoke-direct {v4}, Lcom/lx/launcher8/db/ThemeHelper;-><init>()V

    iput-object v4, p0, Lcom/lx/launcher8/setting/ThemePickAct;->mThemeHelper:Lcom/lx/launcher8/db/ThemeHelper;

    .line 105
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/lx/launcher8/setting/ThemePickAct;->createGrid(I)Landroid/widget/GridView;

    move-result-object v3

    .line 106
    .local v3, view:Landroid/widget/GridView;
    new-instance v4, Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater;

    invoke-direct {v4, p0, p0}, Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater;-><init>(Lcom/lx/launcher8/setting/ThemePickAct;Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/lx/launcher8/setting/ThemePickAct;->adapter:Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater;

    .line 107
    iget-object v4, p0, Lcom/lx/launcher8/setting/ThemePickAct;->adapter:Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 110
    .local v2, save:Landroid/widget/Button;
    const v4, 0x7f0a0194

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/ThemePickAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const/high16 v4, 0x4180

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextSize(F)V

    .line 112
    const/high16 v4, -0x100

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 113
    const v4, 0x7f0200ac

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 114
    invoke-virtual {v2, v7, v8, v7, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 115
    new-instance v4, Lcom/lx/launcher8/setting/ThemePickAct$4;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/setting/ThemePickAct$4;-><init>(Lcom/lx/launcher8/setting/ThemePickAct;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/lx/launcher8/setting/ThemePickAct;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 151
    .local v0, ll:Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 152
    const/high16 v4, 0x3f80

    invoke-static {v6, v5, v4}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    invoke-static {v6, v5}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 154
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    return-object v0
.end method

.method private saveTheme(Ljava/lang/String;)V
    .locals 6
    .parameter "name"

    .prologue
    .line 160
    new-instance v2, Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    iget-object v3, p0, Lcom/lx/launcher8/setting/ThemePickAct;->mContext:Landroid/content/Context;

    const v4, 0x7f0e0005

    invoke-direct {v2, v3, v4}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;-><init>(Landroid/content/Context;I)V

    .line 161
    .local v2, dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/lx/launcher8/setting/ThemePickAct;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0194

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/setting/ThemePickAct;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0119

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, content:Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->createProgress(Ljava/lang/String;)Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->show()V

    .line 163
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/ThemePickAct;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/lx/launcher8/AnallApp;

    invoke-virtual {v3}, Lcom/lx/launcher8/AnallApp;->compoundCellScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 164
    .local v0, bt:Landroid/graphics/Bitmap;
    new-instance v3, Lcom/lx/launcher8/setting/ThemePickAct$5;

    invoke-direct {v3, p0, p1, v0, v2}, Lcom/lx/launcher8/setting/ThemePickAct$5;-><init>(Lcom/lx/launcher8/setting/ThemePickAct;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/lx/launcher8/setting/view/DialogSaveTheme;)V

    .line 177
    invoke-virtual {v3}, Lcom/lx/launcher8/setting/ThemePickAct$5;->start()V

    .line 178
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, -0x1

    .line 56
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f030065

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/ThemePickAct;->setContentView(I)V

    .line 59
    invoke-static {}, Lcom/lx/launcher8/util/BitmapManager;->getInstance()Lcom/lx/launcher8/util/BitmapManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/ThemePickAct;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

    .line 61
    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/ThemePickAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/ThemePickAct;->mFirstTitle:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemePickAct;->mFirstTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0013

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/ThemePickAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemePickAct;->mFirstTitle:Landroid/widget/TextView;

    new-instance v1, Lcom/lx/launcher8/setting/ThemePickAct$2;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/ThemePickAct$2;-><init>(Lcom/lx/launcher8/setting/ThemePickAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v0, 0x7f090190

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/ThemePickAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/ThemePickAct;->mRootView:Landroid/widget/LinearLayout;

    .line 75
    iput-object p0, p0, Lcom/lx/launcher8/setting/ThemePickAct;->mContext:Landroid/content/Context;

    .line 77
    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemePickAct;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/lx/launcher8/setting/ThemePickAct;->createView()Landroid/view/View;

    move-result-object v1

    invoke-static {v2, v2}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lcom/lx/launcher8/NoSearchAct;->onPause()V

    .line 98
    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemePickAct;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

    invoke-virtual {v0}, Lcom/lx/launcher8/util/BitmapManager;->clearCache()V

    .line 99
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Lcom/lx/launcher8/NoSearchAct;->onResume()V

    .line 83
    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemePickAct;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lx/launcher8/setting/ThemePickAct$3;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/ThemePickAct$3;-><init>(Lcom/lx/launcher8/setting/ThemePickAct;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    return-void
.end method
