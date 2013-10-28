.class public Lcom/app/ads/adapter/AdPicAdapter;
.super Landroid/widget/BaseAdapter;
.source "AdPicAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefRes:I

.field private mHeight:I

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 33
    sget-object v0, Lcom/app/ads/config/Resources;->ad_pic_def:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/app/ads/adapter/AdPicAdapter;-><init>(Landroid/content/Context;III)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 0
    .parameter "context"
    .parameter "width"
    .parameter "height"
    .parameter "defRes"

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/app/ads/adapter/AdPicAdapter;->mContext:Landroid/content/Context;

    .line 38
    iput p2, p0, Lcom/app/ads/adapter/AdPicAdapter;->mWidth:I

    .line 39
    iput p3, p0, Lcom/app/ads/adapter/AdPicAdapter;->mHeight:I

    .line 40
    iput p4, p0, Lcom/app/ads/adapter/AdPicAdapter;->mDefRes:I

    .line 41
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/app/ads/adapter/AdPicAdapter;->isDataEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 45
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/app/ads/adapter/AdPicAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 62
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemLocalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/app/common/config/BasePath;->getCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 78
    if-nez p2, :cond_1

    .line 79
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/app/ads/adapter/AdPicAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 80
    .local v1, iv:Landroid/widget/ImageView;
    iget v3, p0, Lcom/app/ads/adapter/AdPicAdapter;->mWidth:I

    iget v4, p0, Lcom/app/ads/adapter/AdPicAdapter;->mHeight:I

    invoke-static {v3, v4}, Lcom/app/common/utils/ViewHelper;->getGLParam(II)Landroid/widget/Gallery$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 82
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 84
    :goto_0
    iget v3, p0, Lcom/app/ads/adapter/AdPicAdapter;->mDefRes:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    invoke-virtual {p0}, Lcom/app/ads/adapter/AdPicAdapter;->isDataEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 86
    iget-object v3, p0, Lcom/app/ads/adapter/AdPicAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/app/ads/adapter/AdPicAdapter;->getItemLocalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, path:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 88
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 89
    .local v0, bt:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 92
    .end local v0           #bt:Landroid/graphics/Bitmap;
    .end local v2           #path:Ljava/lang/String;
    :cond_0
    return-object v1

    .end local v1           #iv:Landroid/widget/ImageView;
    :cond_1
    move-object v1, p2

    .line 83
    check-cast v1, Landroid/widget/ImageView;

    .restart local v1       #iv:Landroid/widget/ImageView;
    goto :goto_0
.end method

.method isDataEmpty()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/app/ads/adapter/AdPicAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/app/ads/adapter/AdPicAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 50
    :cond_0
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/app/ads/adapter/AdPicAdapter;->mList:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {p0}, Lcom/app/ads/adapter/AdPicAdapter;->notifyDataSetChanged()V

    .line 68
    return-void
.end method
