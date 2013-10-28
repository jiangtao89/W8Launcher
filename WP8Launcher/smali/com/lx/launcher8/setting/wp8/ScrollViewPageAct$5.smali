.class Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;
.super Ljava/lang/Object;
.source "ScrollViewPageAct.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->initAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private anim:Landroid/view/animation/Animation;

.field private anim1:Landroid/view/animation/Animation;

.field private isAnimationing:Z

.field private lastPos:I

.field private movingFrontPos:I

.field private nextPos:I

.field private pos:I

.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iget v0, p1, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->whichPage:I

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->pos:I

    .line 315
    iget v0, p1, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->whichPage:I

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->lastPos:I

    .line 317
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->isAnimationing:Z

    .line 318
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->nextPos:I

    .line 319
    iput v1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->movingFrontPos:I

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 430
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->movingFrontPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->viewlist:Ljava/util/ArrayList;

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->movingFrontPos:I

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget-object v3, v3, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->viewlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->onViewInFront(Landroid/view/View;)V

    .line 433
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 12
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 333
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v6

    int-to-double v6, v6

    iget v8, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->pos:I

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget-object v9, v9, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->viewlist:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    rem-int/2addr v8, v9

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->screenWidth:I
    invoke-static {v9}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->access$3(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;)I

    move-result v9

    mul-int/2addr v8, v9

    int-to-double v8, v8

    const-wide v10, 0x3feccccccccccccdL

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-int v3, v6

    .line 334
    .local v3, mViewPagerScroll:I
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    .line 339
    .local v2, count:I
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mBackGroundView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 340
    .local v1, backWidth:I
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->screenWidth:I
    invoke-static {v6}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->access$3(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;)I

    move-result v6

    sub-int v6, v1, v6

    mul-int/2addr v6, v3

    add-int/lit8 v7, v2, -0x1

    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->screenWidth:I
    invoke-static {v8}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->access$3(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;)I

    move-result v8

    mul-int/2addr v7, v8

    div-int v0, v6, v7

    .line 341
    .local v0, backLength:I
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->lastMotion:I
    invoke-static {v6}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->access$4(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 343
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mBackGroundScrollView:Lcom/lx/launcher8/view/UnHorizontalScrollView;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Lcom/lx/launcher8/view/UnHorizontalScrollView;->scrollTo(II)V

    .line 416
    :cond_0
    :goto_0
    iput p1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->lastPos:I

    .line 417
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v6

    int-to-double v6, v6

    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->screenWidth:I
    invoke-static {v8}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->access$3(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;)I

    move-result v8

    int-to-double v8, v8

    const-wide v10, 0x3feccccccccccccdL

    mul-double/2addr v8, v10

    add-int/lit16 v10, p1, -0x1f4

    int-to-double v10, v10

    mul-double/2addr v8, v10

    sub-double v4, v6, v8

    .line 418
    .local v4, min:D
    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_6

    .line 419
    const-wide/high16 v6, 0x3ff0

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_5

    iget v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->lastPos:I

    iput v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->pos:I

    .line 425
    :cond_1
    :goto_1
    return-void

    .line 344
    .end local v4           #min:D
    :cond_2
    iget-boolean v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->isAnimationing:Z

    if-nez v6, :cond_0

    .line 345
    iget v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->nextPos:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    iget v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->nextPos:I

    iget v7, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->pos:I

    sub-int/2addr v6, v7

    if-lez v6, :cond_3

    iget v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->nextPos:I

    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget-object v7, v7, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->viewlist:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    rem-int/2addr v6, v7

    if-nez v6, :cond_3

    .line 346
    const/4 v6, -0x1

    iput v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->nextPos:I

    .line 347
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->isAnimationing:Z

    .line 348
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mTitleScrollView:Lcom/lx/launcher8/view/UnHorizontalScrollView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/lx/launcher8/view/UnHorizontalScrollView;->scrollTo(II)V

    .line 349
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mBackGroundScrollView:Lcom/lx/launcher8/view/UnHorizontalScrollView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/lx/launcher8/view/UnHorizontalScrollView;->scrollTo(II)V

    goto :goto_0

    .line 378
    :cond_3
    iget v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->nextPos:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    iget v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->nextPos:I

    iget v7, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->pos:I

    sub-int/2addr v6, v7

    if-gez v6, :cond_4

    iget v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->nextPos:I

    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget-object v7, v7, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->viewlist:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    rem-int/2addr v6, v7

    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget-object v7, v7, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->viewlist:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_4

    .line 379
    const/4 v6, -0x1

    iput v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->nextPos:I

    .line 380
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->isAnimationing:Z

    .line 382
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mBackGroundScrollView:Lcom/lx/launcher8/view/UnHorizontalScrollView;

    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->screenWidth:I
    invoke-static {v7}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->access$3(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;)I

    move-result v7

    sub-int v7, v1, v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/lx/launcher8/view/UnHorizontalScrollView;->scrollTo(II)V

    goto/16 :goto_0

    .line 412
    :cond_4
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget-object v6, v6, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mBackGroundScrollView:Lcom/lx/launcher8/view/UnHorizontalScrollView;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Lcom/lx/launcher8/view/UnHorizontalScrollView;->scrollTo(II)V

    goto/16 :goto_0

    .line 420
    .restart local v4       #min:D
    :cond_5
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->screenWidth:I
    invoke-static {v6}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->access$3(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;)I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x3feccccccccccccdL

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0

    sub-double/2addr v6, v8

    cmpl-double v6, v4, v6

    if-ltz v6, :cond_1

    iget v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->lastPos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->pos:I

    goto/16 :goto_1

    .line 422
    :cond_6
    const-wide/high16 v6, -0x4010

    cmpl-double v6, v4, v6

    if-ltz v6, :cond_7

    iget v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->lastPos:I

    iput v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->pos:I

    goto/16 :goto_1

    .line 423
    :cond_7
    const-wide/high16 v6, 0x3ff0

    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->screenWidth:I
    invoke-static {v8}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->access$3(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;)I

    move-result v8

    int-to-double v8, v8

    const-wide v10, 0x3feccccccccccccdL

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_1

    iget v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->lastPos:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->pos:I

    goto/16 :goto_1
.end method

.method public onPageSelected(I)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 324
    iput p1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->nextPos:I

    .line 325
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->viewlist:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget-object v2, v2, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->viewlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->onViewMovingFront(Landroid/view/View;)V

    .line 326
    iput p1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$5;->movingFrontPos:I

    .line 327
    return-void
.end method
