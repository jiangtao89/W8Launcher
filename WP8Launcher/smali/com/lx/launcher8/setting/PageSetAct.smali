.class public abstract Lcom/lx/launcher8/setting/PageSetAct;
.super Lcom/lx/launcher8/NoSearchAct;
.source "PageSetAct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/PageSetAct$ViewAdapater;
    }
.end annotation


# static fields
.field public static final EXTRAL_INFO:Ljava/lang/String; = "extral_info"


# instance fields
.field private mAdapter:Lcom/lx/launcher8/setting/PageSetAct$ViewAdapater;

.field private mMenuView:Lcom/lx/launcher8/setting/view/MenuBar;

.field protected mTitleView:Landroid/widget/TextView;

.field mTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;

.field private mViewFlow:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;-><init>()V

    .line 97
    new-instance v0, Lcom/lx/launcher8/setting/PageSetAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/PageSetAct$1;-><init>(Lcom/lx/launcher8/setting/PageSetAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/PageSetAct;->mTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/PageSetAct;)Lcom/lx/launcher8/setting/view/MenuBar;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lx/launcher8/setting/PageSetAct;->mMenuView:Lcom/lx/launcher8/setting/view/MenuBar;

    return-object v0
.end method


# virtual methods
.method protected addPage(Ljava/lang/String;I)V
    .locals 2
    .parameter "title"
    .parameter "rid"

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/PageSetAct;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/lx/launcher8/setting/PageSetAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 74
    return-void
.end method

.method protected addPage(Ljava/lang/String;Landroid/view/View;)V
    .locals 3
    .parameter "title"
    .parameter "view"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lx/launcher8/setting/PageSetAct;->mMenuView:Lcom/lx/launcher8/setting/view/MenuBar;

    const v1, 0x7f020087

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/lx/launcher8/setting/view/MenuBar;->addView(Ljava/lang/String;IZ)V

    .line 78
    iget-object v0, p0, Lcom/lx/launcher8/setting/PageSetAct;->mAdapter:Lcom/lx/launcher8/setting/PageSetAct$ViewAdapater;

    invoke-virtual {v0, p1, p2}, Lcom/lx/launcher8/setting/PageSetAct$ViewAdapater;->addItem(Ljava/lang/String;Landroid/view/View;)V

    .line 80
    return-void
.end method

.method followSetting(Landroid/view/View;IZ)Lcom/lx/launcher8/view/SeekButton;
    .locals 2
    .parameter "parent"
    .parameter "id"
    .parameter "enable"

    .prologue
    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/view/SeekButton;

    .line 88
    .local v0, sb:Lcom/lx/launcher8/view/SeekButton;
    iget-object v1, p0, Lcom/lx/launcher8/setting/PageSetAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SeekButton;->setThemeColor(I)V

    .line 89
    iget-object v1, p0, Lcom/lx/launcher8/setting/PageSetAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SeekButton;->setFitColor(I)V

    .line 90
    invoke-virtual {v0, p3}, Lcom/lx/launcher8/view/SeekButton;->setState(Z)V

    .line 91
    iget-object v1, p0, Lcom/lx/launcher8/setting/PageSetAct;->mTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 92
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/PageSetAct;->setContentView(I)V

    .line 34
    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/PageSetAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/PageSetAct;->mTitleView:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f0900be

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/PageSetAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/setting/view/MenuBar;

    iput-object v0, p0, Lcom/lx/launcher8/setting/PageSetAct;->mMenuView:Lcom/lx/launcher8/setting/view/MenuBar;

    .line 36
    iget-object v0, p0, Lcom/lx/launcher8/setting/PageSetAct;->mMenuView:Lcom/lx/launcher8/setting/view/MenuBar;

    const v1, 0x7f020089

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/view/MenuBar;->setBackgroundResource(I)V

    .line 37
    iget-object v0, p0, Lcom/lx/launcher8/setting/PageSetAct;->mMenuView:Lcom/lx/launcher8/setting/view/MenuBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/view/MenuBar;->setDefaultView(I)V

    .line 38
    const v0, 0x7f0900bf

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/PageSetAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/lx/launcher8/setting/PageSetAct;->mViewFlow:Landroid/support/v4/view/ViewPager;

    .line 39
    new-instance v0, Lcom/lx/launcher8/setting/PageSetAct$ViewAdapater;

    invoke-direct {v0, p0, p0}, Lcom/lx/launcher8/setting/PageSetAct$ViewAdapater;-><init>(Lcom/lx/launcher8/setting/PageSetAct;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/PageSetAct;->mAdapter:Lcom/lx/launcher8/setting/PageSetAct$ViewAdapater;

    .line 40
    iget-object v0, p0, Lcom/lx/launcher8/setting/PageSetAct;->mViewFlow:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/lx/launcher8/setting/PageSetAct;->mAdapter:Lcom/lx/launcher8/setting/PageSetAct$ViewAdapater;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 41
    iget-object v0, p0, Lcom/lx/launcher8/setting/PageSetAct;->mViewFlow:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/lx/launcher8/setting/PageSetAct$2;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/PageSetAct$2;-><init>(Lcom/lx/launcher8/setting/PageSetAct;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 59
    iget-object v0, p0, Lcom/lx/launcher8/setting/PageSetAct;->mMenuView:Lcom/lx/launcher8/setting/view/MenuBar;

    new-instance v1, Lcom/lx/launcher8/setting/PageSetAct$3;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/PageSetAct$3;-><init>(Lcom/lx/launcher8/setting/PageSetAct;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/view/MenuBar;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/PageSetAct;->setupViews()V

    .line 68
    return-void
.end method

.method protected abstract onSeekChange(Lcom/lx/launcher8/view/SeekButton;Z)V
.end method

.method protected scrollToPage(I)V
    .locals 1
    .parameter "idex"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lx/launcher8/setting/PageSetAct;->mViewFlow:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 84
    return-void
.end method

.method protected abstract setupViews()V
.end method
