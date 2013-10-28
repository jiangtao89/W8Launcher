.class public Lcom/lx/launcher8/setting/AppIndexAct;
.super Lcom/lx/launcher8/setting/PageSetAct;
.source "AppIndexAct.java"


# instance fields
.field private mSettings:Lcom/lx/launcher8/cfg/AppSetting;

.field onCheckChange:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private subLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/lx/launcher8/setting/PageSetAct;-><init>()V

    .line 133
    new-instance v0, Lcom/lx/launcher8/setting/AppIndexAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/AppIndexAct$1;-><init>(Lcom/lx/launcher8/setting/AppIndexAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/AppIndexAct;->onCheckChange:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 19
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/AppIndexAct;)Lcom/lx/launcher8/cfg/AppSetting;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppIndexAct;->mSettings:Lcom/lx/launcher8/cfg/AppSetting;

    return-object v0
.end method

.method private createRadioGroup([II)Landroid/widget/RadioGroup;
    .locals 10
    .parameter "text"
    .parameter "selected"

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 105
    new-instance v1, Landroid/widget/RadioGroup;

    invoke-direct {v1, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 106
    .local v1, group:Landroid/widget/RadioGroup;
    const v5, 0x7f0201e4

    invoke-virtual {v1, v5}, Landroid/widget/RadioGroup;->setBackgroundResource(I)V

    .line 107
    invoke-virtual {v1, v9}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 108
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 110
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, p1

    if-lt v2, v5, :cond_0

    .line 129
    iget-object v5, p0, Lcom/lx/launcher8/setting/AppIndexAct;->onCheckChange:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v1, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 130
    return-object v1

    .line 112
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03005f

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 113
    .local v0, btn:Landroid/widget/RadioButton;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, -0x2

    invoke-direct {v3, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 114
    .restart local v3       #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    aget v5, p1, v2

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setText(I)V

    .line 116
    aget v5, p1, v2

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setId(I)V

    .line 117
    if-ne v2, p2, :cond_1

    .line 118
    invoke-virtual {v0, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 120
    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 121
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    if-eq v2, v5, :cond_2

    .line 122
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 123
    .local v4, view:Landroid/view/View;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 124
    .restart local v3       #lp:Landroid/widget/LinearLayout$LayoutParams;
    const-string v5, "#dcdcdc"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 125
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 111
    .end local v4           #view:Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private createTextTitle(I)Landroid/widget/TextView;
    .locals 2
    .parameter "titleID"

    .prologue
    .line 89
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 90
    .local v0, title:Landroid/widget/TextView;
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 92
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 93
    const v1, -0xacacad

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    const/high16 v1, 0x4180

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 95
    return-object v0
.end method

.method private createTitleRadioGroup(I[II)Landroid/widget/LinearLayout;
    .locals 6
    .parameter "titleID"
    .parameter "items"
    .parameter "selected"

    .prologue
    .line 71
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, layout:Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 73
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 76
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/AppIndexAct;->createTextTitle(I)Landroid/widget/TextView;

    move-result-object v3

    .line 77
    .local v3, title:Landroid/widget/TextView;
    invoke-direct {p0, p2, p3}, Lcom/lx/launcher8/setting/AppIndexAct;->createRadioGroup([II)Landroid/widget/RadioGroup;

    move-result-object v2

    .line 78
    .local v2, radio:Landroid/widget/RadioGroup;
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    return-object v0
.end method


# virtual methods
.method protected onSeekChange(Lcom/lx/launcher8/view/SeekButton;Z)V
    .locals 2
    .parameter "v"
    .parameter "enable"

    .prologue
    .line 60
    iget-object v1, p0, Lcom/lx/launcher8/setting/AppIndexAct;->subLayout:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppIndexAct;->mSettings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v0, p2}, Lcom/lx/launcher8/cfg/AppSetting;->setThemeAppListHeader(Z)V

    .line 62
    return-void

    .line 60
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected setupViews()V
    .locals 13

    .prologue
    .line 26
    new-instance v9, Lcom/lx/launcher8/cfg/AppSetting;

    invoke-direct {v9, p0}, Lcom/lx/launcher8/cfg/AppSetting;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/lx/launcher8/setting/AppIndexAct;->mSettings:Lcom/lx/launcher8/cfg/AppSetting;

    .line 27
    const/high16 v9, 0x4140

    invoke-static {p0, v9}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 28
    .local v5, margin:I
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    .local v6, rootView:Landroid/widget/LinearLayout;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 30
    invoke-virtual {v6, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 32
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    .local v4, ll:Landroid/widget/LinearLayout;
    const v9, 0x7f0201e4

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 34
    const/4 v9, 0x0

    div-int/lit8 v10, v5, 0x2

    const/4 v11, 0x0

    div-int/lit8 v12, v5, 0x2

    invoke-virtual {v4, v9, v10, v11, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 35
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f03005e

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 36
    .local v3, layout:Landroid/widget/LinearLayout;
    const v9, 0x7f09018b

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 37
    .local v0, content:Landroid/widget/TextView;
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 38
    const v9, 0x7f0a003f

    invoke-virtual {p0, v9}, Lcom/lx/launcher8/setting/AppIndexAct;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v9, p0, Lcom/lx/launcher8/setting/AppIndexAct;->mSettings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v9}, Lcom/lx/launcher8/cfg/AppSetting;->isShowAppListHeader()Z

    move-result v1

    .line 40
    .local v1, dispaly:Z
    const v9, 0x7f09018e

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lx/launcher8/view/SeekButton;

    .line 41
    .local v8, view:Lcom/lx/launcher8/view/SeekButton;
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/lx/launcher8/view/SeekButton;->setVisibility(I)V

    .line 42
    const v9, 0x7f0a003f

    invoke-virtual {v8, v9}, Lcom/lx/launcher8/view/SeekButton;->setId(I)V

    .line 43
    iget-object v9, p0, Lcom/lx/launcher8/setting/AppIndexAct;->mTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;

    invoke-virtual {v8, v9}, Lcom/lx/launcher8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 44
    invoke-virtual {v8, v1}, Lcom/lx/launcher8/view/SeekButton;->setState(Z)V

    .line 45
    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-static {v9, v10}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-static {v9, v10}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object v9, p0, Lcom/lx/launcher8/setting/AppIndexAct;->mSettings:Lcom/lx/launcher8/cfg/AppSetting;

    invoke-virtual {v9}, Lcom/lx/launcher8/cfg/AppSetting;->isAppIndexBlod()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v7, 0x0

    .line 49
    .local v7, select:I
    :goto_0
    const/4 v9, 0x2

    new-array v2, v9, [I

    fill-array-data v2, :array_0

    .line 50
    .local v2, itmes:[I
    const v9, 0x7f0a0178

    invoke-direct {p0, v9, v2, v7}, Lcom/lx/launcher8/setting/AppIndexAct;->createTitleRadioGroup(I[II)Landroid/widget/LinearLayout;

    move-result-object v9

    iput-object v9, p0, Lcom/lx/launcher8/setting/AppIndexAct;->subLayout:Landroid/widget/LinearLayout;

    .line 51
    iget-object v10, p0, Lcom/lx/launcher8/setting/AppIndexAct;->subLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 52
    iget-object v9, p0, Lcom/lx/launcher8/setting/AppIndexAct;->subLayout:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v5, v11, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 53
    iget-object v9, p0, Lcom/lx/launcher8/setting/AppIndexAct;->subLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 55
    const v9, 0x7f0a0177

    invoke-virtual {p0, v9}, Lcom/lx/launcher8/setting/AppIndexAct;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v6}, Lcom/lx/launcher8/setting/AppIndexAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 56
    return-void

    .line 48
    .end local v2           #itmes:[I
    .end local v7           #select:I
    :cond_0
    const/4 v7, 0x1

    goto :goto_0

    .line 51
    .restart local v2       #itmes:[I
    .restart local v7       #select:I
    :cond_1
    const/16 v9, 0x8

    goto :goto_1

    .line 49
    :array_0
    .array-data 0x4
        0x79t 0x1t 0xat 0x7ft
        0x7at 0x1t 0xat 0x7ft
    .end array-data
.end method
