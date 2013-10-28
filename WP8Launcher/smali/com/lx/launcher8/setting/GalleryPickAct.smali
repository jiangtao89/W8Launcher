.class public Lcom/lx/launcher8/setting/GalleryPickAct;
.super Lcom/lx/launcher8/NoSearchAct;
.source "GalleryPickAct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;,
        Lcom/lx/launcher8/setting/GalleryPickAct$ThreadHandler;
    }
.end annotation


# static fields
.field static final IMG_ADD_ID:I = 0xa

.field static final IMG_CROP_RETURN_DATA:I = 0x2

.field static final IMG_FROM_SDCARD:I = 0x1

.field static final REQUEST_SELECT_PATH:I = 0x3


# instance fields
.field private mAdapter:Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;

.field private mClearTv:Landroid/widget/TextView;

.field mClick:Landroid/view/View$OnClickListener;

.field private mPathTv:Landroid/widget/TextView;

.field private mThread:Landroid/os/HandlerThread;

.field private mThreadHandler:Lcom/lx/launcher8/setting/GalleryPickAct$ThreadHandler;

.field mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;-><init>()V

    .line 124
    new-instance v0, Lcom/lx/launcher8/setting/GalleryPickAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/GalleryPickAct$1;-><init>(Lcom/lx/launcher8/setting/GalleryPickAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/GalleryPickAct;->mClick:Landroid/view/View$OnClickListener;

    .line 225
    new-instance v0, Lcom/lx/launcher8/setting/GalleryPickAct$2;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/GalleryPickAct$2;-><init>(Lcom/lx/launcher8/setting/GalleryPickAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/GalleryPickAct;->mUIHandler:Landroid/os/Handler;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/GalleryPickAct;)Z
    .locals 1
    .parameter

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/lx/launcher8/setting/GalleryPickAct;->isDefaultPath()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/GalleryPickAct;)Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lx/launcher8/setting/GalleryPickAct;->mAdapter:Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/GalleryPickAct;)Lcom/lx/launcher8/setting/GalleryPickAct$ThreadHandler;
    .locals 1
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lcom/lx/launcher8/setting/GalleryPickAct;->mThreadHandler:Lcom/lx/launcher8/setting/GalleryPickAct$ThreadHandler;

    return-object v0
.end method

.method private isDefaultPath()Z
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lcom/lx/launcher8/util/DynTileManager;->getInstance()Lcom/lx/launcher8/util/DynTileManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lx/launcher8/util/DynTileManager;->initGalleryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lx/launcher8/util/DynTileManager;->isDefaultPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v8, 0x1

    .line 173
    const/4 v6, -0x1

    if-eq p2, v6, :cond_1

    .line 174
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/NoSearchAct;->onActivityResult(IILandroid/content/Intent;)V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 179
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 180
    .local v5, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/lx/launcher8/crop/CropImage;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "aspectX"

    const/4 v7, 0x4

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    const-string v6, "aspectY"

    const/4 v7, 0x3

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    const-string v6, "noFaceDetection"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 184
    const-string v6, "mJustCrop"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 185
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 186
    invoke-static {}, Lcom/lx/launcher8/util/DynTileManager;->getInstance()Lcom/lx/launcher8/util/DynTileManager;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/lx/launcher8/util/DynTileManager;->initGalleryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, path:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 188
    invoke-static {v3}, Lcom/lx/launcher8/util/DynTileManager;->isDefaultPath(Ljava/lang/String;)Z

    move-result v2

    .line 189
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

    .line 190
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

    .line 191
    .local v4, u:Landroid/net/Uri;
    const-string v6, "output"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 192
    const/4 v6, 0x2

    invoke-virtual {p0, v1, v6}, Lcom/lx/launcher8/setting/GalleryPickAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 190
    .end local v4           #u:Landroid/net/Uri;
    :cond_3
    const-string v6, ".png"

    goto :goto_1

    .line 196
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #isDefault:Z
    .end local v3           #path:Ljava/lang/String;
    .end local v5           #uri:Landroid/net/Uri;
    :pswitch_1
    iget-object v6, p0, Lcom/lx/launcher8/setting/GalleryPickAct;->mAdapter:Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;

    invoke-virtual {v6}, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->scanFiles()I

    .line 197
    iget-object v6, p0, Lcom/lx/launcher8/setting/GalleryPickAct;->mAdapter:Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;

    invoke-virtual {v6}, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 200
    :pswitch_2
    const-string v6, "dir"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, dir:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/GalleryPickAct;->resetPath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v1, 0x7f030017

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/GalleryPickAct;->setContentView(I)V

    .line 55
    const v1, 0x7f09007e

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/GalleryPickAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 56
    .local v0, gridView:Landroid/widget/GridView;
    new-instance v1, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;

    invoke-direct {v1, p0, p0}, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;-><init>(Lcom/lx/launcher8/setting/GalleryPickAct;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/GalleryPickAct;->mAdapter:Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;

    .line 57
    iget-object v1, p0, Lcom/lx/launcher8/setting/GalleryPickAct;->mAdapter:Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    const v1, 0x7f09007f

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/GalleryPickAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/GalleryPickAct;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v1, 0x7f090055

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/GalleryPickAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/GalleryPickAct;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v1, 0x7f090059

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/GalleryPickAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lx/launcher8/setting/GalleryPickAct;->mClearTv:Landroid/widget/TextView;

    .line 61
    iget-object v1, p0, Lcom/lx/launcher8/setting/GalleryPickAct;->mClearTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lx/launcher8/setting/GalleryPickAct;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v1, 0x7f09007d

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/GalleryPickAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lx/launcher8/setting/GalleryPickAct;->mPathTv:Landroid/widget/TextView;

    .line 63
    new-instance v1, Lcom/lx/launcher8/setting/GalleryPickAct$3;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/GalleryPickAct$3;-><init>(Lcom/lx/launcher8/setting/GalleryPickAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 93
    new-instance v1, Lcom/lx/launcher8/setting/GalleryPickAct$4;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/GalleryPickAct$4;-><init>(Lcom/lx/launcher8/setting/GalleryPickAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 99
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/GalleryPickAct;->reFreshPathTv()V

    .line 100
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 210
    invoke-super {p0}, Lcom/lx/launcher8/NoSearchAct;->onStart()V

    .line 211
    iget-object v0, p0, Lcom/lx/launcher8/setting/GalleryPickAct;->mThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "gallery"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/GalleryPickAct;->mThread:Landroid/os/HandlerThread;

    .line 213
    iget-object v0, p0, Lcom/lx/launcher8/setting/GalleryPickAct;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 214
    new-instance v0, Lcom/lx/launcher8/setting/GalleryPickAct$ThreadHandler;

    iget-object v1, p0, Lcom/lx/launcher8/setting/GalleryPickAct;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lx/launcher8/setting/GalleryPickAct$ThreadHandler;-><init>(Lcom/lx/launcher8/setting/GalleryPickAct;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/GalleryPickAct;->mThreadHandler:Lcom/lx/launcher8/setting/GalleryPickAct$ThreadHandler;

    .line 216
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 220
    invoke-super {p0}, Lcom/lx/launcher8/NoSearchAct;->onStop()V

    .line 221
    iget-object v0, p0, Lcom/lx/launcher8/setting/GalleryPickAct;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/setting/GalleryPickAct;->mThread:Landroid/os/HandlerThread;

    .line 223
    return-void
.end method

.method reFreshPathTv()V
    .locals 8

    .prologue
    .line 103
    const v4, 0x7f0a003d

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/GalleryPickAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, temp:Ljava/lang/String;
    invoke-static {}, Lcom/lx/launcher8/util/DynTileManager;->getInstance()Lcom/lx/launcher8/util/DynTileManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/lx/launcher8/util/DynTileManager;->initGalleryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, path:Ljava/lang/String;
    iget-object v4, p0, Lcom/lx/launcher8/setting/GalleryPickAct;->mAdapter:Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;

    invoke-virtual {v4}, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->getCount()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 106
    .local v0, count:I
    iget-object v4, p0, Lcom/lx/launcher8/setting/GalleryPickAct;->mPathTv:Landroid/widget/TextView;

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

    .line 107
    invoke-static {v2}, Lcom/lx/launcher8/util/DynTileManager;->isDefaultPath(Ljava/lang/String;)Z

    move-result v1

    .line 108
    .local v1, isDefault:Z
    iget-object v5, p0, Lcom/lx/launcher8/setting/GalleryPickAct;->mClearTv:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const v4, 0x7f0a0142

    :goto_0
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    .line 109
    return-void

    .line 108
    :cond_0
    const v4, 0x7f0a018d

    goto :goto_0
.end method

.method resetPath(Ljava/lang/String;)V
    .locals 1
    .parameter "dir"

    .prologue
    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-static {}, Lcom/lx/launcher8/util/DynTileManager;->getInstance()Lcom/lx/launcher8/util/DynTileManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lx/launcher8/util/DynTileManager;->setGalleryPath(Landroid/content/Context;Ljava/lang/String;)Z

    .line 113
    iget-object v0, p0, Lcom/lx/launcher8/setting/GalleryPickAct;->mAdapter:Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->scanFiles()I

    .line 114
    iget-object v0, p0, Lcom/lx/launcher8/setting/GalleryPickAct;->mAdapter:Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->notifyDataSetChanged()V

    .line 116
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/GalleryPickAct;->reFreshPathTv()V

    .line 118
    :cond_0
    return-void
.end method
