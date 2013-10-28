.class public Lcom/app/common/view/RatingLayout;
.super Landroid/widget/LinearLayout;
.source "RatingLayout.java"


# instance fields
.field private mIndicator:Z

.field private mResIds:[Landroid/graphics/drawable/Drawable;

.field private mStartNum:I

.field private mStep:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/app/common/view/RatingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/app/common/view/RatingLayout;->setOrientation(I)V

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/app/common/view/RatingLayout;->mResIds:[Landroid/graphics/drawable/Drawable;

    .line 35
    iput-boolean v1, p0, Lcom/app/common/view/RatingLayout;->mIndicator:Z

    .line 36
    const/4 v0, 0x5

    iput v0, p0, Lcom/app/common/view/RatingLayout;->mStartNum:I

    .line 37
    iput v1, p0, Lcom/app/common/view/RatingLayout;->mStep:I

    .line 38
    invoke-direct {p0}, Lcom/app/common/view/RatingLayout;->init()V

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/app/common/view/RatingLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcom/app/common/view/RatingLayout;->mStartNum:I

    return v0
.end method

.method private changeListener()V
    .locals 5

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/app/common/view/RatingLayout;->getChildCount()I

    move-result v0

    .line 122
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 134
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0, v1}, Lcom/app/common/view/RatingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 124
    .local v2, iv:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->isClickable()Z

    move-result v3

    iget-boolean v4, p0, Lcom/app/common/view/RatingLayout;->mIndicator:Z

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Lcom/app/common/view/RatingLayout;->mIndicator:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 125
    :cond_1
    iget-boolean v3, p0, Lcom/app/common/view/RatingLayout;->mIndicator:Z

    if-nez v3, :cond_2

    .line 126
    new-instance v3, Lcom/app/common/view/RatingLayout$1;

    invoke-direct {v3, p0}, Lcom/app/common/view/RatingLayout$1;-><init>(Lcom/app/common/view/RatingLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_3
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private changeSteps()V
    .locals 5

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/app/common/view/RatingLayout;->getChildCount()I

    move-result v0

    .line 114
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 118
    return-void

    .line 115
    :cond_0
    invoke-virtual {p0, v1}, Lcom/app/common/view/RatingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 116
    .local v2, iv:Landroid/widget/ImageView;
    iget v3, p0, Lcom/app/common/view/RatingLayout;->mStep:I

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/app/common/view/RatingLayout;->mResIds:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_1
    iget-object v3, p0, Lcom/app/common/view/RatingLayout;->mResIds:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    goto :goto_1
.end method

.method private createItem(ILandroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;
    .locals 2
    .parameter "id"
    .parameter "draw"

    .prologue
    .line 49
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/app/common/view/RatingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, iv:Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 51
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 52
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setId(I)V

    .line 54
    return-object v0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 42
    invoke-virtual {p0}, Lcom/app/common/view/RatingLayout;->removeAllViews()V

    .line 43
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/app/common/view/RatingLayout;->changeListener()V

    .line 47
    return-void

    .line 44
    :cond_0
    iget v1, p0, Lcom/app/common/view/RatingLayout;->mStep:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/app/common/view/RatingLayout;->mResIds:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/app/common/view/RatingLayout;->createItem(ILandroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v3, v3}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/app/common/view/RatingLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/app/common/view/RatingLayout;->mResIds:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    goto :goto_1
.end method


# virtual methods
.method public getRationg()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/app/common/view/RatingLayout;->mStep:I

    return v0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "normal"
    .parameter "selecte"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/app/common/view/RatingLayout;->mResIds:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 109
    iget-object v0, p0, Lcom/app/common/view/RatingLayout;->mResIds:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 110
    return-void
.end method

.method public setImageResources(II)V
    .locals 3
    .parameter "normal"
    .parameter "selecte"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/app/common/view/RatingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/app/common/view/RatingLayout;->setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 74
    return-void
.end method

.method public setIndicator(Z)V
    .locals 1
    .parameter "indicator"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/app/common/view/RatingLayout;->mIndicator:Z

    if-eq v0, p1, :cond_0

    .line 102
    iput-boolean p1, p0, Lcom/app/common/view/RatingLayout;->mIndicator:Z

    .line 103
    invoke-direct {p0}, Lcom/app/common/view/RatingLayout;->changeListener()V

    .line 105
    :cond_0
    return-void
.end method

.method public setNumStars(I)V
    .locals 1
    .parameter "num"

    .prologue
    .line 64
    iget v0, p0, Lcom/app/common/view/RatingLayout;->mStartNum:I

    if-eq v0, p1, :cond_0

    .line 65
    iput p1, p0, Lcom/app/common/view/RatingLayout;->mStartNum:I

    .line 66
    invoke-direct {p0}, Lcom/app/common/view/RatingLayout;->init()V

    .line 68
    :cond_0
    return-void
.end method

.method public setRating(I)V
    .locals 0
    .parameter "rating"

    .prologue
    .line 82
    iput p1, p0, Lcom/app/common/view/RatingLayout;->mStep:I

    .line 83
    invoke-direct {p0}, Lcom/app/common/view/RatingLayout;->changeSteps()V

    .line 84
    return-void
.end method
