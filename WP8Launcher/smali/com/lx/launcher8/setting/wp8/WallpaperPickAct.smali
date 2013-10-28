.class public Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.source "WallpaperPickAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final REQUEST_PICK_IMAGE:I = 0x78

.field private static final REQUEST_SAVE_IMAGE:I = 0x79

.field private static final REQUEST_SET_LIVE_WALLPAPER:I = 0x76

.field private static final REQUEST_SET_LOCKSCREEN_PAPER:I = 0x80

.field private static final REQUEST_SET_WALLPAPER:I = 0x77


# instance fields
.field private deskWallpaperIv:Landroid/widget/ImageView;

.field private deskWallpaperSelectedTv:Landroid/widget/TextView;

.field private deskWallpaperTv:Landroid/widget/TextView;

.field private dynWallpaperIv:Landroid/widget/ImageView;

.field private dynWallpaperSelectedTv:Landroid/widget/TextView;

.field private dynWallpaperTv:Landroid/widget/TextView;

.field private height:I

.field private lockscreenWallpaperIv:Landroid/widget/ImageView;

.field private lockscreenWallpaperSelectedTv:Landroid/widget/TextView;

.field private lockscreenWallpaperTv:Landroid/widget/TextView;

.field private mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

.field private mLockSet:Lcom/anall/screenlock/provider/LockSetting;

.field private mMainView:Landroid/view/View;

.field private metrics:Landroid/util/DisplayMetrics;

.field private screenHeight:I

.field private screenWidth:I

.field private wallpaperManager:Landroid/app/WallpaperManager;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;-><init>()V

    return-void
.end method

.method private createView()V
    .locals 3

    .prologue
    .line 81
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->mMainView:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->mMainView:Landroid/view/View;

    iget v1, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->mbgColorValue:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 84
    new-instance v0, Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 85
    new-instance v0, Lcom/anall/screenlock/provider/LockSetting;

    invoke-direct {v0, p0}, Lcom/anall/screenlock/provider/LockSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    .line 87
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->metrics:Landroid/util/DisplayMetrics;

    .line 88
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->screenWidth:I

    .line 89
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->screenHeight:I

    .line 90
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->screenWidth:I

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->width:I

    .line 91
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->screenHeight:I

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->height:I

    .line 93
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->wallpaperManager:Landroid/app/WallpaperManager;

    .line 95
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->initView()V

    .line 96
    return-void
.end method

.method private getDeskWallpaper()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 170
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->wallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v4}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 172
    .local v2, wallpaperDrawable:Landroid/graphics/drawable/Drawable;
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2           #wallpaperDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 173
    .local v0, bm:Landroid/graphics/Bitmap;
    iget v4, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->screenWidth:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 174
    .local v3, width:I
    :goto_0
    iget v4, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->screenHeight:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 175
    .local v1, height:I
    :goto_1
    invoke-static {v0, v6, v6, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    .line 173
    .end local v1           #height:I
    .end local v3           #width:I
    :cond_0
    iget v3, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->screenWidth:I

    goto :goto_0

    .line 174
    .restart local v3       #width:I
    :cond_1
    iget v1, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->screenHeight:I

    goto :goto_1
.end method

.method private getDimension(I)I
    .locals 3
    .parameter "size"

    .prologue
    .line 165
    const/4 v0, 0x1

    int-to-float v1, p1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->metrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getDynWallpaper(Landroid/app/WallpaperInfo;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .parameter "wallpaperInfo"

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 206
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 207
    .local v3, mPackageManager:Landroid/content/pm/PackageManager;
    if-eqz p1, :cond_1

    .line 208
    invoke-virtual {p1, v3}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 209
    .local v6, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_0

    .line 210
    invoke-virtual {v6, v10}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 245
    .end local v6           #thumb:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v6

    .line 214
    :cond_1
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.service.wallpaper.WallpaperService"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x80

    invoke-virtual {v3, v7, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 215
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v10, :cond_3

    :cond_2
    move-object v6, v8

    goto :goto_0

    .line 216
    :cond_3
    new-instance v7, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct$1;

    invoke-direct {v7, p0, v3}, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct$1;-><init>(Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;Landroid/content/pm/PackageManager;)V

    invoke-static {v2, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 228
    const/4 v4, 0x0

    .line 229
    .local v4, mWallpaperInfo:Landroid/app/WallpaperInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lt v1, v7, :cond_4

    move-object v6, v8

    .line 245
    goto :goto_0

    .line 231
    :cond_4
    :try_start_0
    new-instance v5, Landroid/app/WallpaperInfo;

    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5, p0, v7}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v4           #mWallpaperInfo:Landroid/app/WallpaperInfo;
    .local v5, mWallpaperInfo:Landroid/app/WallpaperInfo;
    move-object v4, v5

    .line 237
    .end local v5           #mWallpaperInfo:Landroid/app/WallpaperInfo;
    .restart local v4       #mWallpaperInfo:Landroid/app/WallpaperInfo;
    :goto_2
    if-nez v4, :cond_6

    .line 229
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2

    .line 234
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 235
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 238
    .end local v0           #e:Ljava/io/IOException;
    :cond_6
    invoke-virtual {v4, v3}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 239
    .restart local v6       #thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_5

    .line 241
    invoke-virtual {v6, v10}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    goto :goto_0
.end method

.method private getLockscreenWallpaper()Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 179
    new-instance v8, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "lockbg"

    invoke-direct {v8, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 180
    .local v8, file:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-object v6

    .line 183
    :cond_1
    const/4 v6, 0x0

    .line 184
    .local v6, bm:Landroid/graphics/Bitmap;
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->screenWidth:I

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->screenHeight:I

    mul-int v1, v0, v2

    .line 185
    .local v1, maxNumOfPiex:I
    const/4 v9, 0x0

    .line 187
    .local v9, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 188
    .end local v9           #fis:Ljava/io/FileInputStream;
    .local v10, fis:Ljava/io/FileInputStream;
    :try_start_1
    div-int/lit8 v0, v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v10}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 189
    invoke-static {}, Lcom/lx/launcher8/crop/img/Util;->createNativeAllocOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    .line 188
    invoke-static/range {v0 .. v5}, Lcom/lx/launcher8/crop/img/Util;->makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v6

    .line 195
    if-eqz v10, :cond_3

    .line 197
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 190
    :catch_0
    move-exception v7

    .line 191
    .local v7, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "set Lock background not Found iamge path "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/app/common/utils/ULog;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 195
    if-eqz v9, :cond_0

    .line 197
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 198
    :catch_1
    move-exception v0

    goto :goto_0

    .line 192
    .end local v7           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v7

    .line 193
    .local v7, e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "set Lock background error !!"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/app/common/utils/ULog;->e(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 195
    if-eqz v9, :cond_0

    .line 197
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 198
    :catch_3
    move-exception v0

    goto :goto_0

    .line 194
    .end local v7           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 195
    :goto_3
    if-eqz v9, :cond_2

    .line 197
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 200
    :cond_2
    :goto_4
    throw v0

    .line 198
    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    :catch_5
    move-exception v2

    goto :goto_4

    .line 194
    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 192
    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catch_6
    move-exception v7

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 190
    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catch_7
    move-exception v7

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :cond_3
    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method private initView()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 99
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->mMainView:Landroid/view/View;

    const v7, 0x7f090092

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->deskWallpaperIv:Landroid/widget/ImageView;

    .line 100
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->mMainView:Landroid/view/View;

    const v7, 0x7f090095

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->lockscreenWallpaperIv:Landroid/widget/ImageView;

    .line 101
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->mMainView:Landroid/view/View;

    const v7, 0x7f090098

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->dynWallpaperIv:Landroid/widget/ImageView;

    .line 103
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->mMainView:Landroid/view/View;

    const v7, 0x7f09009a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->deskWallpaperTv:Landroid/widget/TextView;

    .line 104
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->mMainView:Landroid/view/View;

    const v7, 0x7f09009b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->lockscreenWallpaperTv:Landroid/widget/TextView;

    .line 105
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->mMainView:Landroid/view/View;

    const v7, 0x7f09009c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->dynWallpaperTv:Landroid/widget/TextView;

    .line 107
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->mMainView:Landroid/view/View;

    const v7, 0x7f090093

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->deskWallpaperSelectedTv:Landroid/widget/TextView;

    .line 108
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->mMainView:Landroid/view/View;

    const v7, 0x7f090096

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->lockscreenWallpaperSelectedTv:Landroid/widget/TextView;

    .line 109
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->mMainView:Landroid/view/View;

    const v7, 0x7f090099

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->dynWallpaperSelectedTv:Landroid/widget/TextView;

    .line 111
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->wallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v2

    .line 112
    .local v2, mWallpaperInfo:Landroid/app/WallpaperInfo;
    if-nez v2, :cond_0

    .line 113
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->deskWallpaperSelectedTv:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->dynWallpaperSelectedTv:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    :goto_0
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->getDimension(I)I

    move-result v3

    .line 122
    .local v3, padding:I
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->width:I

    iget v7, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->height:I

    invoke-direct {v4, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 123
    .local v4, params:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->width:I

    const/4 v7, -0x1

    const/16 v8, 0x50

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 125
    .local v5, params1:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->deskWallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->deskWallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v6, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 127
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->deskWallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->getSecondBgColor()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 128
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->deskWallpaperIv:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->getDeskWallpaper()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 129
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->deskWallpaperTv:Landroid/widget/TextView;

    iget v7, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->mTitleColorValue:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->lockscreenWallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->lockscreenWallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v6, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 133
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->lockscreenWallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->getSecondBgColor()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 134
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->getLockscreenWallpaper()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 135
    .local v1, lockscreenWallpaperBitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 136
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->lockscreenWallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 140
    :goto_1
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->lockscreenWallpaperTv:Landroid/widget/TextView;

    iget v7, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->mTitleColorValue:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->dynWallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->dynWallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v6, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 144
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->dynWallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->getSecondBgColor()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 145
    invoke-direct {p0, v2}, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->getDynWallpaper(Landroid/app/WallpaperInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 146
    .local v0, dynWallpaperDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 147
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->dynWallpaperIv:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 148
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->dynWallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    :goto_2
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->dynWallpaperTv:Landroid/widget/TextView;

    iget v7, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->mTitleColorValue:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->deskWallpaperSelectedTv:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->lockscreenWallpaperSelectedTv:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->dynWallpaperSelectedTv:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->mMainView:Landroid/view/View;

    const v7, 0x7f090091

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->mMainView:Landroid/view/View;

    const v7, 0x7f090094

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->mMainView:Landroid/view/View;

    const v7, 0x7f090097

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    return-void

    .line 116
    .end local v0           #dynWallpaperDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #lockscreenWallpaperBitmap:Landroid/graphics/Bitmap;
    .end local v3           #padding:I
    .end local v4           #params:Landroid/widget/FrameLayout$LayoutParams;
    .end local v5           #params1:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->deskWallpaperSelectedTv:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->dynWallpaperSelectedTv:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 138
    .restart local v1       #lockscreenWallpaperBitmap:Landroid/graphics/Bitmap;
    .restart local v3       #padding:I
    .restart local v4       #params:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v5       #params1:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->lockscreenWallpaperIv:Landroid/widget/ImageView;

    const v7, 0x7f020131

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 150
    .restart local v0       #dynWallpaperDrawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->dynWallpaperIv:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 151
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->dynWallpaperIv:Landroid/widget/ImageView;

    const v7, 0x7f0201ab

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method private setThemePaper(I)V
    .locals 2
    .parameter "themePaper"

    .prologue
    .line 367
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v0

    if-nez v0, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->finish()V

    .line 369
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->startActivity(Landroid/content/Intent;)V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemePaper(I)V

    .line 372
    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->createView()V

    .line 76
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->mTitleBar:Landroid/widget/TextView;

    const v1, 0x7f0a0008

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const v0, 0x7f0a0007

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 78
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v11, 0x79

    const/16 v10, 0x8

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 294
    const/16 v6, 0x77

    if-ne p1, v6, :cond_4

    .line 295
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->wallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v4

    .line 296
    .local v4, mWallpaperInfo:Landroid/app/WallpaperInfo;
    if-nez v4, :cond_2

    .line 297
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->deskWallpaperSelectedTv:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->dynWallpaperSelectedTv:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 299
    if-ne p2, v7, :cond_0

    invoke-direct {p0, v9}, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->setThemePaper(I)V

    .line 300
    :cond_0
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->deskWallpaperIv:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->getDeskWallpaper()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 364
    .end local v4           #mWallpaperInfo:Landroid/app/WallpaperInfo;
    :cond_1
    :goto_0
    return-void

    .line 302
    .restart local v4       #mWallpaperInfo:Landroid/app/WallpaperInfo;
    :cond_2
    invoke-direct {p0, v9}, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->setThemePaper(I)V

    .line 303
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->deskWallpaperSelectedTv:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->dynWallpaperSelectedTv:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    invoke-direct {p0, v4}, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->getDynWallpaper(Landroid/app/WallpaperInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 306
    .local v0, dynWallpaperDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 307
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->dynWallpaperIv:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 308
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->dynWallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 310
    :cond_3
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->dynWallpaperIv:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 311
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->dynWallpaperIv:Landroid/widget/ImageView;

    const v7, 0x7f0201ab

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 315
    .end local v0           #dynWallpaperDrawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #mWallpaperInfo:Landroid/app/WallpaperInfo;
    :cond_4
    const/16 v6, 0x78

    if-ne p1, v6, :cond_5

    if-ne p2, v7, :cond_5

    if-eqz p3, :cond_5

    .line 316
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 317
    .local v5, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/lx/launcher8/crop/CropImage;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 318
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "aspectX"

    iget v7, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->screenWidth:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    const-string v6, "aspectY"

    iget v7, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->screenHeight:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 320
    const-string v6, "noFaceDetection"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 321
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 322
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "lockbg"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 323
    .local v1, file:Ljava/io/File;
    const-string v6, "output"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 324
    invoke-virtual {p0, v2, v11}, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 326
    .end local v1           #file:Ljava/io/File;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_5
    if-ne p1, v11, :cond_7

    if-ne p2, v7, :cond_7

    if-eqz p3, :cond_7

    .line 327
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "lockbg"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 328
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 329
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/anall/screenlock/provider/LockSetting;->setThemeLockBg(Ljava/lang/String;)V

    .line 331
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->getLockscreenWallpaper()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 332
    .local v3, lockscreenWallpaperBitmap:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_6

    .line 333
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->lockscreenWallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 335
    :cond_6
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->lockscreenWallpaperIv:Landroid/widget/ImageView;

    const v7, 0x7f020131

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 339
    .end local v1           #file:Ljava/io/File;
    .end local v3           #lockscreenWallpaperBitmap:Landroid/graphics/Bitmap;
    :cond_7
    const/16 v6, 0x76

    if-ne p1, v6, :cond_9

    .line 340
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->wallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v4

    .line 341
    .restart local v4       #mWallpaperInfo:Landroid/app/WallpaperInfo;
    if-eqz v4, :cond_1

    .line 342
    invoke-direct {p0, v9}, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->setThemePaper(I)V

    .line 343
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->deskWallpaperSelectedTv:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 344
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->dynWallpaperSelectedTv:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    invoke-direct {p0, v4}, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->getDynWallpaper(Landroid/app/WallpaperInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 346
    .restart local v0       #dynWallpaperDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_8

    .line 347
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->dynWallpaperIv:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 348
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->dynWallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 350
    :cond_8
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->dynWallpaperIv:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 351
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->dynWallpaperIv:Landroid/widget/ImageView;

    const v7, 0x7f0201ab

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 355
    .end local v0           #dynWallpaperDrawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #mWallpaperInfo:Landroid/app/WallpaperInfo;
    :cond_9
    const/16 v6, 0x80

    if-ne p1, v6, :cond_a

    .line 356
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->getLockscreenWallpaper()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 357
    .restart local v3       #lockscreenWallpaperBitmap:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_b

    .line 358
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->lockscreenWallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 363
    .end local v3           #lockscreenWallpaperBitmap:Landroid/graphics/Bitmap;
    :cond_a
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 360
    .restart local v3       #lockscreenWallpaperBitmap:Landroid/graphics/Bitmap;
    :cond_b
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->lockscreenWallpaperIv:Landroid/widget/ImageView;

    const v7, 0x7f020131

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/16 v5, 0x80

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 290
    :goto_0
    return-void

    .line 254
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 259
    .local v1, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-class v3, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "papertype"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0, v1, v5}, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 277
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/lx/launcher8/setting/wp8/LockScreenPaperPickAct;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1, v5}, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 281
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 282
    .local v2, liveWallpapers:Landroid/content/Intent;
    const-string v3, "android.service.wallpaper.LIVE_WALLPAPER_CHOOSER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    const/16 v3, 0x76

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/lx/launcher8/setting/wp8/WallpaperPickAct;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const v3, 0x7f0a01c2

    invoke-static {p0, v3}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;I)V

    goto :goto_0

    .line 250
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090091 -> :sswitch_0
        0x7f090094 -> :sswitch_1
        0x7f090097 -> :sswitch_2
    .end sparse-switch
.end method
