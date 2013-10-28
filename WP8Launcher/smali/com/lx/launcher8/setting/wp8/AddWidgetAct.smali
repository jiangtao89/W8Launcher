.class public Lcom/lx/launcher8/setting/wp8/AddWidgetAct;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.source "AddWidgetAct.java"


# instance fields
.field private mCellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

.field private mWidgetSettingView:Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddWidgetAct;->mWidgetSettingView:Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;

    .line 11
    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 2

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/AddWidgetAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/lx/launcher8/bean/ItemCell;->getFromIntent(Landroid/content/Intent;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/bean/AppWidgetCell;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddWidgetAct;->mCellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    .line 20
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddWidgetAct;->mCellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/AddWidgetAct;->finish()V

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    new-instance v0, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/AddWidgetAct;->mCellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    invoke-direct {v0, p0, v1}, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;-><init>(Landroid/app/Activity;Lcom/lx/launcher8/bean/AppWidgetCell;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddWidgetAct;->mWidgetSettingView:Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;

    .line 27
    const v0, 0x7f0a0062

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/AddWidgetAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/AddWidgetAct;->mWidgetSettingView:Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/wp8/AddWidgetAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 38
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 39
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onActivityResult(IILandroid/content/Intent;)V

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddWidgetAct;->mWidgetSettingView:Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 47
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/AddWidgetAct;->setResult(I)V

    .line 50
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onResume()V

    .line 33
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddWidgetAct;->mWidgetSettingView:Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/WidgetSettingView;->onResume()V

    .line 34
    return-void
.end method
