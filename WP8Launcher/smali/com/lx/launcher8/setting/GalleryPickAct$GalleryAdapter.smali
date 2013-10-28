.class Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;
.super Landroid/widget/BaseAdapter;
.source "GalleryPickAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/GalleryPickAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GalleryAdapter"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mMaps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lx/launcher8/setting/GalleryPickAct;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/setting/GalleryPickAct;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 266
    iput-object p1, p0, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 267
    iput-object p2, p0, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->mContext:Landroid/content/Context;

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->mLists:Ljava/util/ArrayList;

    .line 269
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->mMaps:Landroid/util/SparseArray;

    .line 270
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->scanFiles()I

    .line 271
    return-void
.end method


# virtual methods
.method public cacheBitmap(ILandroid/graphics/Bitmap;)V
    .locals 2
    .parameter "pos"
    .parameter "bt"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->mMaps:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 298
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 313
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 318
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 323
    move-object v1, p2

    check-cast v1, Landroid/widget/ImageView;

    .line 324
    .local v1, iv:Landroid/widget/ImageView;
    const/4 v4, -0x1

    .line 325
    .local v4, oldPos:I
    if-nez v1, :cond_3

    .line 326
    new-instance v1, Landroid/widget/ImageView;

    .end local v1           #iv:Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 327
    .restart local v1       #iv:Landroid/widget/ImageView;
    const/16 v7, 0x50

    const/16 v8, 0x3d

    invoke-static {v7, v8}, Lcom/app/common/utils/ViewHelper;->getALParam(II)Landroid/widget/AbsListView$LayoutParams;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    iget-object v7, p0, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->mContext:Landroid/content/Context;

    const/high16 v8, 0x4000

    invoke-static {v7, v8}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v7

    float-to-int v5, v7

    .line 329
    .local v5, padding:I
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 330
    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 331
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 332
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 337
    .end local v5           #padding:I
    :cond_0
    :goto_0
    if-lez v4, :cond_1

    .line 338
    iget-object v7, p0, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;

    #getter for: Lcom/lx/launcher8/setting/GalleryPickAct;->mThreadHandler:Lcom/lx/launcher8/setting/GalleryPickAct$ThreadHandler;
    invoke-static {v7}, Lcom/lx/launcher8/setting/GalleryPickAct;->access$2(Lcom/lx/launcher8/setting/GalleryPickAct;)Lcom/lx/launcher8/setting/GalleryPickAct$ThreadHandler;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/lx/launcher8/setting/GalleryPickAct$ThreadHandler;->removeMessages(I)V

    .line 339
    :cond_1
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 341
    iget-object v7, p0, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne p1, v7, :cond_4

    .line 342
    const v7, 0x7f02000b

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 343
    const/16 v7, 0xa

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setId(I)V

    .line 360
    :cond_2
    :goto_1
    return-object v1

    .line 334
    :cond_3
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 335
    .local v3, old:Ljava/lang/Integer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    .line 349
    .end local v3           #old:Ljava/lang/Integer;
    :cond_4
    iget-object v7, p0, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->mMaps:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/SoftReference;

    .line 350
    .local v6, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    .line 351
    .local v0, bt:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bt:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 352
    .restart local v0       #bt:Landroid/graphics/Bitmap;
    :cond_5
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 353
    if-nez v0, :cond_2

    .line 354
    iget-object v7, p0, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;

    #getter for: Lcom/lx/launcher8/setting/GalleryPickAct;->mThreadHandler:Lcom/lx/launcher8/setting/GalleryPickAct$ThreadHandler;
    invoke-static {v7}, Lcom/lx/launcher8/setting/GalleryPickAct;->access$2(Lcom/lx/launcher8/setting/GalleryPickAct;)Lcom/lx/launcher8/setting/GalleryPickAct$ThreadHandler;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/lx/launcher8/setting/GalleryPickAct$ThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 355
    .local v2, msg:Landroid/os/Message;
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 356
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 357
    iget-object v7, p0, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->this$0:Lcom/lx/launcher8/setting/GalleryPickAct;

    #getter for: Lcom/lx/launcher8/setting/GalleryPickAct;->mThreadHandler:Lcom/lx/launcher8/setting/GalleryPickAct$ThreadHandler;
    invoke-static {v7}, Lcom/lx/launcher8/setting/GalleryPickAct;->access$2(Lcom/lx/launcher8/setting/GalleryPickAct;)Lcom/lx/launcher8/setting/GalleryPickAct$ThreadHandler;

    move-result-object v7

    const-wide/16 v8, 0x1f4

    invoke-virtual {v7, v2, v8, v9}, Lcom/lx/launcher8/setting/GalleryPickAct$ThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->mMaps:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 302
    iget-object v0, p0, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 303
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->notifyDataSetChanged()V

    .line 304
    return-void
.end method

.method public scanFiles()I
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 274
    iget-object v7, p0, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 275
    iget-object v7, p0, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->mMaps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    .line 276
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v6

    .line 278
    :cond_1
    invoke-static {}, Lcom/lx/launcher8/util/DynTileManager;->getInstance()Lcom/lx/launcher8/util/DynTileManager;

    move-result-object v7

    iget-object v8, p0, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/lx/launcher8/util/DynTileManager;->initGalleryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 279
    .local v5, path:Ljava/lang/String;
    invoke-static {v5}, Lcom/lx/launcher8/util/DynTileManager;->isDefaultPath(Ljava/lang/String;)Z

    move-result v0

    .line 280
    .local v0, def:Z
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 282
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 283
    .local v4, files:[Ljava/io/File;
    if-eqz v4, :cond_0

    array-length v7, v4

    if-eqz v7, :cond_0

    .line 285
    array-length v7, v4

    :goto_1
    if-lt v6, v7, :cond_2

    .line 293
    iget-object v6, p0, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto :goto_0

    .line 285
    :cond_2
    aget-object v1, v4, v6

    .line 286
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v8

    if-nez v8, :cond_4

    .line 285
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 288
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, fileName:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/lx/launcher8/util/DynTileManager;->isImgFile(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 290
    iget-object v8, p0, Lcom/lx/launcher8/setting/GalleryPickAct$GalleryAdapter;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
