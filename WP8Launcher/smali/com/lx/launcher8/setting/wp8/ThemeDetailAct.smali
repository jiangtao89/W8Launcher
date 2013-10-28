.class public Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.source "ThemeDetailAct.java"


# static fields
.field public static final EXTRAL_ID:Ljava/lang/String; = "extral_id"


# instance fields
.field private mFontView:Landroid/view/View;

.field private mId:I

.field private mTheme:Lcom/lx/launcher8/db/ThemeHelper$Theme;

.field private mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

.field private mThemeHelper:Lcom/lx/launcher8/db/ThemeHelper;

.field private mViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/setting/view/SettingView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;)Lcom/lx/launcher8/db/ThemeHelper;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeHelper:Lcom/lx/launcher8/db/ThemeHelper;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;)Lcom/lx/launcher8/db/ThemeHelper$Theme;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mTheme:Lcom/lx/launcher8/db/ThemeHelper$Theme;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 534
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->showFullScreen(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private showFullScreen(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"

    .prologue
    .line 535
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 536
    .local v2, rect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 537
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v3, v4

    .line 538
    .local v0, height:I
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/lx/launcher8/setting/ThemeShotDetailAct;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 539
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "extral_height"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 540
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->isOnline()Z

    move-result v3

    if-nez v3, :cond_0

    .line 541
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mTheme:Lcom/lx/launcher8/db/ThemeHelper$Theme;

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/AnallApp;->setParam(Ljava/lang/Object;)V

    .line 545
    :goto_0
    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->startActivity(Landroid/content/Intent;)V

    .line 546
    return-void

    .line 543
    :cond_0
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/lx/launcher8/AnallApp;->setParam(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method addFav()V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method protected createMenuButton()V
    .locals 13

    .prologue
    const/4 v11, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x2

    .line 88
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->isOnline()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 89
    const/4 v4, 0x2

    .line 90
    .local v4, len:I
    const/4 v2, 0x0

    .line 91
    .local v2, index:I
    const/4 v5, 0x1

    .local v5, localDown:Z
    const/4 v1, 0x1

    .line 92
    .local v1, googleDown:Z
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    iget v10, v10, Lcom/lx/launcher8/setting/bean/ThemeDetail;->downType:I

    if-eq v10, v11, :cond_0

    .line 93
    const/4 v4, 0x1

    .line 94
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    iget v10, v10, Lcom/lx/launcher8/setting/bean/ThemeDetail;->downType:I

    if-ne v10, v8, :cond_2

    move v5, v8

    .line 95
    :goto_0
    iget-object v10, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    iget v10, v10, Lcom/lx/launcher8/setting/bean/ThemeDetail;->downType:I

    if-ne v10, v12, :cond_3

    move v1, v8

    .line 97
    :cond_0
    :goto_1
    new-array v6, v4, [Landroid/widget/LinearLayout;

    .line 98
    .local v6, menus:[Landroid/widget/LinearLayout;
    if-eqz v5, :cond_6

    .line 99
    const v8, 0x7f0a01b3

    invoke-virtual {p0, v8}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v10, v12, [I

    fill-array-data v10, :array_0

    invoke-virtual {p0, v8, v10}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->createBottomBtn(Ljava/lang/String;[I)Landroid/widget/LinearLayout;

    move-result-object v8

    aput-object v8, v6, v2

    .line 101
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .local v3, index:I
    aget-object v8, v6, v2

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setId(I)V

    .line 105
    :goto_2
    if-eqz v1, :cond_1

    .line 106
    const v8, 0x7f0a01b4

    invoke-virtual {p0, v8}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v10, v12, [I

    fill-array-data v10, :array_1

    invoke-virtual {p0, v8, v10}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->createBottomBtn(Ljava/lang/String;[I)Landroid/widget/LinearLayout;

    move-result-object v8

    aput-object v8, v6, v3

    .line 109
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aget-object v8, v6, v3

    const/4 v10, 0x5

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setId(I)V

    .line 124
    .end local v1           #googleDown:Z
    .end local v2           #index:I
    .end local v4           #len:I
    .end local v5           #localDown:Z
    :cond_1
    :goto_3
    new-instance v0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$1;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;)V

    .line 162
    .local v0, click:Landroid/view/View$OnClickListener;
    array-length v8, v6

    :goto_4
    if-lt v9, v8, :cond_5

    .line 164
    invoke-virtual {p0, v6}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->addBottomBtn([Landroid/widget/LinearLayout;)V

    .line 165
    return-void

    .end local v0           #click:Landroid/view/View$OnClickListener;
    .end local v6           #menus:[Landroid/widget/LinearLayout;
    .restart local v1       #googleDown:Z
    .restart local v2       #index:I
    .restart local v4       #len:I
    .restart local v5       #localDown:Z
    :cond_2
    move v5, v9

    .line 94
    goto :goto_0

    :cond_3
    move v1, v9

    .line 95
    goto :goto_1

    .line 112
    .end local v1           #googleDown:Z
    .end local v2           #index:I
    .end local v4           #len:I
    .end local v5           #localDown:Z
    :cond_4
    new-array v6, v12, [Landroid/widget/LinearLayout;

    .line 113
    .restart local v6       #menus:[Landroid/widget/LinearLayout;
    const v10, 0x7f0a01b0

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v11, v12, [I

    fill-array-data v11, :array_2

    invoke-virtual {p0, v10, v11}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->createBottomBtn(Ljava/lang/String;[I)Landroid/widget/LinearLayout;

    move-result-object v10

    aput-object v10, v6, v9

    .line 118
    const v10, 0x7f0a01b2

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v11, v12, [I

    fill-array-data v11, :array_3

    invoke-virtual {p0, v10, v11}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->createBottomBtn(Ljava/lang/String;[I)Landroid/widget/LinearLayout;

    move-result-object v10

    aput-object v10, v6, v8

    .line 120
    aget-object v10, v6, v9

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->setId(I)V

    .line 122
    aget-object v8, v6, v8

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setId(I)V

    goto :goto_3

    .line 162
    .restart local v0       #click:Landroid/view/View$OnClickListener;
    :cond_5
    aget-object v7, v6, v9

    .line 163
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .end local v0           #click:Landroid/view/View$OnClickListener;
    .end local v7           #view:Landroid/view/View;
    .restart local v1       #googleDown:Z
    .restart local v2       #index:I
    .restart local v4       #len:I
    .restart local v5       #localDown:Z
    :cond_6
    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_2

    .line 99
    nop

    :array_0
    .array-data 0x4
        0x13t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
    .end array-data

    .line 106
    :array_1
    .array-data 0x4
        0x17t 0x0t 0x2t 0x7ft
        0x18t 0x0t 0x2t 0x7ft
    .end array-data

    .line 113
    :array_2
    .array-data 0x4
        0x1at 0x0t 0x2t 0x7ft
        0x1bt 0x0t 0x2t 0x7ft
    .end array-data

    .line 118
    :array_3
    .array-data 0x4
        0x10t 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method delTheme()V
    .locals 3

    .prologue
    .line 212
    new-instance v0, Lcom/lx/launcher8/view/PopupDialog;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/view/PopupDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a01c4

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;->setTitle(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 213
    const v1, 0x7f0a019f

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;->setMsg(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 214
    const v1, 0x7f0a0077

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$4;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$4;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;)V

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setOkButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 229
    const v1, 0x7f0a0078

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$5;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$5;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;)V

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setCancelButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lcom/lx/launcher8/view/PopupDialog;->show()V

    .line 234
    return-void
.end method

.method downLocalTheme()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 270
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    iget v2, v2, Lcom/lx/launcher8/setting/bean/ThemeDetail;->downType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    iget-object v1, v2, Lcom/lx/launcher8/setting/bean/ThemeDetail;->downurl:Ljava/lang/String;

    .line 275
    .local v1, url:Ljava/lang/String;
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v2

    iget-object v2, v2, Lcom/app/download/bean/DownloadManager;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    invoke-virtual {v2, v1}, Lcom/app/download/bean/RecodeInfo;->isExisted(Ljava/lang/String;)Lcom/app/download/bean/FileSeed;

    move-result-object v0

    .line 276
    .local v0, fs:Lcom/app/download/bean/FileSeed;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->isOnline()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 277
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v2

    iget-object v2, v2, Lcom/app/download/bean/DownloadManager;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    invoke-virtual {v2, v0}, Lcom/app/download/bean/RecodeInfo;->remove(Lcom/app/download/bean/FileSeed;)V

    .line 280
    :cond_2
    const v6, 0x7f0a01c0

    .line 281
    .local v6, rid:I
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v2

    iget-object v2, v2, Lcom/app/download/bean/DownloadManager;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    invoke-virtual {v2, v1}, Lcom/app/download/bean/RecodeInfo;->isExisted(Ljava/lang/String;)Lcom/app/download/bean/FileSeed;

    move-result-object v0

    .line 282
    if-nez v0, :cond_4

    .line 283
    const v6, 0x7f0a01bf

    .line 284
    new-instance v0, Lcom/app/download/bean/FileSeed;

    .end local v0           #fs:Lcom/app/download/bean/FileSeed;
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    iget-object v2, v2, Lcom/lx/launcher8/setting/bean/ThemeDetail;->name:Ljava/lang/String;

    invoke-static {}, Lcom/lx/launcher8/db/ThemeHelper;->getHisThemePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/app/download/bean/FileSeed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 285
    .restart local v0       #fs:Lcom/app/download/bean/FileSeed;
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v0, v3}, Lcom/app/download/bean/DownloadManager;->downLoad(Landroid/content/Context;Lcom/app/download/bean/FileSeed;Z)V

    .line 289
    :cond_3
    :goto_1
    invoke-static {p0, v6}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;I)V

    goto :goto_0

    .line 286
    :cond_4
    invoke-virtual {v0}, Lcom/app/download/bean/FileSeed;->isLoadFinish()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 287
    const v6, 0x7f0a01be

    goto :goto_1
.end method

.method downTheme()V
    .locals 5

    .prologue
    .line 245
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    iget v3, v3, Lcom/lx/launcher8/setting/bean/ThemeDetail;->downType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getIntallAPK(Lcom/lx/launcher8/setting/bean/ThemeDetail;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 250
    .local v2, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_2

    .line 251
    const v3, 0x7f0a01c1

    invoke-static {p0, v3}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;I)V

    goto :goto_0

    .line 256
    :cond_2
    new-instance v3, Lcom/lx/launcher8/task/RequestTask;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/task/RequestTask;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    iget-object v4, v4, Lcom/lx/launcher8/setting/bean/ThemeDetail;->downurl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/task/RequestTask;->setUrl(Ljava/lang/String;)Lcom/lx/launcher8/task/RequestTask;

    move-result-object v3

    const-string v4, "only=1"

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/task/RequestTask;->setParams(Ljava/lang/String;)Lcom/lx/launcher8/task/RequestTask;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lx/launcher8/task/RequestTask;->exec()Z

    .line 258
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.android.vending"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "market://details?id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    iget-object v4, v4, Lcom/lx/launcher8/setting/bean/ThemeDetail;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 262
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const v3, 0x7f0a01bd

    invoke-static {p0, v3}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public getBaseInfos()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 414
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    .line 415
    .local v0, infos:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->isOnline()Z

    move-result v1

    if-nez v1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mTheme:Lcom/lx/launcher8/db/ThemeHelper$Theme;

    invoke-static {p0, v1}, Lcom/lx/launcher8/db/ThemeHelper;->getBaseInfos(Landroid/content/Context;Lcom/lx/launcher8/db/ThemeHelper$Theme;)[Ljava/lang/String;

    move-result-object v0

    .line 427
    :cond_0
    :goto_0
    return-object v0

    .line 417
    :cond_1
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    if-eqz v1, :cond_0

    .line 418
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/String;

    .line 419
    const v1, 0x7f0a01b6

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 420
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    iget v2, v2, Lcom/lx/launcher8/setting/bean/ThemeDetail;->size:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/app/common/utils/UConvert;->ByteToFitFormat(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 421
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    iget-object v2, v2, Lcom/lx/launcher8/setting/bean/ThemeDetail;->version:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 422
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    iget-object v2, v2, Lcom/lx/launcher8/setting/bean/ThemeDetail;->time:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 423
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    iget-object v1, v1, Lcom/lx/launcher8/setting/bean/ThemeDetail;->author:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 424
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    iget-object v2, v2, Lcom/lx/launcher8/setting/bean/ThemeDetail;->author:Ljava/lang/String;

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method protected getInstallFile(Lcom/lx/launcher8/setting/bean/ThemeDetail;)Ljava/lang/String;
    .locals 11
    .parameter "themeDetail"

    .prologue
    const/4 v6, 0x0

    .line 507
    if-nez p1, :cond_1

    move-object v2, v6

    .line 531
    :cond_0
    :goto_0
    return-object v2

    .line 509
    :cond_1
    iget-object v5, p1, Lcom/lx/launcher8/setting/bean/ThemeDetail;->downurl:Ljava/lang/String;

    .line 510
    .local v5, url:Ljava/lang/String;
    iget-object v7, p1, Lcom/lx/launcher8/setting/bean/ThemeDetail;->name:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/app/download/bean/FileSeed;->getAppropriateName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ".anall"

    .line 511
    const-string v9, ""

    .line 510
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 512
    .local v2, fileName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-static {v2}, Lcom/lx/launcher8/db/ThemeHelper;->getAbsThemePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 513
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 514
    const/4 v3, 0x0

    .line 516
    .local v3, ra:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v7, "r"

    invoke-direct {v4, v1, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 517
    .end local v3           #ra:Ljava/io/RandomAccessFile;
    .local v4, ra:Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v7

    invoke-virtual {v1}, Ljava/io/File;->length()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_4

    .line 523
    if-eqz v4, :cond_0

    .line 525
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 526
    :catch_0
    move-exception v6

    goto :goto_0

    .line 520
    .end local v4           #ra:Ljava/io/RandomAccessFile;
    .restart local v3       #ra:Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    .line 521
    .local v0, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 523
    if-eqz v3, :cond_2

    .line 525
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #ra:Ljava/io/RandomAccessFile;
    :cond_2
    :goto_2
    move-object v2, v6

    .line 531
    goto :goto_0

    .line 522
    .restart local v3       #ra:Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v6

    .line 523
    :goto_3
    if-eqz v3, :cond_3

    .line 525
    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 528
    :cond_3
    :goto_4
    throw v6

    .line 523
    .end local v3           #ra:Ljava/io/RandomAccessFile;
    .restart local v4       #ra:Ljava/io/RandomAccessFile;
    :cond_4
    if-eqz v4, :cond_2

    .line 525
    :try_start_6
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 526
    :catch_2
    move-exception v7

    goto :goto_2

    .end local v4           #ra:Ljava/io/RandomAccessFile;
    .restart local v0       #e:Ljava/io/IOException;
    .restart local v3       #ra:Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v7

    goto :goto_2

    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v7

    goto :goto_4

    .line 522
    .end local v3           #ra:Ljava/io/RandomAccessFile;
    .restart local v4       #ra:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #ra:Ljava/io/RandomAccessFile;
    .restart local v3       #ra:Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 520
    .end local v3           #ra:Ljava/io/RandomAccessFile;
    .restart local v4       #ra:Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v0

    move-object v3, v4

    .end local v4           #ra:Ljava/io/RandomAccessFile;
    .restart local v3       #ra:Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method protected getIntallAPK(Lcom/lx/launcher8/setting/bean/ThemeDetail;)Landroid/content/pm/ResolveInfo;
    .locals 6
    .parameter "themeDetail"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 492
    if-nez p1, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-object v3

    .line 494
    :cond_1
    iget-object v2, p1, Lcom/lx/launcher8/setting/bean/ThemeDetail;->pkg:Ljava/lang/String;

    .line 495
    .local v2, pkg:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 496
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.anall.wp8.theme.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 497
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 499
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 500
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    goto :goto_0
.end method

.method public getSaveBitmap(I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "type"

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    const/4 v0, 0x0

    .line 377
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mTheme:Lcom/lx/launcher8/db/ThemeHelper$Theme;

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/lx/launcher8/db/ThemeHelper;->getSaveBitmap(Landroid/content/Context;Lcom/lx/launcher8/db/ThemeHelper$Theme;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected initData()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 63
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/AnallApp;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/db/ThemeHelper$Theme;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mTheme:Lcom/lx/launcher8/db/ThemeHelper$Theme;

    .line 64
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extral_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mId:I

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mViewList:Ljava/util/ArrayList;

    .line 67
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mTitleBar:Landroid/widget/TextView;

    const v1, 0x7f0a01a1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 68
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mViewList:Ljava/util/ArrayList;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;

    invoke-direct {v1, p0, v3}, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mViewList:Ljava/util/ArrayList;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;

    invoke-direct {v1, p0, v4}, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mViewList:Ljava/util/ArrayList;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;

    invoke-direct {v1, p0, v5}, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mViewList:Ljava/util/ArrayList;

    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->isOnline()Z

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    const v0, 0x7f0a01ac

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/setting/view/SettingView;

    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 74
    const v0, 0x7f0a01ad

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mViewList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/setting/view/SettingView;

    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 75
    const v0, 0x7f0a01ae

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/setting/view/SettingView;

    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 76
    const v0, 0x7f0a01af

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/setting/view/SettingView;

    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 77
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->createMenuButton()V

    .line 79
    new-instance v0, Lcom/lx/launcher8/db/ThemeHelper;

    invoke-direct {v0}, Lcom/lx/launcher8/db/ThemeHelper;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeHelper:Lcom/lx/launcher8/db/ThemeHelper;

    .line 80
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/setting/view/SettingView;

    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->onViewToFont(Landroid/view/View;)V

    .line 81
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mId:I

    if-lez v0, :cond_0

    .line 82
    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->onLoadTask(Z)V

    .line 83
    :cond_0
    return-void
.end method

.method isInstallTheme(Lcom/lx/launcher8/setting/bean/ThemeDetail;)Z
    .locals 5
    .parameter "themeDetail"

    .prologue
    const/4 v3, 0x0

    .line 470
    const/4 v2, 0x0

    .line 472
    .local v2, theme:Lcom/lx/launcher8/db/ThemeHelper$Theme;
    invoke-virtual {p0, p1}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getIntallAPK(Lcom/lx/launcher8/setting/bean/ThemeDetail;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 473
    .local v1, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    .line 474
    new-instance v2, Lcom/lx/launcher8/db/ThemeHelper$Theme;

    .end local v2           #theme:Lcom/lx/launcher8/db/ThemeHelper$Theme;
    iget-object v4, p1, Lcom/lx/launcher8/setting/bean/ThemeDetail;->name:Ljava/lang/String;

    invoke-direct {v2, v1, v3, v4}, Lcom/lx/launcher8/db/ThemeHelper$Theme;-><init>(Landroid/content/pm/ResolveInfo;ILjava/lang/String;)V

    .line 476
    .restart local v2       #theme:Lcom/lx/launcher8/db/ThemeHelper$Theme;
    :cond_0
    if-nez v2, :cond_1

    .line 478
    invoke-virtual {p0, p1}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getInstallFile(Lcom/lx/launcher8/setting/bean/ThemeDetail;)Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, fileName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 480
    new-instance v2, Lcom/lx/launcher8/db/ThemeHelper$Theme;

    .end local v2           #theme:Lcom/lx/launcher8/db/ThemeHelper$Theme;
    invoke-direct {v2, v0, v0}, Lcom/lx/launcher8/db/ThemeHelper$Theme;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    .end local v0           #fileName:Ljava/lang/String;
    .restart local v2       #theme:Lcom/lx/launcher8/db/ThemeHelper$Theme;
    :cond_1
    if-eqz v2, :cond_2

    .line 485
    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mTheme:Lcom/lx/launcher8/db/ThemeHelper$Theme;

    .line 488
    :cond_2
    if-eqz v2, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3
.end method

.method public isOnline()Z
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mTheme:Lcom/lx/launcher8/db/ThemeHelper$Theme;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 445
    const/4 v0, 0x0

    .line 446
    .local v0, result:Z
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 451
    if-nez v0, :cond_1

    .line 452
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onActivityResult(IILandroid/content/Intent;)V

    .line 453
    :cond_1
    return-void

    .line 446
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/setting/view/SettingView;

    .line 447
    .local v1, sv:Lcom/lx/launcher8/setting/view/SettingView;
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mFontView:Landroid/view/View;

    invoke-interface {v1}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 448
    invoke-interface {v1, p1, p2, p3}, Lcom/lx/launcher8/setting/view/SettingView;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, result:Z
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 464
    :goto_0
    if-eqz v0, :cond_2

    .line 465
    const/4 v2, 0x1

    .line 466
    :goto_1
    return v2

    .line 458
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/setting/view/SettingView;

    .line 459
    .local v1, sv:Lcom/lx/launcher8/setting/view/SettingView;
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mFontView:Landroid/view/View;

    invoke-interface {v1}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 460
    invoke-interface {v1}, Lcom/lx/launcher8/setting/view/SettingView;->onBack()Z

    move-result v2

    or-int/2addr v0, v2

    .line 461
    goto :goto_0

    .line 466
    .end local v1           #sv:Lcom/lx/launcher8/setting/view/SettingView;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1
.end method

.method protected onLoadOver(Lcom/lx/launcher8/bll/BllThemeDetail;Z)V
    .locals 4
    .parameter "bll"
    .parameter "fresh"

    .prologue
    .line 313
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/lx/launcher8/bll/BllThemeDetail;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iget-object v2, p1, Lcom/lx/launcher8/bll/BllThemeDetail;->mTd:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    .line 318
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->switchTolocal(Lcom/lx/launcher8/setting/bean/ThemeDetail;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 319
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->createMenuButton()V

    goto :goto_0

    .line 322
    :cond_2
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->createMenuButton()V

    .line 324
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mViewList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;

    .line 325
    .local v0, sv:Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    iget-object v2, v2, Lcom/lx/launcher8/setting/bean/ThemeDetail;->screenUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    iget-object v3, v3, Lcom/lx/launcher8/setting/bean/ThemeDetail;->actScreenurl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->setImgUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mFontView:Landroid/view/View;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->getView()Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 327
    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->onViewMovingFront()V

    .line 329
    :cond_3
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mViewList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #sv:Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;
    check-cast v0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;

    .line 330
    .restart local v0       #sv:Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    iget-object v2, v2, Lcom/lx/launcher8/setting/bean/ThemeDetail;->paperurl:Ljava/lang/String;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    iget-object v3, v3, Lcom/lx/launcher8/setting/bean/ThemeDetail;->actpaperurl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->setImgUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mFontView:Landroid/view/View;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->getView()Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 332
    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->onViewMovingFront()V

    .line 334
    :cond_4
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mViewList:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #sv:Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;
    check-cast v0, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;

    .line 335
    .restart local v0       #sv:Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    iget-object v2, v2, Lcom/lx/launcher8/setting/bean/ThemeDetail;->lockUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    iget-object v3, v3, Lcom/lx/launcher8/setting/bean/ThemeDetail;->actlockurl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->setImgUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mFontView:Landroid/view/View;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->getView()Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_5

    .line 337
    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/ScaleBitmapView;->onViewMovingFront()V

    .line 339
    :cond_5
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mViewList:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;

    .line 340
    .local v1, tv:Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mFontView:Landroid/view/View;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->getView()Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 341
    invoke-virtual {v1}, Lcom/lx/launcher8/setting/wp8/view/ThemeDetailView;->onViewMovingFront()V

    goto/16 :goto_0
.end method

.method protected onLoadTask(Z)V
    .locals 2
    .parameter "fresh"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 346
    :cond_0
    new-instance v0, Lcom/lx/launcher8/task/ThemeDetailTask;

    iget v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mId:I

    invoke-direct {v0, p0, v1}, Lcom/lx/launcher8/task/ThemeDetailTask;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/task/ThemeDetailTask;->setReload(Z)Lcom/app/common/task/BaseTask;

    move-result-object v0

    new-instance v1, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$6;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$6;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;)V

    invoke-virtual {v0, v1}, Lcom/app/common/task/BaseTask;->setTaskListener(Lcom/app/common/task/BaseTask$TaskListener;)Lcom/app/common/task/BaseTask;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Lcom/app/common/task/BaseTask;->exec()Z

    .line 357
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 361
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onResume()V

    .line 362
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->switchTolocal(Lcom/lx/launcher8/setting/bean/ThemeDetail;)Z

    .line 363
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mFontView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 364
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 371
    :cond_1
    :goto_0
    return-void

    .line 364
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/setting/view/SettingView;

    .line 365
    .local v0, sv:Lcom/lx/launcher8/setting/view/SettingView;
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mFontView:Landroid/view/View;

    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 366
    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->onResume()V

    goto :goto_0
.end method

.method protected onViewToFont(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 432
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mFontView:Landroid/view/View;

    if-ne v1, p1, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mFontView:Landroid/view/View;

    .line 435
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/setting/view/SettingView;

    .line 436
    .local v0, sv:Lcom/lx/launcher8/setting/view/SettingView;
    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 437
    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->onViewMovingFront()V

    goto :goto_0
.end method

.method restoreTheme(Landroid/app/ProgressDialog;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 192
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lx/launcher8/AnallLauncher;->isRestore:Z

    .line 193
    const v0, 0x7f0a0195

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeHelper:Lcom/lx/launcher8/db/ThemeHelper;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mTheme:Lcom/lx/launcher8/db/ThemeHelper$Theme;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$3;

    invoke-direct {v2, p0, p1}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$3;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/lx/launcher8/db/ThemeHelper;->recoveryTheme(Landroid/content/Context;Lcom/lx/launcher8/db/ThemeHelper$Theme;Lcom/lx/launcher8/db/ThemeHelper$ThemeRecoverListener;)V

    .line 208
    return-void
.end method

.method saveAndRestore(Z)V
    .locals 4
    .parameter "save"

    .prologue
    .line 168
    const v2, 0x7f0a0195

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 169
    const v3, 0x7f0a0119

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-static {p0, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 170
    .local v1, dialog:Landroid/app/ProgressDialog;
    if-eqz p1, :cond_0

    .line 171
    const v2, 0x7f0a0196

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 172
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/AnallApp;->compoundCellScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 173
    .local v0, bit:Landroid/graphics/Bitmap;
    new-instance v2, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$2;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;Landroid/graphics/Bitmap;Landroid/app/ProgressDialog;)V

    .line 185
    invoke-virtual {v2}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$2;->start()V

    .line 188
    .end local v0           #bit:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->restoreTheme(Landroid/app/ProgressDialog;)V

    goto :goto_0
.end method

.method public shareTheme()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public showDetailPic(I)V
    .locals 8
    .parameter "type"

    .prologue
    .line 385
    if-nez p1, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->isOnline()Z

    move-result v0

    if-nez v0, :cond_1

    .line 387
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->showFullScreen(Landroid/graphics/Bitmap;)V

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 390
    .local v7, display:Landroid/util/DisplayMetrics;
    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 391
    .local v4, screenWidth:I
    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 393
    .local v5, screenHeight:I
    invoke-static {}, Lcom/lx/launcher8/util/ImageLoader;->getInstance()Lcom/lx/launcher8/util/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    iget-object v1, v1, Lcom/lx/launcher8/setting/bean/ThemeDetail;->fullscreenurl:Ljava/lang/String;

    .line 394
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    iget-object v2, v2, Lcom/lx/launcher8/setting/bean/ThemeDetail;->fullscreenurl:Ljava/lang/String;

    invoke-static {v2}, Lcom/lx/launcher8/util/ImageLoader;->convertURLToCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$7;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$7;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;)V

    .line 393
    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/util/ImageLoader;->loadImage(Ljava/lang/String;Ljava/lang/String;Lcom/lx/launcher8/util/ImageLoader$OnLoadingListener;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 404
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_2

    .line 405
    invoke-direct {p0, v6}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->showFullScreen(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 407
    :cond_2
    const v0, 0x7f0a0184

    invoke-static {p0, v0}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method switchTolocal(Lcom/lx/launcher8/setting/bean/ThemeDetail;)Z
    .locals 4
    .parameter "detail"

    .prologue
    const/4 v1, 0x0

    .line 298
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mTheme:Lcom/lx/launcher8/db/ThemeHelper$Theme;

    if-eqz v2, :cond_1

    .line 309
    :cond_0
    :goto_0
    return v1

    .line 300
    :cond_1
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeDetail:Lcom/lx/launcher8/setting/bean/ThemeDetail;

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->isInstallTheme(Lcom/lx/launcher8/setting/bean/ThemeDetail;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 307
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 301
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/setting/view/SettingView;

    .line 302
    .local v0, sv:Lcom/lx/launcher8/setting/view/SettingView;
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mFontView:Landroid/view/View;

    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->getView()Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 303
    invoke-interface {v0}, Lcom/lx/launcher8/setting/view/SettingView;->onViewMovingFront()V

    goto :goto_1
.end method
