.class public Lcom/app/common/view/TitleBar;
.super Landroid/widget/LinearLayout;
.source "TitleBar.java"


# instance fields
.field public mButtonCenter:Landroid/widget/Button;

.field public mButtonLeft:Landroid/widget/Button;

.field public mButtonRight:Landroid/widget/Button;

.field public mCenterLl:Landroid/widget/LinearLayout;

.field public mLeftLl:Landroid/widget/LinearLayout;

.field public mProgressBar:Landroid/widget/ProgressBar;

.field public mRightFl:Landroid/widget/FrameLayout;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/app/common/view/TitleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/app/common/view/TitleBar;->mTextColor:Landroid/content/res/ColorStateList;

    .line 36
    const/high16 v0, 0x4180

    iput v0, p0, Lcom/app/common/view/TitleBar;->mTextSize:F

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/app/common/view/TitleBar;->setOrientation(I)V

    .line 45
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/app/common/view/TitleBar;->setGravity(I)V

    .line 46
    invoke-virtual {p0}, Lcom/app/common/view/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/app/common/config/Resources;->titlebar_bg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/app/common/view/TitleBar;->setBackgroundResource(I)V

    .line 47
    invoke-virtual {p0}, Lcom/app/common/view/TitleBar;->initChildrenViews()V

    .line 49
    return-void
.end method


# virtual methods
.method public hideProgress()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/app/common/view/TitleBar;->mButtonRight:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/app/common/view/TitleBar;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 186
    return-void
.end method

.method initChildrenViews()V
    .locals 8

    .prologue
    const/16 v7, 0x11

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 52
    invoke-virtual {p0}, Lcom/app/common/view/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    .local v0, context:Landroid/content/Context;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/app/common/view/TitleBar;->mLeftLl:Landroid/widget/LinearLayout;

    .line 54
    iget-object v2, p0, Lcom/app/common/view/TitleBar;->mLeftLl:Landroid/widget/LinearLayout;

    invoke-static {v5, v5}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object v2, p0, Lcom/app/common/view/TitleBar;->mLeftLl:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 56
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/app/common/view/TitleBar;->mButtonLeft:Landroid/widget/Button;

    .line 57
    iget-object v2, p0, Lcom/app/common/view/TitleBar;->mButtonLeft:Landroid/widget/Button;

    invoke-static {v5, v5}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    const-string v2, "title_bar_c_left"

    const-string v3, "color"

    invoke-static {v0, v2, v3}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 59
    .local v1, id:I
    if-lez v1, :cond_0

    .line 60
    iget-object v2, p0, Lcom/app/common/view/TitleBar;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 64
    :goto_0
    iget-object v2, p0, Lcom/app/common/view/TitleBar;->mButtonLeft:Landroid/widget/Button;

    iget v3, p0, Lcom/app/common/view/TitleBar;->mTextSize:F

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 65
    iget-object v2, p0, Lcom/app/common/view/TitleBar;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 66
    iget-object v2, p0, Lcom/app/common/view/TitleBar;->mLeftLl:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/app/common/view/TitleBar;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/app/common/view/TitleBar;->mCenterLl:Landroid/widget/LinearLayout;

    .line 69
    iget-object v2, p0, Lcom/app/common/view/TitleBar;->mCenterLl:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/high16 v4, 0x3f80

    invoke-static {v3, v5, v4}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v2, p0, Lcom/app/common/view/TitleBar;->mCenterLl:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 71
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/app/common/view/TitleBar;->mButtonCenter:Landroid/widget/Button;

    .line 72
    iget-object v2, p0, Lcom/app/common/view/TitleBar;->mButtonCenter:Landroid/widget/Button;

    invoke-static {v5, v5}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    const-string v2, "title_bar_c_center"

    const-string v3, "color"

    invoke-static {v0, v2, v3}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 74
    if-lez v1, :cond_1

    .line 75
    iget-object v2, p0, Lcom/app/common/view/TitleBar;->mButtonCenter:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 79
    :goto_1
    iget-object v2, p0, Lcom/app/common/view/TitleBar;->mButtonCenter:Landroid/widget/Button;

    iget v3, p0, Lcom/app/common/view/TitleBar;->mTextSize:F

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 80
    iget-object v2, p0, Lcom/app/common/view/TitleBar;->mButtonCenter:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 81
    iget-object v2, p0, Lcom/app/common/view/TitleBar;->mCenterLl:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/app/common/view/TitleBar;->mButtonCenter:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/app/common/view/TitleBar;->mRightFl:Landroid/widget/FrameLayout;

    .line 84
    iget-object v2, p0, Lcom/app/common/view/TitleBar;->mRightFl:Landroid/widget/FrameLayout;

    invoke-static {v5, v5}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/app/common/view/TitleBar;->mButtonRight:Landroid/widget/Button;

    .line 86
    iget-object v2, p0, Lcom/app/common/view/TitleBar;->mButtonRight:Landroid/widget/Button;

    invoke-static {v5, v5}, Lcom/app/common/utils/ViewHelper;->getFLParam(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    const-string v2, "title_bar_c_right"

    const-string v3, "color"

    invoke-static {v0, v2, v3}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 88
    if-lez v1, :cond_2

    .line 89
    iget-object v2, p0, Lcom/app/common/view/TitleBar;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 93
    :goto_2
    iget-object v2, p0, Lcom/app/common/view/TitleBar;->mButtonRight:Landroid/widget/Button;

    iget v3, p0, Lcom/app/common/view/TitleBar;->mTextSize:F

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 94
    iget-object v2, p0, Lcom/app/common/view/TitleBar;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 95
    iget-object v2, p0, Lcom/app/common/view/TitleBar;->mRightFl:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/app/common/view/TitleBar;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 96
    new-instance v2, Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    const v4, 0x1010079

    invoke-direct {v2, v0, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/app/common/view/TitleBar;->mProgressBar:Landroid/widget/ProgressBar;

    .line 97
    iget-object v2, p0, Lcom/app/common/view/TitleBar;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v5, v5, v7}, Lcom/app/common/utils/ViewHelper;->getFLParam(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v2, p0, Lcom/app/common/view/TitleBar;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 99
    iget-object v2, p0, Lcom/app/common/view/TitleBar;->mRightFl:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/app/common/view/TitleBar;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 101
    iget-object v2, p0, Lcom/app/common/view/TitleBar;->mLeftLl:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/app/common/view/TitleBar;->addView(Landroid/view/View;)V

    .line 102
    iget-object v2, p0, Lcom/app/common/view/TitleBar;->mCenterLl:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/app/common/view/TitleBar;->addView(Landroid/view/View;)V

    .line 103
    iget-object v2, p0, Lcom/app/common/view/TitleBar;->mRightFl:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Lcom/app/common/view/TitleBar;->addView(Landroid/view/View;)V

    .line 104
    return-void

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/app/common/view/TitleBar;->mButtonLeft:Landroid/widget/Button;

    iget-object v3, p0, Lcom/app/common/view/TitleBar;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    .line 77
    :cond_1
    iget-object v2, p0, Lcom/app/common/view/TitleBar;->mButtonCenter:Landroid/widget/Button;

    iget-object v3, p0, Lcom/app/common/view/TitleBar;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    .line 91
    :cond_2
    iget-object v2, p0, Lcom/app/common/view/TitleBar;->mButtonRight:Landroid/widget/Button;

    iget-object v3, p0, Lcom/app/common/view/TitleBar;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2
.end method

.method public isProgress()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/app/common/view/TitleBar;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDrawables(III)V
    .locals 2
    .parameter "leftTextResId"
    .parameter "centerTextResId"
    .parameter "rightTextResId"

    .prologue
    const/4 v1, -0x1

    .line 119
    if-le p1, v1, :cond_0

    iget-object v0, p0, Lcom/app/common/view/TitleBar;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 120
    :cond_0
    if-le p1, v1, :cond_1

    iget-object v0, p0, Lcom/app/common/view/TitleBar;->mButtonCenter:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 121
    :cond_1
    if-le p1, v1, :cond_2

    iget-object v0, p0, Lcom/app/common/view/TitleBar;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 122
    :cond_2
    return-void
.end method

.method public setDrawables(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/StateListDrawable;)V
    .locals 1
    .parameter "left"
    .parameter "center"
    .parameter "right"

    .prologue
    .line 128
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/app/common/view/TitleBar;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/app/common/view/TitleBar;->mButtonCenter:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/app/common/view/TitleBar;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    :cond_2
    return-void
.end method

.method setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "tv"
    .parameter "text"

    .prologue
    .line 107
    if-eqz p2, :cond_0

    .line 108
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "left"
    .parameter "center"
    .parameter "right"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/app/common/view/TitleBar;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {p0, v0, p1}, Lcom/app/common/view/TitleBar;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/app/common/view/TitleBar;->mButtonCenter:Landroid/widget/Button;

    invoke-virtual {p0, v0, p2}, Lcom/app/common/view/TitleBar;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/app/common/view/TitleBar;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {p0, v0, p3}, Lcom/app/common/view/TitleBar;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 145
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 164
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/app/common/view/TitleBar;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 165
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .parameter "color"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/app/common/view/TitleBar;->mTextColor:Landroid/content/res/ColorStateList;

    .line 173
    iget-object v0, p0, Lcom/app/common/view/TitleBar;->mButtonLeft:Landroid/widget/Button;

    iget-object v1, p0, Lcom/app/common/view/TitleBar;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 174
    iget-object v0, p0, Lcom/app/common/view/TitleBar;->mButtonCenter:Landroid/widget/Button;

    iget-object v1, p0, Lcom/app/common/view/TitleBar;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 175
    iget-object v0, p0, Lcom/app/common/view/TitleBar;->mButtonRight:Landroid/widget/Button;

    iget-object v1, p0, Lcom/app/common/view/TitleBar;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 176
    return-void
.end method

.method public setTextSize(F)V
    .locals 2
    .parameter "size"

    .prologue
    .line 151
    iget v0, p0, Lcom/app/common/view/TitleBar;->mTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 152
    iput p1, p0, Lcom/app/common/view/TitleBar;->mTextSize:F

    .line 153
    iget-object v0, p0, Lcom/app/common/view/TitleBar;->mButtonLeft:Landroid/widget/Button;

    iget v1, p0, Lcom/app/common/view/TitleBar;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 154
    iget-object v0, p0, Lcom/app/common/view/TitleBar;->mButtonCenter:Landroid/widget/Button;

    iget v1, p0, Lcom/app/common/view/TitleBar;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 155
    iget-object v0, p0, Lcom/app/common/view/TitleBar;->mButtonRight:Landroid/widget/Button;

    iget v1, p0, Lcom/app/common/view/TitleBar;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 157
    :cond_0
    return-void
.end method

.method public showProgress()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/app/common/view/TitleBar;->mButtonRight:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/app/common/view/TitleBar;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 181
    return-void
.end method
