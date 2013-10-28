.class public Lcom/lx/launcher8/setting/AddAppAct;
.super Lcom/lx/launcher8/NoSearchAct;
.source "AddAppAct.java"


# static fields
.field static final REQUEST_PICK_COLOR:I = 0x1

.field static final REQUEST_PICK_PIC:I = 0x2

.field static final REQUEST_PICK_SIZE:I = 0x3


# instance fields
.field private mCellInfo:Lcom/lx/launcher8/bean/AppCell;

.field private mFirstTitle:Landroid/widget/TextView;

.field private mRootView:Landroid/widget/LinearLayout;

.field private mTileSettingView:Lcom/lx/launcher8/setting/view/TileSettingView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/setting/AddAppAct;->mTileSettingView:Lcom/lx/launcher8/setting/view/TileSettingView;

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
    .line 65
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 66
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/NoSearchAct;->onActivityResult(IILandroid/content/Intent;)V

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddAppAct;->mTileSettingView:Lcom/lx/launcher8/setting/view/TileSettingView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lx/launcher8/setting/view/TileSettingView;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, -0x1

    .line 32
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f030065

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/AddAppAct;->setContentView(I)V

    .line 34
    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/AddAppAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/AddAppAct;->mFirstTitle:Landroid/widget/TextView;

    .line 35
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddAppAct;->mFirstTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0062

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/AddAppAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddAppAct;->mFirstTitle:Landroid/widget/TextView;

    new-instance v1, Lcom/lx/launcher8/setting/AddAppAct$1;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/AddAppAct$1;-><init>(Lcom/lx/launcher8/setting/AddAppAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const v0, 0x7f090190

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/AddAppAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/AddAppAct;->mRootView:Landroid/widget/LinearLayout;

    .line 46
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/AddAppAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/lx/launcher8/bean/ItemCell;->getFromIntent(Landroid/content/Intent;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/bean/AppCell;

    iput-object v0, p0, Lcom/lx/launcher8/setting/AddAppAct;->mCellInfo:Lcom/lx/launcher8/bean/AppCell;

    .line 47
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddAppAct;->mCellInfo:Lcom/lx/launcher8/bean/AppCell;

    if-nez v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Lcom/lx/launcher8/setting/view/TileSettingView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/AddAppAct;->mCellInfo:Lcom/lx/launcher8/bean/AppCell;

    invoke-direct {v0, p0, v1}, Lcom/lx/launcher8/setting/view/TileSettingView;-><init>(Landroid/app/Activity;Lcom/lx/launcher8/bean/AppCell;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/AddAppAct;->mTileSettingView:Lcom/lx/launcher8/setting/view/TileSettingView;

    .line 53
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddAppAct;->mRootView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/AddAppAct;->mTileSettingView:Lcom/lx/launcher8/setting/view/TileSettingView;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/view/TileSettingView;->getView()Landroid/view/View;

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
    .line 74
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/AddAppAct;->setResult(I)V

    .line 77
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/NoSearchAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/lx/launcher8/NoSearchAct;->onResume()V

    .line 60
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddAppAct;->mTileSettingView:Lcom/lx/launcher8/setting/view/TileSettingView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/TileSettingView;->onResume()V

    .line 61
    return-void
.end method
