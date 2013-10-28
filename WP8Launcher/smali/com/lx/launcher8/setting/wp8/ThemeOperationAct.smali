.class public Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.source "ThemeOperationAct.java"


# static fields
.field public static final EXTRAL_TEXT:Ljava/lang/String; = "extral_text"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private mClick:Landroid/view/View$OnClickListener;

.field private mMainView:Landroid/view/View;

.field private mTheme:Lcom/lx/launcher8/db/ThemeHelper$Theme;

.field private mThemeHelper:Lcom/lx/launcher8/db/ThemeHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;-><init>()V

    .line 110
    new-instance v0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$1;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->mClick:Landroid/view/View$OnClickListener;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;)Lcom/lx/launcher8/db/ThemeHelper$Theme;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->mTheme:Lcom/lx/launcher8/db/ThemeHelper$Theme;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->restoreTheme()V

    return-void
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method private createView()V
    .locals 5

    .prologue
    .line 45
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/AnallApp;->getParam()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/db/ThemeHelper$Theme;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->mTheme:Lcom/lx/launcher8/db/ThemeHelper$Theme;

    .line 46
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->mTheme:Lcom/lx/launcher8/db/ThemeHelper$Theme;

    if-nez v2, :cond_0

    .line 64
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030014

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->mMainView:Landroid/view/View;

    .line 50
    new-instance v2, Lcom/lx/launcher8/db/ThemeHelper;

    invoke-direct {v2}, Lcom/lx/launcher8/db/ThemeHelper;-><init>()V

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->mThemeHelper:Lcom/lx/launcher8/db/ThemeHelper;

    .line 52
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->mMainView:Landroid/view/View;

    const v3, 0x7f09007a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->mbgColorValue:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 54
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->mMainView:Landroid/view/View;

    const v3, 0x7f090079

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->mMainView:Landroid/view/View;

    const v3, 0x7f090055

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 57
    .local v1, btnSelect:Landroid/widget/Button;
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->getSelectorButton()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 59
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 60
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->mMainView:Landroid/view/View;

    const v3, 0x7f090059

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 61
    .local v0, btnDel:Landroid/widget/Button;
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->getSelectorButton()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 63
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private restoreTheme()V
    .locals 4

    .prologue
    .line 87
    const/4 v1, 0x1

    sput-boolean v1, Lcom/lx/launcher8/AnallLauncher;->isRestore:Z

    .line 88
    const v1, 0x7f0a0195

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0119

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 89
    .local v0, dialog:Landroid/app/ProgressDialog;
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->mThemeHelper:Lcom/lx/launcher8/db/ThemeHelper;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->mTheme:Lcom/lx/launcher8/db/ThemeHelper$Theme;

    new-instance v3, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$2;

    invoke-direct {v3, p0, v0}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct$2;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/lx/launcher8/db/ThemeHelper;->recoveryTheme(Landroid/content/Context;Lcom/lx/launcher8/db/ThemeHelper$Theme;Lcom/lx/launcher8/db/ThemeHelper$ThemeRecoverListener;)V

    .line 103
    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->createView()V

    .line 40
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->mMainView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    const v0, 0x7f0a0010

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onActivityResult(IILandroid/content/Intent;)V

    .line 108
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onDestroy()V

    .line 83
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 84
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 68
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onResume()V

    .line 69
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->mMainView:Landroid/view/View;

    const v2, 0x7f090078

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 70
    .local v0, iv:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->mTheme:Lcom/lx/launcher8/db/ThemeHelper$Theme;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lcom/lx/launcher8/db/ThemeHelper;->getSaveBitmap(Landroid/content/Context;Lcom/lx/launcher8/db/ThemeHelper$Theme;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->bitmap:Landroid/graphics/Bitmap;

    .line 71
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 73
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->mMainView:Landroid/view/View;

    const v2, 0x7f090079

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 77
    :goto_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeOperationAct;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void

    .line 75
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
