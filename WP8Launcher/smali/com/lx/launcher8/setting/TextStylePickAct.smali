.class public Lcom/lx/launcher8/setting/TextStylePickAct;
.super Lcom/lx/launcher8/NoSearchAct;
.source "TextStylePickAct.java"


# static fields
.field static final REQUEST_PICK_COLOR:I = 0x1

.field static final REQUEST_PICK_POSITION:I = 0x2

.field public static final SPECIAL_FUN_TEXT_TYPE:Ljava/lang/String; = "special_fun_text_type"

.field public static final TEXT_COLOR:Ljava/lang/String; = "text_color"

.field public static final TEXT_GRAVITY:Ljava/lang/String; = "text_gravity"


# instance fields
.field private mFirstTitle:Landroid/widget/TextView;

.field mRootLl:Landroid/widget/LinearLayout;

.field specialFunTileText:I

.field specialFunTileTexts:[I

.field private textColor:I

.field private textColorLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private textGravity:I

.field private textGravityLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

.field private textGravityText:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;-><init>()V

    .line 32
    iput v1, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textGravity:I

    .line 34
    iput v1, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textColor:I

    .line 36
    iput-object v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textGravityText:[Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textGravityLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 41
    iput-object v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textColorLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->specialFunTileText:I

    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v2, v0, v2

    iput-object v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->specialFunTileTexts:[I

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/TextStylePickAct;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textColor:I

    return v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/TextStylePickAct;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textGravity:I

    return v0
.end method

.method private addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;
    .locals 10
    .parameter "key"
    .parameter "text"
    .parameter "selected"

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 143
    new-instance v1, Landroid/widget/RadioGroup;

    invoke-direct {v1, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 144
    .local v1, group:Landroid/widget/RadioGroup;
    const v5, 0x7f0201e4

    invoke-virtual {v1, v5}, Landroid/widget/RadioGroup;->setBackgroundResource(I)V

    .line 145
    invoke-virtual {v1, v9}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 146
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 148
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, p2

    if-lt v2, v5, :cond_0

    .line 169
    new-instance v5, Lcom/lx/launcher8/setting/TextStylePickAct$4;

    invoke-direct {v5, p0}, Lcom/lx/launcher8/setting/TextStylePickAct$4;-><init>(Lcom/lx/launcher8/setting/TextStylePickAct;)V

    invoke-virtual {v1, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 183
    return-object v1

    .line 150
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 151
    const v6, 0x7f03005f

    const/4 v7, 0x0

    .line 150
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 152
    .local v0, btn:Landroid/widget/RadioButton;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 153
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, -0x2

    .line 152
    invoke-direct {v3, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 154
    .restart local v3       #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    aget-object v5, p2, v2

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 156
    add-int v5, p1, v2

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setId(I)V

    .line 157
    if-ne v2, p3, :cond_1

    .line 158
    invoke-virtual {v0, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 160
    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 161
    array-length v5, p2

    add-int/lit8 v5, v5, -0x1

    if-eq v2, v5, :cond_2

    .line 162
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 163
    .local v4, view:Landroid/view/View;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 164
    .restart local v3       #lp:Landroid/widget/LinearLayout$LayoutParams;
    const-string v5, "#dcdcdc"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 165
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 149
    .end local v4           #view:Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private addSpecialFunText(I)V
    .locals 9
    .parameter "specialFunTileText"

    .prologue
    const/4 v8, 0x0

    .line 116
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->mRootLl:Landroid/widget/LinearLayout;

    .line 117
    iget-object v6, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->mRootLl:Landroid/widget/LinearLayout;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 119
    const/high16 v6, 0x4120

    invoke-static {p0, v6}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v6

    float-to-int v5, v6

    .line 120
    .local v5, margin:I
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 121
    .local v3, mAboutTv:Landroid/widget/TextView;
    new-instance v3, Landroid/widget/TextView;

    .end local v3           #mAboutTv:Landroid/widget/TextView;
    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 122
    .restart local v3       #mAboutTv:Landroid/widget/TextView;
    const/16 v6, 0x13

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 123
    invoke-virtual {v3, v8, v8, v8, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 124
    const v6, 0x7f0a0218

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 125
    const v6, -0xacacad

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    const/high16 v6, 0x4180

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 127
    iget-object v6, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->mRootLl:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/TextStylePickAct;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, items:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 132
    .local v1, index2:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v6, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->specialFunTileTexts:[I

    array-length v6, v6

    if-lt v0, v6, :cond_0

    .line 137
    invoke-direct {p0, v8, v2, v1}, Lcom/lx/launcher8/setting/TextStylePickAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v4

    .line 138
    .local v4, mSpecialFunTileTextView:Landroid/view/View;
    iget-object v6, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->mRootLl:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 139
    iget-object v6, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->mRootLl:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5, v8, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 140
    return-void

    .line 133
    .end local v4           #mSpecialFunTileTextView:Landroid/view/View;
    :cond_0
    iget-object v6, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->specialFunTileTexts:[I

    aget v6, v6, v0

    if-ne v6, p1, :cond_1

    .line 134
    move v1, v0

    .line 132
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initData()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 84
    iget-object v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textGravityLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v1, 0x7f0a0127

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/TextStylePickAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 86
    iget-object v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textGravityLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 87
    iget-object v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textGravityLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v1, Lcom/lx/launcher8/setting/TextStylePickAct$2;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/TextStylePickAct$2;-><init>(Lcom/lx/launcher8/setting/TextStylePickAct;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textColorLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v1, 0x7f0a012a

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/TextStylePickAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 98
    iget-object v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textColorLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget v1, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textColor:I

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    .line 99
    iget-object v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textColorLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightTriangle(Z)V

    .line 100
    iget-object v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textColorLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    new-instance v1, Lcom/lx/launcher8/setting/TextStylePickAct$3;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/TextStylePickAct$3;-><init>(Lcom/lx/launcher8/setting/TextStylePickAct;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 66
    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/TextStylePickAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->mFirstTitle:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->mFirstTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0129

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/TextStylePickAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->mFirstTitle:Landroid/widget/TextView;

    new-instance v1, Lcom/lx/launcher8/setting/TextStylePickAct$1;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/TextStylePickAct$1;-><init>(Lcom/lx/launcher8/setting/TextStylePickAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v0, 0x7f0901ec

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/TextStylePickAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textGravityLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 80
    const v0, 0x7f0901ed

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/TextStylePickAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textColorLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    .line 81
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x1

    .line 200
    if-ne p2, v1, :cond_0

    if-nez p3, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 211
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/NoSearchAct;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 205
    :pswitch_0
    const-string v0, "extral_value"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textColor:I

    goto :goto_1

    .line 208
    :pswitch_1
    const-string v0, "extral_value"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textGravity:I

    goto :goto_1

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 45
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f030071

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/TextStylePickAct;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/TextStylePickAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "text_gravity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textGravity:I

    .line 49
    iget v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textGravity:I

    if-ne v0, v3, :cond_0

    iput v2, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textGravity:I

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/TextStylePickAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "text_color"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textColor:I

    .line 52
    new-array v0, v3, [Ljava/lang/String;

    const v1, 0x7f0a00ee

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/TextStylePickAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const v2, 0x7f0a00ed

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/TextStylePickAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f0a00ef

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/TextStylePickAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textGravityText:[Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Lcom/lx/launcher8/setting/TextStylePickAct;->initView()V

    .line 56
    invoke-direct {p0}, Lcom/lx/launcher8/setting/TextStylePickAct;->initData()V

    .line 58
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/TextStylePickAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "special_fun_text_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->specialFunTileText:I

    .line 59
    iget v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->specialFunTileText:I

    if-eq v0, v4, :cond_1

    .line 60
    iget v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->specialFunTileText:I

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/TextStylePickAct;->addSpecialFunText(I)V

    .line 61
    const v0, 0x7f0901eb

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/TextStylePickAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->mRootLl:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, -0x1

    .line 216
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/TextStylePickAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 218
    .local v0, data:Landroid/content/Intent;
    const-string v1, "text_color"

    iget v2, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    const-string v1, "text_gravity"

    iget v2, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    iget v1, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->specialFunTileText:I

    if-eq v1, v3, :cond_0

    .line 221
    const-string v1, "special_fun_text_type"

    iget v2, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->specialFunTileText:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    :cond_0
    invoke-virtual {p0, v3, v0}, Lcom/lx/launcher8/setting/TextStylePickAct;->setResult(ILandroid/content/Intent;)V

    .line 225
    .end local v0           #data:Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/NoSearchAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 188
    invoke-super {p0}, Lcom/lx/launcher8/NoSearchAct;->onResume()V

    .line 189
    iget v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textGravity:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textGravityLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    invoke-virtual {v0, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->setClickable(Z)V

    .line 191
    iget-object v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textGravityLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    const v1, 0x7f0a0127

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/TextStylePickAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#707070"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/lx/launcher8/view/SettingLinearLayout;->setCenterTopText(Ljava/lang/CharSequence;IF)V

    .line 195
    :goto_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textColorLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget v1, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textColor:I

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightColorView(I)V

    .line 196
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textGravityLinear:Lcom/lx/launcher8/view/SettingLinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textGravityText:[Ljava/lang/String;

    iget v2, p0, Lcom/lx/launcher8/setting/TextStylePickAct;->textGravity:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, v4, v3}, Lcom/lx/launcher8/view/SettingLinearLayout;->setRightText(Ljava/lang/CharSequence;IF)V

    goto :goto_0
.end method
