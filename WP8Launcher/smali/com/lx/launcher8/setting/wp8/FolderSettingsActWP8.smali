.class public Lcom/lx/launcher8/setting/wp8/FolderSettingsActWP8;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.source "FolderSettingsActWP8.java"


# static fields
.field public static final EXTRAL_PAGE:Ljava/lang/String; = "extral_page"


# instance fields
.field private mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

.field private mFolderEditView:Lcom/lx/launcher8/setting/wp8/view/FolderEditView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;-><init>()V

    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 2

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/FolderSettingsActWP8;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/lx/launcher8/bean/ItemCell;->getFromIntent(Landroid/content/Intent;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/bean/FolderCell;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/FolderSettingsActWP8;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    .line 21
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/FolderSettingsActWP8;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/FolderSettingsActWP8;->finish()V

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    new-instance v0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/FolderSettingsActWP8;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-direct {v0, p0, v1}, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;-><init>(Landroid/app/Activity;Lcom/lx/launcher8/bean/AppCell;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/FolderSettingsActWP8;->mFolderEditView:Lcom/lx/launcher8/setting/wp8/view/FolderEditView;

    .line 27
    const v0, 0x7f0a01db

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/FolderSettingsActWP8;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/FolderSettingsActWP8;->mFolderEditView:Lcom/lx/launcher8/setting/wp8/view/FolderEditView;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/wp8/FolderSettingsActWP8;->addPage(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 38
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onActivityResult(IILandroid/content/Intent;)V

    .line 39
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/FolderSettingsActWP8;->mFolderEditView:Lcom/lx/launcher8/setting/wp8/view/FolderEditView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->onActivityResult(IILandroid/content/Intent;)Z

    .line 40
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 44
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/FolderSettingsActWP8;->mFolderEditView:Lcom/lx/launcher8/setting/wp8/view/FolderEditView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->onBack()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/FolderSettingsActWP8;->setResult(I)V

    .line 47
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
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/FolderSettingsActWP8;->mFolderEditView:Lcom/lx/launcher8/setting/wp8/view/FolderEditView;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->onResume()V

    .line 34
    return-void
.end method
