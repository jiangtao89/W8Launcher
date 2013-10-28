.class public Lcom/lx/launcher8/setting/IconPickAct;
.super Lcom/lx/launcher8/setting/PageSetAct;
.source "IconPickAct.java"


# static fields
.field static final IMG_CROP_RETURN_DATA:I = 0x2

.field static final IMG_FROM_SDCARD:I = 0x1


# instance fields
.field private mIconAdapter:Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;

.field private mItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPicAdapter:Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/lx/launcher8/setting/PageSetAct;-><init>()V

    .line 72
    new-instance v0, Lcom/lx/launcher8/setting/IconPickAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/IconPickAct$1;-><init>(Lcom/lx/launcher8/setting/IconPickAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/IconPickAct;->mItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/IconPickAct;Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/lx/launcher8/setting/IconPickAct;->mIconAdapter:Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;

    return-void
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/IconPickAct;)Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lx/launcher8/setting/IconPickAct;->mIconAdapter:Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/IconPickAct;Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/lx/launcher8/setting/IconPickAct;->mPicAdapter:Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;

    return-void
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/IconPickAct;)Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lx/launcher8/setting/IconPickAct;->mPicAdapter:Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/setting/IconPickAct;[I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/IconPickAct;->computeCropSize([I)V

    return-void
.end method

.method private computeCropSize([I)V
    .locals 8
    .parameter "size"

    .prologue
    const/4 v7, 0x2

    .line 142
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/IconPickAct;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 143
    .local v2, metrics:Landroid/util/DisplayMetrics;
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 144
    .local v4, width:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/IconPickAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 145
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "aspectX"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 146
    .local v3, w:I
    const-string v5, "aspectY"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 147
    .local v0, h:I
    const/4 v5, 0x0

    mul-int v6, v4, v3

    div-int/lit8 v6, v6, 0x4

    aput v6, p1, v5

    .line 148
    const/4 v5, 0x1

    mul-int v6, v4, v0

    div-int/lit8 v6, v6, 0x4

    aput v6, p1, v5

    .line 149
    return-void
.end method

.method private createGrid(I)Landroid/widget/GridView;
    .locals 4
    .parameter "column"

    .prologue
    .line 169
    const/high16 v3, 0x40c0

    invoke-static {p0, v3}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v3

    float-to-int v0, v3

    .line 170
    .local v0, hGap:I
    const/high16 v3, 0x4140

    invoke-static {p0, v3}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v3

    float-to-int v1, v3

    .line 171
    .local v1, vGap:I
    new-instance v2, Landroid/widget/GridView;

    invoke-direct {v2, p0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 172
    .local v2, view:Landroid/widget/GridView;
    invoke-virtual {v2, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 173
    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 174
    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 175
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 176
    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 177
    return-object v2
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 85
    if-eq p2, v9, :cond_0

    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/setting/PageSetAct;->onActivityResult(IILandroid/content/Intent;)V

    .line 125
    :goto_0
    return-void

    .line 89
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 91
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 92
    .local v5, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/lx/launcher8/crop/CropImage;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v2, intent:Landroid/content/Intent;
    new-array v4, v10, [I

    .line 94
    .local v4, size:[I
    invoke-direct {p0, v4}, Lcom/lx/launcher8/setting/IconPickAct;->computeCropSize([I)V

    .line 95
    const-string v6, "outputX"

    const/4 v7, 0x0

    aget v7, v4, v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    const-string v6, "outputY"

    aget v7, v4, v8

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    const-string v6, "return-data"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    const-string v6, "noFaceDetection"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    const-string v6, "mJustCrop"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 100
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v2, v10}, Lcom/lx/launcher8/setting/IconPickAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 107
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #size:[I
    .end local v5           #uri:Landroid/net/Uri;
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Lcom/lx/launcher8/util/Utils;->getIntentExtra(Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 108
    .local v3, newbmp:Landroid/graphics/Bitmap;
    if-nez v3, :cond_1

    .line 109
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 111
    .restart local v5       #uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/IconPickAct;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 117
    .end local v5           #uri:Landroid/net/Uri;
    :cond_1
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 118
    .restart local v2       #intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v0, b:Landroid/os/Bundle;
    invoke-static {v0, v3}, Lcom/lx/launcher8/util/Utils;->putIntentExtra(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    .line 120
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0, v9, v2}, Lcom/lx/launcher8/setting/IconPickAct;->setResult(ILandroid/content/Intent;)V

    .line 122
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/IconPickAct;->finish()V

    goto :goto_0

    .line 112
    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v5       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 113
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "data"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #newbmp:Landroid/graphics/Bitmap;
    check-cast v3, Landroid/graphics/Bitmap;

    .restart local v3       #newbmp:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Lcom/lx/launcher8/setting/PageSetAct;->onDestroy()V

    .line 157
    invoke-static {}, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->distory()V

    .line 158
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 162
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/IconPickAct;->setResult(I)V

    .line 165
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/setting/PageSetAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onSeekChange(Lcom/lx/launcher8/view/SeekButton;Z)V
    .locals 0
    .parameter "v"
    .parameter "enable"

    .prologue
    .line 152
    return-void
.end method

.method protected setupViews()V
    .locals 6

    .prologue
    const/4 v3, 0x4

    .line 30
    invoke-direct {p0, v3}, Lcom/lx/launcher8/setting/IconPickAct;->createGrid(I)Landroid/widget/GridView;

    move-result-object v1

    .line 31
    .local v1, listView1:Landroid/widget/GridView;
    invoke-direct {p0, v3}, Lcom/lx/launcher8/setting/IconPickAct;->createGrid(I)Landroid/widget/GridView;

    move-result-object v2

    .line 32
    .local v2, listView2:Landroid/widget/GridView;
    iget-object v3, p0, Lcom/lx/launcher8/setting/IconPickAct;->mItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 33
    iget-object v3, p0, Lcom/lx/launcher8/setting/IconPickAct;->mItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 35
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/IconPickAct;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/lx/launcher8/util/Utils;->getIntentExtra(Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 37
    .local v0, bt:Landroid/graphics/Bitmap;
    new-instance v3, Lcom/lx/launcher8/setting/IconPickAct$2;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/lx/launcher8/setting/IconPickAct$2;-><init>(Lcom/lx/launcher8/setting/IconPickAct;Landroid/graphics/Bitmap;Landroid/widget/GridView;Landroid/widget/GridView;)V

    .line 46
    const-wide/16 v4, 0x64

    .line 37
    invoke-virtual {v1, v3, v4, v5}, Landroid/widget/GridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    const v3, 0x7f0900c0

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/IconPickAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 48
    const v3, 0x7f0a0070

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/IconPickAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/lx/launcher8/setting/IconPickAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 49
    const v3, 0x7f0a0071

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/IconPickAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/lx/launcher8/setting/IconPickAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 51
    const v3, 0x7f0900c1

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/IconPickAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/lx/launcher8/setting/IconPickAct$3;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/setting/IconPickAct$3;-><init>(Lcom/lx/launcher8/setting/IconPickAct;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method
