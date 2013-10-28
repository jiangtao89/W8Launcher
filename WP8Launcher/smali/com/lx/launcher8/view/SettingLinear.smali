.class public Lcom/lx/launcher8/view/SettingLinear;
.super Landroid/widget/LinearLayout;
.source "SettingLinear.java"


# instance fields
.field private animIn:Landroid/view/animation/Animation;

.field private animOut:Landroid/view/animation/Animation;

.field private mBottomColorView:Landroid/view/View;

.field private mBottomImageView:Landroid/widget/ImageView;

.field private mBottomText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

.field private mTopText:Landroid/widget/TextView;

.field private padding:I

.field private themePaper:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lx/launcher8/view/SettingLinear;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput-object v1, p0, Lcom/lx/launcher8/view/SettingLinear;->mContext:Landroid/content/Context;

    .line 26
    iput-object v1, p0, Lcom/lx/launcher8/view/SettingLinear;->mTopText:Landroid/widget/TextView;

    .line 28
    iput-object v1, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomText:Landroid/widget/TextView;

    .line 30
    iput-object v1, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomColorView:Landroid/view/View;

    .line 32
    iput-object v1, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomImageView:Landroid/widget/ImageView;

    .line 36
    iput-object v1, p0, Lcom/lx/launcher8/view/SettingLinear;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/lx/launcher8/view/SettingLinear;->themePaper:I

    .line 96
    iput-object v1, p0, Lcom/lx/launcher8/view/SettingLinear;->animIn:Landroid/view/animation/Animation;

    .line 97
    iput-object v1, p0, Lcom/lx/launcher8/view/SettingLinear;->animOut:Landroid/view/animation/Animation;

    .line 46
    iput-object p1, p0, Lcom/lx/launcher8/view/SettingLinear;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {p0, v4}, Lcom/lx/launcher8/view/SettingLinear;->setOrientation(I)V

    .line 48
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/SettingLinear;->setGravity(I)V

    .line 49
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mContext:Landroid/content/Context;

    const/high16 v1, 0x4140

    invoke-static {v0, v1}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/view/SettingLinear;->padding:I

    .line 50
    iget v0, p0, Lcom/lx/launcher8/view/SettingLinear;->padding:I

    iget v1, p0, Lcom/lx/launcher8/view/SettingLinear;->padding:I

    iget v2, p0, Lcom/lx/launcher8/view/SettingLinear;->padding:I

    iget v3, p0, Lcom/lx/launcher8/view/SettingLinear;->padding:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lx/launcher8/view/SettingLinear;->setPadding(IIII)V

    .line 52
    new-instance v0, Lcom/lx/launcher8/cfg/DeskSetting;

    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinear;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 54
    invoke-direct {p0}, Lcom/lx/launcher8/view/SettingLinear;->initView()V

    .line 56
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mContext:Landroid/content/Context;

    const v1, 0x7f040010

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->animIn:Landroid/view/animation/Animation;

    .line 57
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mContext:Landroid/content/Context;

    const v1, 0x7f040011

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->animOut:Landroid/view/animation/Animation;

    .line 58
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->animIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 59
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->animOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 60
    return-void
.end method

.method private initData()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    const/16 v3, 0x19

    .line 85
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinear;->mTopText:Landroid/widget/TextView;

    invoke-static {v5, v4}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/lx/launcher8/view/SettingLinear;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinear;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 88
    .local v0, ll:Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 89
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 90
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomColorView:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomImageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomText:Landroid/widget/TextView;

    invoke-static {v5, v4}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-static {v5, v4}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/view/SettingLinear;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 63
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinear;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mTopText:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mTopText:Landroid/widget/TextView;

    const/high16 v1, 0x41d0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 66
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinear;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomText:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomText:Landroid/widget/TextView;

    const/high16 v1, 0x4160

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 68
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomText:Landroid/widget/TextView;

    const-string v1, "#a0a0a0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinear;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomColorView:Landroid/view/View;

    .line 72
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinear;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomImageView:Landroid/widget/ImageView;

    .line 73
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 75
    invoke-virtual {p0}, Lcom/lx/launcher8/view/SettingLinear;->onRefresh()V

    .line 76
    invoke-direct {p0}, Lcom/lx/launcher8/view/SettingLinear;->initData()V

    .line 78
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mTopText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomColorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 3

    .prologue
    .line 119
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinear;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v0

    .line 120
    .local v0, themePaper:I
    iget v1, p0, Lcom/lx/launcher8/view/SettingLinear;->themePaper:I

    if-eq v1, v0, :cond_0

    .line 121
    if-nez v0, :cond_1

    .line 122
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinear;->mTopText:Landroid/widget/TextView;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    :goto_0
    iput v0, p0, Lcom/lx/launcher8/view/SettingLinear;->themePaper:I

    .line 128
    :cond_0
    return-void

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/lx/launcher8/view/SettingLinear;->mTopText:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/lx/launcher8/view/SettingLinear;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 112
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 104
    :pswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->animIn:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/SettingLinear;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 108
    :pswitch_2
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->animOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/SettingLinear;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setBottomColorView(I)V
    .locals 4
    .parameter "color"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 156
    if-eqz p1, :cond_3

    .line 157
    iget v0, p0, Lcom/lx/launcher8/view/SettingLinear;->themePaper:I

    if-eqz v0, :cond_1

    const/high16 v0, -0x100

    if-ne p1, v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomColorView:Landroid/view/View;

    const v1, 0x7f0201cf

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 167
    :goto_0
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomColorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomText:Landroid/widget/TextView;

    iget v1, p0, Lcom/lx/launcher8/view/SettingLinear;->padding:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 170
    :cond_0
    return-void

    .line 159
    :cond_1
    iget v0, p0, Lcom/lx/launcher8/view/SettingLinear;->themePaper:I

    if-nez v0, :cond_2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomColorView:Landroid/view/View;

    const v1, 0x7f0201cc

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomColorView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomColorView:Landroid/view/View;

    const v1, 0x7f0201df

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setBottomImageView(II)V
    .locals 3
    .parameter "resource"
    .parameter "bgColor"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 193
    if-eqz p1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 196
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomColorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomText:Landroid/widget/TextView;

    iget v1, p0, Lcom/lx/launcher8/view/SettingLinear;->padding:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 200
    :cond_0
    return-void
.end method

.method public setBottomImageView(Landroid/graphics/Bitmap;I)V
    .locals 3
    .parameter "bitmap"
    .parameter "bgColor"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 173
    if-eqz p1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 175
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 176
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomColorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomText:Landroid/widget/TextView;

    iget v1, p0, Lcom/lx/launcher8/view/SettingLinear;->padding:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 180
    :cond_0
    return-void
.end method

.method public setBottomImageView(Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .parameter "drawable"
    .parameter "bgColor"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 183
    if-eqz p1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 186
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomColorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomText:Landroid/widget/TextView;

    iget v1, p0, Lcom/lx/launcher8/view/SettingLinear;->padding:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 190
    :cond_0
    return-void
.end method

.method public setBottomText(Ljava/lang/CharSequence;FI)V
    .locals 3
    .parameter "text"
    .parameter "textSize"
    .parameter "textColor"

    .prologue
    const/4 v2, 0x0

    .line 143
    if-nez p1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 147
    :cond_2
    if-eqz p3, :cond_3

    .line 148
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomText:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomColorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mBottomText:Landroid/widget/TextView;

    iget v1, p0, Lcom/lx/launcher8/view/SettingLinear;->padding:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setTopText(Ljava/lang/CharSequence;FI)V
    .locals 2
    .parameter "text"
    .parameter "textSize"
    .parameter "textColor"

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 140
    :goto_0
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mTopText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 135
    :cond_1
    if-eqz p3, :cond_2

    .line 136
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mTopText:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mTopText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/lx/launcher8/view/SettingLinear;->mTopText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
