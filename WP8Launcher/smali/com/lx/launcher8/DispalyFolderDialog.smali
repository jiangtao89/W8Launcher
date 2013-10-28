.class public Lcom/lx/launcher8/DispalyFolderDialog;
.super Landroid/app/Dialog;
.source "DispalyFolderDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final EDIT_ID:I = 0x2

.field private static final TITLE_ID:I = 0x1


# instance fields
.field private anim_in:Landroid/view/animation/Animation;

.field private anim_out:Landroid/view/animation/Animation;

.field private endWithAnim:Z

.field private gridItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private mBgColor:I

.field private mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

.field protected mContext:Lcom/lx/launcher8/AnallLauncher;

.field protected mDeskSetting:Lcom/lx/launcher8/cfg/DeskSetting;

.field private mGravity:I

.field private mGridView:Lcom/lx/launcher8/view/FolderDragGridView;

.field private mHeight:I

.field protected mRootLayout:Landroid/widget/LinearLayout;

.field private mTitleName:Landroid/widget/TextView;

.field private mWidth:I

.field private padding:I


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/AnallLauncher;Lcom/lx/launcher8/bean/FolderCell;)V
    .locals 8
    .parameter "context"
    .parameter "info"

    .prologue
    const/4 v5, -0x1

    .line 48
    const v4, 0x7f0e0005

    invoke-direct {p0, p1, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 36
    iput v5, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mWidth:I

    iput v5, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mHeight:I

    const/16 v4, 0x11

    iput v4, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mGravity:I

    .line 180
    new-instance v4, Lcom/lx/launcher8/DispalyFolderDialog$1;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/DispalyFolderDialog$1;-><init>(Lcom/lx/launcher8/DispalyFolderDialog;)V

    iput-object v4, p0, Lcom/lx/launcher8/DispalyFolderDialog;->gridItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 250
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/lx/launcher8/DispalyFolderDialog;->endWithAnim:Z

    .line 49
    iput-object p1, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mContext:Lcom/lx/launcher8/AnallLauncher;

    .line 50
    iput-object p2, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    .line 51
    new-instance v4, Lcom/lx/launcher8/cfg/DeskSetting;

    iget-object v5, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mContext:Lcom/lx/launcher8/AnallLauncher;

    invoke-direct {v4, v5}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mDeskSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 52
    invoke-virtual {p1}, Lcom/lx/launcher8/AnallLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 53
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 54
    .local v3, width:I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 56
    .local v1, hight:I
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 58
    .local v2, min:I
    int-to-double v4, v2

    const-wide v6, 0x3feccccccccccccdL

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mWidth:I

    .line 59
    int-to-double v4, v1

    const-wide v6, 0x3fe6666666666666L

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mHeight:I

    .line 60
    iget-object v4, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mContext:Lcom/lx/launcher8/AnallLauncher;

    const/high16 v5, 0x40a0

    invoke-static {v4, v5}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/lx/launcher8/DispalyFolderDialog;->padding:I

    .line 61
    invoke-direct {p0}, Lcom/lx/launcher8/DispalyFolderDialog;->initView()V

    .line 62
    new-instance v4, Lcom/lx/launcher8/DispalyFolderDialog$2;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/DispalyFolderDialog$2;-><init>(Lcom/lx/launcher8/DispalyFolderDialog;)V

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/DispalyFolderDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 70
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/DispalyFolderDialog;)Lcom/lx/launcher8/bean/FolderCell;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/DispalyFolderDialog;)Lcom/lx/launcher8/view/FolderDragGridView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mGridView:Lcom/lx/launcher8/view/FolderDragGridView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/DispalyFolderDialog;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mWidth:I

    return v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/DispalyFolderDialog;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/lx/launcher8/DispalyFolderDialog;->endWithAnim:Z

    return-void
.end method

.method static synthetic access$4(Lcom/lx/launcher8/DispalyFolderDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/lx/launcher8/DispalyFolderDialog;->realDismiss()V

    return-void
.end method

.method private initView()V
    .locals 9

    .prologue
    const/4 v6, -0x2

    .line 74
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mContext:Lcom/lx/launcher8/AnallLauncher;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mRootLayout:Landroid/widget/LinearLayout;

    .line 75
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v4, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mRootLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 78
    iget-object v4, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mRootLayout:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/lx/launcher8/DispalyFolderDialog;->padding:I

    iget v6, p0, Lcom/lx/launcher8/DispalyFolderDialog;->padding:I

    iget v7, p0, Lcom/lx/launcher8/DispalyFolderDialog;->padding:I

    iget v8, p0, Lcom/lx/launcher8/DispalyFolderDialog;->padding:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 79
    iget-object v4, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mDeskSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v4

    iput v4, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mBgColor:I

    .line 80
    iget-object v4, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mRootLayout:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mBgColor:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 81
    invoke-virtual {p0}, Lcom/lx/launcher8/DispalyFolderDialog;->initTitle()Landroid/view/View;

    move-result-object v3

    .line 82
    .local v3, title:Landroid/view/View;
    invoke-virtual {p0}, Lcom/lx/launcher8/DispalyFolderDialog;->initContent()Landroid/view/View;

    move-result-object v1

    .line 83
    .local v1, content:Landroid/view/View;
    invoke-virtual {p0}, Lcom/lx/launcher8/DispalyFolderDialog;->initButtom()Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, buttom:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 85
    iget-object v4, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    :cond_0
    if-eqz v1, :cond_1

    .line 88
    iget-object v4, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 90
    :cond_1
    if-eqz v0, :cond_2

    .line 91
    iget-object v4, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    :cond_2
    iget-object v4, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/DispalyFolderDialog;->setContentView(Landroid/view/View;)V

    .line 94
    return-void
.end method

.method private realDismiss()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mContext:Lcom/lx/launcher8/AnallLauncher;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/lx/launcher8/AnallLauncher;->mFolderDialog:Lcom/lx/launcher8/DispalyFolderDialog;

    .line 284
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 285
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/lx/launcher8/DispalyFolderDialog;->anim_out:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 255
    iget-boolean v0, p0, Lcom/lx/launcher8/DispalyFolderDialog;->endWithAnim:Z

    if-eqz v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 258
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/DispalyFolderDialog;->endWithAnim:Z

    .line 259
    iget-object v0, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mRootLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/DispalyFolderDialog;->anim_out:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 261
    iget-object v0, p0, Lcom/lx/launcher8/DispalyFolderDialog;->anim_out:Landroid/view/animation/Animation;

    new-instance v1, Lcom/lx/launcher8/DispalyFolderDialog$3;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/DispalyFolderDialog$3;-><init>(Lcom/lx/launcher8/DispalyFolderDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 278
    :cond_1
    invoke-direct {p0}, Lcom/lx/launcher8/DispalyFolderDialog;->realDismiss()V

    goto :goto_0
.end method

.method protected initButtom()Landroid/view/View;
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method protected initContent()Landroid/view/View;
    .locals 4

    .prologue
    .line 142
    new-instance v0, Lcom/lx/launcher8/view/FolderDragGridView;

    iget-object v1, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mContext:Lcom/lx/launcher8/AnallLauncher;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/view/FolderDragGridView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mGridView:Lcom/lx/launcher8/view/FolderDragGridView;

    .line 143
    iget-object v0, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mGridView:Lcom/lx/launcher8/view/FolderDragGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/FolderDragGridView;->setVerticalScrollBarEnabled(Z)V

    .line 144
    iget-object v0, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mGridView:Lcom/lx/launcher8/view/FolderDragGridView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/FolderDragGridView;->setNumColumns(I)V

    .line 145
    iget-object v0, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mGridView:Lcom/lx/launcher8/view/FolderDragGridView;

    iget v1, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mBgColor:I

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/FolderDragGridView;->setBgColor(I)V

    .line 146
    iget-object v0, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mGridView:Lcom/lx/launcher8/view/FolderDragGridView;

    iget-object v1, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget-object v1, v1, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    iget v2, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mWidth:I

    iget v3, p0, Lcom/lx/launcher8/DispalyFolderDialog;->padding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/FolderDragGridView;->setAdapter(Ljava/util/ArrayList;I)V

    .line 147
    iget-object v0, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mGridView:Lcom/lx/launcher8/view/FolderDragGridView;

    iget-object v1, p0, Lcom/lx/launcher8/DispalyFolderDialog;->gridItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/FolderDragGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mGridView:Lcom/lx/launcher8/view/FolderDragGridView;

    return-object v0
.end method

.method protected initTitle()Landroid/view/View;
    .locals 11

    .prologue
    const/high16 v10, 0x40a0

    const/4 v5, -0x1

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 102
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mContext:Lcom/lx/launcher8/AnallLauncher;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 103
    .local v1, layout:Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 104
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 106
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 108
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v2, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 109
    .restart local v2       #lp:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mContext:Lcom/lx/launcher8/AnallLauncher;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mTitleName:Landroid/widget/TextView;

    .line 110
    const/high16 v3, 0x3f80

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 111
    iget-object v3, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mTitleName:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object v3, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mTitleName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget-object v4, v4, Lcom/lx/launcher8/bean/FolderCell;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v3, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mTitleName:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    iget-object v3, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mTitleName:Landroid/widget/TextView;

    const/high16 v4, 0x4190

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 115
    iget-object v3, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mTitleName:Landroid/widget/TextView;

    iget v4, p0, Lcom/lx/launcher8/DispalyFolderDialog;->padding:I

    iget-object v5, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mContext:Lcom/lx/launcher8/AnallLauncher;

    invoke-static {v5, v10}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mContext:Lcom/lx/launcher8/AnallLauncher;

    const/high16 v7, 0x4120

    invoke-static {v6, v7}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mContext:Lcom/lx/launcher8/AnallLauncher;

    invoke-static {v7, v10}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 116
    iget-object v3, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mTitleName:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 117
    iget-object v3, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mTitleName:Landroid/widget/TextView;

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 118
    iget-object v3, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mTitleName:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v3, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mTitleName:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    .line 120
    iget-object v3, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mTitleName:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 123
    new-instance v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mContext:Lcom/lx/launcher8/AnallLauncher;

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 124
    .local v0, edit:Landroid/widget/ImageView;
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 125
    const v3, 0x7f02007a

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 128
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v2, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 129
    .restart local v2       #lp:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x15

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 130
    iget v3, p0, Lcom/lx/launcher8/DispalyFolderDialog;->padding:I

    invoke-virtual {v2, v8, v8, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 131
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 133
    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 163
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 164
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 178
    :goto_0
    return-void

    .line 167
    :pswitch_0
    iget-object v1, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mDeskSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getSettingStyle()I

    move-result v1

    if-nez v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mContext:Lcom/lx/launcher8/AnallLauncher;

    const-class v2, Lcom/lx/launcher8/setting/FolderSettingAct;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 169
    const-string v1, "extral_page"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    :goto_1
    iget-object v1, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/bean/FolderCell;->setIntentParam(Landroid/content/Intent;)V

    .line 175
    iget-object v1, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mContext:Lcom/lx/launcher8/AnallLauncher;

    const/16 v2, 0xc

    invoke-virtual {v1, v0, v2}, Lcom/lx/launcher8/AnallLauncher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mContext:Lcom/lx/launcher8/AnallLauncher;

    const-class v2, Lcom/lx/launcher8/setting/wp8/FolderSettingsActWP8;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 172
    const-string v1, "extral_page"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)Lcom/lx/launcher8/DispalyFolderDialog;
    .locals 0
    .parameter "in"
    .parameter "out"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/lx/launcher8/DispalyFolderDialog;->anim_in:Landroid/view/animation/Animation;

    .line 230
    iput-object p2, p0, Lcom/lx/launcher8/DispalyFolderDialog;->anim_out:Landroid/view/animation/Animation;

    .line 232
    return-object p0
.end method

.method public setDataChanged(Lcom/lx/launcher8/bean/FolderCell;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    .line 211
    iget-object v2, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mGridView:Lcom/lx/launcher8/view/FolderDragGridView;

    iget-object v3, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget-object v3, v3, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    iget v4, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mWidth:I

    add-int/lit8 v4, v4, -0x14

    invoke-virtual {v2, v3, v4}, Lcom/lx/launcher8/view/FolderDragGridView;->setAdapter(Ljava/util/ArrayList;I)V

    .line 212
    iget-object v2, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mTitleName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget-object v3, v3, Lcom/lx/launcher8/bean/FolderCell;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v2, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v2}, Lcom/lx/launcher8/bean/FolderCell;->getFolderSettings()[I

    move-result-object v2

    const/4 v3, 0x2

    aget v0, v2, v3

    .line 214
    .local v0, display:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/lx/launcher8/DispalyFolderDialog;->dismiss()V

    .line 216
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mContext:Lcom/lx/launcher8/AnallLauncher;

    const-class v3, Lcom/lx/launcher8/DisplayFolderAct;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .local v1, fi:Landroid/content/Intent;
    iget-object v2, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v2, v1}, Lcom/lx/launcher8/bean/FolderCell;->setIntentParam(Landroid/content/Intent;)V

    .line 218
    iget-object v2, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mContext:Lcom/lx/launcher8/AnallLauncher;

    const/16 v3, 0xc

    invoke-virtual {v2, v1, v3}, Lcom/lx/launcher8/AnallLauncher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 220
    .end local v1           #fi:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 242
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 243
    invoke-virtual {p0}, Lcom/lx/launcher8/DispalyFolderDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mGravity:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 244
    invoke-virtual {p0}, Lcom/lx/launcher8/DispalyFolderDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mWidth:I

    iget v2, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 245
    iget-object v0, p0, Lcom/lx/launcher8/DispalyFolderDialog;->anim_in:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mRootLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/DispalyFolderDialog;->anim_in:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 248
    :cond_0
    return-void
.end method

.method public showLocation(I)Lcom/lx/launcher8/DispalyFolderDialog;
    .locals 0
    .parameter "gravity"

    .prologue
    .line 236
    iput p1, p0, Lcom/lx/launcher8/DispalyFolderDialog;->mGravity:I

    .line 237
    return-object p0
.end method
