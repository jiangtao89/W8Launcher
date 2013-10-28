.class public Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;
.super Ljava/lang/Object;
.source "LockScreenPaperLocalView.java"

# interfaces
.implements Lcom/lx/launcher8/setting/view/SettingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;
    }
.end annotation


# static fields
.field private static final REQUEST_PICK_IMAGE:I = 0x18

.field private static final REQUEST_SAVE_IMAGE:I = 0x19

.field private static final REQUEST_SELECT_IMAGE:I = 0x19


# instance fields
.field private adapter:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;

.field private gapL:I

.field private gapS:I

.field private gridView:Landroid/widget/GridView;

.field private h:I

.field private mAct:Landroid/app/Activity;

.field private mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

.field private mContext:Landroid/content/Context;

.field private mLockSet:Lcom/anall/screenlock/provider/LockSetting;

.field private mMainView:Landroid/view/View;

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
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "act"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;

    .line 68
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mAct:Landroid/app/Activity;

    .line 69
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;

    .line 71
    invoke-static {}, Lcom/lx/launcher8/util/BitmapManager;->getInstance()Lcom/lx/launcher8/util/BitmapManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

    .line 73
    new-instance v1, Lcom/anall/screenlock/provider/LockSetting;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/anall/screenlock/provider/LockSetting;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    .line 75
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 76
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->screenWidth:I

    .line 77
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->screenHeight:I

    .line 79
    invoke-direct {p0}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mMainView:Landroid/view/View;

    .line 80
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)I
    .locals 1
    .parameter

    .prologue
    .line 123
    iget v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->w:I

    return v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)I
    .locals 1
    .parameter

    .prologue
    .line 121
    iget v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->gapS:I

    return v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)I
    .locals 1
    .parameter

    .prologue
    .line 124
    iget v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->h:I

    return v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)Lcom/lx/launcher8/util/BitmapManager;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->selectedPaperPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)I
    .locals 1
    .parameter

    .prologue
    .line 63
    iget v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->screenWidth:I

    return v0
.end method

.method static synthetic access$8(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)I
    .locals 1
    .parameter

    .prologue
    .line 63
    iget v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->screenHeight:I

    return v0
.end method

.method static synthetic access$9(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mAct:Landroid/app/Activity;

    return-object v0
.end method

.method private createGrid(I)Landroid/widget/GridView;
    .locals 7
    .parameter "column"

    .prologue
    .line 127
    iget-object v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;

    const/high16 v4, 0x4000

    invoke-static {v3, v4}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->gapS:I

    .line 128
    iget-object v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;

    const/high16 v4, 0x4140

    invoke-static {v3, v4}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->gapL:I

    .line 129
    iget v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->screenWidth:I

    .line 130
    .local v2, width:I
    iget v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->screenHeight:I

    .line 131
    .local v0, height:I
    iget v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->gapL:I

    add-int/lit8 v4, p1, 0x1

    mul-int/2addr v3, v4

    sub-int v3, v2, v3

    div-int/2addr v3, p1

    iget v4, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->gapS:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->w:I

    .line 132
    iget v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->w:I

    mul-int/2addr v3, v0

    div-int/2addr v3, v2

    iput v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->h:I

    .line 133
    new-instance v1, Landroid/widget/GridView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 134
    .local v1, view:Landroid/widget/GridView;
    invoke-virtual {v1, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 135
    iget v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->gapL:I

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 136
    iget v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->gapL:I

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 137
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 138
    iget v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->gapL:I

    iget v4, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->gapL:I

    iget v5, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->gapL:I

    iget v6, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->gapL:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 139
    const/high16 v3, 0x200

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setScrollBarStyle(I)V

    .line 140
    return-object v1
.end method

.method private createView()Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0xf

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 83
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->createGrid(I)Landroid/widget/GridView;

    move-result-object v3

    iput-object v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->gridView:Landroid/widget/GridView;

    .line 84
    invoke-direct {p0}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->loadPaperList()V

    .line 85
    new-instance v3, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;-><init>(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)V

    iput-object v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->adapter:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;

    .line 86
    iget-object v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->gridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->adapter:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 89
    .local v2, select:Landroid/widget/Button;
    iget-object v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mAct:Landroid/app/Activity;

    const v4, 0x7f0a00b0

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const/high16 v3, 0x4180

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 91
    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 92
    const v3, 0x7f0200ac

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 93
    invoke-virtual {v2, v7, v8, v7, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 94
    new-instance v3, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$1;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$1;-><init>(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 114
    .local v0, ll:Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 115
    iget-object v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->gridView:Landroid/widget/GridView;

    const/high16 v4, 0x3f80

    invoke-static {v6, v5, v4}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    invoke-static {v6, v5}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 117
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    return-object v0
.end method

.method private loadPaperList()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 146
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 148
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;

    invoke-static {v9}, Lcom/lx/launcher8/util/CachePathUtil;->getDownloadPaperInfo(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 151
    :try_start_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "lockscreen"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, paths:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v2, v5, :cond_2

    .line 166
    .end local v2           #i:I
    .end local v3           #paths:[Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "lockbg"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v5}, Lcom/anall/screenlock/provider/LockSetting;->getThemeLockBg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 168
    new-instance v4, Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-direct {v4}, Lcom/lx/launcher8/setting/bean/PaperInfo;-><init>()V

    .line 169
    .local v4, pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    invoke-virtual {v4, v9}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setRid(I)V

    .line 170
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setTitle(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setPreUrl(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setActUrl(Ljava/lang/String;)V

    .line 173
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 174
    :cond_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/lx/launcher8/util/BitmapManager;->addCacheBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 175
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    .end local v4           #pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    :cond_1
    return-void

    .line 153
    .end local v1           #file:Ljava/io/File;
    .restart local v2       #i:I
    .restart local v3       #paths:[Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v4, Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-direct {v4}, Lcom/lx/launcher8/setting/bean/PaperInfo;-><init>()V

    .line 154
    .restart local v4       #pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    rsub-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setRid(I)V

    .line 155
    aget-object v5, v3, v2

    const/4 v6, 0x0

    aget-object v7, v3, v2

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setTitle(Ljava/lang/String;)V

    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "lockscreen"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setPreUrl(Ljava/lang/String;)V

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "lockscreen"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setActUrl(Ljava/lang/String;)V

    .line 158
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 160
    .end local v2           #i:I
    .end local v3           #paths:[Ljava/lang/String;
    .end local v4           #pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1
.end method


# virtual methods
.method public getBottomBtns()[Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/16 v7, 0x19

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 201
    const/16 v6, 0x18

    if-ne p1, v6, :cond_1

    if-ne p2, v8, :cond_1

    if-eqz p3, :cond_1

    .line 202
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 203
    .local v3, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;

    const-class v6, Lcom/lx/launcher8/crop/CropImage;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "aspectX"

    iget v6, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->screenWidth:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    const-string v5, "aspectY"

    iget v6, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->screenHeight:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    const-string v5, "noFaceDetection"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 208
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "lockbg"

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 209
    .local v0, file:Ljava/io/File;
    const-string v5, "output"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 210
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mAct:Landroid/app/Activity;

    invoke-virtual {v5, v1, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 257
    .end local v0           #file:Ljava/io/File;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return v4

    .line 212
    :cond_1
    if-ne p1, v7, :cond_3

    if-ne p2, v8, :cond_3

    if-eqz p3, :cond_3

    .line 213
    new-instance v0, Ljava/io/File;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "lockbg"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 215
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/anall/screenlock/provider/LockSetting;->setThemeLockBg(Ljava/lang/String;)V

    .line 216
    new-instance v2, Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-direct {v2}, Lcom/lx/launcher8/setting/bean/PaperInfo;-><init>()V

    .line 217
    .local v2, pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    invoke-virtual {v2, v5}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setRid(I)V

    .line 218
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setTitle(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setPreUrl(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setActUrl(Ljava/lang/String;)V

    .line 221
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 222
    :cond_2
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v9}, Lcom/lx/launcher8/util/BitmapManager;->addCacheBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 223
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->adapter:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 227
    .end local v0           #file:Ljava/io/File;
    .end local v2           #pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    :cond_3
    if-ne p1, v7, :cond_4

    .line 228
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v6, "lockbg"

    invoke-direct {v0, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 229
    .restart local v0       #file:Ljava/io/File;
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v4}, Lcom/anall/screenlock/provider/LockSetting;->getThemeLockBg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 230
    new-instance v2, Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-direct {v2}, Lcom/lx/launcher8/setting/bean/PaperInfo;-><init>()V

    .line 231
    .restart local v2       #pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    invoke-virtual {v2, v5}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setRid(I)V

    .line 232
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setTitle(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setPreUrl(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setActUrl(Ljava/lang/String;)V

    .line 235
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .end local v0           #file:Ljava/io/File;
    .end local v2           #pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    :cond_4
    :goto_1
    move v4, v5

    .line 257
    goto/16 :goto_0

    .line 236
    .restart local v0       #file:Ljava/io/File;
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 237
    new-instance v2, Lcom/lx/launcher8/setting/bean/PaperInfo;

    invoke-direct {v2}, Lcom/lx/launcher8/setting/bean/PaperInfo;-><init>()V

    .line 238
    .restart local v2       #pi:Lcom/lx/launcher8/setting/bean/PaperInfo;
    invoke-virtual {v2, v5}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setRid(I)V

    .line 239
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setTitle(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setPreUrl(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lx/launcher8/setting/bean/PaperInfo;->setActUrl(Ljava/lang/String;)V

    .line 242
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 243
    :cond_6
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v9}, Lcom/lx/launcher8/util/BitmapManager;->addCacheBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 244
    iget-object v4, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->paperList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v0}, Lcom/anall/screenlock/provider/LockSetting;->getThemeLockBg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->selectedPaperPath:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->selectedPaperPath:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "none"

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->selectedPaperPath:Ljava/lang/String;

    .line 194
    :cond_0
    const-string v0, "none"

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->selectedPaperPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/lx/launcher8/util/Utils;->DEFAULT_LOCKSCREEN_PAPER:Ljava/lang/String;

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->selectedPaperPath:Ljava/lang/String;

    .line 195
    :cond_1
    invoke-direct {p0}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->loadPaperList()V

    .line 196
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->adapter:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->adapter:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;->notifyDataSetChanged()V

    .line 197
    :cond_2
    return-void
.end method

.method public onViewMovingFront()V
    .locals 0

    .prologue
    .line 412
    return-void
.end method
