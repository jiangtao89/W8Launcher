.class public Lcom/lx/launcher8/view/FreshLayout;
.super Landroid/widget/RelativeLayout;
.source "FreshLayout.java"


# instance fields
.field private mFlipAnimation:Landroid/view/animation/RotateAnimation;

.field private mRefreshViewImage:Landroid/widget/ImageView;

.field private mRefreshViewLastUpdated:Landroid/widget/TextView;

.field private mRefreshViewProgress:Landroid/view/View;

.field private mRefreshViewText:Landroid/widget/TextView;

.field private mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p0}, Lcom/lx/launcher8/view/FreshLayout;->setupViews()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-virtual {p0}, Lcom/lx/launcher8/view/FreshLayout;->setupViews()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-virtual {p0}, Lcom/lx/launcher8/view/FreshLayout;->setupViews()V

    .line 38
    return-void
.end method


# virtual methods
.method public preperFresh()V
    .locals 3

    .prologue
    .line 110
    iget-object v1, p0, Lcom/lx/launcher8/view/FreshLayout;->mRefreshViewImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    iget-object v1, p0, Lcom/lx/launcher8/view/FreshLayout;->mRefreshViewImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v1, p0, Lcom/lx/launcher8/view/FreshLayout;->mRefreshViewProgress:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 115
    invoke-virtual {p0}, Lcom/lx/launcher8/view/FreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a025d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/lx/launcher8/view/FreshLayout;->mRefreshViewText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method

.method public pullToPull(Z)V
    .locals 2
    .parameter "anim"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lx/launcher8/view/FreshLayout;->mRefreshViewText:Landroid/widget/TextView;

    const v1, 0x7f0a025b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 103
    if-eqz p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/lx/launcher8/view/FreshLayout;->mRefreshViewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 105
    iget-object v0, p0, Lcom/lx/launcher8/view/FreshLayout;->mRefreshViewImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lx/launcher8/view/FreshLayout;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 107
    :cond_0
    return-void
.end method

.method public pullTorelase(Z)V
    .locals 2
    .parameter "anim"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lx/launcher8/view/FreshLayout;->mRefreshViewImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    if-nez p1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/view/FreshLayout;->mRefreshViewText:Landroid/widget/TextView;

    const v1, 0x7f0a025c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 97
    iget-object v0, p0, Lcom/lx/launcher8/view/FreshLayout;->mRefreshViewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 98
    iget-object v0, p0, Lcom/lx/launcher8/view/FreshLayout;->mRefreshViewImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lx/launcher8/view/FreshLayout;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lx/launcher8/view/FreshLayout;->mRefreshViewText:Landroid/widget/TextView;

    const v1, 0x7f0a025b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 85
    iget-object v0, p0, Lcom/lx/launcher8/view/FreshLayout;->mRefreshViewImage:Landroid/widget/ImageView;

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    iget-object v0, p0, Lcom/lx/launcher8/view/FreshLayout;->mRefreshViewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 89
    iget-object v0, p0, Lcom/lx/launcher8/view/FreshLayout;->mRefreshViewImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/lx/launcher8/view/FreshLayout;->mRefreshViewProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    return-void
.end method

.method public setLastUpdated(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "lastUpdated"

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/lx/launcher8/view/FreshLayout;->mRefreshViewLastUpdated:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/lx/launcher8/view/FreshLayout;->mRefreshViewLastUpdated:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/view/FreshLayout;->mRefreshViewLastUpdated:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method setupViews()V
    .locals 11

    .prologue
    .line 41
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc

    .line 42
    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    .line 43
    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 41
    iput-object v0, p0, Lcom/lx/launcher8/view/FreshLayout;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    .line 44
    iget-object v0, p0, Lcom/lx/launcher8/view/FreshLayout;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 45
    iget-object v0, p0, Lcom/lx/launcher8/view/FreshLayout;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 46
    iget-object v0, p0, Lcom/lx/launcher8/view/FreshLayout;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 47
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3ccc

    const/4 v2, 0x0

    .line 48
    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    .line 49
    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 47
    iput-object v0, p0, Lcom/lx/launcher8/view/FreshLayout;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    .line 50
    iget-object v0, p0, Lcom/lx/launcher8/view/FreshLayout;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 51
    iget-object v0, p0, Lcom/lx/launcher8/view/FreshLayout;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 52
    iget-object v0, p0, Lcom/lx/launcher8/view/FreshLayout;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/lx/launcher8/view/FreshLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03007a

    invoke-static {v0, v1, p0}, Lcom/lx/launcher8/view/FreshLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    const v0, 0x7f090208

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/FreshLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lx/launcher8/view/FreshLayout;->mRefreshViewText:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f09020b

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/FreshLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lx/launcher8/view/FreshLayout;->mRefreshViewImage:Landroid/widget/ImageView;

    .line 56
    const v0, 0x7f09020a

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/FreshLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/view/FreshLayout;->mRefreshViewProgress:Landroid/view/View;

    .line 57
    const v0, 0x7f090209

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/FreshLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lx/launcher8/view/FreshLayout;->mRefreshViewLastUpdated:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/lx/launcher8/view/FreshLayout;->mRefreshViewImage:Landroid/widget/ImageView;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 59
    new-instance v7, Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {p0}, Lcom/lx/launcher8/view/FreshLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    .line 60
    .local v7, deskSetting:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-virtual {v7}, Lcom/lx/launcher8/cfg/DeskSetting;->getSettingStyle()I

    move-result v8

    .line 61
    .local v8, settingStyle:I
    const/high16 v9, -0x100

    .line 62
    .local v9, textColor:I
    const/4 v0, 0x1

    if-ne v8, v0, :cond_1

    .line 63
    invoke-virtual {v7}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v10

    .line 64
    .local v10, themeWallPaper:I
    const/4 v0, 0x1

    if-eq v10, v0, :cond_0

    const/4 v0, 0x2

    if-ne v10, v0, :cond_1

    .line 65
    :cond_0
    const/4 v9, -0x1

    .line 68
    .end local v10           #themeWallPaper:I
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/view/FreshLayout;->mRefreshViewText:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    iget-object v0, p0, Lcom/lx/launcher8/view/FreshLayout;->mRefreshViewLastUpdated:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    invoke-virtual {p0}, Lcom/lx/launcher8/view/FreshLayout;->reset()V

    .line 71
    return-void
.end method
