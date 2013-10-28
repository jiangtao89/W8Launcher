.class public Lcom/app/ads/view/AdItemView;
.super Landroid/widget/LinearLayout;
.source "AdItemView.java"


# instance fields
.field public mBtn:Landroid/widget/Button;

.field public mIconIv:Landroid/widget/ImageView;

.field public mLoadCountTv:Landroid/widget/TextView;

.field public mNameTv:Landroid/widget/TextView;

.field public mRatingBar:Lcom/app/common/view/RatingLayout;

.field public mSizeTv:Landroid/widget/TextView;

.field public mSorceAwardTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/app/ads/view/AdItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-virtual {p0}, Lcom/app/ads/view/AdItemView;->initView()V

    .line 40
    return-void
.end method


# virtual methods
.method createTextView()Landroid/widget/TextView;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 136
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/app/ads/view/AdItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 137
    .local v0, tv:Landroid/widget/TextView;
    invoke-static {v2, v2}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    return-object v0
.end method

.method protected initView()V
    .locals 13

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/app/ads/view/AdItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 46
    .local v0, context:Landroid/content/Context;
    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-static {v9, v10}, Lcom/app/common/utils/ViewHelper;->getALParam(II)Landroid/widget/AbsListView$LayoutParams;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/app/ads/view/AdItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    const/16 v9, 0x10

    invoke-virtual {p0, v9}, Lcom/app/ads/view/AdItemView;->setGravity(I)V

    .line 49
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    .local v6, root:Landroid/view/ViewGroup;
    sget-object v9, Lcom/app/common/config/Resources;->list_item_default:Ljava/lang/String;

    invoke-static {v0, v9}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 51
    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-static {v9, v10}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 52
    .local v3, lllp:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v9, 0x40a0

    invoke-static {v0, v9}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v9

    float-to-int v7, v9

    .line 53
    .local v7, tmp:I
    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 54
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    invoke-virtual {p0, v6}, Lcom/app/ads/view/AdItemView;->addView(Landroid/view/View;)V

    .line 57
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    .local v1, ll:Landroid/widget/LinearLayout;
    const/4 v9, -0x2

    const/4 v10, -0x1

    invoke-static {v9, v10}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 59
    .local v5, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v9, 0x4040

    invoke-static {v0, v9}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v9

    float-to-int v7, v9

    .line 60
    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 61
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    const/16 v9, 0x10

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 63
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/app/ads/view/AdItemView;->mIconIv:Landroid/widget/ImageView;

    .line 65
    iget-object v9, p0, Lcom/app/ads/view/AdItemView;->mIconIv:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/app/ads/view/AdItemView;->getContext()Landroid/content/Context;

    move-result-object v10

    sget-object v11, Lcom/app/ads/config/Resources;->ad_icon_bg:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 66
    iget-object v9, p0, Lcom/app/ads/view/AdItemView;->mIconIv:Landroid/widget/ImageView;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-static {v10, v11}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object v9, p0, Lcom/app/ads/view/AdItemView;->mIconIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 69
    new-instance v1, Landroid/widget/LinearLayout;

    .end local v1           #ll:Landroid/widget/LinearLayout;
    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 70
    .restart local v1       #ll:Landroid/widget/LinearLayout;
    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-static {v9, v10}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 72
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 75
    .local v2, lll:Landroid/widget/LinearLayout;
    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-static {v9, v10}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v1, v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 77
    .local v8, tmpll:Landroid/widget/LinearLayout;
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 78
    const/4 v9, 0x0

    const/4 v10, -0x2

    const/high16 v11, 0x3f80

    invoke-static {v9, v10, v11}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/app/ads/view/AdItemView;->mNameTv:Landroid/widget/TextView;

    .line 81
    iget-object v9, p0, Lcom/app/ads/view/AdItemView;->mNameTv:Landroid/widget/TextView;

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/high16 v12, 0x3f80

    invoke-static {v10, v11, v12}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v9, p0, Lcom/app/ads/view/AdItemView;->mNameTv:Landroid/widget/TextView;

    const/high16 v10, 0x4170

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 83
    iget-object v9, p0, Lcom/app/ads/view/AdItemView;->mNameTv:Landroid/widget/TextView;

    const/high16 v10, -0x100

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object v9, p0, Lcom/app/ads/view/AdItemView;->mNameTv:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 85
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/app/ads/view/AdItemView;->mLoadCountTv:Landroid/widget/TextView;

    .line 86
    iget-object v9, p0, Lcom/app/ads/view/AdItemView;->mLoadCountTv:Landroid/widget/TextView;

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/high16 v12, 0x3f80

    invoke-static {v10, v11, v12}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v9, p0, Lcom/app/ads/view/AdItemView;->mLoadCountTv:Landroid/widget/TextView;

    const/high16 v10, 0x4150

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 88
    iget-object v9, p0, Lcom/app/ads/view/AdItemView;->mLoadCountTv:Landroid/widget/TextView;

    const v10, -0x7b7b7c

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    iget-object v9, p0, Lcom/app/ads/view/AdItemView;->mLoadCountTv:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    new-instance v8, Landroid/widget/LinearLayout;

    .end local v8           #tmpll:Landroid/widget/LinearLayout;
    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 95
    .restart local v8       #tmpll:Landroid/widget/LinearLayout;
    const/4 v9, -0x2

    const/4 v10, -0x1

    invoke-static {v9, v10}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    new-instance v9, Landroid/widget/Button;

    invoke-direct {v9, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/app/ads/view/AdItemView;->mBtn:Landroid/widget/Button;

    .line 106
    iget-object v9, p0, Lcom/app/ads/view/AdItemView;->mBtn:Landroid/widget/Button;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setFocusable(Z)V

    .line 107
    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-static {v9, v10}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 108
    .local v4, llp:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v9, 0x11

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 109
    iget-object v9, p0, Lcom/app/ads/view/AdItemView;->mBtn:Landroid/widget/Button;

    invoke-virtual {v8, v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    new-instance v8, Landroid/widget/LinearLayout;

    .end local v8           #tmpll:Landroid/widget/LinearLayout;
    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 112
    .restart local v8       #tmpll:Landroid/widget/LinearLayout;
    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-static {v9, v10}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 114
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    new-instance v9, Lcom/app/common/view/RatingLayout;

    invoke-direct {v9, v0}, Lcom/app/common/view/RatingLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/app/ads/view/AdItemView;->mRatingBar:Lcom/app/common/view/RatingLayout;

    .line 117
    iget-object v9, p0, Lcom/app/ads/view/AdItemView;->mRatingBar:Lcom/app/common/view/RatingLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/app/common/view/RatingLayout;->setFocusable(Z)V

    .line 118
    iget-object v9, p0, Lcom/app/ads/view/AdItemView;->mRatingBar:Lcom/app/common/view/RatingLayout;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-static {v10, v11}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/app/common/view/RatingLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v9, p0, Lcom/app/ads/view/AdItemView;->mRatingBar:Lcom/app/common/view/RatingLayout;

    sget-object v10, Lcom/app/ads/config/Resources;->ad_ratingbaru:Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    sget-object v11, Lcom/app/ads/config/Resources;->ad_ratingbars:Ljava/lang/String;

    invoke-static {v0, v11}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/app/common/view/RatingLayout;->setImageResources(II)V

    .line 120
    iget-object v9, p0, Lcom/app/ads/view/AdItemView;->mRatingBar:Lcom/app/common/view/RatingLayout;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Lcom/app/common/view/RatingLayout;->setNumStars(I)V

    .line 121
    iget-object v9, p0, Lcom/app/ads/view/AdItemView;->mRatingBar:Lcom/app/common/view/RatingLayout;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/app/common/view/RatingLayout;->setRating(I)V

    .line 122
    iget-object v9, p0, Lcom/app/ads/view/AdItemView;->mRatingBar:Lcom/app/common/view/RatingLayout;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 123
    new-instance v9, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/app/ads/view/AdItemView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/app/ads/view/AdItemView;->mSorceAwardTv:Landroid/widget/TextView;

    .line 124
    iget-object v9, p0, Lcom/app/ads/view/AdItemView;->mSorceAwardTv:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, -0x2

    const/high16 v12, 0x3f80

    invoke-static {v10, v11, v12}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v9, p0, Lcom/app/ads/view/AdItemView;->mSorceAwardTv:Landroid/widget/TextView;

    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 126
    iget-object v9, p0, Lcom/app/ads/view/AdItemView;->mSorceAwardTv:Landroid/widget/TextView;

    const v10, -0xff4812

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    iget-object v9, p0, Lcom/app/ads/view/AdItemView;->mSorceAwardTv:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/app/ads/view/AdItemView;->mSizeTv:Landroid/widget/TextView;

    .line 129
    iget-object v9, p0, Lcom/app/ads/view/AdItemView;->mSizeTv:Landroid/widget/TextView;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 130
    iget-object v9, p0, Lcom/app/ads/view/AdItemView;->mSizeTv:Landroid/widget/TextView;

    const v10, -0xff4812

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    iget-object v9, p0, Lcom/app/ads/view/AdItemView;->mSizeTv:Landroid/widget/TextView;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-static {v10, v11}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    return-void
.end method
