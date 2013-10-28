.class public Lcom/lx/launcher8/MenuDialog;
.super Landroid/app/Dialog;
.source "MenuDialog.java"


# instance fields
.field private addCellView:Landroid/app/Dialog;

.field private listener:Landroid/view/View$OnClickListener;

.field mDettache:Z

.field private mLauncher:Lcom/lx/launcher8/AnallLauncher;

.field private mMainView:Landroid/view/View;

.field private mSettings:Lcom/lx/launcher8/cfg/DeskSetting;

.field private mWhichScreen:I


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/AnallLauncher;Lcom/lx/launcher8/cfg/DeskSetting;I)V
    .locals 1
    .parameter "launcher"
    .parameter "set"
    .parameter "whichScreen"

    .prologue
    .line 38
    const v0, 0x7f0e0005

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 122
    new-instance v0, Lcom/lx/launcher8/MenuDialog$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/MenuDialog$1;-><init>(Lcom/lx/launcher8/MenuDialog;)V

    iput-object v0, p0, Lcom/lx/launcher8/MenuDialog;->listener:Landroid/view/View$OnClickListener;

    .line 39
    invoke-virtual {p0, p1}, Lcom/lx/launcher8/MenuDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 40
    iput-object p1, p0, Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    .line 41
    iput p3, p0, Lcom/lx/launcher8/MenuDialog;->mWhichScreen:I

    .line 42
    iput-object p2, p0, Lcom/lx/launcher8/MenuDialog;->mSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 43
    invoke-direct {p0}, Lcom/lx/launcher8/MenuDialog;->initView()V

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/AnallLauncher;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/MenuDialog;)Lcom/lx/launcher8/cfg/DeskSetting;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lx/launcher8/MenuDialog;->mSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/MenuDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/lx/launcher8/MenuDialog;->showAddDialog()V

    return-void
.end method

.method static synthetic access$3(Lcom/lx/launcher8/MenuDialog;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/lx/launcher8/MenuDialog;->addCellView:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/MenuDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/lx/launcher8/MenuDialog;->pickShortcut()V

    return-void
.end method

.method static synthetic access$5(Lcom/lx/launcher8/MenuDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/lx/launcher8/MenuDialog;->superDis()V

    return-void
.end method

.method private changeIconColor()Z
    .locals 3

    .prologue
    .line 89
    iget-object v1, p0, Lcom/lx/launcher8/MenuDialog;->mSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v1}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v0

    .line 90
    .local v0, themeColor:I
    const v1, -0xc0c0c1

    or-int/2addr v1, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 91
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initView()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 47
    iget v3, p0, Lcom/lx/launcher8/MenuDialog;->mWhichScreen:I

    if-nez v3, :cond_2

    .line 48
    invoke-direct {p0}, Lcom/lx/launcher8/MenuDialog;->changeIconColor()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 49
    iget-object v3, p0, Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030057

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/lx/launcher8/MenuDialog;->mMainView:Landroid/view/View;

    .line 53
    :goto_0
    iget-object v3, p0, Lcom/lx/launcher8/MenuDialog;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/MenuDialog;->setContentView(Landroid/view/View;)V

    .line 54
    iget-object v3, p0, Lcom/lx/launcher8/MenuDialog;->mMainView:Landroid/view/View;

    const v4, 0x7f090171

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/MenuDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v3, p0, Lcom/lx/launcher8/MenuDialog;->mMainView:Landroid/view/View;

    const v4, 0x7f090170

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/MenuDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v3, p0, Lcom/lx/launcher8/MenuDialog;->mMainView:Landroid/view/View;

    const v4, 0x7f09016f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/MenuDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v3, p0, Lcom/lx/launcher8/MenuDialog;->mMainView:Landroid/view/View;

    const v4, 0x7f09016e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/MenuDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v3, p0, Lcom/lx/launcher8/MenuDialog;->mMainView:Landroid/view/View;

    const v4, 0x7f09016d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/MenuDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v3, p0, Lcom/lx/launcher8/MenuDialog;->mMainView:Landroid/view/View;

    const v4, 0x7f090172

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 60
    .local v1, view_05:Landroid/view/View;
    iget-object v3, p0, Lcom/lx/launcher8/MenuDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v3, p0, Lcom/lx/launcher8/MenuDialog;->mMainView:Landroid/view/View;

    const v4, 0x7f090173

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 62
    .local v2, view_05_doc:Landroid/view/View;
    iget-object v3, p0, Lcom/lx/launcher8/MenuDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    :try_start_0
    iget-object v3, p0, Lcom/lx/launcher8/MenuDialog;->mSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v3}, Lcom/lx/launcher8/cfg/DeskSetting;->getVersion()I

    move-result v3

    iget-object v4, p0, Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    invoke-virtual {v4}, Lcom/lx/launcher8/AnallLauncher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    invoke-virtual {v5}, Lcom/lx/launcher8/AnallLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v3, v4, :cond_0

    .line 66
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 67
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v1           #view_05:Landroid/view/View;
    .end local v2           #view_05_doc:Landroid/view/View;
    :cond_0
    :goto_1
    return-void

    .line 51
    :cond_1
    iget-object v3, p0, Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030056

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/lx/launcher8/MenuDialog;->mMainView:Landroid/view/View;

    goto/16 :goto_0

    .line 69
    .restart local v1       #view_05:Landroid/view/View;
    .restart local v2       #view_05_doc:Landroid/view/View;
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 72
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1           #view_05:Landroid/view/View;
    .end local v2           #view_05_doc:Landroid/view/View;
    :cond_2
    iget v3, p0, Lcom/lx/launcher8/MenuDialog;->mWhichScreen:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/lx/launcher8/MenuDialog;->changeIconColor()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 74
    iget-object v3, p0, Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030059

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/lx/launcher8/MenuDialog;->mMainView:Landroid/view/View;

    .line 78
    :goto_2
    iget-object v3, p0, Lcom/lx/launcher8/MenuDialog;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/MenuDialog;->setContentView(Landroid/view/View;)V

    .line 79
    iget-object v3, p0, Lcom/lx/launcher8/MenuDialog;->mMainView:Landroid/view/View;

    const v4, 0x7f090174

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/MenuDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v3, p0, Lcom/lx/launcher8/MenuDialog;->mMainView:Landroid/view/View;

    const v4, 0x7f090177

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/MenuDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v3, p0, Lcom/lx/launcher8/MenuDialog;->mMainView:Landroid/view/View;

    const v4, 0x7f090175

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/MenuDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v3, p0, Lcom/lx/launcher8/MenuDialog;->mMainView:Landroid/view/View;

    const v4, 0x7f090179

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/MenuDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v3, p0, Lcom/lx/launcher8/MenuDialog;->mMainView:Landroid/view/View;

    const v4, 0x7f090178

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/MenuDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v3, p0, Lcom/lx/launcher8/MenuDialog;->mMainView:Landroid/view/View;

    const v4, 0x7f090176

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/MenuDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 76
    :cond_3
    iget-object v3, p0, Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030058

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/lx/launcher8/MenuDialog;->mMainView:Landroid/view/View;

    goto :goto_2
.end method

.method private pickShortcut()V
    .locals 4

    .prologue
    .line 227
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, pickIntent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.INTENT"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 229
    const-string v1, "android.intent.extra.TITLE"

    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    const v3, 0x7f0a00e8

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/AnallLauncher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 230
    iget-object v1, p0, Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Lcom/lx/launcher8/AnallLauncher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 231
    return-void
.end method

.method private showAddDialog()V
    .locals 12

    .prologue
    const/16 v11, 0x11

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 235
    new-instance v6, Landroid/app/Dialog;

    iget-object v7, p0, Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    const v8, 0x7f0e0005

    invoke-direct {v6, v7, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/lx/launcher8/MenuDialog;->addCellView:Landroid/app/Dialog;

    .line 236
    iget-object v6, p0, Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030077

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 237
    .local v5, mainView:Landroid/view/View;
    iget-object v6, p0, Lcom/lx/launcher8/MenuDialog;->addCellView:Landroid/app/Dialog;

    invoke-virtual {v6, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 238
    iget-object v6, p0, Lcom/lx/launcher8/MenuDialog;->addCellView:Landroid/app/Dialog;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 239
    iget-object v6, p0, Lcom/lx/launcher8/MenuDialog;->addCellView:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/view/Window;->setGravity(I)V

    .line 240
    iget-object v6, p0, Lcom/lx/launcher8/MenuDialog;->addCellView:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 242
    const/4 v7, -0x2

    .line 240
    invoke-virtual {v6, v10, v7}, Landroid/view/Window;->setLayout(II)V

    .line 243
    const v6, 0x7f0901fd

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 244
    .local v3, addWidget:Landroid/widget/TextView;
    const v6, 0x7f0a00c3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 245
    iget-object v6, p0, Lcom/lx/launcher8/MenuDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 248
    invoke-virtual {v3, v9, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 249
    const v6, 0x7f0901fe

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 250
    .local v0, addApp:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/lx/launcher8/MenuDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    const v6, 0x7f0a00c4

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 253
    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 254
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 255
    const v6, 0x7f0901ff

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 256
    .local v2, addShortCut:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/lx/launcher8/MenuDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    const v6, 0x7f0a00e9

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 259
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 260
    invoke-virtual {v2, v9, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 261
    const v6, 0x7f090200

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 262
    .local v1, addOthers:Landroid/widget/TextView;
    const v6, 0x7f0a00c5

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 263
    iget-object v6, p0, Lcom/lx/launcher8/MenuDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    invoke-virtual {v1, v9, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 266
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 267
    const v6, 0x7f090201

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 268
    .local v4, addfolder:Landroid/widget/TextView;
    const v6, 0x7f0a01e7

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 269
    iget-object v6, p0, Lcom/lx/launcher8/MenuDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 272
    invoke-virtual {v4, v9, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 274
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 275
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 276
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 277
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 279
    iget-object v6, p0, Lcom/lx/launcher8/MenuDialog;->mSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v6}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 281
    iget-object v6, p0, Lcom/lx/launcher8/MenuDialog;->addCellView:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 282
    return-void
.end method

.method private superDis()V
    .locals 1

    .prologue
    .line 308
    :try_start_0
    iget-boolean v0, p0, Lcom/lx/launcher8/MenuDialog;->mDettache:Z

    if-eqz v0, :cond_0

    .line 309
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 290
    iget-object v1, p0, Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    const v2, 0x7f040007

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 291
    .local v0, aa:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/lx/launcher8/MenuDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 292
    new-instance v1, Lcom/lx/launcher8/MenuDialog$2;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/MenuDialog$2;-><init>(Lcom/lx/launcher8/MenuDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 304
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/lx/launcher8/MenuDialog;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/MenuDialog;->mDettache:Z

    .line 111
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lx/launcher8/MenuDialog;->mDettache:Z

    .line 117
    iget-object v0, p0, Lcom/lx/launcher8/MenuDialog;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/lx/launcher8/MenuDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 120
    :cond_0
    return-void
.end method

.method public showNow()V
    .locals 4

    .prologue
    .line 95
    iget-object v1, p0, Lcom/lx/launcher8/MenuDialog;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/MenuDialog;->setContentView(Landroid/view/View;)V

    .line 96
    iget-object v1, p0, Lcom/lx/launcher8/MenuDialog;->mMainView:Landroid/view/View;

    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog;->mSettings:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v2}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 97
    invoke-virtual {p0}, Lcom/lx/launcher8/MenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 98
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 99
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 100
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 101
    invoke-virtual {p0}, Lcom/lx/launcher8/MenuDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 102
    invoke-virtual {p0}, Lcom/lx/launcher8/MenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 103
    iget-object v1, p0, Lcom/lx/launcher8/MenuDialog;->mMainView:Landroid/view/View;

    iget-object v2, p0, Lcom/lx/launcher8/MenuDialog;->mLauncher:Lcom/lx/launcher8/AnallLauncher;

    const v3, 0x7f040003

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 104
    invoke-virtual {p0}, Lcom/lx/launcher8/MenuDialog;->show()V

    .line 105
    return-void
.end method
