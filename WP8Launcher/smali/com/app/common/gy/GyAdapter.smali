.class public abstract Lcom/app/common/gy/GyAdapter;
.super Landroid/widget/BaseAdapter;
.source "GyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/app/common/bll/BllXmlPull;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private mBitmapAimHeight:I

.field private mBitmapAimWidth:I

.field protected mBll:Lcom/app/common/bll/BllXmlPull;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field mImgSaver:Lcom/app/common/net/UImageSever;

.field protected mIsImgToFileCache:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/app/common/bll/BllXmlPull;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TE;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lcom/app/common/gy/GyAdapter;,"Lcom/app/common/gy/GyAdapter<TE;>;"
    .local p2, bll:Lcom/app/common/bll/BllXmlPull;,"TE;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/app/common/gy/GyAdapter;-><init>(Landroid/content/Context;Lcom/app/common/bll/BllXmlPull;Z)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/app/common/bll/BllXmlPull;Z)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "isImgToFileCache"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TE;Z)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/app/common/gy/GyAdapter;,"Lcom/app/common/gy/GyAdapter<TE;>;"
    .local p2, bll:Lcom/app/common/bll/BllXmlPull;,"TE;"
    const/16 v1, 0x48

    .line 50
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/app/common/gy/GyAdapter;->mIsImgToFileCache:Z

    .line 34
    iput v1, p0, Lcom/app/common/gy/GyAdapter;->mBitmapAimWidth:I

    .line 35
    iput v1, p0, Lcom/app/common/gy/GyAdapter;->mBitmapAimHeight:I

    .line 51
    iput-object p1, p0, Lcom/app/common/gy/GyAdapter;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/app/common/gy/GyAdapter;->mBll:Lcom/app/common/bll/BllXmlPull;

    .line 54
    iput-boolean p3, p0, Lcom/app/common/gy/GyAdapter;->mIsImgToFileCache:Z

    .line 55
    return-void
.end method

.method private loadImageToFile(II)V
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 163
    .local p0, this:Lcom/app/common/gy/GyAdapter;,"Lcom/app/common/gy/GyAdapter<TE;>;"
    invoke-virtual {p0}, Lcom/app/common/gy/GyAdapter;->getCount()I

    move-result v1

    if-lt v1, p2, :cond_0

    if-gt p2, p1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/app/common/gy/GyAdapter;->getNeedLoadInfos(II)[[Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, tmp:[[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 168
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {p0, v1, v2}, Lcom/app/common/gy/GyAdapter;->startLoadImg([Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract addBll(Lcom/app/common/bll/BllXmlPull;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method public abstract clearBll()V
.end method

.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "position"

    .prologue
    .local p0, this:Lcom/app/common/gy/GyAdapter;,"Lcom/app/common/gy/GyAdapter<TE;>;"
    const/4 v2, 0x0

    .line 126
    iget-boolean v3, p0, Lcom/app/common/gy/GyAdapter;->mIsImgToFileCache:Z

    if-nez v3, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-object v2

    .line 127
    :cond_1
    invoke-virtual {p0, p1}, Lcom/app/common/gy/GyAdapter;->getItemImgLocalPath(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, absPath:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 129
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 131
    iget v2, p0, Lcom/app/common/gy/GyAdapter;->mBitmapAimWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/app/common/gy/GyAdapter;->mBitmapAimHeight:I

    int-to-float v3, v3

    invoke-static {v0, v2, v3}, Lcom/app/common/utils/UBitmap;->getThumbnailBitmap(Ljava/lang/String;FF)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method public getBll()Lcom/app/common/bll/BllXmlPull;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, this:Lcom/app/common/gy/GyAdapter;,"Lcom/app/common/gy/GyAdapter<TE;>;"
    iget-object v0, p0, Lcom/app/common/gy/GyAdapter;->mBll:Lcom/app/common/bll/BllXmlPull;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 83
    .local p0, this:Lcom/app/common/gy/GyAdapter;,"Lcom/app/common/gy/GyAdapter<TE;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 88
    .local p0, this:Lcom/app/common/gy/GyAdapter;,"Lcom/app/common/gy/GyAdapter<TE;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemImgLocalPath(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 116
    .local p0, this:Lcom/app/common/gy/GyAdapter;,"Lcom/app/common/gy/GyAdapter<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemImgUrl(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 105
    .local p0, this:Lcom/app/common/gy/GyAdapter;,"Lcom/app/common/gy/GyAdapter<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getNeedLoadInfos(II)[[Ljava/lang/String;
    .locals 7
    .parameter "start"
    .parameter "end"

    .prologue
    .line 177
    .local p0, this:Lcom/app/common/gy/GyAdapter;,"Lcom/app/common/gy/GyAdapter<TE;>;"
    sub-int v2, p2, p1

    .line 178
    .local v2, size:I
    new-array v4, v2, [Ljava/lang/String;

    .line 179
    .local v4, urlArray:[Ljava/lang/String;
    new-array v1, v2, [Ljava/lang/String;

    .line 180
    .local v1, pathArray:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 181
    .local v3, sumNeedToLoad:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 188
    if-gtz v3, :cond_2

    .line 189
    const/4 v5, 0x0

    .line 190
    :goto_1
    return-object v5

    .line 182
    :cond_0
    add-int v5, p1, v0

    invoke-virtual {p0, v5}, Lcom/app/common/gy/GyAdapter;->getItemImgLocalPath(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v0

    .line 183
    new-instance v5, Ljava/io/File;

    aget-object v6, v1, v0

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 184
    add-int v5, p1, v0

    invoke-virtual {p0, v5}, Lcom/app/common/gy/GyAdapter;->getItemImgUrl(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 185
    add-int/lit8 v3, v3, 0x1

    .line 181
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_2
    const/4 v5, 0x2

    new-array v5, v5, [[Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    goto :goto_1
.end method

.method public hasNextPage()Z
    .locals 1

    .prologue
    .line 73
    .local p0, this:Lcom/app/common/gy/GyAdapter;,"Lcom/app/common/gy/GyAdapter<TE;>;"
    iget-object v0, p0, Lcom/app/common/gy/GyAdapter;->mBll:Lcom/app/common/bll/BllXmlPull;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/app/common/gy/GyAdapter;->mBll:Lcom/app/common/bll/BllXmlPull;

    iget-object v0, v0, Lcom/app/common/bll/BllXmlPull;->mPage:Lcom/app/common/bll/CPage;

    if-nez v0, :cond_1

    .line 74
    :cond_0
    const/4 v0, 0x0

    .line 75
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/app/common/gy/GyAdapter;->mBll:Lcom/app/common/bll/BllXmlPull;

    iget-object v0, v0, Lcom/app/common/bll/BllXmlPull;->mPage:Lcom/app/common/bll/CPage;

    invoke-virtual {v0}, Lcom/app/common/bll/CPage;->getIsnextpage()Z

    move-result v0

    goto :goto_0
.end method

.method public isImgToFileCache()Z
    .locals 1

    .prologue
    .line 224
    .local p0, this:Lcom/app/common/gy/GyAdapter;,"Lcom/app/common/gy/GyAdapter<TE;>;"
    iget-boolean v0, p0, Lcom/app/common/gy/GyAdapter;->mIsImgToFileCache:Z

    return v0
.end method

.method public loadImage(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 140
    .local p0, this:Lcom/app/common/gy/GyAdapter;,"Lcom/app/common/gy/GyAdapter<TE;>;"
    iget-boolean v0, p0, Lcom/app/common/gy/GyAdapter;->mIsImgToFileCache:Z

    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/app/common/gy/GyAdapter;->loadImageToFile(II)V

    .line 143
    :cond_0
    return-void
.end method

.method public notifyDataSetChanged(I)V
    .locals 0
    .parameter "location"

    .prologue
    .line 209
    .local p0, this:Lcom/app/common/gy/GyAdapter;,"Lcom/app/common/gy/GyAdapter<TE;>;"
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 210
    return-void
.end method

.method public setBitmapAimRect(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 219
    .local p0, this:Lcom/app/common/gy/GyAdapter;,"Lcom/app/common/gy/GyAdapter<TE;>;"
    iput p1, p0, Lcom/app/common/gy/GyAdapter;->mBitmapAimWidth:I

    .line 220
    iput p2, p0, Lcom/app/common/gy/GyAdapter;->mBitmapAimHeight:I

    .line 221
    return-void
.end method

.method public setImgToFileCache(Z)V
    .locals 0
    .parameter "imgToFileCache"

    .prologue
    .line 228
    .local p0, this:Lcom/app/common/gy/GyAdapter;,"Lcom/app/common/gy/GyAdapter<TE;>;"
    iput-boolean p1, p0, Lcom/app/common/gy/GyAdapter;->mIsImgToFileCache:Z

    .line 229
    return-void
.end method

.method startLoadImg([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "urlArray"
    .parameter "pathArray"

    .prologue
    .line 194
    .local p0, this:Lcom/app/common/gy/GyAdapter;,"Lcom/app/common/gy/GyAdapter<TE;>;"
    new-instance v0, Lcom/app/common/net/UImageSever;

    iget-object v1, p0, Lcom/app/common/gy/GyAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/app/common/net/UImageSever;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/app/common/gy/GyAdapter;->mImgSaver:Lcom/app/common/net/UImageSever;

    .line 195
    iget-object v0, p0, Lcom/app/common/gy/GyAdapter;->mImgSaver:Lcom/app/common/net/UImageSever;

    new-instance v1, Lcom/app/common/gy/GyAdapter$1;

    invoke-direct {v1, p0}, Lcom/app/common/gy/GyAdapter$1;-><init>(Lcom/app/common/gy/GyAdapter;)V

    invoke-virtual {v0, v1}, Lcom/app/common/net/UImageSever;->setOnLoadedListener(Lcom/app/common/net/UImageSever$LoadedListener;)V

    .line 201
    iget-object v0, p0, Lcom/app/common/gy/GyAdapter;->mImgSaver:Lcom/app/common/net/UImageSever;

    invoke-virtual {v0}, Lcom/app/common/net/UImageSever;->start()V

    .line 202
    return-void
.end method

.method public stopLoadImg()V
    .locals 1

    .prologue
    .line 149
    .local p0, this:Lcom/app/common/gy/GyAdapter;,"Lcom/app/common/gy/GyAdapter<TE;>;"
    iget-object v0, p0, Lcom/app/common/gy/GyAdapter;->mImgSaver:Lcom/app/common/net/UImageSever;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/app/common/gy/GyAdapter;->mImgSaver:Lcom/app/common/net/UImageSever;

    invoke-virtual {v0}, Lcom/app/common/net/UImageSever;->stop()V

    .line 152
    :cond_0
    return-void
.end method
