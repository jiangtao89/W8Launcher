.class public Lcom/lx/launcher8/setting/EditCellAct;
.super Lcom/lx/launcher8/NoSearchAct;
.source "EditCellAct.java"


# instance fields
.field private mCellInfo:Lcom/lx/launcher8/bean/AppCell;

.field private mFirstTitle:Landroid/widget/TextView;

.field private mItemCell:Lcom/lx/launcher8/bean/ItemCell;

.field private mRootView:Landroid/widget/LinearLayout;

.field private mSettingView:Lcom/lx/launcher8/setting/view/SettingView;

.field private mWidgetCellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/setting/EditCellAct;->mSettingView:Lcom/lx/launcher8/setting/view/SettingView;

    .line 26
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 99
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/NoSearchAct;->onActivityResult(IILandroid/content/Intent;)V

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/EditCellAct;->mSettingView:Lcom/lx/launcher8/setting/view/SettingView;

    invoke-interface {v0, p1, p2, p3}, Lcom/lx/launcher8/setting/view/SettingView;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, -0x1

    .line 39
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v2, 0x7f030065

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/EditCellAct;->setContentView(I)V

    .line 41
    const v2, 0x7f090006

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/EditCellAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lx/launcher8/setting/EditCellAct;->mFirstTitle:Landroid/widget/TextView;

    .line 42
    iget-object v2, p0, Lcom/lx/launcher8/setting/EditCellAct;->mFirstTitle:Landroid/widget/TextView;

    const v3, 0x7f0a0050

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/EditCellAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v2, p0, Lcom/lx/launcher8/setting/EditCellAct;->mFirstTitle:Landroid/widget/TextView;

    new-instance v3, Lcom/lx/launcher8/setting/EditCellAct$1;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/setting/EditCellAct$1;-><init>(Lcom/lx/launcher8/setting/EditCellAct;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v2, 0x7f090190

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/EditCellAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lx/launcher8/setting/EditCellAct;->mRootView:Landroid/widget/LinearLayout;

    .line 51
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/EditCellAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 52
    .local v1, intent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/lx/launcher8/bean/ItemCell;->getFromIntent(Landroid/content/Intent;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v2

    iput-object v2, p0, Lcom/lx/launcher8/setting/EditCellAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    .line 53
    iget-object v2, p0, Lcom/lx/launcher8/setting/EditCellAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    if-nez v2, :cond_0

    .line 54
    const-string v2, "cellType"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 55
    .local v0, cellType:I
    if-lez v0, :cond_0

    .line 56
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/AnallApp;->getModel()Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lx/launcher8/db/LauncherModel;->getItemCell(I)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v2

    iput-object v2, p0, Lcom/lx/launcher8/setting/EditCellAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    .line 59
    .end local v0           #cellType:I
    :cond_0
    if-eqz p1, :cond_1

    const-string v2, "cell_cellType"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    invoke-static {}, Lcom/lx/launcher8/bean/CellFactory;->getInstance()Lcom/lx/launcher8/bean/CellFactory;

    move-result-object v2

    const-string v3, "cell_cellType"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/bean/CellFactory;->createCellBean(I)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v2

    iput-object v2, p0, Lcom/lx/launcher8/setting/EditCellAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    .line 61
    iget-object v2, p0, Lcom/lx/launcher8/setting/EditCellAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v2, p1}, Lcom/lx/launcher8/bean/ItemCell;->onRestoreState(Landroid/os/Bundle;)V

    .line 63
    :cond_1
    iget-object v2, p0, Lcom/lx/launcher8/setting/EditCellAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    if-nez v2, :cond_2

    .line 64
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/EditCellAct;->finish()V

    .line 83
    :goto_0
    return-void

    .line 68
    :cond_2
    iget-object v2, p0, Lcom/lx/launcher8/setting/EditCellAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    instance-of v2, v2, Lcom/lx/launcher8/bean/LightCell;

    if-eqz v2, :cond_3

    .line 69
    new-instance v3, Lcom/lx/launcher8/setting/view/LightSettingView;

    iget-object v2, p0, Lcom/lx/launcher8/setting/EditCellAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v2, Lcom/lx/launcher8/bean/LightCell;

    invoke-direct {v3, p0, v2}, Lcom/lx/launcher8/setting/view/LightSettingView;-><init>(Landroid/app/Activity;Lcom/lx/launcher8/bean/LightCell;)V

    iput-object v3, p0, Lcom/lx/launcher8/setting/EditCellAct;->mSettingView:Lcom/lx/launcher8/setting/view/SettingView;

    .line 81
    :goto_1
    iget-object v2, p0, Lcom/lx/launcher8/setting/EditCellAct;->mRootView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/lx/launcher8/setting/EditCellAct;->mSettingView:Lcom/lx/launcher8/setting/view/SettingView;

    invoke-interface {v3}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-static {v4, v4}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 71
    :cond_3
    iget-object v2, p0, Lcom/lx/launcher8/setting/EditCellAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    instance-of v2, v2, Lcom/lx/launcher8/bean/AppCell;

    if-eqz v2, :cond_4

    .line 72
    iget-object v2, p0, Lcom/lx/launcher8/setting/EditCellAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v2, Lcom/lx/launcher8/bean/AppCell;

    iput-object v2, p0, Lcom/lx/launcher8/setting/EditCellAct;->mCellInfo:Lcom/lx/launcher8/bean/AppCell;

    .line 73
    new-instance v2, Lcom/lx/launcher8/setting/view/TileSettingView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/EditCellAct;->mCellInfo:Lcom/lx/launcher8/bean/AppCell;

    invoke-direct {v2, p0, v3}, Lcom/lx/launcher8/setting/view/TileSettingView;-><init>(Landroid/app/Activity;Lcom/lx/launcher8/bean/AppCell;)V

    iput-object v2, p0, Lcom/lx/launcher8/setting/EditCellAct;->mSettingView:Lcom/lx/launcher8/setting/view/SettingView;

    goto :goto_1

    .line 74
    :cond_4
    iget-object v2, p0, Lcom/lx/launcher8/setting/EditCellAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    instance-of v2, v2, Lcom/lx/launcher8/bean/AppWidgetCell;

    if-eqz v2, :cond_5

    .line 75
    iget-object v2, p0, Lcom/lx/launcher8/setting/EditCellAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v2, Lcom/lx/launcher8/bean/AppWidgetCell;

    iput-object v2, p0, Lcom/lx/launcher8/setting/EditCellAct;->mWidgetCellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    .line 76
    new-instance v2, Lcom/lx/launcher8/setting/view/WidgetSettingView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/EditCellAct;->mWidgetCellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    invoke-direct {v2, p0, v3}, Lcom/lx/launcher8/setting/view/WidgetSettingView;-><init>(Landroid/app/Activity;Lcom/lx/launcher8/bean/AppWidgetCell;)V

    iput-object v2, p0, Lcom/lx/launcher8/setting/EditCellAct;->mSettingView:Lcom/lx/launcher8/setting/view/SettingView;

    goto :goto_1

    .line 78
    :cond_5
    new-instance v2, Lcom/lx/launcher8/setting/view/SpecialSettingView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/EditCellAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    invoke-direct {v2, p0, v3}, Lcom/lx/launcher8/setting/view/SpecialSettingView;-><init>(Landroid/app/Activity;Lcom/lx/launcher8/bean/ItemCell;)V

    iput-object v2, p0, Lcom/lx/launcher8/setting/EditCellAct;->mSettingView:Lcom/lx/launcher8/setting/view/SettingView;

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 108
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/lx/launcher8/setting/EditCellAct;->mSettingView:Lcom/lx/launcher8/setting/view/SettingView;

    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->onBack()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/EditCellAct;->setResult(I)V

    .line 111
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/NoSearchAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/lx/launcher8/NoSearchAct;->onResume()V

    .line 94
    iget-object v0, p0, Lcom/lx/launcher8/setting/EditCellAct;->mSettingView:Lcom/lx/launcher8/setting/view/SettingView;

    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->onResume()V

    .line 95
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 88
    iget-object v0, p0, Lcom/lx/launcher8/setting/EditCellAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/setting/EditCellAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/bean/ItemCell;->onSaveState(Landroid/os/Bundle;)V

    .line 89
    :cond_0
    return-void
.end method
