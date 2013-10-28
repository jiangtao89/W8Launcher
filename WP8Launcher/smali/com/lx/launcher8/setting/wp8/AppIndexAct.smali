.class public Lcom/lx/launcher8/setting/wp8/AppIndexAct;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.source "AppIndexAct.java"


# instance fields
.field private mAppSetting:Lcom/lx/launcher8/cfg/AppSetting;

.field private mContentView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/AppIndexAct;)Lcom/lx/launcher8/cfg/AppSetting;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppIndexAct;->mAppSetting:Lcom/lx/launcher8/cfg/AppSetting;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/AppIndexAct;Landroid/view/View;Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/lx/launcher8/setting/wp8/AppIndexAct;->changeState(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method private changeState(Landroid/view/View;Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "view1"
    .parameter "enable"

    .prologue
    .line 103
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 104
    .local v0, visible:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 105
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 106
    return-void

    .line 103
    .end local v0           #visible:I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setupViews()V
    .locals 13

    .prologue
    .line 34
    const/high16 v10, 0x4140

    invoke-static {p0, v10}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 36
    .local v5, margin:I
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 37
    .local v8, tv:Landroid/widget/TextView;
    const/16 v10, 0x13

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 38
    div-int/lit8 v10, v5, 0x2

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v5, v11, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 39
    const v10, 0x7f0a0178

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(I)V

    .line 40
    const v10, -0xacacad

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    const/high16 v10, 0x4180

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 42
    const/4 v10, 0x2

    new-array v3, v10, [I

    fill-array-data v3, :array_0

    .line 43
    .local v3, items:[I
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/AppIndexAct;->mAppSetting:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v10}, Lcom/lx/launcher8/cfg/AppSetting;->isAppIndexBlod()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v6, 0x0

    .line 44
    .local v6, selected:I
    :goto_0
    new-instance v1, Lcom/anall/statusbar/DropDowmLinearLayout;

    const/4 v10, 0x0

    invoke-direct {v1, p0, v10}, Lcom/anall/statusbar/DropDowmLinearLayout;-><init>(Landroid/content/Context;Landroid/widget/ScrollView;)V

    .line 45
    .local v1, dropDown:Lcom/anall/statusbar/DropDowmLinearLayout;
    new-instance v10, Lcom/lx/launcher8/setting/wp8/AppIndexAct$1;

    invoke-direct {v10, p0}, Lcom/lx/launcher8/setting/wp8/AppIndexAct$1;-><init>(Lcom/lx/launcher8/setting/wp8/AppIndexAct;)V

    invoke-virtual {v1, v3, v10}, Lcom/anall/statusbar/DropDowmLinearLayout;->addChild([ILandroid/view/View$OnClickListener;)V

    .line 58
    const/4 v10, 0x0

    invoke-virtual {v1, v6, v10}, Lcom/anall/statusbar/DropDowmLinearLayout;->show(IZ)V

    .line 60
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f030066

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 61
    .local v4, layout:Landroid/widget/LinearLayout;
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v5, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 62
    const v10, 0x7f09018b

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 63
    .local v7, title:Landroid/widget/TextView;
    const/16 v10, 0x13

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 64
    div-int/lit8 v10, v5, 0x2

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v5, v11, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 65
    const v10, 0x7f0a003f

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    .line 66
    const v10, -0xacacad

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    const/high16 v10, 0x4180

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 68
    const v10, 0x7f09018d

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 69
    .local v0, about:Landroid/widget/TextView;
    iget v10, p0, Lcom/lx/launcher8/setting/wp8/AppIndexAct;->mTitleColorValue:I

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v0, v5, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 71
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/AppIndexAct;->mAppSetting:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v10}, Lcom/lx/launcher8/cfg/AppSetting;->isShowAppListHeader()Z

    move-result v2

    .line 72
    .local v2, isOpen:Z
    if-eqz v2, :cond_1

    .line 73
    const v10, 0x7f0a0158

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/setting/wp8/AppIndexAct;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :goto_1
    invoke-direct {p0, v8, v1, v2}, Lcom/lx/launcher8/setting/wp8/AppIndexAct;->changeState(Landroid/view/View;Landroid/view/View;Z)V

    .line 78
    const v10, 0x7f09018e

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    .line 79
    .local v9, view:Lcom/lx/launcher8/setting/wp8/view/SeekButton;
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setVisibility(I)V

    .line 80
    invoke-virtual {v9, v2}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    .line 81
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/AppIndexAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v10}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setFitColor(I)V

    .line 82
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/AppIndexAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v10}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v10

    if-eqz v10, :cond_2

    .line 83
    const/16 v10, 0x14

    invoke-virtual {v9, v10}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    .line 87
    :goto_2
    new-instance v10, Lcom/lx/launcher8/setting/wp8/AppIndexAct$2;

    invoke-direct {v10, p0, v8, v1}, Lcom/lx/launcher8/setting/wp8/AppIndexAct$2;-><init>(Lcom/lx/launcher8/setting/wp8/AppIndexAct;Landroid/widget/TextView;Lcom/anall/statusbar/DropDowmLinearLayout;)V

    invoke-virtual {v9, v10}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;)V

    .line 94
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/AppIndexAct;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/AppIndexAct;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/AppIndexAct;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    return-void

    .line 43
    .end local v0           #about:Landroid/widget/TextView;
    .end local v1           #dropDown:Lcom/anall/statusbar/DropDowmLinearLayout;
    .end local v2           #isOpen:Z
    .end local v4           #layout:Landroid/widget/LinearLayout;
    .end local v6           #selected:I
    .end local v7           #title:Landroid/widget/TextView;
    .end local v9           #view:Lcom/lx/launcher8/setting/wp8/view/SeekButton;
    :cond_0
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 75
    .restart local v0       #about:Landroid/widget/TextView;
    .restart local v1       #dropDown:Lcom/anall/statusbar/DropDowmLinearLayout;
    .restart local v2       #isOpen:Z
    .restart local v4       #layout:Landroid/widget/LinearLayout;
    .restart local v6       #selected:I
    .restart local v7       #title:Landroid/widget/TextView;
    :cond_1
    const v10, 0x7f0a0159

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/setting/wp8/AppIndexAct;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 85
    .restart local v9       #view:Lcom/lx/launcher8/setting/wp8/view/SeekButton;
    :cond_2
    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    goto :goto_2

    .line 42
    :array_0
    .array-data 0x4
        0x79t 0x1t 0xat 0x7ft
        0x7at 0x1t 0xat 0x7ft
    .end array-data
.end method


# virtual methods
.method protected initData()V
    .locals 3

    .prologue
    const v2, 0x7f0a0177

    .line 25
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppIndexAct;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 26
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppIndexAct;->mContentView:Landroid/widget/LinearLayout;

    .line 27
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppIndexAct;->mContentView:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 28
    new-instance v0, Lcom/lx/launcher8/cfg/AppSetting;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/cfg/AppSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppIndexAct;->mAppSetting:Lcom/lx/launcher8/cfg/AppSetting;

    .line 29
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/AppIndexAct;->setupViews()V

    .line 30
    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/AppIndexAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/AppIndexAct;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/wp8/AppIndexAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 31
    return-void
.end method
