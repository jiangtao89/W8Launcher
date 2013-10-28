.class public Lcom/lx/launcher8/setting/AddWidgetAct;
.super Lcom/lx/launcher8/NoSearchAct;
.source "AddWidgetAct.java"


# instance fields
.field private mCellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

.field private mFirstTitle:Landroid/widget/TextView;

.field private mRootView:Landroid/widget/LinearLayout;

.field private mWidgetSettingView:Lcom/lx/launcher8/setting/view/WidgetSettingView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/setting/AddWidgetAct;->mWidgetSettingView:Lcom/lx/launcher8/setting/view/WidgetSettingView;

    .line 18
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 63
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/NoSearchAct;->onActivityResult(IILandroid/content/Intent;)V

    .line 68
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddWidgetAct;->mWidgetSettingView:Lcom/lx/launcher8/setting/view/WidgetSettingView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lx/launcher8/setting/view/WidgetSettingView;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, -0x1

    .line 29
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f030065

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/AddWidgetAct;->setContentView(I)V

    .line 31
    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/AddWidgetAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/AddWidgetAct;->mFirstTitle:Landroid/widget/TextView;

    .line 32
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddWidgetAct;->mFirstTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0062

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/AddWidgetAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddWidgetAct;->mFirstTitle:Landroid/widget/TextView;

    new-instance v1, Lcom/lx/launcher8/setting/AddWidgetAct$1;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/AddWidgetAct$1;-><init>(Lcom/lx/launcher8/setting/AddWidgetAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const v0, 0x7f090190

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/AddWidgetAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/AddWidgetAct;->mRootView:Landroid/widget/LinearLayout;

    .line 43
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/AddWidgetAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/lx/launcher8/bean/ItemCell;->getFromIntent(Landroid/content/Intent;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/bean/AppWidgetCell;

    iput-object v0, p0, Lcom/lx/launcher8/setting/AddWidgetAct;->mCellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    .line 44
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddWidgetAct;->mCellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/AddWidgetAct;->finish()V

    .line 53
    :goto_0
    return-void

    .line 49
    :cond_0
    new-instance v0, Lcom/lx/launcher8/setting/view/WidgetSettingView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/AddWidgetAct;->mCellInfo:Lcom/lx/launcher8/bean/AppWidgetCell;

    invoke-direct {v0, p0, v1}, Lcom/lx/launcher8/setting/view/WidgetSettingView;-><init>(Landroid/app/Activity;Lcom/lx/launcher8/bean/AppWidgetCell;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/AddWidgetAct;->mWidgetSettingView:Lcom/lx/launcher8/setting/view/WidgetSettingView;

    .line 51
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddWidgetAct;->mRootView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/AddWidgetAct;->mWidgetSettingView:Lcom/lx/launcher8/setting/view/WidgetSettingView;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/view/WidgetSettingView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v2, v2}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 72
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/AddWidgetAct;->setResult(I)V

    .line 75
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/NoSearchAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/lx/launcher8/NoSearchAct;->onResume()V

    .line 58
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddWidgetAct;->mWidgetSettingView:Lcom/lx/launcher8/setting/view/WidgetSettingView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/WidgetSettingView;->onResume()V

    .line 59
    return-void
.end method
