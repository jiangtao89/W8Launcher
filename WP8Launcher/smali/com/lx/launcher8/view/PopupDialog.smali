.class public Lcom/lx/launcher8/view/PopupDialog;
.super Landroid/app/Dialog;
.source "PopupDialog.java"


# instance fields
.field private cancel:Landroid/widget/Button;

.field private checkBox:Landroid/widget/CheckBox;

.field private editText:Landroid/widget/EditText;

.field private mBackgroundColor:I

.field private mContext:Landroid/content/Context;

.field private mTextColor:I

.field private mainLayout:Landroid/widget/LinearLayout;

.field private msg:Landroid/widget/TextView;

.field private ok:Landroid/widget/Button;

.field private settings:Lcom/lx/launcher8/cfg/DeskSetting;

.field private themeWallPaper:I

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    const v0, 0x7f0e0004

    invoke-direct {p0, p1, v0}, Lcom/lx/launcher8/view/PopupDialog;-><init>(Landroid/content/Context;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "theme"

    .prologue
    const/4 v4, 0x1

    const v3, -0xcececf

    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 28
    iput-object v0, p0, Lcom/lx/launcher8/view/PopupDialog;->mainLayout:Landroid/widget/LinearLayout;

    .line 30
    iput-object v0, p0, Lcom/lx/launcher8/view/PopupDialog;->title:Landroid/widget/TextView;

    .line 32
    iput-object v0, p0, Lcom/lx/launcher8/view/PopupDialog;->msg:Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/lx/launcher8/view/PopupDialog;->editText:Landroid/widget/EditText;

    .line 37
    iput-object v0, p0, Lcom/lx/launcher8/view/PopupDialog;->ok:Landroid/widget/Button;

    .line 38
    iput-object v0, p0, Lcom/lx/launcher8/view/PopupDialog;->cancel:Landroid/widget/Button;

    .line 40
    iput-object v0, p0, Lcom/lx/launcher8/view/PopupDialog;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 52
    iput-object p1, p0, Lcom/lx/launcher8/view/PopupDialog;->mContext:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-direct {v0, p1}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/PopupDialog;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 55
    iget-object v0, p0, Lcom/lx/launcher8/view/PopupDialog;->settings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/view/PopupDialog;->themeWallPaper:I

    .line 56
    iget v0, p0, Lcom/lx/launcher8/view/PopupDialog;->themeWallPaper:I

    if-ne v0, v4, :cond_1

    .line 57
    iput v2, p0, Lcom/lx/launcher8/view/PopupDialog;->mTextColor:I

    .line 58
    iput v3, p0, Lcom/lx/launcher8/view/PopupDialog;->mBackgroundColor:I

    .line 67
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/lx/launcher8/view/PopupDialog;->initView()V

    .line 78
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PopupDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 79
    invoke-virtual {p0}, Lcom/lx/launcher8/view/PopupDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 81
    invoke-virtual {p0, v4}, Lcom/lx/launcher8/view/PopupDialog;->setCancelable(Z)V

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/PopupDialog;->setCanceledOnTouchOutside(Z)V

    .line 83
    return-void

    .line 59
    :cond_1
    iget v0, p0, Lcom/lx/launcher8/view/PopupDialog;->themeWallPaper:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 60
    iput v2, p0, Lcom/lx/launcher8/view/PopupDialog;->mTextColor:I

    .line 61
    iput v3, p0, Lcom/lx/launcher8/view/PopupDialog;->mBackgroundColor:I

    goto :goto_0

    .line 62
    :cond_2
    iget v0, p0, Lcom/lx/launcher8/view/PopupDialog;->themeWallPaper:I

    if-nez v0, :cond_0

    .line 63
    const/high16 v0, -0x100

    iput v0, p0, Lcom/lx/launcher8/view/PopupDialog;->mTextColor:I

    .line 64
    const v0, -0x222223

    iput v0, p0, Lcom/lx/launcher8/view/PopupDialog;->mBackgroundColor:I

    goto :goto_0
.end method

.method private initView()V
    .locals 14

    .prologue
    .line 92
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->mContext:Landroid/content/Context;

    const/high16 v10, 0x41a0

    invoke-static {v9, v10}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v9

    float-to-int v2, v9

    .line 94
    .local v2, padding:I
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/lx/launcher8/view/PopupDialog;->requestWindowFeature(I)Z

    .line 95
    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/lx/launcher8/view/PopupDialog;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->mainLayout:Landroid/widget/LinearLayout;

    .line 96
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->mainLayout:Landroid/widget/LinearLayout;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 97
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->mainLayout:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->mainLayout:Landroid/widget/LinearLayout;

    iget v10, p0, Lcom/lx/launcher8/view/PopupDialog;->mBackgroundColor:I

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 99
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 101
    new-instance v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/lx/launcher8/view/PopupDialog;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->title:Landroid/widget/TextView;

    .line 102
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->title:Landroid/widget/TextView;

    const/4 v10, 0x2

    const/high16 v11, 0x41a0

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 103
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->title:Landroid/widget/TextView;

    iget v10, p0, Lcom/lx/launcher8/view/PopupDialog;->mTextColor:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->title:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 105
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->title:Landroid/widget/TextView;

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 106
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->title:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/lx/launcher8/view/PopupDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 108
    new-instance v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/lx/launcher8/view/PopupDialog;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->msg:Landroid/widget/TextView;

    .line 109
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->msg:Landroid/widget/TextView;

    const/4 v10, 0x2

    const/high16 v11, 0x4180

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 110
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->msg:Landroid/widget/TextView;

    iget v10, p0, Lcom/lx/launcher8/view/PopupDialog;->mTextColor:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->msg:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 112
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->msg:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/lx/launcher8/view/PopupDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 114
    new-instance v9, Landroid/widget/EditText;

    iget-object v10, p0, Lcom/lx/launcher8/view/PopupDialog;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->editText:Landroid/widget/EditText;

    .line 115
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->editText:Landroid/widget/EditText;

    const/4 v10, 0x2

    const/high16 v11, 0x4160

    invoke-virtual {v9, v10, v11}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 116
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->editText:Landroid/widget/EditText;

    const/high16 v10, -0x100

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setTextColor(I)V

    .line 117
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->editText:Landroid/widget/EditText;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 118
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->editText:Landroid/widget/EditText;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 120
    new-instance v9, Landroid/widget/CheckBox;

    iget-object v10, p0, Lcom/lx/launcher8/view/PopupDialog;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->checkBox:Landroid/widget/CheckBox;

    .line 121
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->checkBox:Landroid/widget/CheckBox;

    const/high16 v10, 0x4150

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 122
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->checkBox:Landroid/widget/CheckBox;

    iget v10, p0, Lcom/lx/launcher8/view/PopupDialog;->mTextColor:I

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 123
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->checkBox:Landroid/widget/CheckBox;

    iget-object v10, p0, Lcom/lx/launcher8/view/PopupDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setMinWidth(I)V

    .line 125
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 126
    .local v1, centerLinear:Landroid/widget/LinearLayout;
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 128
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->msg:Landroid/widget/TextView;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v3, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 130
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v9, 0x0

    div-int/lit8 v10, v2, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-virtual {v3, v9, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 131
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v3, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 133
    .restart local v3       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v9, 0x0

    div-int/lit8 v10, v2, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-virtual {v3, v9, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 134
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    new-instance v8, Landroid/widget/ScrollView;

    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 137
    .local v8, scrollView:Landroid/widget/ScrollView;
    invoke-virtual {v8, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 138
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 140
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 141
    .local v0, btnLayout:Landroid/widget/LinearLayout;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 142
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    const/16 v9, 0x11

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 145
    new-instance v9, Landroid/widget/Button;

    iget-object v10, p0, Lcom/lx/launcher8/view/PopupDialog;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->ok:Landroid/widget/Button;

    .line 146
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->ok:Landroid/widget/Button;

    const/4 v10, 0x2

    const/high16 v11, 0x4180

    invoke-virtual {v9, v10, v11}, Landroid/widget/Button;->setTextSize(IF)V

    .line 147
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->ok:Landroid/widget/Button;

    const/4 v10, 0x0

    div-int/lit8 v11, v2, 0x2

    const/4 v12, 0x0

    div-int/lit8 v13, v2, 0x2

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/Button;->setPadding(IIII)V

    .line 148
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->ok:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/lx/launcher8/view/PopupDialog;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 149
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->ok:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/lx/launcher8/view/PopupDialog;->getSelectorButton()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 150
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->ok:Landroid/widget/Button;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    new-instance v9, Landroid/widget/Button;

    iget-object v10, p0, Lcom/lx/launcher8/view/PopupDialog;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->cancel:Landroid/widget/Button;

    .line 153
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->cancel:Landroid/widget/Button;

    const/4 v10, 0x2

    const/high16 v11, 0x4180

    invoke-virtual {v9, v10, v11}, Landroid/widget/Button;->setTextSize(IF)V

    .line 154
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->cancel:Landroid/widget/Button;

    const/4 v10, 0x0

    div-int/lit8 v11, v2, 0x2

    const/4 v12, 0x0

    div-int/lit8 v13, v2, 0x2

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/Button;->setPadding(IIII)V

    .line 155
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->cancel:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/lx/launcher8/view/PopupDialog;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 156
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->cancel:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/lx/launcher8/view/PopupDialog;->getSelectorButton()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 157
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->cancel:Landroid/widget/Button;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    const/high16 v11, 0x3f80

    invoke-direct {v4, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 160
    .local v4, params1:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v9, 0x0

    const/4 v10, 0x0

    div-int/lit8 v11, v2, 0x2

    const/4 v12, 0x0

    invoke-virtual {v4, v9, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 161
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->ok:Landroid/widget/Button;

    invoke-virtual {v0, v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    const/high16 v11, 0x3f80

    invoke-direct {v5, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 163
    .local v5, params2:Landroid/widget/LinearLayout$LayoutParams;
    div-int/lit8 v9, v2, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 164
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->cancel:Landroid/widget/Button;

    invoke-virtual {v0, v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    const/high16 v11, 0x3f80

    invoke-direct {v6, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 167
    .local v6, params3:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v10, v11, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 168
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v7, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 169
    .local v7, params4:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 171
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->mainLayout:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/lx/launcher8/view/PopupDialog;->title:Landroid/widget/TextView;

    invoke-virtual {v9, v10, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->mainLayout:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->title:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->msg:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->editText:Landroid/widget/EditText;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setVisibility(I)V

    .line 178
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->checkBox:Landroid/widget/CheckBox;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 179
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->ok:Landroid/widget/Button;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 180
    iget-object v9, p0, Lcom/lx/launcher8/view/PopupDialog;->cancel:Landroid/widget/Button;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 181
    return-void
.end method


# virtual methods
.method public getEditText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/lx/launcher8/view/PopupDialog;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectorButton()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/lx/launcher8/view/PopupDialog;->themeWallPaper:I

    if-nez v0, :cond_0

    .line 192
    const v0, 0x7f02006c

    .line 194
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0201ef

    goto :goto_0
.end method

.method public getSelectorEditText()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/lx/launcher8/view/PopupDialog;->themeWallPaper:I

    if-eqz v0, :cond_0

    .line 199
    const v0, 0x7f0200c0

    .line 201
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0200bf

    goto :goto_0
.end method

.method public getSelectorTextColor()Landroid/content/res/ColorStateList;
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/high16 v1, -0x100

    .line 184
    iget v0, p0, Lcom/lx/launcher8/view/PopupDialog;->themeWallPaper:I

    if-nez v0, :cond_0

    .line 185
    invoke-static {v2, v1}, Lcom/app/common/utils/ViewHelper;->getColor(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getColor(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/lx/launcher8/view/PopupDialog;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 88
    iget-object v0, p0, Lcom/lx/launcher8/view/PopupDialog;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/PopupDialog;->setContentView(Landroid/view/View;)V

    .line 89
    return-void
.end method

.method public setCancelButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;
    .locals 2
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/lx/launcher8/view/PopupDialog;->cancel:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lcom/lx/launcher8/view/PopupDialog;->cancel:Landroid/widget/Button;

    new-instance v1, Lcom/lx/launcher8/view/PopupDialog$2;

    invoke-direct {v1, p0, p2}, Lcom/lx/launcher8/view/PopupDialog$2;-><init>(Lcom/lx/launcher8/view/PopupDialog;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/lx/launcher8/view/PopupDialog;->cancel:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 243
    return-object p0
.end method

.method public setCheckBox(ZLjava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;
    .locals 2
    .parameter "check"
    .parameter "text"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/lx/launcher8/view/PopupDialog;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lcom/lx/launcher8/view/PopupDialog;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 259
    iget-object v0, p0, Lcom/lx/launcher8/view/PopupDialog;->checkBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 260
    return-object p0
.end method

.method public setEditTextVisible(Z)Lcom/lx/launcher8/view/PopupDialog;
    .locals 2
    .parameter "visible"

    .prologue
    .line 247
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/view/PopupDialog;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 249
    :goto_0
    return-object p0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/view/PopupDialog;->editText:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMsg(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;
    .locals 2
    .parameter "text"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/lx/launcher8/view/PopupDialog;->msg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/lx/launcher8/view/PopupDialog;->msg:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    return-object p0
.end method

.method public setOkButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;
    .locals 2
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/lx/launcher8/view/PopupDialog;->ok:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/lx/launcher8/view/PopupDialog;->ok:Landroid/widget/Button;

    new-instance v1, Lcom/lx/launcher8/view/PopupDialog$1;

    invoke-direct {v1, p0, p2}, Lcom/lx/launcher8/view/PopupDialog$1;-><init>(Lcom/lx/launcher8/view/PopupDialog;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/lx/launcher8/view/PopupDialog;->ok:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 228
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;
    .locals 2
    .parameter "text"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/lx/launcher8/view/PopupDialog;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/lx/launcher8/view/PopupDialog;->title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    return-object p0
.end method
