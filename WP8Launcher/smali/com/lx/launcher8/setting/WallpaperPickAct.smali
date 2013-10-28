.class public Lcom/lx/launcher8/setting/WallpaperPickAct;
.super Lcom/lx/launcher8/NoSearchAct;
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

.field private dynWallpaperIv:Landroid/widget/ImageView;

.field private dynWallpaperSelectedTv:Landroid/widget/TextView;

.field private height:I

.field private lockscreenWallpaperIv:Landroid/widget/ImageView;

.field private mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

.field private mLockSet:Lcom/anall/screenlock/provider/LockSetting;

.field private metrics:Landroid/util/DisplayMetrics;

.field private screenHeight:I

.field private screenWidth:I

.field private wallpaperManager:Landroid/app/WallpaperManager;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;-><init>()V

    return-void
.end method

.method private getDeskWallpaper()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 148
    iget-object v2, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->wallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 150
    .local v1, wallpaperDrawable:Landroid/graphics/drawable/Drawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #wallpaperDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 151
    .local v0, bm:Landroid/graphics/Bitmap;
    iget v2, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->screenWidth:I

    iget v3, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->screenHeight:I

    invoke-static {v0, v4, v4, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 152
    return-object v0
.end method

.method private getDimension(I)I
    .locals 3
    .parameter "size"

    .prologue
    .line 143
    const/4 v0, 0x1

    int-to-float v1, p1

    iget-object v2, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->metrics:Landroid/util/DisplayMetrics;

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

    .line 183
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/WallpaperPickAct;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 184
    .local v3, mPackageManager:Landroid/content/pm/PackageManager;
    if-eqz p1, :cond_1

    .line 185
    invoke-virtual {p1, v3}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 186
    .local v6, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_0

    .line 187
    invoke-virtual {v6, v10}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 222
    .end local v6           #thumb:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v6

    .line 191
    :cond_1
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.service.wallpaper.WallpaperService"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x80

    invoke-virtual {v3, v7, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 192
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v10, :cond_3

    :cond_2
    move-object v6, v8

    goto :goto_0

    .line 193
    :cond_3
    new-instance v7, Lcom/lx/launcher8/setting/WallpaperPickAct$2;

    invoke-direct {v7, p0, v3}, Lcom/lx/launcher8/setting/WallpaperPickAct$2;-><init>(Lcom/lx/launcher8/setting/WallpaperPickAct;Landroid/content/pm/PackageManager;)V

    invoke-static {v2, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 205
    const/4 v4, 0x0

    .line 206
    .local v4, mWallpaperInfo:Landroid/app/WallpaperInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lt v1, v7, :cond_4

    move-object v6, v8

    .line 222
    goto :goto_0

    .line 208
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

    .line 214
    .end local v5           #mWallpaperInfo:Landroid/app/WallpaperInfo;
    .restart local v4       #mWallpaperInfo:Landroid/app/WallpaperInfo;
    :goto_2
    if-nez v4, :cond_6

    .line 206
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2

    .line 211
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 212
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 215
    .end local v0           #e:Ljava/io/IOException;
    :cond_6
    invoke-virtual {v4, v3}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 216
    .restart local v6       #thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_5

    .line 218
    invoke-virtual {v6, v10}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    goto :goto_0
.end method

.method private getLockscreenWallpaper()Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 156
    new-instance v8, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/WallpaperPickAct;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "lockbg"

    invoke-direct {v8, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 157
    .local v8, file:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-object v6

    .line 160
    :cond_1
    const/4 v6, 0x0

    .line 161
    .local v6, bm:Landroid/graphics/Bitmap;
    iget v0, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->screenWidth:I

    iget v2, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->screenHeight:I

    mul-int v1, v0, v2

    .line 162
    .local v1, maxNumOfPiex:I
    const/4 v9, 0x0

    .line 164
    .local v9, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 165
    .end local v9           #fis:Ljava/io/FileInputStream;
    .local v10, fis:Ljava/io/FileInputStream;
    :try_start_1
    div-int/lit8 v0, v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v10}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 166
    invoke-static {}, Lcom/lx/launcher8/crop/img/Util;->createNativeAllocOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    .line 165
    invoke-static/range {v0 .. v5}, Lcom/lx/launcher8/crop/img/Util;->makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v6

    .line 172
    if-eqz v10, :cond_3

    .line 174
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 167
    :catch_0
    move-exception v7

    .line 168
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

    .line 172
    if-eqz v9, :cond_0

    .line 174
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 175
    :catch_1
    move-exception v0

    goto :goto_0

    .line 169
    .end local v7           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v7

    .line 170
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

    .line 172
    if-eqz v9, :cond_0

    .line 174
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 175
    :catch_3
    move-exception v0

    goto :goto_0

    .line 171
    .end local v7           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 172
    :goto_3
    if-eqz v9, :cond_2

    .line 174
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 177
    :cond_2
    :goto_4
    throw v0

    .line 175
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

    .line 171
    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 169
    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :catch_6
    move-exception v7

    move-object v9, v10

    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 167
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
    .locals 9

    .prologue
    const v8, 0x7f020131

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 94
    const v5, 0x7f090092

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/WallpaperPickAct;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->deskWallpaperIv:Landroid/widget/ImageView;

    .line 95
    const v5, 0x7f090095

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/WallpaperPickAct;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->lockscreenWallpaperIv:Landroid/widget/ImageView;

    .line 96
    const v5, 0x7f090098

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/WallpaperPickAct;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->dynWallpaperIv:Landroid/widget/ImageView;

    .line 98
    const v5, 0x7f090093

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/WallpaperPickAct;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->deskWallpaperSelectedTv:Landroid/widget/TextView;

    .line 99
    const v5, 0x7f090099

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/WallpaperPickAct;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->dynWallpaperSelectedTv:Landroid/widget/TextView;

    .line 101
    iget-object v5, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->wallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v5}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v2

    .line 102
    .local v2, mWallpaperInfo:Landroid/app/WallpaperInfo;
    if-nez v2, :cond_0

    .line 103
    iget-object v5, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->deskWallpaperSelectedTv:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v5, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->dynWallpaperSelectedTv:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    :goto_0
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/lx/launcher8/setting/WallpaperPickAct;->getDimension(I)I

    move-result v3

    .line 112
    .local v3, padding:I
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->width:I

    iget v6, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->height:I

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 113
    .local v4, params:Landroid/widget/FrameLayout$LayoutParams;
    mul-int/lit8 v5, v3, 0x2

    invoke-virtual {v4, v7, v7, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 115
    iget-object v5, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->deskWallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v5, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->deskWallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v5, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 117
    iget-object v5, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->deskWallpaperIv:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/lx/launcher8/setting/WallpaperPickAct;->getDeskWallpaper()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 119
    iget-object v5, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->lockscreenWallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object v5, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->lockscreenWallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v5, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 121
    invoke-direct {p0}, Lcom/lx/launcher8/setting/WallpaperPickAct;->getLockscreenWallpaper()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 122
    .local v1, lockscreenWallpaperBitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 123
    iget-object v5, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->lockscreenWallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 128
    :goto_1
    iget-object v5, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->dynWallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v5, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->dynWallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v5, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 130
    invoke-direct {p0, v2}, Lcom/lx/launcher8/setting/WallpaperPickAct;->getDynWallpaper(Landroid/app/WallpaperInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 131
    .local v0, dynWallpaperDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 132
    iget-object v5, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->dynWallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    :goto_2
    const v5, 0x7f090091

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/WallpaperPickAct;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v5, 0x7f090094

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/WallpaperPickAct;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v5, 0x7f090097

    invoke-virtual {p0, v5}, Lcom/lx/launcher8/setting/WallpaperPickAct;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void

    .line 106
    .end local v0           #dynWallpaperDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #lockscreenWallpaperBitmap:Landroid/graphics/Bitmap;
    .end local v3           #padding:I
    .end local v4           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->deskWallpaperSelectedTv:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v5, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->dynWallpaperSelectedTv:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 125
    .restart local v1       #lockscreenWallpaperBitmap:Landroid/graphics/Bitmap;
    .restart local v3       #padding:I
    .restart local v4       #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->lockscreenWallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 134
    .restart local v0       #dynWallpaperDrawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v5, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->dynWallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method


# virtual methods
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

    .line 264
    const/16 v6, 0x77

    if-ne p1, v6, :cond_4

    .line 265
    iget-object v6, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->wallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v4

    .line 266
    .local v4, mWallpaperInfo:Landroid/app/WallpaperInfo;
    if-nez v4, :cond_2

    .line 267
    iget-object v6, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->deskWallpaperSelectedTv:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    iget-object v6, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->dynWallpaperSelectedTv:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    if-ne p2, v7, :cond_0

    iget-object v6, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v6, v9}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemePaper(I)V

    .line 270
    :cond_0
    iget-object v6, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->deskWallpaperIv:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/lx/launcher8/setting/WallpaperPickAct;->getDeskWallpaper()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 334
    .end local v4           #mWallpaperInfo:Landroid/app/WallpaperInfo;
    :cond_1
    :goto_0
    return-void

    .line 272
    .restart local v4       #mWallpaperInfo:Landroid/app/WallpaperInfo;
    :cond_2
    iget-object v6, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v6, v9}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemePaper(I)V

    .line 273
    iget-object v6, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->deskWallpaperSelectedTv:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    iget-object v6, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->dynWallpaperSelectedTv:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    invoke-direct {p0, v4}, Lcom/lx/launcher8/setting/WallpaperPickAct;->getDynWallpaper(Landroid/app/WallpaperInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 276
    .local v0, dynWallpaperDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 277
    iget-object v6, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->dynWallpaperIv:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 278
    iget-object v6, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->dynWallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 280
    :cond_3
    iget-object v6, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->dynWallpaperIv:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 281
    iget-object v6, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->dynWallpaperIv:Landroid/widget/ImageView;

    const v7, 0x7f0201ab

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 285
    .end local v0           #dynWallpaperDrawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #mWallpaperInfo:Landroid/app/WallpaperInfo;
    :cond_4
    const/16 v6, 0x78

    if-ne p1, v6, :cond_5

    if-ne p2, v7, :cond_5

    if-eqz p3, :cond_5

    .line 286
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 287
    .local v5, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/lx/launcher8/crop/CropImage;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "aspectX"

    iget v7, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->screenWidth:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    const-string v6, "aspectY"

    iget v7, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->screenHeight:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    const-string v6, "noFaceDetection"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 291
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 292
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/WallpaperPickAct;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "lockbg"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 293
    .local v1, file:Ljava/io/File;
    const-string v6, "output"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 294
    invoke-virtual {p0, v2, v11}, Lcom/lx/launcher8/setting/WallpaperPickAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 296
    .end local v1           #file:Ljava/io/File;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_5
    if-ne p1, v11, :cond_7

    if-ne p2, v7, :cond_7

    if-eqz p3, :cond_7

    .line 297
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/WallpaperPickAct;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "lockbg"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 298
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 299
    iget-object v6, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/anall/screenlock/provider/LockSetting;->setThemeLockBg(Ljava/lang/String;)V

    .line 301
    invoke-direct {p0}, Lcom/lx/launcher8/setting/WallpaperPickAct;->getLockscreenWallpaper()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 302
    .local v3, lockscreenWallpaperBitmap:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_6

    .line 303
    iget-object v6, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->lockscreenWallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 305
    :cond_6
    iget-object v6, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->lockscreenWallpaperIv:Landroid/widget/ImageView;

    const v7, 0x7f020131

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 309
    .end local v1           #file:Ljava/io/File;
    .end local v3           #lockscreenWallpaperBitmap:Landroid/graphics/Bitmap;
    :cond_7
    const/16 v6, 0x76

    if-ne p1, v6, :cond_9

    .line 310
    iget-object v6, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->wallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v4

    .line 311
    .restart local v4       #mWallpaperInfo:Landroid/app/WallpaperInfo;
    if-eqz v4, :cond_1

    .line 312
    iget-object v6, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v6, v9}, Lcom/lx/launcher8/cfg/DeskSetting;->setThemePaper(I)V

    .line 313
    iget-object v6, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->deskWallpaperSelectedTv:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    iget-object v6, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->dynWallpaperSelectedTv:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    invoke-direct {p0, v4}, Lcom/lx/launcher8/setting/WallpaperPickAct;->getDynWallpaper(Landroid/app/WallpaperInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 316
    .restart local v0       #dynWallpaperDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_8

    .line 317
    iget-object v6, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->dynWallpaperIv:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 318
    iget-object v6, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->dynWallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 320
    :cond_8
    iget-object v6, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->dynWallpaperIv:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 321
    iget-object v6, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->dynWallpaperIv:Landroid/widget/ImageView;

    const v7, 0x7f0201ab

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 325
    .end local v0           #dynWallpaperDrawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #mWallpaperInfo:Landroid/app/WallpaperInfo;
    :cond_9
    const/16 v6, 0x80

    if-ne p1, v6, :cond_a

    .line 326
    invoke-direct {p0}, Lcom/lx/launcher8/setting/WallpaperPickAct;->getLockscreenWallpaper()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 327
    .restart local v3       #lockscreenWallpaperBitmap:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_b

    .line 328
    iget-object v6, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->lockscreenWallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 333
    .end local v3           #lockscreenWallpaperBitmap:Landroid/graphics/Bitmap;
    :cond_a
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/NoSearchAct;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 330
    .restart local v3       #lockscreenWallpaperBitmap:Landroid/graphics/Bitmap;
    :cond_b
    iget-object v6, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->lockscreenWallpaperIv:Landroid/widget/ImageView;

    const v7, 0x7f020131

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 260
    :goto_0
    return-void

    .line 229
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, chooseIntent:Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 232
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.CHOOSER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 234
    const-string v3, "android.intent.extra.TITLE"

    const v4, 0x7f0a0007

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/WallpaperPickAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const/16 v3, 0x77

    invoke-virtual {p0, v1, v3}, Lcom/lx/launcher8/setting/WallpaperPickAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 251
    .end local v0           #chooseIntent:Landroid/content/Intent;
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/lx/launcher8/setting/LockScreenPaperPickAct;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    .restart local v1       #intent:Landroid/content/Intent;
    const/16 v3, 0x80

    invoke-virtual {p0, v1, v3}, Lcom/lx/launcher8/setting/WallpaperPickAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 255
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 256
    .local v2, liveWallpapers:Landroid/content/Intent;
    const-string v3, "android.service.wallpaper.LIVE_WALLPAPER_CHOOSER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const/16 v3, 0x76

    invoke-virtual {p0, v2, v3}, Lcom/lx/launcher8/setting/WallpaperPickAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 227
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090091 -> :sswitch_0
        0x7f090094 -> :sswitch_1
        0x7f090097 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/WallpaperPickAct;->setContentView(I)V

    .line 72
    new-instance v0, Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 73
    new-instance v0, Lcom/anall/screenlock/provider/LockSetting;

    invoke-direct {v0, p0}, Lcom/anall/screenlock/provider/LockSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->mLockSet:Lcom/anall/screenlock/provider/LockSetting;

    .line 75
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/WallpaperPickAct;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->metrics:Landroid/util/DisplayMetrics;

    .line 76
    iget-object v0, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->screenWidth:I

    .line 77
    iget-object v0, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->screenHeight:I

    .line 78
    iget v0, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->screenWidth:I

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->width:I

    .line 79
    iget v0, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->screenHeight:I

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->height:I

    .line 81
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/WallpaperPickAct;->wallpaperManager:Landroid/app/WallpaperManager;

    .line 83
    invoke-direct {p0}, Lcom/lx/launcher8/setting/WallpaperPickAct;->initView()V

    .line 85
    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/WallpaperPickAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/lx/launcher8/setting/WallpaperPickAct$1;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/WallpaperPickAct$1;-><init>(Lcom/lx/launcher8/setting/WallpaperPickAct;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method
