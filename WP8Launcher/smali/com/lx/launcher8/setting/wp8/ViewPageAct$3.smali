.class Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;
.super Ljava/lang/Object;
.source "ViewPageAct.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/ViewPageAct;->initAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/ViewPageAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;)Lcom/lx/launcher8/setting/wp8/ViewPageAct;
    .locals 1
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    return-object v0
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v5, 0x0

    .line 218
    if-nez p1, :cond_0

    .line 219
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iget v2, v2, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->pos:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iget v2, v2, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->whichPage:I

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iget-object v2, v2, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iget v3, v3, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->pos:I

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/TitleLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 223
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iget-object v2, v2, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iget v3, v3, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->pos:I

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/TitleLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 225
    :cond_2
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iget-object v2, v2, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iget v3, v3, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->pos:I

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/TitleLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 226
    .local v0, view:Landroid/view/View;
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 227
    .local v1, xy:[I
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 228
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iget-object v2, v2, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iget-object v3, v3, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v3

    aget v4, v1, v5

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iget-object v4, v4, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

    invoke-virtual {v4}, Lcom/lx/launcher8/view/TitleLinearLayout;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3, v5}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 229
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iget-object v2, v2, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

    new-instance v3, Lcom/lx/launcher8/setting/wp8/ViewPageAct$3$1;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct$3$1;-><init>(Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;)V

    .line 234
    const-wide/16 v4, 0x32

    .line 229
    invoke-virtual {v2, v3, v4, v5}, Lcom/lx/launcher8/view/TitleLinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 213
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 200
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iget v1, v1, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mViewSize:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    const/4 v0, -0x1

    .line 201
    .local v0, realPos:I
    :goto_0
    if-gez v0, :cond_2

    .line 208
    :cond_0
    :goto_1
    return-void

    .line 200
    .end local v0           #realPos:I
    :cond_1
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iget v1, v1, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mViewSize:I

    rem-int v0, p1, v1

    goto :goto_0

    .line 204
    .restart local v0       #realPos:I
    :cond_2
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iget v1, v1, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->pos:I

    if-eq v1, v0, :cond_0

    .line 205
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iput v0, v1, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->pos:I

    .line 206
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->viewlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onViewToFont(Landroid/view/View;)V

    goto :goto_1
.end method
