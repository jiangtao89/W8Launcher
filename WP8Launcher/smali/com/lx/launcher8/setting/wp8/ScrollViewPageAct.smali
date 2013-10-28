.class public abstract Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;
.super Landroid/app/Activity;
.source "ScrollViewPageAct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$MyPagerAdapter;
    }
.end annotation


# instance fields
.field protected adapter:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$MyPagerAdapter;

.field private animationListener:Landroid/view/View$OnClickListener;

.field protected bottomTextVisible:I

.field private isClicked:Z

.field private lastMotion:I

.field protected mBackGroundScrollView:Lcom/lx/launcher8/view/UnHorizontalScrollView;

.field protected mBackGroundView:Landroid/view/View;

.field protected mBottomBtnLinear:Landroid/widget/LinearLayout;

.field protected mBottomView:Landroid/widget/LinearLayout;

.field protected mRootView:Landroid/view/View;

.field public mThemeColorValue:I

.field public mTitleColorValue:I

.field protected mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

.field protected mTitleScrollView:Lcom/lx/launcher8/view/UnHorizontalScrollView;

.field protected mViewPager:Landroid/support/v4/view/ViewPager;

.field public mbgColorValue:I

.field private screenWidth:I

.field private tv:Landroid/widget/TextView;

.field protected viewlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public whichPage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->isClicked:Z

    .line 124
    const/4 v0, 0x4

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->bottomTextVisible:I

    .line 162
    new-instance v0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$1;-><init>(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->animationListener:Landroid/view/View$OnClickListener;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->viewlist:Ljava/util/ArrayList;

    .line 286
    const/4 v0, -0x1

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->lastMotion:I

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->isClicked:Z

    return-void
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;[Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->startAnimationIn([Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 286
    iput p1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->lastMotion:I

    return-void
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;)I
    .locals 1
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->screenWidth:I

    return v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;)I
    .locals 1
    .parameter

    .prologue
    .line 286
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->lastMotion:I

    return v0
.end method

.method private initView()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 127
    const v3, 0x7f0900a7

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lx/launcher8/view/UnHorizontalScrollView;

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mTitleScrollView:Lcom/lx/launcher8/view/UnHorizontalScrollView;

    .line 128
    const v3, 0x7f0900a5

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lx/launcher8/view/UnHorizontalScrollView;

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mBackGroundScrollView:Lcom/lx/launcher8/view/UnHorizontalScrollView;

    .line 129
    const v3, 0x7f0900a9

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 130
    const v3, 0x7f0900a8

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lx/launcher8/view/TitleLinearLayout;

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

    .line 131
    const v3, 0x7f0900a6

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mBackGroundView:Landroid/view/View;

    .line 132
    const v3, 0x7f0900aa

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mBottomView:Landroid/widget/LinearLayout;

    .line 133
    const v3, 0x7f0900ab

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mBottomBtnLinear:Landroid/widget/LinearLayout;

    .line 137
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->getSecondBgColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 138
    const v3, 0x7f090068

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 139
    .local v1, showContentBtn:Landroid/widget/Button;
    iget v3, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mbgColorValue:I

    if-ne v3, v5, :cond_1

    .line 140
    const v3, 0x7f020174

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 141
    const v3, 0x7f0900a4

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 142
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mBackGroundScrollView:Lcom/lx/launcher8/view/UnHorizontalScrollView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/view/UnHorizontalScrollView;->setVisibility(I)V

    .line 147
    :goto_0
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mBackGroundView:Landroid/view/View;

    const v4, 0x7f020040

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 148
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->animationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    const v3, 0x7f090067

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->animationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->tv:Landroid/widget/TextView;

    .line 152
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->tv:Landroid/widget/TextView;

    const/high16 v4, 0x4190

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 153
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->tv:Landroid/widget/TextView;

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mTitleColorValue:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->tv:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/view/TitleLinearLayout;->addView(Landroid/view/View;)V

    .line 155
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

    invoke-virtual {v3}, Lcom/lx/launcher8/view/TitleLinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 157
    .local v2, width:I
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

    invoke-virtual {v4}, Lcom/lx/launcher8/view/TitleLinearLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/view/TitleLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 158
    .local v0, child:Landroid/view/View;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    .end local v0           #child:Landroid/view/View;
    .end local v2           #width:I
    :cond_0
    return-void

    .line 144
    :cond_1
    const v3, 0x7f020175

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private startAnimationIn([Landroid/widget/LinearLayout;)V
    .locals 6
    .parameter "bottomBtns"

    .prologue
    const/4 v5, 0x1

    .line 212
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mBottomBtnLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 213
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p1

    if-lt v1, v3, :cond_2

    .line 220
    const v3, 0x7f040005

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 221
    .local v0, anim:Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mBottomBtnLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 215
    .end local v0           #anim:Landroid/view/animation/Animation;
    :cond_2
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mBottomBtnLinear:Landroid/widget/LinearLayout;

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 216
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->bottomTextVisible:I

    .line 217
    .local v2, visible:I
    iget-boolean v3, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->isClicked:Z

    if-nez v3, :cond_3

    const/16 v2, 0x8

    .line 218
    :cond_3
    aget-object v3, p1, v1

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_4

    aget-object v3, p1, v1

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    aget-object v3, p1, v1

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 214
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private startAnimationOut([Landroid/widget/LinearLayout;)V
    .locals 3
    .parameter "bottomBtns"

    .prologue
    .line 229
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mBottomView:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 248
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mBottomView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mBottomBtnLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->startAnimationIn([Landroid/widget/LinearLayout;)V

    goto :goto_0

    .line 236
    :cond_2
    const v1, 0x7f040009

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 237
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v1, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$2;

    invoke-direct {v1, p0, p1}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$2;-><init>(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;[Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 246
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mBottomBtnLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method protected addBottomBtn([Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter "bottomBtns"

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->startAnimationOut([Landroid/widget/LinearLayout;)V

    .line 205
    return-void
.end method

.method protected addPage(Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .parameter "title"
    .parameter "view"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->viewlist:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->tv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    return-void
.end method

.method public createBottomBtn(Ljava/lang/String;[I)Landroid/widget/LinearLayout;
    .locals 10
    .parameter "name"
    .parameter "icon"

    .prologue
    const/high16 v9, 0x4200

    const/4 v8, 0x1

    const/4 v7, -0x2

    .line 258
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 259
    .local v1, ll:Landroid/widget/LinearLayout;
    const/high16 v5, 0x40a0

    invoke-static {p0, v5}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v5

    float-to-int v2, v5

    .line 260
    .local v2, margins:I
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 261
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    mul-int/lit8 v5, v2, 0x4

    mul-int/lit8 v6, v2, 0x4

    invoke-virtual {v3, v5, v2, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 262
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 264
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 265
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 266
    .local v0, iv:Landroid/widget/ImageView;
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 267
    invoke-static {p0, v9}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 268
    invoke-static {p0, v9}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 269
    iget v5, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mbgColorValue:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 270
    const/4 v5, 0x0

    aget v5, p2, v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 274
    :goto_0
    invoke-static {v7, v7}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 276
    .local v4, tv:Landroid/widget/TextView;
    iget v5, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mTitleColorValue:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 277
    const/4 v5, 0x2

    const/high16 v6, 0x4180

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 278
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 280
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    invoke-static {v7, v7}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    invoke-static {v7, v7}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    return-object v1

    .line 272
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_0
    aget v5, p2, v8

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public getSecondBgColor()I
    .locals 2

    .prologue
    .line 115
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mbgColorValue:I

    const/high16 v1, -0x100

    if-ne v0, v1, :cond_0

    .line 116
    const-string v0, "#313131"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 118
    :goto_0
    return v0

    :cond_0
    const-string v0, "#dddddd"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getSelectorButton()I
    .locals 2

    .prologue
    .line 101
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mbgColorValue:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 102
    const v0, 0x7f02006c

    .line 104
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0201ef

    goto :goto_0
.end method

.method public getSelectorEditText()I
    .locals 2

    .prologue
    .line 108
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mbgColorValue:I

    const/high16 v1, -0x100

    if-ne v0, v1, :cond_0

    .line 109
    const v0, 0x7f0200c0

    .line 111
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0200bf

    goto :goto_0
.end method

.method public getSelectorTextColor()Landroid/content/res/ColorStateList;
    .locals 3

    .prologue
    const/high16 v2, -0x100

    const/4 v1, -0x1

    .line 94
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mbgColorValue:I

    if-ne v0, v1, :cond_0

    .line 95
    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getColor(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v2, v1}, Lcom/app/common/utils/ViewHelper;->getColor(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0
.end method

.method protected initAction()V
    .locals 3

    .prologue
    .line 288
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mTitleScrollView:Lcom/lx/launcher8/view/UnHorizontalScrollView;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$3;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$3;-><init>(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;)V

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/UnHorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 297
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->viewlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 298
    .local v0, size:I
    const/16 v1, 0x1f4

    div-int/2addr v1, v0

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->whichPage:I

    .line 299
    new-instance v1, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$MyPagerAdapter;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->viewlist:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$MyPagerAdapter;-><init>(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;Ljava/util/List;)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->adapter:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$MyPagerAdapter;

    .line 300
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->adapter:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$MyPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 301
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->whichPage:I

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 306
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$4;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$4;-><init>(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 313
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;-><init>(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 435
    return-void
.end method

.method protected abstract initData()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/high16 v5, -0x100

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->screenWidth:I

    .line 65
    invoke-virtual {p0, v7}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->requestWindowFeature(I)Z

    .line 67
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030020

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mRootView:Landroid/view/View;

    .line 68
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->setContentView(Landroid/view/View;)V

    .line 70
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 72
    new-instance v0, Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v1

    .line 75
    .local v1, themeWallPaper:I
    if-ne v1, v7, :cond_1

    .line 76
    iput v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mTitleColorValue:I

    .line 77
    iput v5, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mbgColorValue:I

    .line 85
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v2

    iput v2, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mThemeColorValue:I

    .line 87
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->initView()V

    .line 88
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->initData()V

    .line 89
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->initAction()V

    .line 90
    return-void

    .line 78
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 79
    iput v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mTitleColorValue:I

    .line 80
    iput v5, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mbgColorValue:I

    goto :goto_0

    .line 81
    :cond_2
    if-nez v1, :cond_0

    .line 82
    iput v5, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mTitleColorValue:I

    .line 83
    iput v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mbgColorValue:I

    goto :goto_0
.end method

.method protected abstract onViewInFront(Landroid/view/View;)V
.end method

.method protected abstract onViewMovingFront(Landroid/view/View;)V
.end method
