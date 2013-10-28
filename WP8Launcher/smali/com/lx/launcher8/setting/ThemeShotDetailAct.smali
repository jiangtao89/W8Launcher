.class public Lcom/lx/launcher8/setting/ThemeShotDetailAct;
.super Lcom/lx/launcher8/NoSearchAct;
.source "ThemeShotDetailAct.java"


# static fields
.field public static final EXTRAL_HEIGHT:Ljava/lang/String; = "extral_height"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDetailView:Lcom/lx/launcher8/view/ThemeShotDetailView;

.field private mTheme:Lcom/lx/launcher8/db/ThemeHelper$Theme;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0x11

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 25
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/ThemeShotDetailAct;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "extral_height"

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/ThemeShotDetailAct;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 29
    .local v1, height:I
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lx/launcher8/AnallApp;->getParam()Ljava/lang/Object;

    move-result-object v2

    .line 30
    .local v2, obj:Ljava/lang/Object;
    instance-of v3, v2, Lcom/lx/launcher8/db/ThemeHelper$Theme;

    if-eqz v3, :cond_2

    .line 31
    invoke-static {}, Lcom/lx/launcher8/util/BitmapManager;->getInstance()Lcom/lx/launcher8/util/BitmapManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lx/launcher8/util/BitmapManager;->clearCache()V

    .line 32
    check-cast v2, Lcom/lx/launcher8/db/ThemeHelper$Theme;

    .end local v2           #obj:Ljava/lang/Object;
    iput-object v2, p0, Lcom/lx/launcher8/setting/ThemeShotDetailAct;->mTheme:Lcom/lx/launcher8/db/ThemeHelper$Theme;

    .line 33
    iget-object v3, p0, Lcom/lx/launcher8/setting/ThemeShotDetailAct;->mTheme:Lcom/lx/launcher8/db/ThemeHelper$Theme;

    invoke-static {p0, v3, v7, v7}, Lcom/lx/launcher8/db/ThemeHelper;->getSaveBitmap(Landroid/content/Context;Lcom/lx/launcher8/db/ThemeHelper$Theme;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lx/launcher8/setting/ThemeShotDetailAct;->mBitmap:Landroid/graphics/Bitmap;

    .line 39
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/lx/launcher8/setting/ThemeShotDetailAct;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 40
    new-instance v3, Lcom/lx/launcher8/view/ThemeShotDetailView;

    iget-object v4, p0, Lcom/lx/launcher8/setting/ThemeShotDetailAct;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, p0, v4, v1}, Lcom/lx/launcher8/view/ThemeShotDetailView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    iput-object v3, p0, Lcom/lx/launcher8/setting/ThemeShotDetailAct;->mDetailView:Lcom/lx/launcher8/view/ThemeShotDetailView;

    .line 45
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, fl:Landroid/widget/FrameLayout;
    invoke-static {v6, v6, v8}, Lcom/app/common/utils/ViewHelper;->getFLParam(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object v3, p0, Lcom/lx/launcher8/setting/ThemeShotDetailAct;->mDetailView:Lcom/lx/launcher8/view/ThemeShotDetailView;

    invoke-static {v6, v6, v8}, Lcom/app/common/utils/ViewHelper;->getFLParam(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/ThemeShotDetailAct;->setContentView(Landroid/view/View;)V

    .line 51
    .end local v0           #fl:Landroid/widget/FrameLayout;
    :cond_1
    return-void

    .line 35
    .restart local v2       #obj:Ljava/lang/Object;
    :cond_2
    instance-of v3, v2, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 36
    check-cast v2, Landroid/graphics/Bitmap;

    .end local v2           #obj:Ljava/lang/Object;
    iput-object v2, p0, Lcom/lx/launcher8/setting/ThemeShotDetailAct;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/lx/launcher8/NoSearchAct;->onDestroy()V

    .line 56
    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemeShotDetailAct;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemeShotDetailAct;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 58
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemeShotDetailAct;->mDetailView:Lcom/lx/launcher8/view/ThemeShotDetailView;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemeShotDetailAct;->mDetailView:Lcom/lx/launcher8/view/ThemeShotDetailView;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/view/ThemeShotDetailView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 64
    :cond_0
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
