.class Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageBrower.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/image/ImageBrower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/image/ImageBrower$ImageAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mBitmapCache:Landroid/util/SparseArray;
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

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/image/Image;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lx/launcher8/image/ImageBrower;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/image/ImageBrower;Landroid/view/LayoutInflater;)V
    .locals 1
    .parameter
    .parameter "inflater"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;->this$0:Lcom/lx/launcher8/image/ImageBrower;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 189
    iput-object p2, p0, Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 190
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;->mBitmapCache:Landroid/util/SparseArray;

    .line 191
    return-void
.end method


# virtual methods
.method public cacheBitmap(ILandroid/graphics/Bitmap;)V
    .locals 2
    .parameter "pos"
    .parameter "bt"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;->mBitmapCache:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 200
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;->mLists:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;->mLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;->mLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 214
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 219
    const/4 v4, 0x0

    .line 221
    .local v4, vh:Lcom/lx/launcher8/image/ImageBrower$ImageAdapter$ViewHolder;
    if-nez p2, :cond_2

    .line 222
    new-instance v4, Lcom/lx/launcher8/image/ImageBrower$ImageAdapter$ViewHolder;

    .end local v4           #vh:Lcom/lx/launcher8/image/ImageBrower$ImageAdapter$ViewHolder;
    invoke-direct {v4, p0}, Lcom/lx/launcher8/image/ImageBrower$ImageAdapter$ViewHolder;-><init>(Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;)V

    .line 223
    .restart local v4       #vh:Lcom/lx/launcher8/image/ImageBrower$ImageAdapter$ViewHolder;
    iget-object v5, p0, Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030034

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 224
    const v5, 0x7f0900e3

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Lcom/lx/launcher8/image/ImageBrower$ImageAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    .line 225
    const v5, 0x7f0900e4

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/lx/launcher8/image/ImageBrower$ImageAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    .line 226
    const v5, 0x7f0900ec

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/lx/launcher8/image/ImageBrower$ImageAdapter$ViewHolder;->summaryTv:Landroid/widget/TextView;

    .line 227
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 236
    :goto_0
    iget-object v5, v4, Lcom/lx/launcher8/image/ImageBrower$ImageAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, bt:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;->mBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 240
    .local v3, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bt:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 241
    .restart local v0       #bt:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v5, v4, Lcom/lx/launcher8/image/ImageBrower$ImageAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 242
    if-nez v0, :cond_1

    .line 243
    iget-object v5, p0, Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;->this$0:Lcom/lx/launcher8/image/ImageBrower;

    #getter for: Lcom/lx/launcher8/image/ImageBrower;->mThreadHandler:Lcom/lx/launcher8/image/ImageBrower$ThreadHandler;
    invoke-static {v5}, Lcom/lx/launcher8/image/ImageBrower;->access$3(Lcom/lx/launcher8/image/ImageBrower;)Lcom/lx/launcher8/image/ImageBrower$ThreadHandler;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/lx/launcher8/image/ImageBrower$ThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 244
    .local v2, imageMsg:Landroid/os/Message;
    iget-object v5, v4, Lcom/lx/launcher8/image/ImageBrower$ImageAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 245
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 246
    iget-object v5, p0, Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;->this$0:Lcom/lx/launcher8/image/ImageBrower;

    #getter for: Lcom/lx/launcher8/image/ImageBrower;->mThreadHandler:Lcom/lx/launcher8/image/ImageBrower$ThreadHandler;
    invoke-static {v5}, Lcom/lx/launcher8/image/ImageBrower;->access$3(Lcom/lx/launcher8/image/ImageBrower;)Lcom/lx/launcher8/image/ImageBrower$ThreadHandler;

    move-result-object v5

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v2, v6, v7}, Lcom/lx/launcher8/image/ImageBrower$ThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 249
    .end local v2           #imageMsg:Landroid/os/Message;
    :cond_1
    iget-object v5, p0, Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;->mLists:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/image/Image;

    .line 250
    .local v1, image:Lcom/lx/launcher8/image/Image;
    iget-object v5, v4, Lcom/lx/launcher8/image/ImageBrower$ImageAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/lx/launcher8/image/Image;->mName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/lx/launcher8/image/Image;->mCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v5, v4, Lcom/lx/launcher8/image/ImageBrower$ImageAdapter$ViewHolder;->summaryTv:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/lx/launcher8/image/Image;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    return-object p2

    .line 229
    .end local v0           #bt:Landroid/graphics/Bitmap;
    .end local v1           #image:Lcom/lx/launcher8/image/Image;
    .end local v3           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #vh:Lcom/lx/launcher8/image/ImageBrower$ImageAdapter$ViewHolder;
    check-cast v4, Lcom/lx/launcher8/image/ImageBrower$ImageAdapter$ViewHolder;

    .restart local v4       #vh:Lcom/lx/launcher8/image/ImageBrower$ImageAdapter$ViewHolder;
    goto :goto_0
.end method

.method public updateData(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/image/Image;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/lx/launcher8/image/Image;>;"
    iput-object p1, p0, Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;->mLists:Ljava/util/List;

    .line 195
    invoke-virtual {p0}, Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;->notifyDataSetChanged()V

    .line 196
    return-void
.end method
