.class public Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;
.super Landroid/widget/BaseAdapter;
.source "AssetPicAdapter.java"


# static fields
.field private static final mIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private column:I

.field private handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mThemeColor:I

.field private parentPath:Ljava/lang/String;

.field private paths:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->mIconCache:Ljava/util/HashMap;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 2
    .parameter "context"
    .parameter "parent"
    .parameter "themeColor"
    .parameter "column"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    const/4 v1, 0x4

    iput v1, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->column:I

    .line 109
    new-instance v1, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter$1;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter$1;-><init>(Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->handler:Landroid/os/Handler;

    .line 36
    iput-object p1, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->parentPath:Ljava/lang/String;

    .line 38
    iput p3, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->mThemeColor:I

    .line 39
    iput p4, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->column:I

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->paths:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->paths:[Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->parentPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->paths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method public static distory()V
    .locals 3

    .prologue
    .line 129
    sget-object v2, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->mIconCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;>;"
    :goto_0
    return-void

    .line 130
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;>;"
    :cond_0
    sget-object v2, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->mIconCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 131
    .restart local v0       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 138
    sget-object v2, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->mIconCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 132
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 133
    .local v1, sf:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 134
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1
.end method


# virtual methods
.method public addIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bt"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->mIcon:Landroid/graphics/Bitmap;

    .line 53
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->paths:[Ljava/lang/String;

    array-length v1, v0

    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->mIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 58
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->mIcon:Landroid/graphics/Bitmap;

    .line 61
    :goto_0
    return-object v0

    .line 59
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 61
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->parentPath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->paths:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 66
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPaths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->paths:[Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 70
    move-object v3, p2

    check-cast v3, Landroid/widget/ImageView;

    .line 71
    .local v3, iv:Landroid/widget/ImageView;
    if-nez v3, :cond_0

    .line 72
    new-instance v3, Landroid/widget/ImageView;

    .end local v3           #iv:Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 73
    .restart local v3       #iv:Landroid/widget/ImageView;
    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74
    iget v8, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->mThemeColor:I

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 77
    iget-object v8, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->mContext:Landroid/content/Context;

    const/high16 v9, 0x40c0

    invoke-static {v8, v9}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v8

    float-to-int v2, v8

    .line 78
    .local v2, hGap:I
    iget-object v8, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v7, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 79
    .local v7, width:I
    iget v8, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->column:I

    add-int/lit8 v8, v8, 0x1

    mul-int/2addr v8, v2

    sub-int v8, v7, v8

    iget v9, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->column:I

    div-int v6, v8, v9

    .line 80
    .local v6, w:I
    new-instance v8, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v8, v6, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    .end local v2           #hGap:I
    .end local v6           #w:I
    .end local v7           #width:I
    :cond_0
    iget-object v8, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_2

    .line 84
    if-nez p1, :cond_1

    .line 85
    iget-object v8, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 106
    :goto_0
    return-object v3

    .line 88
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 91
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->parentPath:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->paths:[Ljava/lang/String;

    aget-object v9, v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, abPath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 93
    .local v1, bit:Landroid/graphics/Bitmap;
    sget-object v8, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->mIconCache:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/SoftReference;

    .line 94
    .local v5, sf:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #bit:Landroid/graphics/Bitmap;
    check-cast v1, Landroid/graphics/Bitmap;

    .line 95
    .restart local v1       #bit:Landroid/graphics/Bitmap;
    :cond_3
    if-nez v1, :cond_4

    .line 98
    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    iget v9, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->mThemeColor:I

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v8, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->handler:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 100
    .local v4, msg:Landroid/os/Message;
    iput p1, v4, Landroid/os/Message;->what:I

    .line 101
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 102
    iget-object v8, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->handler:Landroid/os/Handler;

    const-wide/16 v9, 0x64

    invoke-virtual {v8, v4, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 104
    .end local v4           #msg:Landroid/os/Message;
    :cond_4
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setPaths([Ljava/lang/String;)V
    .locals 0
    .parameter "paths"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->paths:[Ljava/lang/String;

    .line 126
    return-void
.end method
