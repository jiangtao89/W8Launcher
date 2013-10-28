.class public Lcom/lx/launcher8/setting/wp8/IconPickAct;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
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
    .line 26
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;-><init>()V

    .line 86
    new-instance v0, Lcom/lx/launcher8/setting/wp8/IconPickAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/IconPickAct$1;-><init>(Lcom/lx/launcher8/setting/wp8/IconPickAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct;->mItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/IconPickAct;Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct;->mIconAdapter:Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;

    return-void
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/IconPickAct;)Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct;->mIconAdapter:Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/IconPickAct;)Lcom/lx/launcher8/cfg/DeskSetting;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/wp8/IconPickAct;Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct;->mPicAdapter:Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;

    return-void
.end method

.method static synthetic access$4(Lcom/lx/launcher8/setting/wp8/IconPickAct;)Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct;->mPicAdapter:Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/setting/wp8/IconPickAct;[I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/wp8/IconPickAct;->computeCropSize([I)V

    return-void
.end method

.method private computeCropSize([I)V
    .locals 8
    .parameter "size"

    .prologue
    const/4 v7, 0x2

    .line 156
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/IconPickAct;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 157
    .local v2, metrics:Landroid/util/DisplayMetrics;
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 158
    .local v4, width:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/IconPickAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 159
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "aspectX"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 160
    .local v3, w:I
    const-string v5, "aspectY"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 161
    .local v0, h:I
    const/4 v5, 0x0

    mul-int v6, v4, v3

    div-int/lit8 v6, v6, 0x4

    aput v6, p1, v5

    .line 162
    const/4 v5, 0x1

    mul-int v6, v4, v0

    div-int/lit8 v6, v6, 0x4

    aput v6, p1, v5

    .line 163
    return-void
.end method

.method private createGrid(I)Landroid/widget/GridView;
    .locals 4
    .parameter "column"

    .prologue
    .line 180
    const/high16 v3, 0x40c0

    invoke-static {p0, v3}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v3

    float-to-int v0, v3

    .line 181
    .local v0, hGap:I
    const/high16 v3, 0x4140

    invoke-static {p0, v3}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v3

    float-to-int v1, v3

    .line 182
    .local v1, vGap:I
    new-instance v2, Landroid/widget/GridView;

    invoke-direct {v2, p0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 183
    .local v2, view:Landroid/widget/GridView;
    invoke-virtual {v2, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 184
    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 185
    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 186
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 187
    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 188
    return-object v2
.end method


# virtual methods
.method protected initData()V
    .locals 10

    .prologue
    const/16 v9, 0xc

    const/4 v8, 0x6

    const/4 v7, 0x4

    .line 33
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct;->mTitleBar:Landroid/widget/TextView;

    const v6, 0x7f0a0050

    invoke-virtual {p0, v6}, Lcom/lx/launcher8/setting/wp8/IconPickAct;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-direct {p0, v7}, Lcom/lx/launcher8/setting/wp8/IconPickAct;->createGrid(I)Landroid/widget/GridView;

    move-result-object v1

    .line 36
    .local v1, listView1:Landroid/widget/GridView;
    invoke-direct {p0, v7}, Lcom/lx/launcher8/setting/wp8/IconPickAct;->createGrid(I)Landroid/widget/GridView;

    move-result-object v2

    .line 37
    .local v2, listView2:Landroid/widget/GridView;
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct;->mItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 38
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct;->mItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 40
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/IconPickAct;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-static {v5}, Lcom/lx/launcher8/util/Utils;->getIntentExtra(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 42
    .local v0, bt:Landroid/graphics/Bitmap;
    new-instance v5, Lcom/lx/launcher8/setting/wp8/IconPickAct$2;

    invoke-direct {v5, p0, v0, v1, v2}, Lcom/lx/launcher8/setting/wp8/IconPickAct$2;-><init>(Lcom/lx/launcher8/setting/wp8/IconPickAct;Landroid/graphics/Bitmap;Landroid/widget/GridView;Landroid/widget/GridView;)V

    .line 51
    const-wide/16 v6, 0x64

    .line 42
    invoke-virtual {v1, v5, v6, v7}, Landroid/widget/GridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    const v5, 0x7f0a0070

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/wp8/IconPickAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v1}, Lcom/lx/launcher8/setting/wp8/IconPickAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 53
    const v5, 0x7f0a0071

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/wp8/IconPickAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v2}, Lcom/lx/launcher8/setting/wp8/IconPickAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 55
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct;->bottomContainer:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 56
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 57
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 58
    .local v4, save:Landroid/widget/Button;
    const v5, 0x7f0a00b0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 59
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/IconPickAct;->getSelectorButton()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 60
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/IconPickAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 61
    const/high16 v5, 0x4190

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextSize(F)V

    .line 62
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 63
    .local v3, rl:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v9, v8, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 64
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    new-instance v5, Lcom/lx/launcher8/setting/wp8/IconPickAct$3;

    invoke-direct {v5, p0}, Lcom/lx/launcher8/setting/wp8/IconPickAct$3;-><init>(Lcom/lx/launcher8/setting/wp8/IconPickAct;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 99
    if-eq p2, v9, :cond_0

    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onActivityResult(IILandroid/content/Intent;)V

    .line 139
    :goto_0
    return-void

    .line 103
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 105
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 106
    .local v5, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/lx/launcher8/crop/CropImage;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v2, intent:Landroid/content/Intent;
    new-array v4, v10, [I

    .line 108
    .local v4, size:[I
    invoke-direct {p0, v4}, Lcom/lx/launcher8/setting/wp8/IconPickAct;->computeCropSize([I)V

    .line 109
    const-string v6, "outputX"

    const/4 v7, 0x0

    aget v7, v4, v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    const-string v6, "outputY"

    aget v7, v4, v8

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    const-string v6, "return-data"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 112
    const-string v6, "noFaceDetection"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    const-string v6, "mJustCrop"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v2, v10}, Lcom/lx/launcher8/setting/wp8/IconPickAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 121
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #size:[I
    .end local v5           #uri:Landroid/net/Uri;
    :pswitch_1
    invoke-static {p3}, Lcom/lx/launcher8/util/Utils;->getIntentExtra(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 122
    .local v3, newbmp:Landroid/graphics/Bitmap;
    if-nez v3, :cond_1

    .line 123
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 125
    .restart local v5       #uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/IconPickAct;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 131
    .end local v5           #uri:Landroid/net/Uri;
    :cond_1
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 132
    .restart local v2       #intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 133
    .local v0, b:Landroid/os/Bundle;
    invoke-static {v0, v3}, Lcom/lx/launcher8/util/Utils;->putIntentExtra(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    .line 134
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v9, v2}, Lcom/lx/launcher8/setting/wp8/IconPickAct;->setResult(ILandroid/content/Intent;)V

    .line 136
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/IconPickAct;->finish()V

    goto :goto_0

    .line 126
    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v5       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 127
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "data"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #newbmp:Landroid/graphics/Bitmap;
    check-cast v3, Landroid/graphics/Bitmap;

    .restart local v3       #newbmp:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 167
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onDestroy()V

    .line 168
    invoke-static {}, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->distory()V

    .line 169
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 173
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/IconPickAct;->setResult(I)V

    .line 176
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
