.class public Lcom/lx/launcher8/util/BitmapManager;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/util/BitmapManager$MySoft;
    }
.end annotation


# static fields
.field private static mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lx/launcher8/util/BitmapManager$MySoft;",
            ">;"
        }
    .end annotation
.end field

.field private queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/lx/launcher8/util/BitmapManager;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

    .line 10
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/lx/launcher8/util/BitmapManager;->map:Ljava/util/Map;

    .line 13
    iput-object v0, p0, Lcom/lx/launcher8/util/BitmapManager;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/util/BitmapManager;->map:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/util/BitmapManager;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 18
    return-void
.end method

.method private cleanCache()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, mySoft:Lcom/lx/launcher8/util/BitmapManager$MySoft;
    :goto_0
    iget-object v1, p0, Lcom/lx/launcher8/util/BitmapManager;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .end local v0           #mySoft:Lcom/lx/launcher8/util/BitmapManager$MySoft;
    check-cast v0, Lcom/lx/launcher8/util/BitmapManager$MySoft;

    .restart local v0       #mySoft:Lcom/lx/launcher8/util/BitmapManager$MySoft;
    if-nez v0, :cond_0

    .line 46
    return-void

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/util/BitmapManager;->map:Ljava/util/Map;

    #getter for: Lcom/lx/launcher8/util/BitmapManager$MySoft;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/lx/launcher8/util/BitmapManager$MySoft;->access$0(Lcom/lx/launcher8/util/BitmapManager$MySoft;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getInstance()Lcom/lx/launcher8/util/BitmapManager;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/lx/launcher8/util/BitmapManager;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lx/launcher8/util/BitmapManager;

    invoke-direct {v0}, Lcom/lx/launcher8/util/BitmapManager;-><init>()V

    sput-object v0, Lcom/lx/launcher8/util/BitmapManager;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

    .line 22
    :cond_0
    sget-object v0, Lcom/lx/launcher8/util/BitmapManager;->mBitmapManager:Lcom/lx/launcher8/util/BitmapManager;

    return-object v0
.end method


# virtual methods
.method public addCacheBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "key"
    .parameter "bitmap"

    .prologue
    .line 26
    new-instance v0, Lcom/lx/launcher8/util/BitmapManager$MySoft;

    iget-object v1, p0, Lcom/lx/launcher8/util/BitmapManager;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, p2, v1, p1}, Lcom/lx/launcher8/util/BitmapManager$MySoft;-><init>(Lcom/lx/launcher8/util/BitmapManager;Landroid/graphics/Bitmap;Ljava/lang/ref/ReferenceQueue;Ljava/lang/String;)V

    .line 27
    .local v0, mySoft:Lcom/lx/launcher8/util/BitmapManager$MySoft;
    iget-object v1, p0, Lcom/lx/launcher8/util/BitmapManager;->map:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public declared-synchronized clearCache()V
    .locals 1

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/lx/launcher8/util/BitmapManager;->cleanCache()V

    .line 50
    iget-object v0, p0, Lcom/lx/launcher8/util/BitmapManager;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 51
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 52
    invoke-static {}, Ljava/lang/System;->runFinalization()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCacheBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/lx/launcher8/util/BitmapManager;->map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    iget-object v3, p0, Lcom/lx/launcher8/util/BitmapManager;->map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/util/BitmapManager$MySoft;

    .line 34
    .local v1, mySoft:Lcom/lx/launcher8/util/BitmapManager$MySoft;
    invoke-virtual {v1}, Lcom/lx/launcher8/util/BitmapManager$MySoft;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 36
    .end local v1           #mySoft:Lcom/lx/launcher8/util/BitmapManager$MySoft;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    if-nez v0, :cond_2

    move-object v0, v2

    .line 38
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object v0

    .line 37
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    goto :goto_0
.end method
