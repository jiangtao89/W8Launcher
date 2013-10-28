.class public Lcom/lx/launcher8/setting/AppPickAct;
.super Lcom/lx/launcher8/NoSearchAct;
.source "AppPickAct.java"


# static fields
.field public static final EXTRAL_BATCH_ADD:Ljava/lang/String; = "extral_batch_add"

.field public static final EXTRAL_MUTI:Ljava/lang/String; = "extral_muti"

.field public static final EXTRAL_SHORT_CUT:Ljava/lang/String; = "extral_short_cut"


# instance fields
.field private isShowShortCut:I

.field private mAdapter:Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;

.field private mBatchAdd:Z

.field private mMutiChoose:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/AppPickAct;)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/AppPickAct;->mMutiChoose:Z

    return v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/AppPickAct;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lcom/lx/launcher8/setting/AppPickAct;->isShowShortCut:I

    return v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/AppPickAct;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/lx/launcher8/setting/AppPickAct;->pickShortcut()V

    return-void
.end method

.method private pickShortcut()V
    .locals 4

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, pickIntent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.INTENT"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 78
    const-string v1, "android.intent.extra.TITLE"

    const v2, 0x7f0a00e8

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/AppPickAct;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 79
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/AppPickAct;->startActivityForResult(Landroid/content/Intent;I)V

    .line 80
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x7

    const/4 v2, -0x1

    .line 84
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    .line 85
    invoke-virtual {p0, p3, v1}, Lcom/lx/launcher8/setting/AppPickAct;->startActivityForResult(Landroid/content/Intent;I)V

    .line 94
    :goto_0
    return-void

    .line 87
    :cond_0
    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    if-eqz p3, :cond_1

    .line 88
    const-string v0, "extral_short_cut"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v2, p3}, Lcom/lx/launcher8/setting/AppPickAct;->setResult(ILandroid/content/Intent;)V

    .line 90
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/AppPickAct;->finish()V

    goto :goto_0

    .line 93
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/NoSearchAct;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/AppPickAct;->setContentView(I)V

    .line 41
    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/AppPickAct;->setResult(I)V

    .line 42
    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/AppPickAct;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 43
    .local v7, title:Landroid/widget/TextView;
    const v0, 0x7f0a0057

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    .line 44
    new-instance v0, Lcom/lx/launcher8/setting/AppPickAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/AppPickAct$1;-><init>(Lcom/lx/launcher8/setting/AppPickAct;)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/AppPickAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extral_muti"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lx/launcher8/setting/AppPickAct;->mMutiChoose:Z

    .line 50
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/AppPickAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extral_batch_add"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lx/launcher8/setting/AppPickAct;->mBatchAdd:Z

    .line 51
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/AppPickAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extral_short_cut"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/AppPickAct;->isShowShortCut:I

    .line 52
    const v0, 0x7f09007b

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/AppPickAct;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 54
    .local v6, listView:Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/AppPickAct;->getApplication()Landroid/app/Application;

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

    .line 55
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    new-instance v0, Lcom/lx/launcher8/adapter/AppAdapter$AppCharComparator;

    invoke-direct {v0}, Lcom/lx/launcher8/adapter/AppAdapter$AppCharComparator;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 56
    new-instance v0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;

    iget-boolean v3, p0, Lcom/lx/launcher8/setting/AppPickAct;->mMutiChoose:Z

    iget-boolean v4, p0, Lcom/lx/launcher8/setting/AppPickAct;->mBatchAdd:Z

    iget v5, p0, Lcom/lx/launcher8/setting/AppPickAct;->isShowShortCut:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;ZZI)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/AppPickAct;->mAdapter:Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;

    .line 57
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppPickAct;->mAdapter:Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    new-instance v0, Lcom/lx/launcher8/setting/AppPickAct$2;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/AppPickAct$2;-><init>(Lcom/lx/launcher8/setting/AppPickAct;)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 73
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Lcom/lx/launcher8/NoSearchAct;->onDestroy()V

    .line 114
    iget-object v0, p0, Lcom/lx/launcher8/setting/AppPickAct;->mAdapter:Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->clear()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/setting/AppPickAct;->mAdapter:Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;

    .line 116
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 98
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 99
    iget-boolean v2, p0, Lcom/lx/launcher8/setting/AppPickAct;->mBatchAdd:Z

    if-eqz v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/lx/launcher8/setting/AppPickAct;->mAdapter:Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->getSelectRecoder()[Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, result:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/AppPickAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 102
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "return-data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/lx/launcher8/setting/AppPickAct;->setResult(ILandroid/content/Intent;)V

    .line 108
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #result:[Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/NoSearchAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 105
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/AppPickAct;->setResult(I)V

    goto :goto_0
.end method
