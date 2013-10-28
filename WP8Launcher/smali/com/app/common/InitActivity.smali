.class public Lcom/app/common/InitActivity;
.super Lcom/app/common/Activity;
.source "InitActivity.java"


# instance fields
.field isExit:Z

.field protected mRootView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/app/common/Activity;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/app/common/InitActivity;->mRootView:Landroid/widget/LinearLayout;

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/app/common/InitActivity;->isExit:Z

    .line 9
    return-void
.end method

.method public static softInit(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "path"

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/app/common/config/BasePath;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public createView()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 15
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/app/common/InitActivity;->mSelf:Lcom/app/common/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/common/InitActivity;->mRootView:Landroid/widget/LinearLayout;

    .line 16
    iget-object v0, p0, Lcom/app/common/InitActivity;->mRootView:Landroid/widget/LinearLayout;

    invoke-static {v2, v2}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    iget-object v0, p0, Lcom/app/common/InitActivity;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/app/common/InitActivity;->setContentView(Landroid/view/View;)V

    .line 18
    return-void
.end method

.method public exec()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Lcom/app/common/Activity;->exec()V

    .line 23
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/app/common/Activity;->onResume()V

    .line 32
    iget-boolean v0, p0, Lcom/app/common/InitActivity;->isExit:Z

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/app/common/InitActivity;->isExit:Z

    .line 36
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/app/common/InitActivity;->finish()V

    goto :goto_0
.end method

.method public setBackgroundRes(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/app/common/InitActivity;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 27
    return-void
.end method
