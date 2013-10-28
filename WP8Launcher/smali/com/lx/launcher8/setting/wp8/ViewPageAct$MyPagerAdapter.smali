.class public Lcom/lx/launcher8/setting/wp8/ViewPageAct$MyPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ViewPageAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/ViewPageAct;
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

.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/setting/wp8/ViewPageAct;Ljava/util/List;)V
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
    .line 367
    .local p2, mListViews:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$MyPagerAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 368
    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$MyPagerAdapter;->mListViews:Ljava/util/List;

    .line 369
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 373
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 377
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$MyPagerAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iget v0, v0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mViewSize:I

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 423
    const/4 v0, -0x1

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 386
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$MyPagerAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iget v3, v3, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mViewSize:I

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    const/4 v1, -0x1

    .line 387
    .local v1, pos:I
    :goto_0
    if-gez v1, :cond_2

    .line 388
    const/4 v0, 0x0

    .line 400
    .end local p1
    :cond_0
    :goto_1
    return-object v0

    .line 386
    .end local v1           #pos:I
    .restart local p1
    :cond_1
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$MyPagerAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iget v3, v3, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mViewSize:I

    rem-int v1, p2, v3

    goto :goto_0

    .line 391
    .restart local v1       #pos:I
    :cond_2
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$MyPagerAdapter;->mListViews:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 392
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 393
    .local v2, vp:Landroid/view/ViewParent;
    if-eqz v2, :cond_3

    .line 394
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2           #vp:Landroid/view/ViewParent;
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 395
    const/4 v2, 0x0

    .line 397
    .restart local v2       #vp:Landroid/view/ViewParent;
    :cond_3
    if-nez v2, :cond_0

    .line 398
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 405
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
    .line 410
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 419
    return-void
.end method
