.class public abstract Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.super Lcom/lx/launcher8/NoSearchAct;
.source "ViewPageAct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/ViewPageAct$MyPagerAdapter;
    }
.end annotation


# instance fields
.field protected adapter:Lcom/lx/launcher8/setting/wp8/ViewPageAct$MyPagerAdapter;

.field private animationListener:Landroid/view/View$OnClickListener;

.field protected bottomContainer:Landroid/view/ViewGroup;

.field protected bottomTextVisible:I

.field protected btnBottom:Landroid/widget/Button;

.field protected isLoop:Z

.field protected layoutBottom:Landroid/widget/LinearLayout;

.field protected mContainerLayout:Landroid/widget/FrameLayout;

.field protected mRootView:Landroid/view/View;

.field public mThemeColorValue:I

.field protected mTitleBar:Landroid/widget/TextView;

.field public mTitleColorValue:I

.field protected mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

.field protected mTitleScrollView:Landroid/widget/HorizontalScrollView;

.field protected mViewPager:Landroid/support/v4/view/ViewPager;

.field protected mViewSize:I

.field public mbgColorValue:I

.field protected pos:I

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
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;-><init>()V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->viewlist:Ljava/util/ArrayList;

    .line 171
    const/4 v0, -0x1

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->pos:I

    .line 323
    const/4 v0, 0x4

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->bottomTextVisible:I

    .line 324
    new-instance v0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct$1;-><init>(Lcom/lx/launcher8/setting/wp8/ViewPageAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->animationListener:Landroid/view/View$OnClickListener;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/ViewPageAct;[Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->startAnimationIn([Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 118
    const v0, 0x7f0900a7

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    .line 119
    const v0, 0x7f0900a9

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 120
    const v0, 0x7f0900c5

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mTitleBar:Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    const v0, 0x7f0900a8

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/TitleLinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

    .line 123
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mRootView:Landroid/view/View;

    iget v1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mbgColorValue:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 124
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mbgColorValue:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setBackgroundColor(I)V

    .line 125
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mTitleBar:Landroid/widget/TextView;

    iget v1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mTitleColorValue:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    const v0, 0x7f0900c6

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mContainerLayout:Landroid/widget/FrameLayout;

    .line 127
    const v0, 0x7f09003c

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->bottomContainer:Landroid/view/ViewGroup;

    .line 128
    const v0, 0x7f0900c0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->layoutBottom:Landroid/widget/LinearLayout;

    .line 129
    const v0, 0x7f0900c1

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->btnBottom:Landroid/widget/Button;

    .line 130
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->btnBottom:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->animationListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-void
.end method

.method private startAnimationIn([Landroid/widget/LinearLayout;)V
    .locals 6
    .parameter "bottomBtns"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 250
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->layoutBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 251
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 252
    :cond_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 263
    :goto_0
    return-void

    .line 255
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, p1

    if-lt v1, v2, :cond_2

    .line 261
    const v2, 0x7f040006

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 262
    .local v0, anim:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 256
    .end local v0           #anim:Landroid/view/animation/Animation;
    :cond_2
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->layoutBottom:Landroid/widget/LinearLayout;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 257
    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-le v2, v4, :cond_3

    .line 258
    aget-object v2, p1, v1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 255
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private startAnimationOut([Landroid/widget/LinearLayout;)V
    .locals 3
    .parameter "bottomBtns"

    .prologue
    .line 270
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->getSecondBgColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 271
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->bottomContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 272
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->layoutBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->startAnimationIn([Landroid/widget/LinearLayout;)V

    .line 286
    :goto_0
    return-void

    .line 274
    :cond_0
    const v1, 0x7f040009

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 275
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v1, Lcom/lx/launcher8/setting/wp8/ViewPageAct$4;

    invoke-direct {v1, p0, p1}, Lcom/lx/launcher8/setting/wp8/ViewPageAct$4;-><init>(Lcom/lx/launcher8/setting/wp8/ViewPageAct;[Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 284
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method protected addBottomBtn([Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter "bottomBtns"

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->startAnimationOut([Landroid/widget/LinearLayout;)V

    .line 243
    return-void
.end method

.method protected addPage(Ljava/lang/String;I)V
    .locals 2
    .parameter "title"
    .parameter "rid"

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 139
    return-void
.end method

.method protected addPage(Ljava/lang/String;Landroid/view/View;)V
    .locals 3
    .parameter "title"
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 142
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->viewlist:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 144
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    const/high16 v1, 0x4240

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 146
    iget v1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mTitleColorValue:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    const/16 v1, 0x1e

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 149
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/view/TitleLinearLayout;->addView(Landroid/view/View;)V

    .line 151
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->viewlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mViewSize:I

    .line 152
    return-void
.end method

.method public createBottomBtn(Ljava/lang/String;[I)Landroid/widget/LinearLayout;
    .locals 11
    .parameter "name"
    .parameter "icon"

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x4200

    const/4 v8, 0x1

    const/4 v7, -0x2

    .line 296
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 297
    .local v1, ll:Landroid/widget/LinearLayout;
    const/high16 v5, 0x40a0

    invoke-static {p0, v5}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v5

    float-to-int v2, v5

    .line 298
    .local v2, margins:I
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 299
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    mul-int/lit8 v5, v2, 0x4

    mul-int/lit8 v6, v2, 0x4

    invoke-virtual {v3, v5, v2, v6, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 300
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 302
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 303
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 304
    .local v0, iv:Landroid/widget/ImageView;
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 305
    invoke-static {p0, v9}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 306
    invoke-static {p0, v9}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 307
    iget v5, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mbgColorValue:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 308
    aget v5, p2, v10

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 312
    :goto_0
    invoke-static {v7, v7}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 314
    .local v4, tv:Landroid/widget/TextView;
    iget v5, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mTitleColorValue:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 315
    const/4 v5, 0x2

    const/high16 v6, 0x4180

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 316
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 318
    invoke-static {v7, v7}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    invoke-static {v7, v7}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    return-object v1

    .line 310
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_0
    aget v5, p2, v8

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public getSecondBgColor()I
    .locals 2

    .prologue
    .line 111
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mbgColorValue:I

    const/high16 v1, -0x100

    if-ne v0, v1, :cond_0

    .line 112
    const-string v0, "#313131"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 114
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
    .line 97
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mbgColorValue:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 98
    const v0, 0x7f02006c

    .line 100
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0201ef

    goto :goto_0
.end method

.method public getSelectorEditText()I
    .locals 2

    .prologue
    .line 104
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mbgColorValue:I

    const/high16 v1, -0x100

    if-ne v0, v1, :cond_0

    .line 105
    const v0, 0x7f0200c0

    .line 107
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

    .line 90
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mbgColorValue:I

    if-ne v0, v1, :cond_0

    .line 91
    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getColor(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v2, v1}, Lcom/app/common/utils/ViewHelper;->getColor(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0
.end method

.method protected initAction()V
    .locals 5

    .prologue
    .line 173
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v4, Lcom/lx/launcher8/setting/wp8/ViewPageAct$2;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct$2;-><init>(Lcom/lx/launcher8/setting/wp8/ViewPageAct;)V

    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 183
    new-instance v3, Lcom/lx/launcher8/setting/wp8/ViewPageAct$MyPagerAdapter;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->viewlist:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4}, Lcom/lx/launcher8/setting/wp8/ViewPageAct$MyPagerAdapter;-><init>(Lcom/lx/launcher8/setting/wp8/ViewPageAct;Ljava/util/List;)V

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->adapter:Lcom/lx/launcher8/setting/wp8/ViewPageAct$MyPagerAdapter;

    .line 184
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->adapter:Lcom/lx/launcher8/setting/wp8/ViewPageAct$MyPagerAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 185
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->whichPage:I

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 186
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

    invoke-virtual {v3}, Lcom/lx/launcher8/view/TitleLinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 188
    .local v2, width:I
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

    invoke-virtual {v4}, Lcom/lx/launcher8/view/TitleLinearLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/view/TitleLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 189
    .local v0, child:Landroid/view/View;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    .end local v0           #child:Landroid/view/View;
    .end local v2           #width:I
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->whichPage:I

    if-lt v1, v3, :cond_1

    .line 195
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;-><init>(Lcom/lx/launcher8/setting/wp8/ViewPageAct;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 238
    return-void

    .line 192
    :cond_1
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

    invoke-virtual {v3, v1}, Lcom/lx/launcher8/view/TitleLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected abstract initData()V
.end method

.method protected initSingleView()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 159
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mContainerLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->viewlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mContainerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 161
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 162
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v5}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V

    .line 163
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v5}, Landroid/support/v4/view/ViewPager;->setFocusableInTouchMode(Z)V

    .line 164
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

    invoke-virtual {v2}, Lcom/lx/launcher8/view/TitleLinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 166
    .local v1, width:I
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

    invoke-virtual {v3}, Lcom/lx/launcher8/view/TitleLinearLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/TitleLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, child:Landroid/view/View;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    .end local v0           #child:Landroid/view/View;
    .end local v1           #width:I
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/high16 v4, -0x100

    .line 61
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->setResult(I)V

    .line 63
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030025

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mRootView:Landroid/view/View;

    .line 64
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->setContentView(Landroid/view/View;)V

    .line 65
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v0

    .line 66
    .local v0, themeWallPaper:I
    if-ne v0, v6, :cond_1

    .line 67
    iput v5, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mTitleColorValue:I

    .line 68
    iput v4, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mbgColorValue:I

    .line 76
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mThemeColorValue:I

    .line 78
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->initView()V

    .line 79
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->initData()V

    .line 80
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->viewlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v6, :cond_3

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->initSingleView()V

    .line 82
    :goto_1
    return-void

    .line 69
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 70
    iput v5, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mTitleColorValue:I

    .line 71
    iput v4, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mbgColorValue:I

    goto :goto_0

    .line 72
    :cond_2
    if-nez v0, :cond_0

    .line 73
    iput v4, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mTitleColorValue:I

    .line 74
    iput v5, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mbgColorValue:I

    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->initAction()V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Lcom/lx/launcher8/NoSearchAct;->onResume()V

    .line 87
    return-void
.end method

.method protected onViewToFont(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 240
    return-void
.end method

.method protected scrollToPage(I)V
    .locals 1
    .parameter "idex"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 156
    return-void
.end method
