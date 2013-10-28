.class public Lcom/lx/launcher8/setting/wp8/LockSoundListAct;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.source "LockSoundListAct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;
    }
.end annotation


# static fields
.field public static final EXTRAL_VALUE:Ljava/lang/String; = "extral_value"

.field private static final REQUEST_AUDIO:I = 0x1


# instance fields
.field bottomLinear:Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;

.field linear:Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;

.field private mMainView:Landroid/widget/LinearLayout;

.field private mScrollView:Landroid/widget/ScrollView;

.field mp:Landroid/media/MediaPlayer;

.field topLinear:Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/LockSoundListAct;)Landroid/widget/ScrollView;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/LockSoundListAct;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->playSound(I)V

    return-void
.end method

.method private createView()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 64
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->mMainView:Landroid/widget/LinearLayout;

    .line 65
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->mMainView:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 67
    const/high16 v3, 0x4120

    invoke-static {p0, v3}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v3

    float-to-int v1, v3

    .line 69
    .local v1, margin:I
    new-instance v3, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;

    invoke-direct {v3, p0, p0}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;-><init>(Lcom/lx/launcher8/setting/wp8/LockSoundListAct;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->topLinear:Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;

    .line 70
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->topLinear:Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;

    const v4, 0x7f020147

    const v5, 0x7f020125

    invoke-direct {p0, v4, v5}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->getResource(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;->setLeftIcon(I)V

    .line 71
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->topLinear:Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;

    const v4, 0x7f0a023e

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;->setCenterText(Ljava/lang/String;)V

    .line 72
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->topLinear:Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;

    new-instance v4, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$2;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$2;-><init>(Lcom/lx/launcher8/setting/wp8/LockSoundListAct;)V

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;->setListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->topLinear:Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;

    mul-int/lit8 v4, v1, 0x3

    mul-int/lit8 v5, v1, 0x2

    invoke-virtual {v3, v1, v4, v1, v5}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;->setPadding(IIII)V

    .line 82
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->mMainView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->topLinear:Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0x11

    if-lt v0, v3, :cond_0

    .line 108
    new-instance v3, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;

    invoke-direct {v3, p0, p0}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;-><init>(Lcom/lx/launcher8/setting/wp8/LockSoundListAct;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->bottomLinear:Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;

    .line 109
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->bottomLinear:Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;

    const v4, 0x7f020149

    const v5, 0x7f020127

    invoke-direct {p0, v4, v5}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->getResource(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;->setLeftIcon(I)V

    .line 110
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->bottomLinear:Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;

    const v4, 0x7f0a023f

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;->setCenterText(Ljava/lang/String;)V

    .line 111
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->bottomLinear:Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;

    new-instance v4, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$5;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$5;-><init>(Lcom/lx/launcher8/setting/wp8/LockSoundListAct;)V

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;->setListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->bottomLinear:Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;

    mul-int/lit8 v4, v1, 0x2

    mul-int/lit8 v5, v1, 0x3

    invoke-virtual {v3, v1, v4, v1, v5}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;->setPadding(IIII)V

    .line 126
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->mMainView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->bottomLinear:Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    return-void

    .line 85
    :cond_0
    new-instance v3, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;

    invoke-direct {v3, p0, p0}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;-><init>(Lcom/lx/launcher8/setting/wp8/LockSoundListAct;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->linear:Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;

    .line 86
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->linear:Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;

    const v4, 0x7f020148

    const v5, 0x7f020126

    invoke-direct {p0, v4, v5}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->getResource(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;->setLeftIcon(I)V

    .line 87
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->linear:Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;

    sget-object v4, Lcom/lx/launcher8/util/Utils;->soundNameResources:[I

    aget v4, v4, v0

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;->setCenterText(Ljava/lang/String;)V

    .line 88
    move v2, v0

    .line 89
    .local v2, position:I
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->linear:Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;

    new-instance v4, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$3;

    invoke-direct {v4, p0, v2}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$3;-><init>(Lcom/lx/launcher8/setting/wp8/LockSoundListAct;I)V

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;->setLeftIconListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->linear:Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;

    new-instance v4, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$4;

    invoke-direct {v4, p0, v2}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$4;-><init>(Lcom/lx/launcher8/setting/wp8/LockSoundListAct;I)V

    invoke-virtual {v3, v4}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;->setListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->linear:Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;

    invoke-virtual {v3, v1, v1, v1, v1}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;->setPadding(IIII)V

    .line 105
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->mMainView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->linear:Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private getResource(II)I
    .locals 2
    .parameter "resource_w"
    .parameter "resource_b"

    .prologue
    .line 140
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->mbgColorValue:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 143
    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    move p2, p1

    goto :goto_0
.end method

.method private playSound(I)V
    .locals 1
    .parameter "resource"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 133
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 135
    :cond_0
    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->mp:Landroid/media/MediaPlayer;

    .line 136
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 137
    :cond_1
    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 4

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->mTitleBar:Landroid/widget/TextView;

    const v1, 0x7f0a023d

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->createView()V

    .line 38
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 39
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->mScrollView:Landroid/widget/ScrollView;

    .line 40
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVerticalFadingEdgeEnabled(Z)V

    .line 41
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 42
    const-string v0, ""

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$1;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$1;-><init>(Lcom/lx/launcher8/setting/wp8/LockSoundListAct;)V

    .line 57
    const-wide/16 v2, 0xa

    .line 44
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 58
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 13
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 149
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    .line 151
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 152
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "mime_type"

    aput-object v3, v2, v0

    .line 153
    .local v2, audios:[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 154
    .local v6, cursor:Landroid/database/Cursor;
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 155
    .local v8, index:I
    const-string v0, "mime_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 156
    .local v9, index2:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 157
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 158
    .local v11, path:Ljava/lang/String;
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 160
    .local v12, type:Ljava/lang/String;
    const-string v0, "application/ogg"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 162
    .local v10, intent:Landroid/content/Intent;
    const-string v0, "extral_value"

    invoke-virtual {v10, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v10}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->setResult(ILandroid/content/Intent;)V

    .line 164
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #audios:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #index:I
    .end local v9           #index2:I
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #path:Ljava/lang/String;
    .end local v12           #type:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p3}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onActivityResult(IILandroid/content/Intent;)V

    .line 174
    return-void

    .line 166
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v2       #audios:[Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v8       #index:I
    .restart local v9       #index2:I
    .restart local v11       #path:Ljava/lang/String;
    .restart local v12       #type:Ljava/lang/String;
    :cond_1
    const v0, 0x7f0a0243

    :try_start_1
    invoke-static {p0, v0}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 168
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #audios:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #index:I
    .end local v9           #index2:I
    .end local v11           #path:Ljava/lang/String;
    .end local v12           #type:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 169
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    const v0, 0x7f0a0242

    invoke-static {p0, v0}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;I)V

    goto :goto_0
.end method
