.class public Lcom/lx/launcher8/setting/wp8/AddAppAct;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.source "AddAppAct.java"


# instance fields
.field private mCellInfo:Lcom/lx/launcher8/bean/AppCell;

.field private mTileSettingView:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddAppAct;->mTileSettingView:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    .line 11
    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 2

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/AddAppAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/lx/launcher8/bean/ItemCell;->getFromIntent(Landroid/content/Intent;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/bean/AppCell;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddAppAct;->mCellInfo:Lcom/lx/launcher8/bean/AppCell;

    .line 20
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddAppAct;->mCellInfo:Lcom/lx/launcher8/bean/AppCell;

    if-nez v0, :cond_0

    .line 27
    :goto_0
    return-void

    .line 25
    :cond_0
    new-instance v0, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/AddAppAct;->mCellInfo:Lcom/lx/launcher8/bean/AppCell;

    invoke-direct {v0, p0, v1}, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;-><init>(Landroid/app/Activity;Lcom/lx/launcher8/bean/AppCell;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddAppAct;->mTileSettingView:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    .line 26
    const v0, 0x7f0a0062

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/AddAppAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/AddAppAct;->mTileSettingView:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/wp8/AddAppAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 37
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 38
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onActivityResult(IILandroid/content/Intent;)V

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddAppAct;->mTileSettingView:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 46
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/AddAppAct;->setResult(I)V

    .line 49
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onResume()V

    .line 32
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddAppAct;->mTileSettingView:Lcom/lx/launcher8/setting/wp8/view/TileSettingView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->onResume()V

    .line 33
    return-void
.end method
