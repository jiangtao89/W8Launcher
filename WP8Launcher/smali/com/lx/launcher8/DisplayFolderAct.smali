.class public Lcom/lx/launcher8/DisplayFolderAct;
.super Lcom/lx/launcher8/NoSearchAct;
.source "DisplayFolderAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final REQUEST_CELL_SETTING:I = 0x6

.field private static final REQUEST_CHOOSE_APP:I = 0x5


# instance fields
.field private adapter:Lcom/lx/launcher8/adapter/DisplayFolderAdapter;

.field private addMore:Landroid/widget/TextView;

.field private bgColor:I

.field private isEdited:Z

.field private mFolderInfo:Lcom/lx/launcher8/bean/FolderCell;

.field private mListView:Landroid/widget/ListView;

.field private mRootView:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;

.field private menuDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/DisplayFolderAct;)Lcom/lx/launcher8/adapter/DisplayFolderAdapter;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lx/launcher8/DisplayFolderAct;->adapter:Lcom/lx/launcher8/adapter/DisplayFolderAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/DisplayFolderAct;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/lx/launcher8/DisplayFolderAct;->isEdited:Z

    return-void
.end method

.method static synthetic access$2(Lcom/lx/launcher8/DisplayFolderAct;)Lcom/lx/launcher8/bean/FolderCell;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lx/launcher8/DisplayFolderAct;->mFolderInfo:Lcom/lx/launcher8/bean/FolderCell;

    return-object v0
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 62
    const v0, 0x7f090133

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/DisplayFolderAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lx/launcher8/DisplayFolderAct;->mTitle:Landroid/widget/TextView;

    .line 63
    iget-object v2, p0, Lcom/lx/launcher8/DisplayFolderAct;->mTitle:Landroid/widget/TextView;

    iget v0, p0, Lcom/lx/launcher8/DisplayFolderAct;->bgColor:I

    if-ne v0, v1, :cond_0

    const/high16 v0, -0x100

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    iget-object v0, p0, Lcom/lx/launcher8/DisplayFolderAct;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lx/launcher8/DisplayFolderAct;->mFolderInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget-object v1, v1, Lcom/lx/launcher8/bean/FolderCell;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const v0, 0x7f090134

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/DisplayFolderAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lx/launcher8/DisplayFolderAct;->mListView:Landroid/widget/ListView;

    .line 66
    iget-object v0, p0, Lcom/lx/launcher8/DisplayFolderAct;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 67
    iget-object v0, p0, Lcom/lx/launcher8/DisplayFolderAct;->mListView:Landroid/widget/ListView;

    const/high16 v1, 0x40a0

    invoke-static {p0, v1}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 68
    const v0, 0x7f090135

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/DisplayFolderAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lx/launcher8/DisplayFolderAct;->addMore:Landroid/widget/TextView;

    .line 69
    new-instance v0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter;

    iget-object v1, p0, Lcom/lx/launcher8/DisplayFolderAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-direct {v0, p0, v1}, Lcom/lx/launcher8/adapter/DisplayFolderAdapter;-><init>(Landroid/content/Context;Lcom/lx/launcher8/cfg/DeskSetting;)V

    iput-object v0, p0, Lcom/lx/launcher8/DisplayFolderAct;->adapter:Lcom/lx/launcher8/adapter/DisplayFolderAdapter;

    .line 70
    iget-object v0, p0, Lcom/lx/launcher8/DisplayFolderAct;->adapter:Lcom/lx/launcher8/adapter/DisplayFolderAdapter;

    iget-object v1, p0, Lcom/lx/launcher8/DisplayFolderAct;->mFolderInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget-object v1, v1, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/adapter/DisplayFolderAdapter;->setListData(Ljava/util/ArrayList;)V

    .line 71
    iget-object v0, p0, Lcom/lx/launcher8/DisplayFolderAct;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lx/launcher8/DisplayFolderAct;->adapter:Lcom/lx/launcher8/adapter/DisplayFolderAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    iget-object v0, p0, Lcom/lx/launcher8/DisplayFolderAct;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/lx/launcher8/DisplayFolderAct$1;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/DisplayFolderAct$1;-><init>(Lcom/lx/launcher8/DisplayFolderAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/lx/launcher8/DisplayFolderAct;->addMore:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/lx/launcher8/DisplayFolderAct;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    return-void

    :cond_0
    move v0, v1

    .line 63
    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    .line 132
    if-ne p2, v4, :cond_1

    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    .line 133
    if-eqz p3, :cond_1

    .line 134
    invoke-static {p3}, Lcom/lx/launcher8/bean/ItemCell;->getFromIntent(Landroid/content/Intent;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/bean/FolderCell;

    iput-object v2, p0, Lcom/lx/launcher8/DisplayFolderAct;->mFolderInfo:Lcom/lx/launcher8/bean/FolderCell;

    .line 135
    iget-object v2, p0, Lcom/lx/launcher8/DisplayFolderAct;->adapter:Lcom/lx/launcher8/adapter/DisplayFolderAdapter;

    iget-object v3, p0, Lcom/lx/launcher8/DisplayFolderAct;->mFolderInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget-object v3, v3, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/adapter/DisplayFolderAdapter;->setListData(Ljava/util/ArrayList;)V

    .line 136
    iget-object v2, p0, Lcom/lx/launcher8/DisplayFolderAct;->adapter:Lcom/lx/launcher8/adapter/DisplayFolderAdapter;

    invoke-virtual {v2}, Lcom/lx/launcher8/adapter/DisplayFolderAdapter;->notifyDataSetChanged()V

    .line 152
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/NoSearchAct;->onActivityResult(IILandroid/content/Intent;)V

    .line 153
    return-void

    .line 137
    :cond_1
    if-ne p2, v4, :cond_0

    const/4 v2, 0x6

    if-ne p1, v2, :cond_0

    if-eqz p3, :cond_0

    .line 138
    invoke-static {p3}, Lcom/lx/launcher8/bean/ItemCell;->getFromIntent(Landroid/content/Intent;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/bean/FolderCell;

    iput-object v2, p0, Lcom/lx/launcher8/DisplayFolderAct;->mFolderInfo:Lcom/lx/launcher8/bean/FolderCell;

    .line 139
    iget-object v2, p0, Lcom/lx/launcher8/DisplayFolderAct;->adapter:Lcom/lx/launcher8/adapter/DisplayFolderAdapter;

    iget-object v3, p0, Lcom/lx/launcher8/DisplayFolderAct;->mFolderInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget-object v3, v3, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/adapter/DisplayFolderAdapter;->setListData(Ljava/util/ArrayList;)V

    .line 140
    iget-object v2, p0, Lcom/lx/launcher8/DisplayFolderAct;->adapter:Lcom/lx/launcher8/adapter/DisplayFolderAdapter;

    invoke-virtual {v2}, Lcom/lx/launcher8/adapter/DisplayFolderAdapter;->notifyDataSetChanged()V

    .line 141
    iget-object v2, p0, Lcom/lx/launcher8/DisplayFolderAct;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lx/launcher8/DisplayFolderAct;->mFolderInfo:Lcom/lx/launcher8/bean/FolderCell;

    iget-object v3, v3, Lcom/lx/launcher8/bean/FolderCell;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v2, p0, Lcom/lx/launcher8/DisplayFolderAct;->mFolderInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v2}, Lcom/lx/launcher8/bean/FolderCell;->getFolderSettings()[I

    move-result-object v2

    const/4 v3, 0x2

    aget v0, v2, v3

    .line 143
    .local v0, display:I
    if-nez v0, :cond_0

    .line 144
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 145
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/lx/launcher8/DisplayFolderAct;->mFolderInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v2, v1}, Lcom/lx/launcher8/bean/FolderCell;->setIntentParam(Landroid/content/Intent;)V

    .line 146
    invoke-virtual {p0, v4, v1}, Lcom/lx/launcher8/DisplayFolderAct;->setResult(ILandroid/content/Intent;)V

    .line 147
    const-string v2, "extral_page"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0}, Lcom/lx/launcher8/DisplayFolderAct;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 106
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 128
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 111
    :sswitch_1
    iput-boolean v2, p0, Lcom/lx/launcher8/DisplayFolderAct;->isEdited:Z

    .line 112
    iget-object v1, p0, Lcom/lx/launcher8/DisplayFolderAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getSettingStyle()I

    move-result v1

    if-nez v1, :cond_1

    .line 113
    const-class v1, Lcom/lx/launcher8/setting/FolderSettingAct;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 114
    const-string v1, "extral_page"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    :goto_1
    iget-object v1, p0, Lcom/lx/launcher8/DisplayFolderAct;->mFolderInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/bean/FolderCell;->setIntentParam(Landroid/content/Intent;)V

    .line 120
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/DisplayFolderAct;->startActivityForResult(Landroid/content/Intent;I)V

    .line 121
    iget-object v1, p0, Lcom/lx/launcher8/DisplayFolderAct;->menuDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lx/launcher8/DisplayFolderAct;->menuDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/lx/launcher8/DisplayFolderAct;->menuDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 116
    :cond_1
    const-class v1, Lcom/lx/launcher8/setting/wp8/FolderSettingsActWP8;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 117
    const-string v1, "extral_page"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 106
    :sswitch_data_0
    .sparse-switch
        0x7f090133 -> :sswitch_1
        0x7f090135 -> :sswitch_0
        0x7f09017a -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030048

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/DisplayFolderAct;->mRootView:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/lx/launcher8/DisplayFolderAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x100

    :goto_0
    iput v0, p0, Lcom/lx/launcher8/DisplayFolderAct;->bgColor:I

    .line 51
    iget-object v0, p0, Lcom/lx/launcher8/DisplayFolderAct;->mRootView:Landroid/view/View;

    iget v1, p0, Lcom/lx/launcher8/DisplayFolderAct;->bgColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 52
    iget-object v0, p0, Lcom/lx/launcher8/DisplayFolderAct;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/DisplayFolderAct;->setContentView(Landroid/view/View;)V

    .line 53
    invoke-virtual {p0}, Lcom/lx/launcher8/DisplayFolderAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/lx/launcher8/bean/ItemCell;->getFromIntent(Landroid/content/Intent;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/bean/FolderCell;

    iput-object v0, p0, Lcom/lx/launcher8/DisplayFolderAct;->mFolderInfo:Lcom/lx/launcher8/bean/FolderCell;

    .line 54
    iget-object v0, p0, Lcom/lx/launcher8/DisplayFolderAct;->mFolderInfo:Lcom/lx/launcher8/bean/FolderCell;

    if-nez v0, :cond_1

    .line 59
    :goto_1
    return-void

    .line 50
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 57
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lx/launcher8/DisplayFolderAct;->isEdited:Z

    .line 58
    invoke-direct {p0}, Lcom/lx/launcher8/DisplayFolderAct;->initView()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 157
    const-string v0, "menu"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 197
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget-boolean v1, p0, Lcom/lx/launcher8/DisplayFolderAct;->isEdited:Z

    if-eqz v1, :cond_0

    .line 198
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 199
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lx/launcher8/DisplayFolderAct;->mFolderInfo:Lcom/lx/launcher8/bean/FolderCell;

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/bean/FolderCell;->setIntentParam(Landroid/content/Intent;)V

    .line 200
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/lx/launcher8/DisplayFolderAct;->setResult(ILandroid/content/Intent;)V

    .line 201
    invoke-virtual {p0}, Lcom/lx/launcher8/DisplayFolderAct;->finish()V

    .line 202
    const/4 v1, 0x1

    .line 204
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/NoSearchAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 8
    .parameter "featureId"
    .parameter "menu"

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 163
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 165
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v4, Landroid/app/Dialog;

    const v5, 0x7f0e0005

    invoke-direct {v4, p0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/lx/launcher8/DisplayFolderAct;->menuDialog:Landroid/app/Dialog;

    .line 166
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 168
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03005a

    const/4 v5, 0x0

    .line 167
    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 169
    .local v3, view:Landroid/widget/LinearLayout;
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v4, p0, Lcom/lx/launcher8/DisplayFolderAct;->menuDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 171
    const v4, 0x7f09017a

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 172
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v4, p0, Lcom/lx/launcher8/DisplayFolderAct;->menuDialog:Landroid/app/Dialog;

    new-instance v5, Lcom/lx/launcher8/DisplayFolderAct$2;

    invoke-direct {v5, p0}, Lcom/lx/launcher8/DisplayFolderAct$2;-><init>(Lcom/lx/launcher8/DisplayFolderAct;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 186
    iget-object v4, p0, Lcom/lx/launcher8/DisplayFolderAct;->menuDialog:Landroid/app/Dialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 187
    iget-object v4, p0, Lcom/lx/launcher8/DisplayFolderAct;->menuDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Landroid/view/Window;->setGravity(I)V

    .line 188
    iget-object v4, p0, Lcom/lx/launcher8/DisplayFolderAct;->menuDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7, v6}, Landroid/view/Window;->setLayout(II)V

    .line 191
    iget-object v4, p0, Lcom/lx/launcher8/DisplayFolderAct;->menuDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 192
    const/4 v4, 0x0

    return v4
.end method
