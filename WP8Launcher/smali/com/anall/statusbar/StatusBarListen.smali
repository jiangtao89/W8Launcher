.class public Lcom/anall/statusbar/StatusBarListen;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.source "StatusBarListen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anall/statusbar/StatusBarListen$App;,
        Lcom/anall/statusbar/StatusBarListen$AppAdapter;,
        Lcom/anall/statusbar/StatusBarListen$LoadRunnable;
    }
.end annotation


# instance fields
.field private isWhite:Z

.field private mAdapter:Lcom/anall/statusbar/StatusBarListen$AppAdapter;

.field mComparable:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/anall/statusbar/StatusBarListen$App;",
            ">;"
        }
    .end annotation
.end field

.field private mHander:Landroid/os/Handler;

.field private mLastExpendView:Landroid/view/View;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/anall/statusbar/StatusBarListen$App;",
            ">;"
        }
    .end annotation
.end field

.field private mPD:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;-><init>()V

    .line 170
    new-instance v0, Lcom/anall/statusbar/StatusBarListen$1;

    invoke-direct {v0, p0}, Lcom/anall/statusbar/StatusBarListen$1;-><init>(Lcom/anall/statusbar/StatusBarListen;)V

    iput-object v0, p0, Lcom/anall/statusbar/StatusBarListen;->mComparable:Ljava/util/Comparator;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/anall/statusbar/StatusBarListen;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/anall/statusbar/StatusBarListen;->mHander:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/anall/statusbar/StatusBarListen;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/anall/statusbar/StatusBarListen;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$2(Lcom/anall/statusbar/StatusBarListen;)Lcom/anall/statusbar/StatusBarListen$AppAdapter;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/anall/statusbar/StatusBarListen;->mAdapter:Lcom/anall/statusbar/StatusBarListen$AppAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/anall/statusbar/StatusBarListen;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/anall/statusbar/StatusBarListen;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/anall/statusbar/StatusBarListen;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/anall/statusbar/StatusBarListen;->isWhite:Z

    return v0
.end method

.method static synthetic access$5(Lcom/anall/statusbar/StatusBarListen;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/anall/statusbar/StatusBarListen;->mLastExpendView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6(Lcom/anall/statusbar/StatusBarListen;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/anall/statusbar/StatusBarListen;->mLastExpendView:Landroid/view/View;

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 8

    .prologue
    const/4 v3, -0x1

    const/high16 v2, -0x100

    const/4 v7, 0x0

    .line 57
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030016

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 58
    .local v1, mMainView:Landroid/view/View;
    const v4, 0x7f09007b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 59
    .local v0, listView:Landroid/widget/ListView;
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 60
    iget-object v4, p0, Lcom/anall/statusbar/StatusBarListen;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    iput-boolean v7, p0, Lcom/anall/statusbar/StatusBarListen;->isWhite:Z

    .line 62
    const v4, 0x7f0e000c

    invoke-virtual {p0, v4}, Lcom/anall/statusbar/StatusBarListen;->setTheme(I)V

    .line 63
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 70
    :goto_0
    new-instance v4, Lcom/anall/statusbar/StatusBarListen$AppAdapter;

    iget-object v5, p0, Lcom/anall/statusbar/StatusBarListen;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v5}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v5

    invoke-direct {v4, p0, p0, v5}, Lcom/anall/statusbar/StatusBarListen$AppAdapter;-><init>(Lcom/anall/statusbar/StatusBarListen;Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/anall/statusbar/StatusBarListen;->mAdapter:Lcom/anall/statusbar/StatusBarListen$AppAdapter;

    .line 71
    iget-object v4, p0, Lcom/anall/statusbar/StatusBarListen;->mAdapter:Lcom/anall/statusbar/StatusBarListen$AppAdapter;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    new-instance v4, Lcom/anall/statusbar/StatusBarListen$2;

    invoke-direct {v4, p0}, Lcom/anall/statusbar/StatusBarListen$2;-><init>(Lcom/anall/statusbar/StatusBarListen;)V

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 89
    const v4, 0x7f09000f

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/anall/statusbar/StatusBarListen;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v5}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 90
    return-object v1

    .line 65
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/anall/statusbar/StatusBarListen;->isWhite:Z

    .line 66
    const v4, 0x7f0e000b

    invoke-virtual {p0, v4}, Lcom/anall/statusbar/StatusBarListen;->setTheme(I)V

    .line 67
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 68
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 89
    goto :goto_1
.end method


# virtual methods
.method disProgressDialog()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/anall/statusbar/StatusBarListen;->mPD:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/anall/statusbar/StatusBarListen;->mPD:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anall/statusbar/StatusBarListen;->mPD:Landroid/app/ProgressDialog;

    .line 110
    :cond_0
    return-void
.end method

.method protected initData()V
    .locals 3

    .prologue
    .line 47
    const v1, 0x7f0a020d

    invoke-virtual {p0, v1}, Lcom/anall/statusbar/StatusBarListen;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, title:Ljava/lang/String;
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarListen;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v1, p0, Lcom/anall/statusbar/StatusBarListen;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/TitleLinearLayout;->setVisibility(I)V

    .line 50
    invoke-direct {p0}, Lcom/anall/statusbar/StatusBarListen;->createView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/anall/statusbar/StatusBarListen;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 52
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/anall/statusbar/StatusBarListen;->mHander:Landroid/os/Handler;

    .line 53
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/anall/statusbar/StatusBarListen$LoadRunnable;

    invoke-direct {v2, p0}, Lcom/anall/statusbar/StatusBarListen$LoadRunnable;-><init>(Lcom/anall/statusbar/StatusBarListen;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 54
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onBackPressed()V

    .line 121
    invoke-static {p0}, Lcom/anall/statusbar/AppListen;->getInstance(Landroid/content/Context;)Lcom/anall/statusbar/AppListen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anall/statusbar/AppListen;->store()V

    .line 122
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 115
    invoke-static {p0}, Lcom/anall/statusbar/AppListen;->getInstance(Landroid/content/Context;)Lcom/anall/statusbar/AppListen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anall/statusbar/AppListen;->store()V

    .line 116
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onStart()V

    .line 96
    iget-object v0, p0, Lcom/anall/statusbar/StatusBarListen;->mAdapter:Lcom/anall/statusbar/StatusBarListen$AppAdapter;

    invoke-virtual {v0}, Lcom/anall/statusbar/StatusBarListen$AppAdapter;->sort()V

    .line 97
    return-void
.end method

.method showProgressDialog()V
    .locals 2

    .prologue
    .line 100
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anall/statusbar/StatusBarListen;->mPD:Landroid/app/ProgressDialog;

    .line 101
    iget-object v0, p0, Lcom/anall/statusbar/StatusBarListen;->mPD:Landroid/app/ProgressDialog;

    const v1, 0x7f0a020f

    invoke-virtual {p0, v1}, Lcom/anall/statusbar/StatusBarListen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/anall/statusbar/StatusBarListen;->mPD:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 103
    return-void
.end method
