.class public Lcom/lx/launcher8/setting/wp8/GalleryPickAct;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.source "GalleryPickAct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;,
        Lcom/lx/launcher8/setting/wp8/GalleryPickAct$ThreadHandler;
    }
.end annotation


# static fields
.field static final IMG_ADD_ID:I = 0xa

.field static final IMG_CROP_RETURN_DATA:I = 0x2

.field static final IMG_FROM_SDCARD:I = 0x1

.field static final REQUEST_SELECT_PATH:I = 0x3


# instance fields
.field private addBtn:Landroid/widget/Button;

.field private delBtn:Landroid/widget/Button;

.field private folderBtn:Landroid/widget/Button;

.field private mAdapter:Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;

.field mClick:Landroid/view/View$OnClickListener;

.field private mPathTv:Landroid/widget/TextView;

.field private mThread:Landroid/os/HandlerThread;

.field private mThreadHandler:Lcom/lx/launcher8/setting/wp8/GalleryPickAct$ThreadHandler;

.field mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;-><init>()V

    .line 119
    new-instance v0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$1;-><init>(Lcom/lx/launcher8/setting/wp8/GalleryPickAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mClick:Landroid/view/View$OnClickListener;

    .line 240
    new-instance v0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$2;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$2;-><init>(Lcom/lx/launcher8/setting/wp8/GalleryPickAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mUIHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/GalleryPickAct;)Z
    .locals 1
    .parameter

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->isDefaultPath()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/GalleryPickAct;)Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mAdapter:Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/GalleryPickAct;)Lcom/lx/launcher8/setting/wp8/GalleryPickAct$ThreadHandler;
    .locals 1
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mThreadHandler:Lcom/lx/launcher8/setting/wp8/GalleryPickAct$ThreadHandler;

    return-object v0
.end method

.method private createView()Landroid/view/View;
    .locals 6

    .prologue
    .line 62
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030018

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 63
    .local v1, mMainView:Landroid/view/View;
    const v3, 0x7f09007e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 64
    .local v0, gridView:Landroid/widget/GridView;
    new-instance v3, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;

    invoke-direct {v3, p0, p0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;-><init>(Lcom/lx/launcher8/setting/wp8/GalleryPickAct;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mAdapter:Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;

    .line 65
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mAdapter:Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    const v3, 0x7f09007a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mbgColorValue:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 67
    const v3, 0x7f09007f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->addBtn:Landroid/widget/Button;

    .line 68
    const v3, 0x7f090059

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->delBtn:Landroid/widget/Button;

    .line 69
    const v3, 0x7f090055

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->folderBtn:Landroid/widget/Button;

    .line 70
    const v3, 0x7f09007c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 71
    .local v2, titleTv:Landroid/widget/TextView;
    const v3, 0x7f09007d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mPathTv:Landroid/widget/TextView;

    .line 72
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->addBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->delBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->folderBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->addBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 76
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->delBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 77
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 78
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mPathTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 79
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->folderBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 80
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->addBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->getSelectorButton()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 81
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->delBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->getSelectorButton()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 82
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->folderBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->getSelectorButton()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 83
    new-instance v3, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$3;-><init>(Lcom/lx/launcher8/setting/wp8/GalleryPickAct;)V

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 110
    new-instance v3, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$4;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$4;-><init>(Lcom/lx/launcher8/setting/wp8/GalleryPickAct;)V

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    return-object v1
.end method

.method private isDefaultPath()Z
    .locals 1

    .prologue
    .line 218
    invoke-static {}, Lcom/lx/launcher8/util/DynTileManager;->getInstance()Lcom/lx/launcher8/util/DynTileManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lx/launcher8/util/DynTileManager;->initGalleryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lx/launcher8/util/DynTileManager;->isDefaultPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected initData()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mTitleBar:Landroid/widget/TextView;

    const v1, 0x7f0a0008

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    const v0, 0x7f0a00d6

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->createView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 58
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->reFreshPathTv()V

    .line 59
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v8, 0x1

    .line 165
    const/4 v6, -0x1

    if-eq p2, v6, :cond_1

    .line 166
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onActivityResult(IILandroid/content/Intent;)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 171
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 172
    .local v5, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/lx/launcher8/crop/CropImage;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "aspectX"

    const/4 v7, 0x4

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    const-string v6, "aspectY"

    const/4 v7, 0x3

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    const-string v6, "noFaceDetection"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 176
    const-string v6, "mJustCrop"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 177
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 178
    invoke-static {}, Lcom/lx/launcher8/util/DynTileManager;->getInstance()Lcom/lx/launcher8/util/DynTileManager;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/lx/launcher8/util/DynTileManager;->initGalleryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, path:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 180
    invoke-static {v3}, Lcom/lx/launcher8/util/DynTileManager;->isDefaultPath(Ljava/lang/String;)Z

    move-result v2

    .line 181
    .local v2, isDefault:Z
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 182
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v2, :cond_3

    const-string v6, ""

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 183
    .local v4, u:Landroid/net/Uri;
    const-string v6, "output"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 184
    const/4 v6, 0x2

    invoke-virtual {p0, v1, v6}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 182
    .end local v4           #u:Landroid/net/Uri;
    :cond_3
    const-string v6, ".png"

    goto :goto_1

    .line 188
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #isDefault:Z
    .end local v3           #path:Ljava/lang/String;
    .end local v5           #uri:Landroid/net/Uri;
    :pswitch_1
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mAdapter:Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;

    invoke-virtual {v6}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->scanFiles()I

    .line 189
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mAdapter:Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;

    invoke-virtual {v6}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 192
    :pswitch_2
    const-string v6, "dir"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, dir:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->resetPath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 225
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onStart()V

    .line 226
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "gallery"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mThread:Landroid/os/HandlerThread;

    .line 228
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 229
    new-instance v0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$ThreadHandler;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$ThreadHandler;-><init>(Lcom/lx/launcher8/setting/wp8/GalleryPickAct;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mThreadHandler:Lcom/lx/launcher8/setting/wp8/GalleryPickAct$ThreadHandler;

    .line 231
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 235
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onStop()V

    .line 236
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mThread:Landroid/os/HandlerThread;

    .line 238
    return-void
.end method

.method reFreshPathTv()V
    .locals 8

    .prologue
    .line 199
    const v4, 0x7f0a003d

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, temp:Ljava/lang/String;
    invoke-static {}, Lcom/lx/launcher8/util/DynTileManager;->getInstance()Lcom/lx/launcher8/util/DynTileManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/lx/launcher8/util/DynTileManager;->initGalleryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, path:Ljava/lang/String;
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mAdapter:Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;

    invoke-virtual {v4}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->getCount()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 202
    .local v0, count:I
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mPathTv:Landroid/widget/TextView;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    invoke-static {v2}, Lcom/lx/launcher8/util/DynTileManager;->isDefaultPath(Ljava/lang/String;)Z

    move-result v1

    .line 204
    .local v1, isDefault:Z
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->delBtn:Landroid/widget/Button;

    if-eqz v1, :cond_0

    const v4, 0x7f0a0142

    :goto_0
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setText(I)V

    .line 205
    return-void

    .line 204
    :cond_0
    const v4, 0x7f0a018d

    goto :goto_0
.end method

.method resetPath(Ljava/lang/String;)V
    .locals 1
    .parameter "dir"

    .prologue
    .line 208
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    invoke-static {}, Lcom/lx/launcher8/util/DynTileManager;->getInstance()Lcom/lx/launcher8/util/DynTileManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lx/launcher8/util/DynTileManager;->setGalleryPath(Landroid/content/Context;Ljava/lang/String;)Z

    .line 210
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mAdapter:Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->scanFiles()I

    .line 211
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mAdapter:Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->notifyDataSetChanged()V

    .line 213
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->reFreshPathTv()V

    .line 215
    :cond_0
    return-void
.end method
