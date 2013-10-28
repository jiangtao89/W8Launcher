.class public Lcom/app/common/MainActivity;
.super Lcom/app/common/Activity;
.source "MainActivity.java"


# instance fields
.field public mBottomContainer:Landroid/widget/LinearLayout;

.field public mMainContainer:Landroid/widget/LinearLayout;

.field protected mRootView:Landroid/widget/LinearLayout;

.field protected mTitle:Lcom/app/common/view/TitleBar;

.field public mTopContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Lcom/app/common/Activity;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/app/common/MainActivity;->mRootView:Landroid/widget/LinearLayout;

    .line 10
    iput-object v0, p0, Lcom/app/common/MainActivity;->mTitle:Lcom/app/common/view/TitleBar;

    .line 11
    iput-object v0, p0, Lcom/app/common/MainActivity;->mTopContainer:Landroid/widget/LinearLayout;

    .line 12
    iput-object v0, p0, Lcom/app/common/MainActivity;->mMainContainer:Landroid/widget/LinearLayout;

    .line 13
    iput-object v0, p0, Lcom/app/common/MainActivity;->mBottomContainer:Landroid/widget/LinearLayout;

    .line 8
    return-void
.end method


# virtual methods
.method public createView()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    const/4 v2, -0x1

    .line 17
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/app/common/MainActivity;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/common/MainActivity;->mRootView:Landroid/widget/LinearLayout;

    .line 18
    new-instance v0, Lcom/app/common/view/TitleBar;

    iget-object v1, p0, Lcom/app/common/MainActivity;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v0, v1}, Lcom/app/common/view/TitleBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/common/MainActivity;->mTitle:Lcom/app/common/view/TitleBar;

    .line 19
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/app/common/MainActivity;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/common/MainActivity;->mTopContainer:Landroid/widget/LinearLayout;

    .line 20
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/app/common/MainActivity;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/common/MainActivity;->mMainContainer:Landroid/widget/LinearLayout;

    .line 21
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/app/common/MainActivity;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/common/MainActivity;->mBottomContainer:Landroid/widget/LinearLayout;

    .line 23
    iget-object v0, p0, Lcom/app/common/MainActivity;->mRootView:Landroid/widget/LinearLayout;

    invoke-static {v2, v2}, Lcom/app/common/utils/ViewHelper;->getVGParam(II)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    iget-object v0, p0, Lcom/app/common/MainActivity;->mRootView:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 25
    iget-object v0, p0, Lcom/app/common/MainActivity;->mTitle:Lcom/app/common/view/TitleBar;

    invoke-static {v2, v3}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/app/common/view/TitleBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    iget-object v0, p0, Lcom/app/common/MainActivity;->mTopContainer:Landroid/widget/LinearLayout;

    invoke-static {v2, v3}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    iget-object v0, p0, Lcom/app/common/MainActivity;->mMainContainer:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f80

    invoke-static {v2, v2, v1}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    iget-object v0, p0, Lcom/app/common/MainActivity;->mMainContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 29
    iget-object v0, p0, Lcom/app/common/MainActivity;->mBottomContainer:Landroid/widget/LinearLayout;

    invoke-static {v2, v3}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    iget-object v0, p0, Lcom/app/common/MainActivity;->mRootView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/app/common/MainActivity;->mTitle:Lcom/app/common/view/TitleBar;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 32
    iget-object v0, p0, Lcom/app/common/MainActivity;->mRootView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/app/common/MainActivity;->mTopContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 33
    iget-object v0, p0, Lcom/app/common/MainActivity;->mRootView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/app/common/MainActivity;->mMainContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 34
    iget-object v0, p0, Lcom/app/common/MainActivity;->mRootView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/app/common/MainActivity;->mBottomContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 36
    iget-object v0, p0, Lcom/app/common/MainActivity;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/app/common/MainActivity;->setContentView(Landroid/view/View;)V

    .line 37
    iget-object v0, p0, Lcom/app/common/MainActivity;->mRootView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/app/common/MainActivity;->mSelf:Lcom/app/common/Activity;

    sget-object v2, Lcom/app/common/config/Resources;->background:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 38
    return-void
.end method

.method protected setBackground(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/app/common/MainActivity;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 42
    return-void
.end method
