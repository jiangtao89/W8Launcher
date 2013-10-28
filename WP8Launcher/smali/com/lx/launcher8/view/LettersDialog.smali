.class public Lcom/lx/launcher8/view/LettersDialog;
.super Landroid/app/Dialog;
.source "LettersDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;
    }
.end annotation


# instance fields
.field private final chars:[C

.field private itemHeight:I

.field private itemWidth:I

.field private mAdapter:Lcom/lx/launcher8/adapter/AppAdapter;

.field private mContext:Landroid/content/Context;

.field private mListView:Landroid/widget/AbsListView;

.field private mMainView:Landroid/widget/GridView;

.field private mSettings:Lcom/lx/launcher8/cfg/DeskSetting;

.field private mThemeColor:I

.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/AbsListView;Lcom/lx/launcher8/adapter/AppAdapter;)V
    .locals 1
    .parameter "context"
    .parameter "theme"
    .parameter "view"
    .parameter "adapter"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 28
    const/16 v0, 0x1b

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 7
    iput-object v0, p0, Lcom/lx/launcher8/view/LettersDialog;->chars:[C

    .line 43
    iput-object p1, p0, Lcom/lx/launcher8/view/LettersDialog;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-direct {v0, p1}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/LettersDialog;->mSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 45
    iput-object p3, p0, Lcom/lx/launcher8/view/LettersDialog;->mListView:Landroid/widget/AbsListView;

    .line 46
    iput-object p4, p0, Lcom/lx/launcher8/view/LettersDialog;->mAdapter:Lcom/lx/launcher8/adapter/AppAdapter;

    .line 48
    invoke-direct {p0}, Lcom/lx/launcher8/view/LettersDialog;->initView()V

    .line 49
    return-void

    .line 28
    nop

    :array_0
    .array-data 0x2
        0x23t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
    .end array-data
.end method

.method static synthetic access$0(Lcom/lx/launcher8/view/LettersDialog;)[C
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lx/launcher8/view/LettersDialog;->chars:[C

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/view/LettersDialog;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lx/launcher8/view/LettersDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/view/LettersDialog;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcom/lx/launcher8/view/LettersDialog;->itemWidth:I

    return v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/view/LettersDialog;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcom/lx/launcher8/view/LettersDialog;->itemHeight:I

    return v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/view/LettersDialog;)Lcom/lx/launcher8/adapter/AppAdapter;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lx/launcher8/view/LettersDialog;->mAdapter:Lcom/lx/launcher8/adapter/AppAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/view/LettersDialog;)I
    .locals 1
    .parameter

    .prologue
    .line 35
    iget v0, p0, Lcom/lx/launcher8/view/LettersDialog;->mThemeColor:I

    return v0
.end method

.method static synthetic access$6(Lcom/lx/launcher8/view/LettersDialog;)Landroid/widget/AbsListView;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lx/launcher8/view/LettersDialog;->mListView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method private initView()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 53
    new-instance v6, Landroid/widget/GridView;

    iget-object v7, p0, Lcom/lx/launcher8/view/LettersDialog;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/lx/launcher8/view/LettersDialog;->mMainView:Landroid/widget/GridView;

    .line 54
    iget-object v6, p0, Lcom/lx/launcher8/view/LettersDialog;->mSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v6}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v5

    .line 55
    .local v5, wallPaper:I
    iget-object v6, p0, Lcom/lx/launcher8/view/LettersDialog;->mSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v6}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v6

    iput v6, p0, Lcom/lx/launcher8/view/LettersDialog;->mThemeColor:I

    .line 56
    if-nez v5, :cond_0

    .line 57
    iget-object v6, p0, Lcom/lx/launcher8/view/LettersDialog;->mMainView:Landroid/widget/GridView;

    const v7, -0x77000001

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setBackgroundColor(I)V

    .line 61
    :goto_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 62
    .local v2, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/lx/launcher8/view/LettersDialog;->mMainView:Landroid/widget/GridView;

    invoke-virtual {v6, v2}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-object v6, p0, Lcom/lx/launcher8/view/LettersDialog;->mMainView:Landroid/widget/GridView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 64
    iget-object v6, p0, Lcom/lx/launcher8/view/LettersDialog;->mContext:Landroid/content/Context;

    const/high16 v7, 0x40c0

    invoke-static {v6, v7}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v6

    float-to-int v4, v6

    .line 65
    .local v4, padding:I
    iget-object v6, p0, Lcom/lx/launcher8/view/LettersDialog;->mMainView:Landroid/widget/GridView;

    invoke-virtual {v6, v4}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 66
    iget-object v6, p0, Lcom/lx/launcher8/view/LettersDialog;->mMainView:Landroid/widget/GridView;

    invoke-virtual {v6, v4}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 67
    iget-object v6, p0, Lcom/lx/launcher8/view/LettersDialog;->mMainView:Landroid/widget/GridView;

    invoke-virtual {v6, v4, v4, v4, v4}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 68
    new-instance v0, Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;

    if-nez v5, :cond_1

    const v6, -0x222223

    :goto_1
    invoke-direct {v0, p0, v6}, Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;-><init>(Lcom/lx/launcher8/view/LettersDialog;I)V

    .line 69
    .local v0, adapter:Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;
    iget-object v6, p0, Lcom/lx/launcher8/view/LettersDialog;->mMainView:Landroid/widget/GridView;

    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    iget-object v6, p0, Lcom/lx/launcher8/view/LettersDialog;->mMainView:Landroid/widget/GridView;

    invoke-virtual {p0, v6}, Lcom/lx/launcher8/view/LettersDialog;->setContentView(Landroid/view/View;)V

    .line 81
    invoke-virtual {p0}, Lcom/lx/launcher8/view/LettersDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    iput-object v6, p0, Lcom/lx/launcher8/view/LettersDialog;->mWindow:Landroid/view/Window;

    .line 82
    iget-object v6, p0, Lcom/lx/launcher8/view/LettersDialog;->mWindow:Landroid/view/Window;

    const/16 v7, 0x400

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 83
    iget-object v6, p0, Lcom/lx/launcher8/view/LettersDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 84
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v6, p0, Lcom/lx/launcher8/view/LettersDialog;->mWindow:Landroid/view/Window;

    const/16 v7, 0x33

    invoke-virtual {v6, v7}, Landroid/view/Window;->setGravity(I)V

    .line 85
    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 86
    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 87
    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 88
    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 89
    iget-object v6, p0, Lcom/lx/launcher8/view/LettersDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 90
    .local v1, dis:Landroid/util/DisplayMetrics;
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v7, v4, 0x5

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/lx/launcher8/view/LettersDialog;->itemWidth:I

    .line 92
    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/lit8 v6, v6, -0x2d

    mul-int/lit8 v7, v4, 0x7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x7

    iput v6, p0, Lcom/lx/launcher8/view/LettersDialog;->itemHeight:I

    .line 93
    return-void

    .line 59
    .end local v0           #adapter:Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;
    .end local v1           #dis:Landroid/util/DisplayMetrics;
    .end local v2           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v4           #padding:I
    :cond_0
    iget-object v6, p0, Lcom/lx/launcher8/view/LettersDialog;->mMainView:Landroid/widget/GridView;

    const/high16 v7, 0x5500

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 68
    .restart local v2       #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4       #padding:I
    :cond_1
    const v6, -0xe0e0e1

    goto :goto_1
.end method


# virtual methods
.method public SetPaddingTop(I)V
    .locals 5
    .parameter "top"

    .prologue
    const/16 v4, 0x400

    .line 96
    new-instance v0, Lcom/lx/launcher8/cfg/DeskSetting;

    iget-object v2, p0, Lcom/lx/launcher8/view/LettersDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, mDesk:Lcom/lx/launcher8/cfg/DeskSetting;
    iget-object v2, p0, Lcom/lx/launcher8/view/LettersDialog;->mContext:Landroid/content/Context;

    const/high16 v3, 0x40c0

    invoke-static {v2, v3}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v2

    float-to-int v1, v2

    .line 98
    .local v1, padding:I
    iget-object v2, p0, Lcom/lx/launcher8/view/LettersDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 99
    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeStatusBar()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 100
    const/4 p1, 0x0

    .line 101
    iget-object v2, p0, Lcom/lx/launcher8/view/LettersDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/lx/launcher8/view/LettersDialog;->mMainView:Landroid/widget/GridView;

    add-int v3, p1, v1

    invoke-virtual {v2, v1, v3, v1, v1}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 104
    return-void
.end method
