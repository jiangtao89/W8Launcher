.class public Lcom/lx/launcher8/setting/ThemeOperationAct;
.super Lcom/lx/launcher8/NoSearchAct;
.source "ThemeOperationAct.java"


# static fields
.field public static final EXTRAL_TEXT:Ljava/lang/String; = "extral_text"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private mClick:Landroid/view/View$OnClickListener;

.field private mFirstTitle:Landroid/widget/TextView;

.field private mTheme:Lcom/lx/launcher8/db/ThemeHelper$Theme;

.field private mThemeHelper:Lcom/lx/launcher8/db/ThemeHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;-><init>()V

    .line 101
    new-instance v0, Lcom/lx/launcher8/setting/ThemeOperationAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/ThemeOperationAct$1;-><init>(Lcom/lx/launcher8/setting/ThemeOperationAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/ThemeOperationAct;->mClick:Landroid/view/View$OnClickListener;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/ThemeOperationAct;)Lcom/lx/launcher8/db/ThemeHelper$Theme;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemeOperationAct;->mTheme:Lcom/lx/launcher8/db/ThemeHelper$Theme;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/ThemeOperationAct;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/lx/launcher8/setting/ThemeOperationAct;->restoreTheme()V

    return-void
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/ThemeOperationAct;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemeOperationAct;->mFirstTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method private restoreTheme()V
    .locals 5

    .prologue
    .line 81
    const/4 v2, 0x1

    sput-boolean v2, Lcom/lx/launcher8/AnallLauncher;->isRestore:Z

    .line 82
    new-instance v1, Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    const v2, 0x7f0e0005

    invoke-direct {v1, p0, v2}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;-><init>(Landroid/content/Context;I)V

    .line 83
    .local v1, dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;
    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f0a0195

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/ThemeOperationAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a0119

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/ThemeOperationAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, content:Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->createProgress(Ljava/lang/String;)Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->show()V

    .line 85
    iget-object v2, p0, Lcom/lx/launcher8/setting/ThemeOperationAct;->mThemeHelper:Lcom/lx/launcher8/db/ThemeHelper;

    iget-object v3, p0, Lcom/lx/launcher8/setting/ThemeOperationAct;->mTheme:Lcom/lx/launcher8/db/ThemeHelper$Theme;

    new-instance v4, Lcom/lx/launcher8/setting/ThemeOperationAct$3;

    invoke-direct {v4, p0, v1}, Lcom/lx/launcher8/setting/ThemeOperationAct$3;-><init>(Lcom/lx/launcher8/setting/ThemeOperationAct;Lcom/lx/launcher8/setting/view/DialogSaveTheme;)V

    invoke-virtual {v2, p0, v3, v4}, Lcom/lx/launcher8/db/ThemeHelper;->recoveryTheme(Landroid/content/Context;Lcom/lx/launcher8/db/ThemeHelper$Theme;Lcom/lx/launcher8/db/ThemeHelper$ThemeRecoverListener;)V

    .line 99
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/ThemeOperationAct;->setContentView(I)V

    .line 42
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/AnallApp;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/db/ThemeHelper$Theme;

    iput-object v0, p0, Lcom/lx/launcher8/setting/ThemeOperationAct;->mTheme:Lcom/lx/launcher8/db/ThemeHelper$Theme;

    .line 43
    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemeOperationAct;->mTheme:Lcom/lx/launcher8/db/ThemeHelper$Theme;

    if-nez v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 45
    :cond_0
    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/ThemeOperationAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/ThemeOperationAct;->mFirstTitle:Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemeOperationAct;->mFirstTitle:Landroid/widget/TextView;

    new-instance v1, Lcom/lx/launcher8/setting/ThemeOperationAct$2;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/ThemeOperationAct$2;-><init>(Lcom/lx/launcher8/setting/ThemeOperationAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    new-instance v0, Lcom/lx/launcher8/db/ThemeHelper;

    invoke-direct {v0}, Lcom/lx/launcher8/db/ThemeHelper;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/setting/ThemeOperationAct;->mThemeHelper:Lcom/lx/launcher8/db/ThemeHelper;

    .line 55
    const v0, 0x7f090079

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/ThemeOperationAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    const v0, 0x7f090055

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/ThemeOperationAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/ThemeOperationAct;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v0, 0x7f090059

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/ThemeOperationAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/ThemeOperationAct;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/lx/launcher8/NoSearchAct;->onDestroy()V

    .line 77
    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemeOperationAct;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemeOperationAct;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 78
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 62
    invoke-super {p0}, Lcom/lx/launcher8/NoSearchAct;->onResume()V

    .line 63
    const v1, 0x7f090078

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/ThemeOperationAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 64
    .local v0, iv:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/lx/launcher8/setting/ThemeOperationAct;->mTheme:Lcom/lx/launcher8/db/ThemeHelper$Theme;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lcom/lx/launcher8/db/ThemeHelper;->getSaveBitmap(Landroid/content/Context;Lcom/lx/launcher8/db/ThemeHelper$Theme;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/setting/ThemeOperationAct;->bitmap:Landroid/graphics/Bitmap;

    .line 65
    iget-object v1, p0, Lcom/lx/launcher8/setting/ThemeOperationAct;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/lx/launcher8/setting/ThemeOperationAct;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 67
    const v1, 0x7f090079

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/ThemeOperationAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :goto_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/ThemeOperationAct;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void

    .line 69
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
