.class public Lcom/lx/launcher8/setting/wp8/TextStylePickAct;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.source "TextStylePickAct.java"


# static fields
.field static final REQUEST_PICK_COLOR:I = 0x1

.field static final REQUEST_PICK_POSITION:I = 0x2

.field public static final SPECIAL_FUN_TEXT_TYPE:Ljava/lang/String; = "special_fun_text_type"

.field public static final TEXT_COLOR:Ljava/lang/String; = "text_color"

.field public static final TEXT_GRAVITY:Ljava/lang/String; = "text_gravity"

.field public static final TEXT_NAME:Ljava/lang/String; = "text_name"


# instance fields
.field private colorLinear:Landroid/widget/LinearLayout;

.field private colorText:Landroid/widget/TextView;

.field private colorView:Landroid/view/View;

.field private editText:Landroid/widget/EditText;

.field private mMainView:Landroid/view/View;

.field mRootLl:Landroid/widget/LinearLayout;

.field private positionText:Landroid/widget/TextView;

.field specialFunTileText:I

.field specialFunTileTexts:[I

.field private textColor:I

.field private textColorName:Ljava/lang/String;

.field private textGravity:I

.field private textGravityText:[Ljava/lang/String;

.field private textName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;-><init>()V

    .line 33
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->textGravity:I

    .line 35
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->textColor:I

    .line 37
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->textColorName:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->textName:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->textGravityText:[Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->editText:Landroid/widget/EditText;

    .line 45
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->positionText:Landroid/widget/TextView;

    .line 47
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->colorLinear:Landroid/widget/LinearLayout;

    .line 49
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->colorView:Landroid/view/View;

    .line 51
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->colorText:Landroid/widget/TextView;

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->specialFunTileText:I

    .line 121
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v2, v0, v2

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->specialFunTileTexts:[I

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/TextStylePickAct;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->textGravity:I

    return v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/TextStylePickAct;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->editText:Landroid/widget/EditText;

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

    .line 158
    new-instance v1, Landroid/widget/RadioGroup;

    invoke-direct {v1, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 159
    .local v1, group:Landroid/widget/RadioGroup;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 160
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, p2

    if-lt v2, v4, :cond_0

    .line 174
    new-instance v4, Lcom/lx/launcher8/setting/wp8/TextStylePickAct$3;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/setting/wp8/TextStylePickAct$3;-><init>(Lcom/lx/launcher8/setting/wp8/TextStylePickAct;)V

    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 190
    return-object v1

    .line 162
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030060

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 163
    .local v0, btn:Landroid/widget/RadioButton;
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    aget-object v4, p2, v2

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 165
    add-int v4, p1, v2

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setId(I)V

    .line 166
    const/high16 v4, 0x41d0

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setTextSize(F)V

    .line 167
    if-ne v2, p3, :cond_1

    .line 168
    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 170
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

    .line 171
    new-array v6, v10, [I

    const-string v7, "#31b2e7"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v9

    iget v7, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->mTitleColorValue:I

    aput v7, v6, v8

    invoke-direct {v4, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 170
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 172
    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    nop

    :array_0
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa0t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method private addSpecialFunText(I)V
    .locals 10
    .parameter "specialFunTileText"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 125
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->mRootLl:Landroid/widget/LinearLayout;

    .line 126
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->mRootLl:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 128
    const/high16 v6, 0x4120

    invoke-static {p0, v6}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v6

    float-to-int v5, v6

    .line 129
    .local v5, margin:I
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 130
    .local v3, mAboutTv:Landroid/widget/TextView;
    const/16 v6, 0x13

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 131
    mul-int/lit8 v6, v5, 0x2

    invoke-virtual {v3, v8, v6, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 132
    const v6, 0x7f0a0218

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 133
    const v6, -0xacacad

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    const/high16 v6, 0x4180

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 135
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->mRootLl:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 137
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, items:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 140
    .local v1, index2:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->specialFunTileTexts:[I

    array-length v6, v6

    if-lt v0, v6, :cond_0

    .line 145
    packed-switch v1, :pswitch_data_0

    .line 153
    :goto_1
    invoke-direct {p0, v8, v2, v1}, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;

    move-result-object v4

    .line 154
    .local v4, mSpecialFunTileTextView:Landroid/view/View;
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->mRootLl:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    return-void

    .line 141
    .end local v4           #mSpecialFunTileTextView:Landroid/view/View;
    :cond_0
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->specialFunTileTexts:[I

    aget v6, v6, v0

    if-ne v6, p1, :cond_1

    .line 142
    move v1, v0

    .line 140
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :pswitch_0
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->editText:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_1

    .line 150
    :pswitch_1
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->editText:Landroid/widget/EditText;

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_1

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createView()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 62
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030072

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->mMainView:Landroid/view/View;

    .line 64
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "text_gravity"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->textGravity:I

    .line 65
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->textGravity:I

    if-ne v0, v4, :cond_0

    iput v3, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->textGravity:I

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "text_color"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->textColor:I

    .line 67
    invoke-static {}, Lcom/lx/launcher8/util/ColorManager;->getInstance()Lcom/lx/launcher8/util/ColorManager;

    move-result-object v0

    iget v1, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->textColor:I

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/util/ColorManager;->getColorName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->textColorName:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "text_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->textName:Ljava/lang/String;

    .line 70
    new-array v0, v4, [Ljava/lang/String;

    const v1, 0x7f0a00ee

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const v2, 0x7f0a00ed

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f0a00ef

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->textGravityText:[Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->initView()V

    .line 73
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 77
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->mMainView:Landroid/view/View;

    const v1, 0x7f0901ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->editText:Landroid/widget/EditText;

    .line 78
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->editText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->getSelectorEditText()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 79
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->editText:Landroid/widget/EditText;

    iget v1, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->mTitleColorValue:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 80
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->textName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->mMainView:Landroid/view/View;

    const v1, 0x7f0901f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->positionText:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->positionText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->getSelectorButton()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 84
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->positionText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 85
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->positionText:Landroid/widget/TextView;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/TextStylePickAct$1;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/TextStylePickAct$1;-><init>(Lcom/lx/launcher8/setting/wp8/TextStylePickAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->mMainView:Landroid/view/View;

    const v1, 0x7f0901f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->colorLinear:Landroid/widget/LinearLayout;

    .line 96
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->colorLinear:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->getSelectorButton()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 97
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->colorLinear:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/TextStylePickAct$2;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/TextStylePickAct$2;-><init>(Lcom/lx/launcher8/setting/wp8/TextStylePickAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->mMainView:Landroid/view/View;

    const v1, 0x7f0901f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->colorView:Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->mMainView:Landroid/view/View;

    const v1, 0x7f0901f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->colorText:Landroid/widget/TextView;

    .line 111
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->colorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 113
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "special_fun_text_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->specialFunTileText:I

    .line 114
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->specialFunTileText:I

    if-eq v0, v4, :cond_0

    .line 115
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->specialFunTileText:I

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->addSpecialFunText(I)V

    .line 116
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->mMainView:Landroid/view/View;

    const v1, 0x7f0901eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->mRootLl:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->createView()V

    .line 58
    const v0, 0x7f0a0050

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 59
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x1

    .line 215
    if-ne p2, v1, :cond_0

    if-nez p3, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 227
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 220
    :pswitch_0
    const-string v0, "extral_value"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->textColor:I

    .line 221
    const-string v0, "extral_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->textColorName:Ljava/lang/String;

    goto :goto_1

    .line 224
    :pswitch_1
    const-string v0, "extral_value"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->textGravity:I

    goto :goto_1

    .line 218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, -0x1

    .line 232
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 233
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 234
    .local v0, data:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->textName:Ljava/lang/String;

    .line 235
    const-string v1, "text_color"

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->textColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    const-string v1, "text_gravity"

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->textGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 237
    const-string v1, "text_name"

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->textName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    iget v1, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->specialFunTileText:I

    if-eq v1, v3, :cond_0

    .line 239
    const-string v1, "special_fun_text_type"

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->specialFunTileText:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    :cond_0
    invoke-virtual {p0, v3, v0}, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->setResult(ILandroid/content/Intent;)V

    .line 243
    .end local v0           #data:Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 195
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onResume()V

    .line 196
    iget v1, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->textGravity:I

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->positionText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->textGravityText:[Ljava/lang/String;

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->textGravity:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :goto_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v0

    .line 199
    .local v0, themePaper:I
    iget v1, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->textColor:I

    if-eqz v1, :cond_3

    .line 200
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->textColor:I

    const/high16 v2, -0x100

    if-ne v1, v2, :cond_1

    .line 201
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->colorView:Landroid/view/View;

    const v2, 0x7f0201cd

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 210
    :goto_1
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->colorText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->textColorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    return-void

    .line 197
    .end local v0           #themePaper:I
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->mMainView:Landroid/view/View;

    const v2, 0x7f0901ef

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 202
    .restart local v0       #themePaper:I
    :cond_1
    if-nez v0, :cond_2

    iget v1, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->textColor:I

    if-ne v1, v4, :cond_2

    .line 203
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->colorView:Landroid/view/View;

    const v2, 0x7f0201ca

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 205
    :cond_2
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->colorView:Landroid/view/View;

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->textColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 208
    :cond_3
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->colorView:Landroid/view/View;

    const v2, 0x7f0201df

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method
