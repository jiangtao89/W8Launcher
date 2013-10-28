.class public Lcom/lx/launcher8/setting/SettingLightItemsAct;
.super Lcom/lx/launcher8/NoSearchAct;
.source "SettingLightItemsAct.java"


# static fields
.field public static final ITEM_VAL:Ljava/lang/String; = "item"

.field public static final LIGHT_LONG:I = 0x12c

.field public static final LIGHT_MODE:I = 0xc8

.field public static final OPEN_MODE:I = 0x64

.field public static final PAGE_VAL:Ljava/lang/String; = "page"


# instance fields
.field private mFirstTitle:Landroid/widget/TextView;

.field private mRootView:Landroid/widget/LinearLayout;

.field private mTitleAbout:Landroid/widget/TextView;

.field private onCheckChange:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private page:I

.field private positions:[I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 22
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/lx/launcher8/setting/SettingLightItemsAct;->page:I

    .line 27
    const/4 v0, 0x5

    new-array v0, v0, [I

    aput v1, v0, v1

    aput v2, v0, v2

    aput v3, v0, v3

    aput v4, v0, v4

    iput-object v0, p0, Lcom/lx/launcher8/setting/SettingLightItemsAct;->positions:[I

    .line 150
    new-instance v0, Lcom/lx/launcher8/setting/SettingLightItemsAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/SettingLightItemsAct$1;-><init>(Lcom/lx/launcher8/setting/SettingLightItemsAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/SettingLightItemsAct;->onCheckChange:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/SettingLightItemsAct;)[I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lx/launcher8/setting/SettingLightItemsAct;->positions:[I

    return-object v0
.end method

.method private addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;
    .locals 10
    .parameter "key"
    .parameter "text"
    .parameter "selected"

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 120
    new-instance v1, Landroid/widget/RadioGroup;

    invoke-direct {v1, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 121
    .local v1, group:Landroid/widget/RadioGroup;
    const v5, 0x7f0201e4

    invoke-virtual {v1, v5}, Landroid/widget/RadioGroup;->setBackgroundResource(I)V

    .line 122
    invoke-virtual {v1, v9}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 123
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 125
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, p2

    if-lt v2, v5, :cond_0

    .line 146
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingLightItemsAct;->onCheckChange:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v1, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 147
    return-object v1

    .line 127
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 128
    const v6, 0x7f03005f

    const/4 v7, 0x0

    .line 127
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 129
    .local v0, btn:Landroid/widget/RadioButton;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 130
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, -0x2

    .line 129
    invoke-direct {v3, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 131
    .restart local v3       #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    aget-object v5, p2, v2

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 133
    add-int v5, p1, v2

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setId(I)V

    .line 134
    if-ne v2, p3, :cond_1

    .line 135
    invoke-virtual {v0, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 137
    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 138
    array-length v5, p2

    add-int/lit8 v5, v5, -0x1

    if-eq v2, v5, :cond_2

    .line 139
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 140
    .local v4, view:Landroid/view/View;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 141
    .restart local v3       #lp:Landroid/widget/LinearLayout$LayoutParams;
    const-string v5, "#dcdcdc"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 142
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 126
    .end local v4           #view:Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private createLightLong()V
    .locals 7

    .prologue
    .line 104
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingLightItemsAct;->mFirstTitle:Landroid/widget/TextView;

    const v5, 0x7f0a004f

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/SettingLightItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingLightItemsAct;->mFirstTitle:Landroid/widget/TextView;

    const v5, 0x7f0a017e

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/SettingLightItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const/4 v1, 0x0

    .line 108
    .local v1, index:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingLightItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "item"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 109
    .local v2, position:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingLightItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, text:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingLightItemsAct;->positions:[I

    array-length v4, v4

    if-lt v0, v4, :cond_0

    .line 114
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingLightItemsAct;->mRootView:Landroid/widget/LinearLayout;

    const/16 v5, 0x12c

    invoke-direct {p0, v5, v3, v1}, Lcom/lx/launcher8/setting/SettingLightItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingLightItemsAct;->mTitleAbout:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    return-void

    .line 111
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingLightItemsAct;->positions:[I

    aget v4, v4, v0

    if-ne v4, v2, :cond_1

    .line 112
    move v1, v0

    .line 110
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createLightMode()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 84
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingLightItemsAct;->mFirstTitle:Landroid/widget/TextView;

    const v5, 0x7f0a004f

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/SettingLightItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingLightItemsAct;->mFirstTitle:Landroid/widget/TextView;

    const v5, 0x7f0a017d

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/SettingLightItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const/4 v1, 0x0

    .line 88
    .local v1, index:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingLightItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "item"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 89
    .local v2, position:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingLightItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, text:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingLightItemsAct;->positions:[I

    array-length v4, v4

    if-lt v0, v4, :cond_0

    .line 94
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingLightItemsAct;->mRootView:Landroid/widget/LinearLayout;

    const/16 v5, 0xc8

    invoke-direct {p0, v5, v3, v1}, Lcom/lx/launcher8/setting/SettingLightItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingLightItemsAct;->mTitleAbout:Landroid/widget/TextView;

    const v5, 0x7f0a0102

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 97
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingLightItemsAct;->mTitleAbout:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    return-void

    .line 91
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingLightItemsAct;->positions:[I

    aget v4, v4, v0

    if-ne v4, v2, :cond_1

    .line 92
    move v1, v0

    .line 90
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createOpenMode()V
    .locals 7

    .prologue
    .line 65
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingLightItemsAct;->mFirstTitle:Landroid/widget/TextView;

    const v5, 0x7f0a004f

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/SettingLightItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingLightItemsAct;->mFirstTitle:Landroid/widget/TextView;

    const v5, 0x7f0a017c

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/SettingLightItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const/4 v1, 0x0

    .line 69
    .local v1, index:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingLightItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "item"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 70
    .local v2, position:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingLightItemsAct;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, text:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingLightItemsAct;->positions:[I

    array-length v4, v4

    if-lt v0, v4, :cond_0

    .line 75
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingLightItemsAct;->mRootView:Landroid/widget/LinearLayout;

    const/16 v5, 0x64

    invoke-direct {p0, v5, v3, v1}, Lcom/lx/launcher8/setting/SettingLightItemsAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingLightItemsAct;->mTitleAbout:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    return-void

    .line 72
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingLightItemsAct;->positions:[I

    aget v4, v4, v0

    if-ne v4, v2, :cond_1

    .line 73
    move v1, v0

    .line 71
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f030061

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/SettingLightItemsAct;->setContentView(I)V

    .line 40
    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/SettingLightItemsAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/SettingLightItemsAct;->mFirstTitle:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f090090

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/SettingLightItemsAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/SettingLightItemsAct;->mTitleAbout:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f090190

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/SettingLightItemsAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/SettingLightItemsAct;->mRootView:Landroid/widget/LinearLayout;

    .line 43
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingLightItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "page"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/SettingLightItemsAct;->page:I

    .line 44
    iget v0, p0, Lcom/lx/launcher8/setting/SettingLightItemsAct;->page:I

    sparse-switch v0, :sswitch_data_0

    .line 55
    const-string v0, "\u8be5\u9875\u9762\u4e0d\u5b58\u5728"

    const/16 v1, 0x12c

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 56
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/SettingLightItemsAct;->finish()V

    .line 59
    :goto_0
    return-void

    .line 46
    :sswitch_0
    invoke-direct {p0}, Lcom/lx/launcher8/setting/SettingLightItemsAct;->createOpenMode()V

    goto :goto_0

    .line 49
    :sswitch_1
    invoke-direct {p0}, Lcom/lx/launcher8/setting/SettingLightItemsAct;->createLightMode()V

    goto :goto_0

    .line 52
    :sswitch_2
    invoke-direct {p0}, Lcom/lx/launcher8/setting/SettingLightItemsAct;->createLightLong()V

    goto :goto_0

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
    .end sparse-switch
.end method
