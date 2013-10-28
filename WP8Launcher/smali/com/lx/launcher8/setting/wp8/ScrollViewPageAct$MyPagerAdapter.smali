.class public Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$MyPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ScrollViewPageAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field public mListViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 444
    .local p2, mListViews:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$MyPagerAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 445
    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$MyPagerAdapter;->mListViews:Ljava/util/List;

    .line 446
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 452
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 456
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 460
    const/16 v0, 0x3e8

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 494
    const/4 v0, -0x2

    return v0
.end method

.method public getPageWidth(I)F
    .locals 1
    .parameter "position"

    .prologue
    .line 499
    const v0, 0x3f666666

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 465
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$MyPagerAdapter;->mListViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int v1, p2, v3

    .line 466
    .local v1, realPos:I
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$MyPagerAdapter;->mListViews:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 467
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v2, p1

    .line 468
    check-cast v2, Landroid/support/v4/view/ViewPager;

    .line 469
    .local v2, viewPager:Landroid/support/v4/view/ViewPager;
    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 471
    .end local v2           #viewPager:Landroid/support/v4/view/ViewPager;
    :cond_0
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 476
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 481
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 490
    return-void
.end method
