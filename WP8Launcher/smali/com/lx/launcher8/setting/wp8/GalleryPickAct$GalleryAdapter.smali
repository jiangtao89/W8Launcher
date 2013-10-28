.class Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;
.super Landroid/widget/BaseAdapter;
.source "GalleryPickAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/GalleryPickAct;
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

.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/setting/wp8/GalleryPickAct;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 282
    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->mContext:Landroid/content/Context;

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->mLists:Ljava/util/ArrayList;

    .line 284
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->mMaps:Landroid/util/SparseArray;

    .line 285
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->scanFiles()I

    .line 286
    return-void
.end method


# virtual methods
.method public cacheBitmap(ILandroid/graphics/Bitmap;)V
    .locals 2
    .parameter "pos"
    .parameter "bt"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->mMaps:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 312
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 327
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 332
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 337
    move-object v1, p2

    check-cast v1, Landroid/widget/ImageView;

    .line 338
    .local v1, iv:Landroid/widget/ImageView;
    const/4 v4, -0x1

    .line 339
    .local v4, oldPos:I
    if-nez v1, :cond_3

    .line 340
    new-instance v1, Landroid/widget/ImageView;

    .end local v1           #iv:Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 341
    .restart local v1       #iv:Landroid/widget/ImageView;
    const/16 v7, 0x50

    const/16 v8, 0x3d

    invoke-static {v7, v8}, Lcom/app/common/utils/ViewHelper;->getALParam(II)Landroid/widget/AbsListView$LayoutParams;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->mContext:Landroid/content/Context;

    const/high16 v8, 0x4000

    invoke-static {v7, v8}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v7

    float-to-int v5, v7

    .line 343
    .local v5, padding:I
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 344
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    invoke-virtual {v7}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->getSecondBgColor()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 345
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 346
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 351
    .end local v5           #padding:I
    :cond_0
    :goto_0
    if-lez v4, :cond_1

    .line 352
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mThreadHandler:Lcom/lx/launcher8/setting/wp8/GalleryPickAct$ThreadHandler;
    invoke-static {v7}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->access$2(Lcom/lx/launcher8/setting/wp8/GalleryPickAct;)Lcom/lx/launcher8/setting/wp8/GalleryPickAct$ThreadHandler;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$ThreadHandler;->removeMessages(I)V

    .line 353
    :cond_1
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 355
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne p1, v7, :cond_4

    .line 356
    const v7, 0x7f02000b

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 357
    const/16 v7, 0xa

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setId(I)V

    .line 374
    :cond_2
    :goto_1
    return-object v1

    .line 348
    :cond_3
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 349
    .local v3, old:Ljava/lang/Integer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    .line 363
    .end local v3           #old:Ljava/lang/Integer;
    :cond_4
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->mMaps:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/SoftReference;

    .line 364
    .local v6, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    .line 365
    .local v0, bt:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bt:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 366
    .restart local v0       #bt:Landroid/graphics/Bitmap;
    :cond_5
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 367
    if-nez v0, :cond_2

    .line 368
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mThreadHandler:Lcom/lx/launcher8/setting/wp8/GalleryPickAct$ThreadHandler;
    invoke-static {v7}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->access$2(Lcom/lx/launcher8/setting/wp8/GalleryPickAct;)Lcom/lx/launcher8/setting/wp8/GalleryPickAct$ThreadHandler;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$ThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 369
    .local v2, msg:Landroid/os/Message;
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 370
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 371
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/GalleryPickAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->mThreadHandler:Lcom/lx/launcher8/setting/wp8/GalleryPickAct$ThreadHandler;
    invoke-static {v7}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct;->access$2(Lcom/lx/launcher8/setting/wp8/GalleryPickAct;)Lcom/lx/launcher8/setting/wp8/GalleryPickAct$ThreadHandler;

    move-result-object v7

    const-wide/16 v8, 0x1f4

    invoke-virtual {v7, v2, v8, v9}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$ThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->mMaps:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 316
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 317
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->notifyDataSetChanged()V

    .line 318
    return-void
.end method

.method public scanFiles()I
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 289
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 290
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->mMaps:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 291
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v5

    .line 293
    :cond_1
    invoke-static {}, Lcom/lx/launcher8/util/DynTileManager;->getInstance()Lcom/lx/launcher8/util/DynTileManager;

    move-result-object v6

    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/lx/launcher8/util/DynTileManager;->initGalleryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, path:Ljava/lang/String;
    invoke-static {v4}, Lcom/lx/launcher8/util/DynTileManager;->isDefaultPath(Ljava/lang/String;)Z

    move-result v0

    .line 295
    .local v0, def:Z
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 297
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 298
    .local v3, files:[Ljava/io/File;
    if-eqz v3, :cond_0

    array-length v6, v3

    if-eqz v6, :cond_0

    .line 300
    array-length v6, v3

    :goto_1
    if-lt v5, v6, :cond_2

    .line 307
    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_0

    .line 300
    :cond_2
    aget-object v1, v3, v5

    .line 301
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v7

    if-nez v7, :cond_4

    .line 300
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 303
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/lx/launcher8/util/DynTileManager;->isImgFile(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 304
    iget-object v7, p0, Lcom/lx/launcher8/setting/wp8/GalleryPickAct$GalleryAdapter;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
