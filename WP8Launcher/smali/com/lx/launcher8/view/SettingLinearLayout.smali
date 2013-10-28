.class public Lcom/lx/launcher8/view/SettingLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SettingLinearLayout.java"


# instance fields
.field private mCenterBottomText:Landroid/widget/TextView;

.field private mCenterEditText:Landroid/widget/EditText;

.field private mCenterTopText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mLeftIcon:Landroid/widget/ImageView;

.field private mRightColorView:Landroid/view/View;

.field private mRightImageView:Landroid/widget/ImageView;

.field private mRightImg:Landroid/widget/ImageView;

.field private mRightText:Landroid/widget/TextView;

.field private mRightTriangle:Landroid/widget/ImageView;

.field private mSeekButton:Lcom/lx/launcher8/view/SeekButton;

.field private padding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lx/launcher8/view/SettingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mLeftIcon:Landroid/widget/ImageView;

    .line 26
    iput-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterTopText:Landroid/widget/TextView;

    .line 28
    iput-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterBottomText:Landroid/widget/TextView;

    .line 30
    iput-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterEditText:Landroid/widget/EditText;

    .line 32
    iput-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightImg:Landroid/widget/ImageView;

    .line 34
    iput-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightText:Landroid/widget/TextView;

    .line 36
    iput-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightColorView:Landroid/view/View;

    .line 38
    iput-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightImageView:Landroid/widget/ImageView;

    .line 40
    iput-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightTriangle:Landroid/widget/ImageView;

    .line 42
    iput-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mSeekButton:Lcom/lx/launcher8/view/SeekButton;

    .line 44
    iput-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mContext:Landroid/content/Context;

    .line 46
    const/16 v0, 0xf

    iput v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->padding:I

    .line 54
    iput-object p1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mContext:Landroid/content/Context;

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/SettingLinearLayout;->setOrientation(I)V

    .line 56
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/SettingLinearLayout;->setGravity(I)V

    .line 57
    iget v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->padding:I

    iget v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->padding:I

    iget v2, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->padding:I

    iget v3, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->padding:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lx/launcher8/view/SettingLinearLayout;->setPadding(IIII)V

    .line 58
    const v0, 0x7f02011a

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/SettingLinearLayout;->setBackgroundResource(I)V

    .line 59
    invoke-direct {p0}, Lcom/lx/launcher8/view/SettingLinearLayout;->initView()V

    .line 60
    return-void
.end method

.method private initData()V
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/4 v8, -0x1

    const/high16 v7, 0x3f80

    const/16 v6, 0x1e

    const/4 v5, -0x2

    .line 122
    iget-object v3, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mLeftIcon:Landroid/widget/ImageView;

    invoke-static {v5, v5}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 126
    .local v1, ll:Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 127
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 128
    iget-object v3, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterTopText:Landroid/widget/TextView;

    invoke-static {v8, v5, v7}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v3, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterBottomText:Landroid/widget/TextView;

    invoke-static {v8, v5}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v3, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterEditText:Landroid/widget/EditText;

    invoke-static {v8, v5, v7}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    invoke-static {v5, v5, v7}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/lx/launcher8/view/SettingLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 135
    .local v2, ll1:Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 136
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 137
    iget-object v3, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightImg:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iget-object v3, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightText:Landroid/widget/TextView;

    invoke-static {v5, v5}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object v3, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightColorView:Landroid/view/View;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    iget-object v3, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightImageView:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v3, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightTriangle:Landroid/widget/ImageView;

    invoke-static {v5, v5}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    invoke-static {v5, v5}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/lx/launcher8/view/SettingLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v3, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02008a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 150
    .local v0, btn:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mSeekButton:Lcom/lx/launcher8/view/SeekButton;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/lx/launcher8/view/SettingLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    return-void
.end method

.method private initView()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/high16 v5, -0x100

    const/high16 v4, 0x4180

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 63
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mLeftIcon:Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mLeftIcon:Landroid/widget/ImageView;

    const/16 v1, 0xa

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 66
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterTopText:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterTopText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterTopText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 69
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterTopText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 70
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterTopText:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 71
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterTopText:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 73
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterBottomText:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterBottomText:Landroid/widget/TextView;

    const-string v1, "#a0a0a0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterBottomText:Landroid/widget/TextView;

    const/high16 v1, 0x4140

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 76
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterBottomText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 77
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterBottomText:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 78
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterBottomText:Landroid/widget/TextView;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 80
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterEditText:Landroid/widget/EditText;

    .line 82
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 83
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextSize(F)V

    .line 84
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setTextColor(I)V

    .line 85
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterEditText:Landroid/widget/EditText;

    const-string v1, "#a0a0a0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 87
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightImg:Landroid/widget/ImageView;

    .line 88
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightImg:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 90
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightText:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightText:Landroid/widget/TextView;

    const-string v1, "#a0a0a0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightText:Landroid/widget/TextView;

    const/high16 v1, 0x4160

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 94
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightColorView:Landroid/view/View;

    .line 96
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightImageView:Landroid/widget/ImageView;

    .line 97
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 99
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightTriangle:Landroid/widget/ImageView;

    .line 100
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightTriangle:Landroid/widget/ImageView;

    const v1, 0x7f020023

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightTriangle:Landroid/widget/ImageView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 103
    new-instance v0, Lcom/lx/launcher8/view/SeekButton;

    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/view/SeekButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mSeekButton:Lcom/lx/launcher8/view/SeekButton;

    .line 105
    invoke-direct {p0}, Lcom/lx/launcher8/view/SettingLinearLayout;->initData()V

    .line 107
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mLeftIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterTopText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterBottomText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightColorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightTriangle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mSeekButton:Lcom/lx/launcher8/view/SeekButton;

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/SeekButton;->setVisibility(I)V

    .line 117
    return-void
.end method


# virtual methods
.method public getEditText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCenterBottomText(Ljava/lang/CharSequence;IF)V
    .locals 6
    .parameter "text"
    .parameter "color"
    .parameter "size"

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 226
    :goto_0
    return-void

    .line 213
    :cond_0
    if-eqz p2, :cond_1

    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterBottomText:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    :cond_1
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterBottomText:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 219
    :cond_2
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterBottomText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterBottomText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mLeftIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterTopText:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 222
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mLeftIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/16 v4, 0xa

    const/16 v5, 0xa

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setCenterEditText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IF)V
    .locals 3
    .parameter "text"
    .parameter "hint"
    .parameter "color"
    .parameter "size"

    .prologue
    .line 236
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 255
    :goto_0
    return-void

    .line 238
    :cond_0
    if-eqz p3, :cond_1

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 241
    :cond_1
    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-eqz v1, :cond_2

    .line 242
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p4}, Landroid/widget/EditText;->setTextSize(F)V

    .line 244
    :cond_2
    if-eqz p1, :cond_3

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 245
    :cond_3
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 250
    :goto_1
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 247
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterEditText:Landroid/widget/EditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setCenterTopText(Ljava/lang/CharSequence;IF)V
    .locals 6
    .parameter "text"
    .parameter "color"
    .parameter "size"

    .prologue
    .line 188
    if-nez p1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    if-eqz p2, :cond_2

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterTopText:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    :cond_2
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_3

    .line 194
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterTopText:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 196
    :cond_3
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterTopText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterTopText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mLeftIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterTopText:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setLeftIcon(I)V
    .locals 3
    .parameter "resourceId"

    .prologue
    .line 158
    if-nez p1, :cond_0

    .line 165
    :goto_0
    return-void

    .line 160
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mLeftIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mLeftIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setLeftIcon(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 179
    :goto_0
    return-void

    .line 174
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mLeftIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 175
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mLeftIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setRightColorView(I)V
    .locals 3
    .parameter "color"

    .prologue
    const/16 v2, 0x8

    .line 336
    if-eqz p1, :cond_1

    .line 337
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightColorView:Landroid/view/View;

    const v1, 0x7f0201cc

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 345
    :goto_0
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mSeekButton:Lcom/lx/launcher8/view/SeekButton;

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/SeekButton;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightColorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 349
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightColorView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightColorView:Landroid/view/View;

    const v1, 0x7f0201df

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setRightImageView(II)V
    .locals 3
    .parameter "resource"
    .parameter "bgColor"

    .prologue
    const/16 v2, 0x8

    .line 376
    if-eqz p1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 378
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 379
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mSeekButton:Lcom/lx/launcher8/view/SeekButton;

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/SeekButton;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightColorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 385
    :cond_0
    return-void
.end method

.method public setRightImageView(Landroid/graphics/Bitmap;I)V
    .locals 3
    .parameter "bitmap"
    .parameter "bgColor"

    .prologue
    const/16 v2, 0x8

    .line 352
    if-eqz p1, :cond_0

    .line 353
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 354
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 355
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mSeekButton:Lcom/lx/launcher8/view/SeekButton;

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/SeekButton;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightColorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 361
    :cond_0
    return-void
.end method

.method public setRightImageView(Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .parameter "drawable"
    .parameter "bgColor"

    .prologue
    const/16 v2, 0x8

    .line 364
    if-eqz p1, :cond_0

    .line 365
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 366
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 367
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mSeekButton:Lcom/lx/launcher8/view/SeekButton;

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/SeekButton;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightColorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 373
    :cond_0
    return-void
.end method

.method public setRightImg(ILandroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "resource"
    .parameter "mOnClickListener"

    .prologue
    .line 267
    if-eqz p1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 269
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 271
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    :cond_1
    return-void
.end method

.method public setRightImg(Landroid/graphics/Bitmap;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "bitmap"
    .parameter "mOnClickListener"

    .prologue
    .line 280
    if-eqz p1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 282
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    :cond_1
    return-void
.end method

.method public setRightText(Ljava/lang/CharSequence;IF)V
    .locals 4
    .parameter "text"
    .parameter "color"
    .parameter "size"

    .prologue
    const/16 v3, 0x8

    .line 294
    if-nez p1, :cond_0

    .line 312
    :goto_0
    return-void

    .line 296
    :cond_0
    if-eqz p2, :cond_1

    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightText:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 299
    :cond_1
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_2

    .line 300
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightText:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 302
    :cond_2
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mSeekButton:Lcom/lx/launcher8/view/SeekButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/SeekButton;->setVisibility(I)V

    .line 305
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightColorView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightTriangle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightTriangle:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    :cond_3
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setRightTriangle(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    const/16 v1, 0x8

    .line 319
    if-eqz p1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mSeekButton:Lcom/lx/launcher8/view/SeekButton;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SeekButton;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightTriangle:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 329
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightColorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightTriangle:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightTriangle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSeekButton(ZLcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V
    .locals 3
    .parameter "state"
    .parameter "onTouchOverListener"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 392
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightColorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mRightTriangle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mSeekButton:Lcom/lx/launcher8/view/SeekButton;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SeekButton;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mSeekButton:Lcom/lx/launcher8/view/SeekButton;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/view/SeekButton;->setState(Z)V

    .line 399
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mSeekButton:Lcom/lx/launcher8/view/SeekButton;

    invoke-virtual {v0, p2}, Lcom/lx/launcher8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mLeftIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mCenterTopText:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 401
    :cond_1
    return-void
.end method

.method public setSeekButton(ZLcom/lx/launcher8/view/SeekButton$OnTouchOverListener;I)V
    .locals 1
    .parameter "state"
    .parameter "onTouchOverListener"
    .parameter "id"

    .prologue
    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/lx/launcher8/view/SettingLinearLayout;->setSeekButton(ZLcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 409
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinearLayout;->mSeekButton:Lcom/lx/launcher8/view/SeekButton;

    invoke-virtual {v0, p3}, Lcom/lx/launcher8/view/SeekButton;->setId(I)V

    .line 410
    return-void
.end method
