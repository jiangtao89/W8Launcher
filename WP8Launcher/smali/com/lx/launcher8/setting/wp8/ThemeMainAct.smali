.class public Lcom/lx/launcher8/setting/wp8/ThemeMainAct;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.source "ThemeMainAct.java"


# instance fields
.field private mFontView:Landroid/view/View;

.field private mViewLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/setting/view/SettingView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;-><init>()V

    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 22
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->mTitleBar:Landroid/widget/TextView;

    const v2, 0x7f0a01a1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->mViewLists:Ljava/util/ArrayList;

    .line 24
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->mViewLists:Ljava/util/ArrayList;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeMainAct;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z


    .line 27
    const v1, 0x7f0a01a2

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->mViewLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/setting/view/SettingView;

    invoke-interface {v1}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, page:I
    iput v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->whichPage:I

    .line 33
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->viewlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->onViewToFont(Landroid/view/View;)V

    .line 34
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, result:Z
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->mViewLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 81
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onActivityResult(IILandroid/content/Intent;)V

    .line 82
    :cond_1
    return-void

    .line 76
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/setting/view/SettingView;

    .line 77
    .local v1, sv:Lcom/lx/launcher8/setting/view/SettingView;
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->mFontView:Landroid/view/View;

    invoke-interface {v1}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 78
    invoke-interface {v1, p1, p2, p3}, Lcom/lx/launcher8/setting/view/SettingView;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onDestroy()V

    .line 51
    new-instance v0, Lcom/lx/launcher8/setting/wp8/ThemeMainAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/ThemeMainAct$1;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeMainAct;)V

    .line 56
    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/ThemeMainAct$1;->start()V

    .line 58
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, result:Z
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->mViewLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 93
    :goto_0
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 94
    :goto_1
    return v2

    .line 87
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/setting/view/SettingView;

    .line 88
    .local v1, sv:Lcom/lx/launcher8/setting/view/SettingView;
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->mFontView:Landroid/view/View;

    invoke-interface {v1}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 89
    invoke-interface {v1}, Lcom/lx/launcher8/setting/view/SettingView;->onBack()Z

    move-result v2

    or-int/2addr v0, v2

    .line 90
    goto :goto_0

    .line 94
    .end local v1           #sv:Lcom/lx/launcher8/setting/view/SettingView;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 37
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onResume()V

    .line 38
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->mFontView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 39
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->mViewLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 46
    :cond_1
    :goto_0
    return-void

    .line 39
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/setting/view/SettingView;

    .line 40
    .local v0, sv:Lcom/lx/launcher8/setting/view/SettingView;
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->mFontView:Landroid/view/View;

    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 41
    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->onResume()V

    goto :goto_0
.end method

.method protected onViewToFont(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->mFontView:Landroid/view/View;

    .line 64
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->mViewLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/setting/view/SettingView;

    .line 65
    .local v0, sv:Lcom/lx/launcher8/setting/view/SettingView;
    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 66
    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->getBottomBtns()[Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->addBottomBtn([Landroid/widget/LinearLayout;)V

    .line 67
    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->onViewMovingFront()V

    goto :goto_0
.end method
