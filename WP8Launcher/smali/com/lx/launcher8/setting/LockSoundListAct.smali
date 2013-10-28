.class public Lcom/lx/launcher8/setting/LockSoundListAct;
.super Lcom/lx/launcher8/NoSearchAct;
.source "LockSoundListAct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/LockSoundListAct$Linear;
    }
.end annotation


# static fields
.field public static final EXTRAL_VALUE:Ljava/lang/String; = "extral_value"

.field private static final REQUEST_AUDIO:I = 0x1


# instance fields
.field bottomLinear:Lcom/lx/launcher8/setting/LockSoundListAct$Linear;

.field linear:Lcom/lx/launcher8/setting/LockSoundListAct$Linear;

.field private list:Landroid/widget/ScrollView;

.field mp:Landroid/media/MediaPlayer;

.field topLinear:Lcom/lx/launcher8/setting/LockSoundListAct$Linear;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/LockSoundListAct;)Landroid/widget/ScrollView;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockSoundListAct;->list:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/LockSoundListAct;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/LockSoundListAct;->playSound(I)V

    return-void
.end method

.method private createView()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x2

    const/4 v8, -0x1

    .line 73
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74
    .local v2, mMainView:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 75
    const v6, 0x7f0201e4

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 77
    const/high16 v6, 0x4120

    invoke-static {p0, v6}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v6

    float-to-int v3, v6

    .line 79
    .local v3, margin:I
    new-instance v6, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;

    invoke-direct {v6, p0, p0}, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;-><init>(Lcom/lx/launcher8/setting/LockSoundListAct;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/lx/launcher8/setting/LockSoundListAct;->topLinear:Lcom/lx/launcher8/setting/LockSoundListAct$Linear;

    .line 80
    iget-object v6, p0, Lcom/lx/launcher8/setting/LockSoundListAct;->topLinear:Lcom/lx/launcher8/setting/LockSoundListAct$Linear;

    const v7, 0x7f020138

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->setLeftIcon(I)V

    .line 81
    iget-object v6, p0, Lcom/lx/launcher8/setting/LockSoundListAct;->topLinear:Lcom/lx/launcher8/setting/LockSoundListAct$Linear;

    const v7, 0x7f0a023e

    invoke-virtual {p0, v7}, Lcom/lx/launcher8/setting/LockSoundListAct;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->setCenterText(Ljava/lang/String;)V

    .line 82
    iget-object v6, p0, Lcom/lx/launcher8/setting/LockSoundListAct;->topLinear:Lcom/lx/launcher8/setting/LockSoundListAct$Linear;

    new-instance v7, Lcom/lx/launcher8/setting/LockSoundListAct$3;

    invoke-direct {v7, p0}, Lcom/lx/launcher8/setting/LockSoundListAct$3;-><init>(Lcom/lx/launcher8/setting/LockSoundListAct;)V

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->setListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v6, p0, Lcom/lx/launcher8/setting/LockSoundListAct;->topLinear:Lcom/lx/launcher8/setting/LockSoundListAct$Linear;

    invoke-virtual {v6, v3, v3, v3, v3}, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->setPadding(IIII)V

    .line 92
    iget-object v6, p0, Lcom/lx/launcher8/setting/LockSoundListAct;->topLinear:Lcom/lx/launcher8/setting/LockSoundListAct$Linear;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 95
    .local v5, topLine:Landroid/view/View;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    const-string v6, "#dcdcdc"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 97
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v6, 0x11

    if-lt v0, v6, :cond_0

    .line 128
    new-instance v6, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;

    invoke-direct {v6, p0, p0}, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;-><init>(Lcom/lx/launcher8/setting/LockSoundListAct;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/lx/launcher8/setting/LockSoundListAct;->bottomLinear:Lcom/lx/launcher8/setting/LockSoundListAct$Linear;

    .line 129
    iget-object v6, p0, Lcom/lx/launcher8/setting/LockSoundListAct;->bottomLinear:Lcom/lx/launcher8/setting/LockSoundListAct$Linear;

    const v7, 0x7f020139

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->setLeftIcon(I)V

    .line 130
    iget-object v6, p0, Lcom/lx/launcher8/setting/LockSoundListAct;->bottomLinear:Lcom/lx/launcher8/setting/LockSoundListAct$Linear;

    const v7, 0x7f0a023f

    invoke-virtual {p0, v7}, Lcom/lx/launcher8/setting/LockSoundListAct;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->setCenterText(Ljava/lang/String;)V

    .line 131
    iget-object v6, p0, Lcom/lx/launcher8/setting/LockSoundListAct;->bottomLinear:Lcom/lx/launcher8/setting/LockSoundListAct$Linear;

    new-instance v7, Lcom/lx/launcher8/setting/LockSoundListAct$6;

    invoke-direct {v7, p0}, Lcom/lx/launcher8/setting/LockSoundListAct$6;-><init>(Lcom/lx/launcher8/setting/LockSoundListAct;)V

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->setListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v6, p0, Lcom/lx/launcher8/setting/LockSoundListAct;->bottomLinear:Lcom/lx/launcher8/setting/LockSoundListAct$Linear;

    invoke-virtual {v6, v3, v3, v3, v3}, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->setPadding(IIII)V

    .line 146
    iget-object v6, p0, Lcom/lx/launcher8/setting/LockSoundListAct;->bottomLinear:Lcom/lx/launcher8/setting/LockSoundListAct$Linear;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v6, p0, Lcom/lx/launcher8/setting/LockSoundListAct;->list:Landroid/widget/ScrollView;

    invoke-virtual {v6, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 149
    return-void

    .line 100
    :cond_0
    new-instance v6, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;

    invoke-direct {v6, p0, p0}, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;-><init>(Lcom/lx/launcher8/setting/LockSoundListAct;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/lx/launcher8/setting/LockSoundListAct;->linear:Lcom/lx/launcher8/setting/LockSoundListAct$Linear;

    .line 101
    iget-object v6, p0, Lcom/lx/launcher8/setting/LockSoundListAct;->linear:Lcom/lx/launcher8/setting/LockSoundListAct$Linear;

    const v7, 0x7f02013c

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->setLeftIcon(I)V

    .line 102
    iget-object v6, p0, Lcom/lx/launcher8/setting/LockSoundListAct;->linear:Lcom/lx/launcher8/setting/LockSoundListAct$Linear;

    sget-object v7, Lcom/lx/launcher8/util/Utils;->soundNameResources:[I

    aget v7, v7, v0

    invoke-virtual {p0, v7}, Lcom/lx/launcher8/setting/LockSoundListAct;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->setCenterText(Ljava/lang/String;)V

    .line 103
    move v4, v0

    .line 104
    .local v4, position:I
    iget-object v6, p0, Lcom/lx/launcher8/setting/LockSoundListAct;->linear:Lcom/lx/launcher8/setting/LockSoundListAct$Linear;

    new-instance v7, Lcom/lx/launcher8/setting/LockSoundListAct$4;

    invoke-direct {v7, p0, v4}, Lcom/lx/launcher8/setting/LockSoundListAct$4;-><init>(Lcom/lx/launcher8/setting/LockSoundListAct;I)V

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->setLeftIconListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v6, p0, Lcom/lx/launcher8/setting/LockSoundListAct;->linear:Lcom/lx/launcher8/setting/LockSoundListAct$Linear;

    new-instance v7, Lcom/lx/launcher8/setting/LockSoundListAct$5;

    invoke-direct {v7, p0, v4}, Lcom/lx/launcher8/setting/LockSoundListAct$5;-><init>(Lcom/lx/launcher8/setting/LockSoundListAct;I)V

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->setListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v6, p0, Lcom/lx/launcher8/setting/LockSoundListAct;->linear:Lcom/lx/launcher8/setting/LockSoundListAct$Linear;

    invoke-virtual {v6, v3, v3, v3, v3}, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->setPadding(IIII)V

    .line 120
    iget-object v6, p0, Lcom/lx/launcher8/setting/LockSoundListAct;->linear:Lcom/lx/launcher8/setting/LockSoundListAct$Linear;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 123
    .local v1, line:Landroid/view/View;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    const-string v6, "#dcdcdc"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 125
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private playSound(I)V
    .locals 1
    .parameter "resource"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockSoundListAct;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockSoundListAct;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 155
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockSoundListAct;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 157
    :cond_0
    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockSoundListAct;->mp:Landroid/media/MediaPlayer;

    .line 158
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockSoundListAct;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lx/launcher8/setting/LockSoundListAct;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 159
    :cond_1
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 13
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 163
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    .line 165
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 166
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "mime_type"

    aput-object v3, v2, v0

    .line 167
    .local v2, audios:[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/setting/LockSoundListAct;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 168
    .local v6, cursor:Landroid/database/Cursor;
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 169
    .local v8, index:I
    const-string v0, "mime_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 170
    .local v9, index2:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 171
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 172
    .local v11, path:Ljava/lang/String;
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 174
    .local v12, type:Ljava/lang/String;
    const-string v0, "application/ogg"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 176
    .local v10, intent:Landroid/content/Intent;
    const-string v0, "extral_value"

    invoke-virtual {v10, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v10}, Lcom/lx/launcher8/setting/LockSoundListAct;->setResult(ILandroid/content/Intent;)V

    .line 178
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/LockSoundListAct;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
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
    invoke-super/range {p0 .. p3}, Lcom/lx/launcher8/NoSearchAct;->onActivityResult(IILandroid/content/Intent;)V

    .line 188
    return-void

    .line 180
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

    .line 182
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #audios:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #index:I
    .end local v9           #index2:I
    .end local v11           #path:Ljava/lang/String;
    .end local v12           #type:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 183
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    const v0, 0x7f0a0242

    invoke-static {p0, v0}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v1, 0x7f03001b

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/LockSoundListAct;->setContentView(I)V

    .line 39
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/LockSoundListAct;->setResult(I)V

    .line 40
    const v1, 0x7f090006

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/LockSoundListAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 41
    .local v0, title:Landroid/widget/TextView;
    const v1, 0x7f0a0029

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 42
    new-instance v1, Lcom/lx/launcher8/setting/LockSoundListAct$1;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/LockSoundListAct$1;-><init>(Lcom/lx/launcher8/setting/LockSoundListAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v1, 0x7f090090

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/LockSoundListAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a023d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 50
    const v1, 0x7f09007b

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/LockSoundListAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/lx/launcher8/setting/LockSoundListAct;->list:Landroid/widget/ScrollView;

    .line 51
    invoke-direct {p0}, Lcom/lx/launcher8/setting/LockSoundListAct;->createView()V

    .line 53
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/lx/launcher8/setting/LockSoundListAct$2;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/LockSoundListAct$2;-><init>(Lcom/lx/launcher8/setting/LockSoundListAct;)V

    .line 66
    const-wide/16 v3, 0xa

    .line 53
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 67
    return-void
.end method
