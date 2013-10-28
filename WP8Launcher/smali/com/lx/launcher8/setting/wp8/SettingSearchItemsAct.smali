.class public Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.source "SettingSearchItemsAct.java"


# static fields
.field public static final ITEM_VAL:Ljava/lang/String; = "item"

.field public static final PAGE_VAL:Ljava/lang/String; = "page"

.field public static final PRIVACY_MODE:I = 0x64


# instance fields
.field private mBtnClear:Landroid/widget/Button;

.field private mBtnMode:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

.field private mClick:Landroid/view/View$OnClickListener;

.field private mMainView:Landroid/view/View;

.field private mRootLl:Landroid/widget/LinearLayout;

.field private mSearchView:Landroid/view/View;

.field private mStatus:I

.field private mTvMode:Landroid/widget/TextView;

.field private onTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;

.field private page:I

.field private themePaper:I

.field private titleBarText:Ljava/lang/String;

.field private titleText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->titleText:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->titleBarText:Ljava/lang/String;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->page:I

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->themePaper:I

    .line 32
    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mMainView:Landroid/view/View;

    .line 33
    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    .line 122
    new-instance v0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$1;-><init>(Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->onTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;

    .line 140
    new-instance v0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$2;-><init>(Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mClick:Landroid/view/View$OnClickListener;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput p1, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mStatus:I

    return-void
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mTvMode:Landroid/widget/TextView;

    return-object v0
.end method

.method private createPrivacyMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 83
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "item"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mStatus:I

    .line 84
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mStatus:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 85
    const v0, 0x38080

    .line 87
    .local v0, cellType:I
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/AnallApp;->getModel()Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lx/launcher8/db/LauncherModel;->getItemCell(I)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v1

    .line 88
    .local v1, itemCell:Lcom/lx/launcher8/bean/ItemCell;
    instance-of v2, v1, Lcom/lx/launcher8/bean/AppCell;

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, v1, Lcom/lx/launcher8/bean/ItemCell;->appName:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/app/common/utils/UConvert;->toInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mStatus:I

    .line 93
    .end local v0           #cellType:I
    .end local v1           #itemCell:Lcom/lx/launcher8/bean/ItemCell;
    :cond_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mSearchView:Landroid/view/View;

    const v3, 0x7f090188

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 94
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mBtnMode:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v3}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setFitColor(I)V

    .line 95
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mBtnMode:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->onTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;)V

    .line 96
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mBtnClear:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 97
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mBtnClear:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->getSelectorButton()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 98
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mBtnClear:Landroid/widget/Button;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v2, 0x7f0a0263

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->titleBarText:Ljava/lang/String;

    .line 100
    const v2, 0x7f0a0105

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->titleText:Ljava/lang/String;

    .line 101
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mStatus:I

    if-ne v2, v4, :cond_1

    .line 102
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mBtnMode:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v4}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    .line 103
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mTvMode:Landroid/widget/TextView;

    const v3, 0x7f0a0158

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 109
    :goto_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mSearchView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    return-void

    .line 105
    :cond_1
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mBtnMode:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    .line 106
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mTvMode:Landroid/widget/TextView;

    const v3, 0x7f0a0159

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private createView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f090191

    const/4 v2, -0x1

    .line 51
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030062

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mMainView:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mMainView:Landroid/view/View;

    const v1, 0x7f090190

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mRootLl:Landroid/widget/LinearLayout;

    .line 53
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005d

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mSearchView:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mSearchView:Landroid/view/View;

    const v1, 0x7f090188

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mTvMode:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mSearchView:Landroid/view/View;

    const v1, 0x7f090189

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mBtnMode:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    .line 56
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mSearchView:Landroid/view/View;

    const v1, 0x7f09018a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mBtnClear:Landroid/widget/Button;

    .line 58
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->themePaper:I

    .line 59
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->themePaper:I

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 61
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mBtnMode:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    .line 67
    :goto_0
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "page"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->page:I

    .line 68
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->page:I

    packed-switch v0, :pswitch_data_0

    .line 73
    const-string v0, "\u8be5\u9875\u9762\u4e0d\u5b58\u5728"

    const/16 v1, 0x1f4

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 74
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->finish()V

    .line 77
    :goto_1
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 64
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mBtnMode:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    goto :goto_0

    .line 70
    :pswitch_0
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->createPrivacyMode()V

    goto :goto_1

    .line 68
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected initData()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->createView()V

    .line 46
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mTitleBar:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->titleBarText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->titleText:Ljava/lang/String;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 48
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 114
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 116
    .local v0, data:Landroid/content/Intent;
    const-string v1, "item"

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->setResult(ILandroid/content/Intent;)V

    .line 119
    .end local v0           #data:Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method
