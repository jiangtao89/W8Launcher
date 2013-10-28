.class public Lcom/anall/app/bean/IconCache;
.super Ljava/lang/Object;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anall/app/bean/IconCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final INITIAL_ICON_CACHE_CAPACITY:I = 0x32


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/anall/app/bean/IconCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Lcom/lx/launcher8/AnallApp;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/AnallApp;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/anall/app/bean/IconCache;->mCache:Ljava/util/HashMap;

    .line 49
    iput-object p1, p0, Lcom/anall/app/bean/IconCache;->mContext:Lcom/lx/launcher8/AnallApp;

    .line 50
    invoke-virtual {p1}, Lcom/lx/launcher8/AnallApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/anall/app/bean/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 52
    return-void
.end method

.method private cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/anall/app/bean/IconCache$CacheEntry;
    .locals 3
    .parameter "componentName"
    .parameter "info"

    .prologue
    .line 121
    iget-object v1, p0, Lcom/anall/app/bean/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anall/app/bean/IconCache$CacheEntry;

    .line 122
    .local v0, entry:Lcom/anall/app/bean/IconCache$CacheEntry;
    if-nez v0, :cond_1

    .line 123
    new-instance v0, Lcom/anall/app/bean/IconCache$CacheEntry;

    .end local v0           #entry:Lcom/anall/app/bean/IconCache$CacheEntry;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/anall/app/bean/IconCache$CacheEntry;-><init>(Lcom/anall/app/bean/IconCache$CacheEntry;)V

    .line 125
    .restart local v0       #entry:Lcom/anall/app/bean/IconCache$CacheEntry;
    iget-object v1, p0, Lcom/anall/app/bean/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v1, p0, Lcom/anall/app/bean/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anall/app/bean/IconCache$CacheEntry;->title:Ljava/lang/String;

    .line 128
    iget-object v1, v0, Lcom/anall/app/bean/IconCache$CacheEntry;->title:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 129
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/anall/app/bean/IconCache$CacheEntry;->title:Ljava/lang/String;

    .line 132
    :cond_0
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p0, Lcom/anall/app/bean/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/anall/app/bean/IconCache;->mContext:Lcom/lx/launcher8/AnallApp;

    .line 131
    invoke-static {v1, v2}, Lcom/anall/app/bean/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/anall/app/bean/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 134
    :cond_1
    return-object v0
.end method

.method private makeDefaultIcon()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 55
    iget-object v3, p0, Lcom/anall/app/bean/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 56
    .local v2, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 57
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 58
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 56
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 60
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 61
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 62
    return-object v0
.end method


# virtual methods
.method public flush()V
    .locals 2

    .prologue
    .line 78
    iget-object v1, p0, Lcom/anall/app/bean/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/anall/app/bean/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 78
    monitor-exit v1

    .line 81
    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIcon(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "component"
    .parameter "resolveInfo"

    .prologue
    .line 110
    iget-object v2, p0, Lcom/anall/app/bean/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 111
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 112
    :cond_0
    :try_start_0
    monitor-exit v2

    const/4 v1, 0x0

    .line 116
    :goto_0
    return-object v1

    .line 115
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/anall/app/bean/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/anall/app/bean/IconCache$CacheEntry;

    move-result-object v0

    .line 116
    .local v0, entry:Lcom/anall/app/bean/IconCache$CacheEntry;
    iget-object v1, v0, Lcom/anall/app/bean/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    monitor-exit v2

    goto :goto_0

    .line 110
    .end local v0           #entry:Lcom/anall/app/bean/IconCache$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "intent"

    .prologue
    .line 95
    iget-object v4, p0, Lcom/anall/app/bean/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 96
    :try_start_0
    iget-object v3, p0, Lcom/anall/app/bean/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 97
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 99
    .local v0, component:Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    monitor-exit v4

    const/4 v3, 0x0

    .line 105
    :goto_0
    return-object v3

    .line 104
    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/anall/app/bean/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/anall/app/bean/IconCache$CacheEntry;

    move-result-object v1

    .line 105
    .local v1, entry:Lcom/anall/app/bean/IconCache$CacheEntry;
    iget-object v3, v1, Lcom/anall/app/bean/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    monitor-exit v4

    goto :goto_0

    .line 95
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v1           #entry:Lcom/anall/app/bean/IconCache$CacheEntry;
    .end local v2           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getTitleAndIcon(Lcom/anall/app/bean/AppInfo;Landroid/content/pm/ResolveInfo;)V
    .locals 3
    .parameter "application"
    .parameter "info"

    .prologue
    .line 87
    iget-object v2, p0, Lcom/anall/app/bean/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 88
    :try_start_0
    iget-object v1, p1, Lcom/anall/app/bean/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-direct {p0, v1, p2}, Lcom/anall/app/bean/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/anall/app/bean/IconCache$CacheEntry;

    move-result-object v0

    .line 89
    .local v0, entry:Lcom/anall/app/bean/IconCache$CacheEntry;
    iget-object v1, v0, Lcom/anall/app/bean/IconCache$CacheEntry;->title:Ljava/lang/String;

    iput-object v1, p1, Lcom/anall/app/bean/AppInfo;->title:Ljava/lang/CharSequence;

    .line 90
    iget-object v1, v0, Lcom/anall/app/bean/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iput-object v1, p1, Lcom/anall/app/bean/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 87
    monitor-exit v2

    .line 92
    return-void

    .line 87
    .end local v0           #entry:Lcom/anall/app/bean/IconCache$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remove(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "componentName"

    .prologue
    .line 69
    iget-object v1, p0, Lcom/anall/app/bean/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/anall/app/bean/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    monitor-exit v1

    .line 72
    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
