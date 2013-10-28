.class public Lcom/lx/launcher8/setting/wp8/view/FolderEditView;
.super Lcom/lx/launcher8/setting/wp8/view/TileSettingView;
.source "FolderEditView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final REQUEST_CHOOSE_APP:I = 0x18

.field private static final REQUEST_FOLDER_ANIMATION:I = 0x20

.field private static final REQUEST_FOLDER_DISPLAY:I = 0x19

.field private static final REQUEST_FOLDER_POPUP:I = 0x21


# instance fields
.field private cellInfoString:Ljava/lang/String;

.field private folderSettings:[I

.field private mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

.field private mFolderAnim:Lcom/lx/launcher8/view/SettingLinear;

.field private mFolderDisplay:Lcom/lx/launcher8/view/SettingLinear;

.field private mFolderPopup:Lcom/lx/launcher8/view/SettingLinear;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/lx/launcher8/bean/AppCell;)V
    .locals 1
    .parameter "act"
    .parameter "cellInfo"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;-><init>(Landroid/app/Activity;Lcom/lx/launcher8/bean/AppCell;)V

    .line 36
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v0}, Lcom/lx/launcher8/bean/FolderCell;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->cellInfoString:Ljava/lang/String;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/view/FolderEditView;)Lcom/lx/launcher8/bean/FolderCell;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    return-object v0
.end method


# virtual methods
.method protected initData()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 54
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->initData()V

    .line 55
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    check-cast v3, Lcom/lx/launcher8/bean/FolderCell;

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    .line 56
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v3}, Lcom/lx/launcher8/bean/FolderCell;->getFolderSettings()[I

    move-result-object v3

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->folderSettings:[I

    .line 57
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->tileShowFunc:Lcom/lx/launcher8/view/SettingLinear;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/view/SettingLinear;->setVisibility(I)V

    .line 58
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mFolderDisplay:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const v5, 0x7f0a01e0

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v8, v7}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 59
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->folderSettings:[I

    aget v3, v3, v7

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const v4, 0x7f0a01e3

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, bottom:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mFolderDisplay:Lcom/lx/launcher8/view/SettingLinear;

    invoke-virtual {v3, v1, v8, v7}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 61
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mFolderDisplay:Lcom/lx/launcher8/view/SettingLinear;

    invoke-virtual {v3, p0}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mFolderAnim:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const v5, 0x7f0a01df

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v8, v7}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 64
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->folderSettings:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const v4, 0x7f0a01e5

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, anim:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mFolderAnim:Lcom/lx/launcher8/view/SettingLinear;

    invoke-virtual {v3, v0, v8, v7}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 66
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mFolderAnim:Lcom/lx/launcher8/view/SettingLinear;

    invoke-virtual {v3, p0}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mFolderPopup:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const v5, 0x7f0a01e8

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v8, v7}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 71
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->folderSettings:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const v4, 0x7f0a01e9

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, popup:Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mFolderPopup:Lcom/lx/launcher8/view/SettingLinear;

    invoke-virtual {v3, v2, v8, v7}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 73
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mFolderPopup:Lcom/lx/launcher8/view/SettingLinear;

    invoke-virtual {v3, p0}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const v5, 0x7f0a01e2

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v8, v7}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 77
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const v6, 0x7f0a01eb

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget-object v5, v5, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const v6, 0x7f0a01ec

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v8, v7}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    .line 78
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    invoke-virtual {v3, p0}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->btnConfirm:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->selectIconBtn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->selectIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->picPositionLinear:Lcom/lx/launcher8/view/SettingLinear;

    invoke-virtual {v3, p0}, Lcom/lx/launcher8/view/SettingLinear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void

    .line 59
    .end local v0           #anim:Ljava/lang/String;
    .end local v1           #bottom:Ljava/lang/String;
    .end local v2           #popup:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const v4, 0x7f0a01de

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 64
    .restart local v1       #bottom:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const v4, 0x7f0a01e4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 71
    .restart local v0       #anim:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const v4, 0x7f0a01ea

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2
.end method

.method protected initView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->initView()V

    .line 43
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mMainView:Landroid/view/View;

    const v1, 0x7f0901e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mFolderDisplay:Lcom/lx/launcher8/view/SettingLinear;

    .line 44
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mMainView:Landroid/view/View;

    const v1, 0x7f0901e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mFolderAnim:Lcom/lx/launcher8/view/SettingLinear;

    .line 45
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mMainView:Landroid/view/View;

    const v1, 0x7f0901e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SettingLinear;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mFolderPopup:Lcom/lx/launcher8/view/SettingLinear;

    .line 47
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mFolderDisplay:Lcom/lx/launcher8/view/SettingLinear;

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/SettingLinear;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mFolderAnim:Lcom/lx/launcher8/view/SettingLinear;

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/SettingLinear;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mFolderPopup:Lcom/lx/launcher8/view/SettingLinear;

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/SettingLinear;->setVisibility(I)V

    .line 50
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 163
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->onActivityResult(IILandroid/content/Intent;)Z

    .line 164
    const/4 v7, -0x1

    if-ne p2, v7, :cond_0

    if-eqz p3, :cond_0

    .line 165
    sparse-switch p1, :sswitch_data_0

    .line 195
    :cond_0
    :goto_0
    const/4 v7, 0x1

    return v7

    .line 167
    :sswitch_0
    invoke-static {p3}, Lcom/lx/launcher8/bean/ItemCell;->getFromIntent(Landroid/content/Intent;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/bean/FolderCell;

    .line 168
    .local v4, mFolderInfo:Lcom/lx/launcher8/bean/FolderCell;
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget-object v8, v4, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    iput-object v8, v7, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    .line 169
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const v9, 0x7f0a01e2

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/lx/launcher8/view/SettingLinear;->setTopText(Ljava/lang/CharSequence;FI)V

    .line 170
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->bindingApp:Lcom/lx/launcher8/view/SettingLinear;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a01eb

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget-object v9, v9, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const v10, 0x7f0a01ec

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto :goto_0

    .line 173
    .end local v4           #mFolderInfo:Lcom/lx/launcher8/bean/FolderCell;
    :sswitch_1
    const-string v7, "extral_value"

    const/4 v8, 0x0

    invoke-virtual {p3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 174
    .local v3, dispaly:I
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->folderSettings:[I

    const/4 v8, 0x0

    aput v3, v7, v8

    .line 175
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->folderSettings:[I

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/bean/FolderCell;->setFolderSettings([I)V

    .line 176
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->folderSettings:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const v8, 0x7f0a01e3

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, bottom:Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mFolderDisplay:Lcom/lx/launcher8/view/SettingLinear;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v2, v8, v9}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_0

    .line 176
    .end local v2           #bottom:Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const v8, 0x7f0a01de

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 180
    .end local v3           #dispaly:I
    :sswitch_2
    const-string v7, "extral_value"

    const/4 v8, 0x0

    invoke-virtual {p3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 181
    .local v0, anim:I
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->folderSettings:[I

    const/4 v8, 0x1

    aput v0, v7, v8

    .line 182
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->folderSettings:[I

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/bean/FolderCell;->setFolderSettings([I)V

    .line 183
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->folderSettings:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const v8, 0x7f0a01e5

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, animtext:Ljava/lang/String;
    :goto_2
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mFolderAnim:Lcom/lx/launcher8/view/SettingLinear;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v1, v8, v9}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_0

    .line 183
    .end local v1           #animtext:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const v8, 0x7f0a01e4

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 187
    .end local v0           #anim:I
    :sswitch_3
    const-string v7, "extral_value"

    const/4 v8, 0x0

    invoke-virtual {p3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 188
    .local v5, popup:I
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->folderSettings:[I

    const/4 v8, 0x2

    aput v5, v7, v8

    .line 189
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->folderSettings:[I

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/bean/FolderCell;->setFolderSettings([I)V

    .line 190
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->folderSettings:[I

    const/4 v8, 0x2

    aget v7, v7, v8

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const v8, 0x7f0a01e9

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 191
    .local v6, popupstr:Ljava/lang/String;
    :goto_3
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mFolderPopup:Lcom/lx/launcher8/view/SettingLinear;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v8, v9}, Lcom/lx/launcher8/view/SettingLinear;->setBottomText(Ljava/lang/CharSequence;FI)V

    goto/16 :goto_0

    .line 190
    .end local v6           #popupstr:Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const v8, 0x7f0a01ea

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 165
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_1
        0x20 -> :sswitch_2
        0x21 -> :sswitch_3
    .end sparse-switch
.end method

.method public onBack()Z
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->cellInfoString:Ljava/lang/String;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v1}, Lcom/lx/launcher8/bean/FolderCell;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcom/lx/launcher8/view/PopupDialog;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mContext:Landroid/content/Context;

    const v2, 0x7f0a01c4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;->setTitle(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0134

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;->setMsg(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0077

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/FolderEditView$1;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/FolderEditView$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/FolderEditView;)V

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setOkButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0078

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/FolderEditView$2;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/view/FolderEditView$2;-><init>(Lcom/lx/launcher8/setting/wp8/view/FolderEditView;)V

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setCancelButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Lcom/lx/launcher8/view/PopupDialog;->show()V

    .line 220
    const/4 v0, 0x1

    .line 222
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const v7, 0x7f0a01e6

    const/16 v6, 0x320

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 92
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 93
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 154
    :goto_0
    return-void

    .line 96
    :sswitch_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->folderSettings:[I

    aget v2, v2, v4

    if-ne v2, v5, :cond_0

    .line 97
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    invoke-virtual {v3, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mContext:Landroid/content/Context;

    const-class v3, Lcom/lx/launcher8/setting/wp8/IconPickAct;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v0, b:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget-object v2, v2, Lcom/lx/launcher8/bean/FolderCell;->icon:Landroid/graphics/Bitmap;

    invoke-static {v0, v2}, Lcom/lx/launcher8/util/Utils;->putIntentExtra(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    .line 103
    const-string v2, "aspectX"

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget v3, v3, Lcom/lx/launcher8/bean/FolderCell;->spanX:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    const-string v2, "aspectY"

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget v3, v3, Lcom/lx/launcher8/bean/FolderCell;->spanY:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 106
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 110
    .end local v0           #b:Landroid/os/Bundle;
    :sswitch_1
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->folderSettings:[I

    aget v2, v2, v4

    if-ne v2, v5, :cond_1

    .line 111
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    invoke-virtual {v3, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 113
    :cond_1
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mContext:Landroid/content/Context;

    const-class v3, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "PAGE"

    const/16 v3, 0x2bc

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    const-string v2, "extral_value"

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->cellInfo:Lcom/lx/launcher8/bean/AppCell;

    invoke-virtual {v3}, Lcom/lx/launcher8/bean/AppCell;->getImgGravity()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const/4 v3, 0x5

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 120
    :sswitch_2
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const-class v3, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 121
    const-string v2, "PAGE"

    const/16 v3, 0x514

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    const-string v2, "extral_value"

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v3}, Lcom/lx/launcher8/bean/FolderCell;->getFolderSettings()[I

    move-result-object v3

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const/16 v3, 0x19

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 126
    :sswitch_3
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const-class v3, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 127
    const-string v2, "PAGE"

    const/16 v3, 0x578

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    const-string v2, "extral_value"

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v3}, Lcom/lx/launcher8/bean/FolderCell;->getFolderSettings()[I

    move-result-object v3

    aget v3, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const/16 v3, 0x20

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 132
    :sswitch_4
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v2, v1}, Lcom/lx/launcher8/bean/FolderCell;->setIntentParam(Landroid/content/Intent;)V

    .line 133
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const-class v3, Lcom/lx/launcher8/setting/FolderAppPickAct;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 134
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const/16 v3, 0x18

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 137
    :sswitch_5
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const-class v3, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 138
    const-string v2, "PAGE"

    const/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    const-string v2, "extral_value"

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v3}, Lcom/lx/launcher8/bean/FolderCell;->getFolderSettings()[I

    move-result-object v3

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const/16 v3, 0x21

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 143
    :sswitch_6
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 144
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v2, v1}, Lcom/lx/launcher8/bean/FolderCell;->setIntentParam(Landroid/content/Intent;)V

    .line 145
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 146
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 149
    :sswitch_7
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->setResult(I)V

    .line 150
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/FolderEditView;->mAct:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 93
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090194 -> :sswitch_6
        0x7f090196 -> :sswitch_7
        0x7f0901cf -> :sswitch_0
        0x7f0901d2 -> :sswitch_0
        0x7f0901d4 -> :sswitch_1
        0x7f0901d6 -> :sswitch_4
        0x7f0901e6 -> :sswitch_2
        0x7f0901e7 -> :sswitch_3
        0x7f0901e8 -> :sswitch_5
    .end sparse-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 158
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/view/TileSettingView;->onResume()V

    .line 159
    return-void
.end method
