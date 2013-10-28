.class public Lcom/lx/launcher8/setting/wp8/EditCellAct;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.source "EditCellAct.java"


# instance fields
.field private mCellInfo:Lcom/lx/launcher8/bean/AppCell;

.field private mItemCell:Lcom/lx/launcher8/bean/ItemCell;

.field private mSettingView:Lcom/lx/launcher8/setting/view/SettingView;

.field private mWidgetCellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mSettingView:Lcom/lx/launcher8/setting/view/SettingView;

    .line 21
    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 80
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onActivityResult(IILandroid/content/Intent;)V

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mSettingView:Lcom/lx/launcher8/setting/view/SettingView;

    invoke-interface {v0, p1, p2, p3}, Lcom/lx/launcher8/setting/view/SettingView;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "saveBundle"

    .prologue
    const v7, 0x7f0a0050

    .line 30
    invoke-super {p0, p1}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onCreate(Landroid/os/Bundle;)V

    .line 31
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/lx/launcher8/setting/wp8/EditCellAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mTitleBar:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    const/16 v6, 0x28

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 33
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/TitleLinearLayout;->setVisibility(I)V

    .line 35
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/EditCellAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 36
    .local v1, intent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/lx/launcher8/bean/ItemCell;->getFromIntent(Landroid/content/Intent;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v2

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    .line 37
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    if-nez v2, :cond_0

    .line 38
    const-string v2, "cellType"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 39
    .local v0, cellType:I
    if-lez v0, :cond_0

    .line 40
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/AnallApp;->getModel()Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lx/launcher8/db/LauncherModel;->getItemCell(I)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v2

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    .line 43
    .end local v0           #cellType:I
    :cond_0
    if-eqz p1, :cond_1

    const-string v2, "cell_cellType"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    invoke-static {}, Lcom/lx/launcher8/bean/CellFactory;->getInstance()Lcom/lx/launcher8/bean/CellFactory;

    move-result-object v2

    const-string v3, "cell_cellType"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/bean/CellFactory;->createCellBean(I)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v2

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    .line 45
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v2, p1}, Lcom/lx/launcher8/bean/ItemCell;->onRestoreState(Landroid/os/Bundle;)V

    .line 47
    :cond_1
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    if-nez v2, :cond_2

    .line 48
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/EditCellAct;->finish()V

    .line 64
    :goto_0
    return-void

    .line 51
    :cond_2
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    instance-of v2, v2, Lcom/lx/launcher8/bean/LightCell;

    if-eqz v2, :cond_3

    .line 52
    new-instance v3, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v2, Lcom/lx/launcher8/bean/LightCell;

    invoke-direct {v3, p0, v2}, Lcom/lx/launcher8/setting/wp8/view/LightSettingView;-><init>(Landroid/app/Activity;Lcom/lx/launcher8/bean/LightCell;)V

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mSettingView:Lcom/lx/launcher8/setting/view/SettingView;

    .line 62
    :goto_1
    invoke-virtual {p0, v7}, Lcom/lx/launcher8/setting/wp8/EditCellAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mSettingView:Lcom/lx/launcher8/setting/view/SettingView;

    invoke-interface {v3}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/lx/launcher8/setting/wp8/EditCellAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 63
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/EditCellAct;->initSingleView()V

    goto :goto_0

    .line 53
    :cond_3
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    instance-of v2, v2, Lcom/lx/launcher8/bean/AppCell;

    if-eqz v2, :cond_4

    .line 54
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v2, Lcom/lx/launcher8/bean/AppCell;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mCellInfo:Lcom/lx/launcher8/bean/AppCell;

    .line 55
    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mCellInfo:Lcom/lx/launcher8/bean/AppCell;

    invoke-direct {v2, p0, v3}, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;-><init>(Landroid/app/Activity;Lcom/lx/launcher8/bean/AppCell;)V

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mSettingView:Lcom/lx/launcher8/setting/view/SettingView;

    goto :goto_1

    .line 56
    :cond_4
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    instance-of v2, v2, Lcom/lx/launcher8/bean/AppWidgetCell;

    if-eqz v2, :cond_5

    .line 57
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v2, Lcom/lx/launcher8/bean/AppWidgetCell;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mWidgetCellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    .line 58
    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mWidgetCellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    invoke-direct {v2, p0, v3}, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;-><init>(Landroid/app/Activity;Lcom/lx/launcher8/bean/AppWidgetCell;)V

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mSettingView:Lcom/lx/launcher8/setting/view/SettingView;

    goto :goto_1

    .line 60
    :cond_5
    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    invoke-direct {v2, p0, v3}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;-><init>(Landroid/app/Activity;Lcom/lx/launcher8/bean/ItemCell;)V

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mSettingView:Lcom/lx/launcher8/setting/view/SettingView;

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 89
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mSettingView:Lcom/lx/launcher8/setting/view/SettingView;

    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->onBack()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/EditCellAct;->setResult(I)V

    .line 92
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onResume()V

    .line 75
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mSettingView:Lcom/lx/launcher8/setting/view/SettingView;

    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->onResume()V

    .line 76
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 69
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/EditCellAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/bean/ItemCell;->onSaveState(Landroid/os/Bundle;)V

    .line 70
    :cond_0
    return-void
.end method
