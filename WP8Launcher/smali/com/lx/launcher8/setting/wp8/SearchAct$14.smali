.class Lcom/lx/launcher8/setting/wp8/SearchAct$14;
.super Ljava/lang/Object;
.source "SearchAct.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/SearchAct;->onLoadingListOver(Lcom/app/common/bll/BllXmlPull;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/SearchAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$14;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/SearchAct$14;)Lcom/lx/launcher8/setting/wp8/SearchAct;
    .locals 1
    .parameter

    .prologue
    .line 545
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$14;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    return-object v0
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v5, 0x0

    .line 560
    if-nez p1, :cond_0

    .line 561
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$14;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SearchAct;->pos:I
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$18(Lcom/lx/launcher8/setting/wp8/SearchAct;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$14;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SearchAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$19(Lcom/lx/launcher8/setting/wp8/SearchAct;)Lcom/lx/launcher8/view/TitleLinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$14;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SearchAct;->pos:I
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$18(Lcom/lx/launcher8/setting/wp8/SearchAct;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/TitleLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 566
    .local v0, view:Landroid/view/View;
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 567
    .local v1, xy:[I
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 568
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$14;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SearchAct;->mTitleScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$10(Lcom/lx/launcher8/setting/wp8/SearchAct;)Landroid/widget/HorizontalScrollView;

    move-result-object v2

    .line 569
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$14;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SearchAct;->mTitleScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$10(Lcom/lx/launcher8/setting/wp8/SearchAct;)Landroid/widget/HorizontalScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v3

    aget v4, v1, v5

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$14;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SearchAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$19(Lcom/lx/launcher8/setting/wp8/SearchAct;)Lcom/lx/launcher8/view/TitleLinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lx/launcher8/view/TitleLinearLayout;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    .line 568
    invoke-virtual {v2, v3, v5}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 570
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$14;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SearchAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$19(Lcom/lx/launcher8/setting/wp8/SearchAct;)Lcom/lx/launcher8/view/TitleLinearLayout;

    move-result-object v2

    new-instance v3, Lcom/lx/launcher8/setting/wp8/SearchAct$14$1;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/setting/wp8/SearchAct$14$1;-><init>(Lcom/lx/launcher8/setting/wp8/SearchAct$14;)V

    .line 575
    const-wide/16 v4, 0x32

    .line 570
    invoke-virtual {v2, v3, v4, v5}, Lcom/lx/launcher8/view/TitleLinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 555
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 550
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$14;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    #setter for: Lcom/lx/launcher8/setting/wp8/SearchAct;->pos:I
    invoke-static {v0, p1}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$17(Lcom/lx/launcher8/setting/wp8/SearchAct;I)V

    .line 551
    return-void
.end method
