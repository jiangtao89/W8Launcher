.class public Lcom/lx/launcher8/setting/wp8/AppPickAct;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.source "AppPickAct.java"


# static fields
.field public static final EXTRAL_BATCH_ADD:Ljava/lang/String; = "extral_batch_add"

.field public static final EXTRAL_MUTI:Ljava/lang/String; = "extral_muti"

.field public static final EXTRAL_SHORT_CUT:Ljava/lang/String; = "extral_short_cut"

.field public static final EXTRAL_TEXT:Ljava/lang/String; = "extral_text"


# instance fields
.field private isShowShortCut:I

.field private mAdapter:Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;

.field private mBatchAdd:Z

.field private mMutiChoose:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/AppPickAct;)Z
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/AppPickAct;->mMutiChoose:Z

    return v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/AppPickAct;)I
    .locals 1
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/AppPickAct;->isShowShortCut:I

    return v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/AppPickAct;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/AppPickAct;->pickShortcut()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/high16 v8, -0x100

    const/4 v4, 0x0

    .line 44
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppPickAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const v0, 0x7f0e000c

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/AppPickAct;->setTheme(I)V

    .line 47
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030016

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 48
    .local v7, mMainView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/AppPickAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extral_muti"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/AppPickAct;->mMutiChoose:Z

    .line 49
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/AppPickAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extral_batch_add"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/AppPickAct;->mBatchAdd:Z

    .line 50
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/AppPickAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extral_short_cut"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/AppPickAct;->isShowShortCut:I

    .line 51
    const v0, 0x7f09007b

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 52
    .local v6, listView:Landroid/widget/ListView;
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppPickAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 58
    :goto_0
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/AppPickAct;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/AnallApp;

    invoke-virtual {v0}, Lcom/lx/launcher8/AnallApp;->getModel()Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/db/LauncherModel;->getAppList()Lcom/anall/app/bean/AllAppsList;

    move-result-object v0

    iget-object v0, v0, Lcom/anall/app/bean/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 59
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    new-instance v0, Lcom/lx/launcher8/adapter/AppAdapter$AppCharComparator;

    invoke-direct {v0}, Lcom/lx/launcher8/adapter/AppAdapter$AppCharComparator;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 60
    new-instance v0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;

    iget-boolean v3, p0, Lcom/lx/launcher8/setting/wp8/AppPickAct;->mMutiChoose:Z

    iget-boolean v4, p0, Lcom/lx/launcher8/setting/wp8/AppPickAct;->mBatchAdd:Z

    iget v5, p0, Lcom/lx/launcher8/setting/wp8/AppPickAct;->isShowShortCut:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;ZZI)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppPickAct;->mAdapter:Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;

    .line 61
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppPickAct;->mAdapter:Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    new-instance v0, Lcom/lx/launcher8/setting/wp8/AppPickAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/AppPickAct$1;-><init>(Lcom/lx/launcher8/setting/wp8/AppPickAct;)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 79
    const v0, 0x7f09000f

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppPickAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 80
    return-object v7

    .line 55
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    :cond_1
    invoke-virtual {v6, v9}, Landroid/widget/ListView;->setCacheColorHint(I)V

    goto :goto_0

    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    :cond_2
    move v0, v9

    .line 79
    goto :goto_1
.end method

.method private pickShortcut()V
    .locals 4

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, pickIntent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.INTENT"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 86
    const-string v1, "android.intent.extra.TITLE"

    const v2, 0x7f0a00e8

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/AppPickAct;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 87
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/wp8/AppPickAct;->startActivityForResult(Landroid/content/Intent;I)V

    .line 88
    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 3

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/AppPickAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extral_text"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, title:Ljava/lang/String;
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/AppPickAct;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/AppPickAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/TitleLinearLayout;->setVisibility(I)V

    .line 40
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/AppPickAct;->createView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/wp8/AppPickAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 41
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x7

    const/4 v2, -0x1

    .line 92
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    .line 93
    invoke-virtual {p0, p3, v1}, Lcom/lx/launcher8/setting/wp8/AppPickAct;->startActivityForResult(Landroid/content/Intent;I)V

    .line 102
    :goto_0
    return-void

    .line 95
    :cond_0
    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    if-eqz p3, :cond_1

    .line 96
    const-string v0, "extral_short_cut"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v2, p3}, Lcom/lx/launcher8/setting/wp8/AppPickAct;->setResult(ILandroid/content/Intent;)V

    .line 98
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/AppPickAct;->finish()V

    goto :goto_0

    .line 101
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onDestroy()V

    .line 107
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppPickAct;->mAdapter:Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->clear()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppPickAct;->mAdapter:Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;

    .line 109
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 113
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 114
    iget-boolean v2, p0, Lcom/lx/launcher8/setting/wp8/AppPickAct;->mBatchAdd:Z

    if-eqz v2, :cond_1

    .line 115
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AppPickAct;->mAdapter:Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->getSelectRecoder()[Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, result:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/AppPickAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 117
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "return-data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/lx/launcher8/setting/wp8/AppPickAct;->setResult(ILandroid/content/Intent;)V

    .line 123
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #result:[Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 120
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/AppPickAct;->setResult(I)V

    goto :goto_0
.end method
