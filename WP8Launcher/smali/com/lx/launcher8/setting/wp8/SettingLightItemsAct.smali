.class public Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.source "SettingLightItemsAct.java"


# static fields
.field public static final ITEM_VAL:Ljava/lang/String; = "item"

.field public static final LIGHT_LONG:I = 0x12c

.field public static final LIGHT_MODE:I = 0xc8

.field public static final OPEN_MODE:I = 0x64

.field public static final PAGE_VAL:Ljava/lang/String; = "page"


# instance fields
.field private mMainView:Landroid/view/View;

.field private mRootLl:Landroid/widget/LinearLayout;

.field private onCheckChange:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private page:I

.field private positions:[I

.field private textColor:I

.field private themePaper:I

.field private titleBarText:Ljava/lang/String;

.field private titleText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;-><init>()V

    .line 22
    iput v2, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->page:I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->themePaper:I

    .line 24
    iput v2, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->textColor:I

    .line 25
    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->mMainView:Landroid/view/View;

    .line 26
    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->titleText:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->titleBarText:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [I

    aput v3, v0, v3

    aput v4, v0, v4

    aput v5, v0, v5

    const/4 v1, 0x4

    const/4 v2, 0x4

    aput v2, v0, v1

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->positions:[I

    .line 165
    new-instance v0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct$1;-><init>(Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->onCheckChange:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;)[I
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->positions:[I

    return-object v0
.end method

.method private addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;
    .locals 11
    .parameter "key"
    .parameter "text"
    .parameter "selected"

    .prologue
    const/4 v4, -0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 142
    new-instance v1, Landroid/widget/RadioGroup;

    invoke-direct {v1, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 143
    .local v1, group:Landroid/widget/RadioGroup;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 144
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, p2

    if-lt v2, v4, :cond_0

    .line 158
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->onCheckChange:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 159
    return-object v1

    .line 146
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030060

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 147
    .local v0, btn:Landroid/widget/RadioButton;
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    aget-object v4, p2, v2

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 149
    add-int v4, p1, v2

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setId(I)V

    .line 150
    const/high16 v4, 0x41d0

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setTextSize(F)V

    .line 151
    if-ne v2, p3, :cond_1

    .line 152
    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 154
    :cond_1
    new-instance v4, Landroid/content/res/ColorStateList;

    new-array v5, v10, [[I

    new-array v6, v10, [I

    fill-array-data v6, :array_0

    aput-object v6, v5, v9

    new-array v6, v8, [I

    const v7, 0x101009e

    aput v7, v6, v9

    aput-object v6, v5, v8

    .line 155
    new-array v6, v10, [I

    const-string v7, "#31b2e7"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v9

    iget v7, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->textColor:I

    aput v7, v6, v8

    invoke-direct {v4, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 154
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 156
    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    :array_0
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa0t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method private createLightLong()V
    .locals 7

    .prologue
    .line 121
    const v4, 0x7f0a004f

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->titleBarText:Ljava/lang/String;

    .line 122
    const v4, 0x7f0a017e

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->titleText:Ljava/lang/String;

    .line 124
    const/4 v1, 0x0

    .line 125
    .local v1, index:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "item"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 126
    .local v2, position:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, text:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->positions:[I

    array-length v4, v4

    if-lt v0, v4, :cond_0

    .line 131
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    const/16 v5, 0x12c

    invoke-direct {p0, v5, v3, v1}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    return-void

    .line 128
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->positions:[I

    aget v4, v4, v0

    if-ne v4, v2, :cond_1

    .line 129
    move v1, v0

    .line 127
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createLightMode()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 100
    const v5, 0x7f0a004f

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->titleBarText:Ljava/lang/String;

    .line 101
    const v5, 0x7f0a017d

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->titleText:Ljava/lang/String;

    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, index:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "item"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 105
    .local v2, position:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, text:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->positions:[I

    array-length v5, v5

    if-lt v0, v5, :cond_0

    .line 110
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    const/16 v6, 0xc8

    invoke-direct {p0, v6, v3, v1}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 112
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->mMainView:Landroid/view/View;

    const v6, 0x7f090193

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 113
    .local v4, tv:Landroid/widget/TextView;
    const v5, 0x7f0a0102

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 114
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    return-void

    .line 107
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->positions:[I

    aget v5, v5, v0

    if-ne v5, v2, :cond_1

    .line 108
    move v1, v0

    .line 106
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createOpenMode()V
    .locals 7

    .prologue
    .line 83
    const v4, 0x7f0a004f

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->titleBarText:Ljava/lang/String;

    .line 84
    const v4, 0x7f0a017c

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->titleText:Ljava/lang/String;

    .line 86
    const/4 v1, 0x0

    .line 87
    .local v1, index:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "item"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 88
    .local v2, position:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, text:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->positions:[I

    array-length v4, v4

    if-lt v0, v4, :cond_0

    .line 93
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    const/16 v5, 0x64

    invoke-direct {p0, v5, v3, v1}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    return-void

    .line 90
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->positions:[I

    aget v4, v4, v0

    if-ne v4, v2, :cond_1

    .line 91
    move v1, v0

    .line 89
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createView()V
    .locals 6

    .prologue
    const v5, 0x7f090191

    const/high16 v4, -0x100

    const/4 v3, -0x1

    .line 48
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030062

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->mMainView:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->mMainView:Landroid/view/View;

    const v1, 0x7f090190

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    .line 51
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->themePaper:I

    .line 52
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->themePaper:I

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 54
    iput v3, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->textColor:I

    .line 61
    :goto_0
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "page"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->page:I

    .line 62
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->page:I

    sparse-switch v0, :sswitch_data_0

    .line 73
    const-string v0, "\u8be5\u9875\u9762\u4e0d\u5b58\u5728"

    const/16 v1, 0x12c

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 74
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->finish()V

    .line 77
    :goto_1
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 58
    iput v4, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->textColor:I

    goto :goto_0

    .line 64
    :sswitch_0
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->createOpenMode()V

    goto :goto_1

    .line 67
    :sswitch_1
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->createLightMode()V

    goto :goto_1

    .line 70
    :sswitch_2
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->createLightLong()V

    goto :goto_1

    .line 62
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method protected initData()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->createView()V

    .line 40
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->mTitleBar:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->titleBarText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->titleText:Ljava/lang/String;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/wp8/SettingLightItemsAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 42
    return-void
.end method
