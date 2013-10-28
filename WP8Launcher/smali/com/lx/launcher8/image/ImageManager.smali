.class public Lcom/lx/launcher8/image/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImageFileList(Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 14
    .parameter "cr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/image/Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 50
    .local v11, haveSdcard:Z
    if-nez v11, :cond_1

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 79
    :cond_0
    :goto_0
    return-object v6

    .line 52
    :cond_1
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "distinct"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 53
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "bucket_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "bucket_display_name"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "_data"

    aput-object v3, v2, v0

    .line 54
    const-string v3, "(mime_type in (?, ?, ?))"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "image/jpeg"

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-string v5, "image/png"

    aput-object v5, v4, v0

    const/4 v0, 0x2

    const-string v5, "image/gif"

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    .line 53
    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 55
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_2

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 56
    :cond_2
    const/4 v9, 0x0

    .line 58
    .local v9, hash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/lx/launcher8/image/Image;>;"
    :try_start_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 59
    .end local v9           #hash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/lx/launcher8/image/Image;>;"
    .local v10, hash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/lx/launcher8/image/Image;>;"
    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    .line 69
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 72
    :goto_2
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 60
    :cond_5
    const/4 v0, 0x0

    :try_start_3
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 61
    .local v13, key:Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 62
    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lx/launcher8/image/Image;

    .line 63
    .local v12, image:Lcom/lx/launcher8/image/Image;
    if-nez v12, :cond_6

    .line 64
    new-instance v0, Lcom/lx/launcher8/image/Image;

    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/lx/launcher8/image/Image;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 67
    .end local v12           #image:Lcom/lx/launcher8/image/Image;
    .end local v13           #key:Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v9, v10

    .line 69
    .end local v10           #hash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/lx/launcher8/image/Image;>;"
    .restart local v9       #hash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/lx/launcher8/image/Image;>;"
    :goto_3
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 71
    :goto_4
    throw v0

    .line 65
    .end local v9           #hash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/lx/launcher8/image/Image;>;"
    .restart local v10       #hash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/lx/launcher8/image/Image;>;"
    .restart local v12       #image:Lcom/lx/launcher8/image/Image;
    .restart local v13       #key:Ljava/lang/String;
    :cond_6
    :try_start_5
    invoke-virtual {v12}, Lcom/lx/launcher8/image/Image;->addItemCount()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 73
    .end local v12           #image:Lcom/lx/launcher8/image/Image;
    .end local v13           #key:Ljava/lang/String;
    :cond_7
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    .local v6, allList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/image/Image;>;"
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 75
    .local v8, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/lx/launcher8/image/Image;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 76
    .restart local v13       #key:Ljava/lang/String;
    if-eqz v13, :cond_8

    .line 77
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/image/Image;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 70
    .end local v6           #allList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/image/Image;>;"
    .end local v8           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/lx/launcher8/image/Image;>;"
    .end local v10           #hash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/lx/launcher8/image/Image;>;"
    .end local v13           #key:Ljava/lang/String;
    .restart local v9       #hash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/lx/launcher8/image/Image;>;"
    :catch_0
    move-exception v2

    goto :goto_4

    .end local v9           #hash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/lx/launcher8/image/Image;>;"
    .restart local v10       #hash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/lx/launcher8/image/Image;>;"
    :catch_1
    move-exception v0

    goto :goto_2

    .line 67
    .end local v10           #hash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/lx/launcher8/image/Image;>;"
    .restart local v9       #hash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/lx/launcher8/image/Image;>;"
    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method public static isMediaScannerScanning(Landroid/content/ContentResolver;)Z
    .locals 10
    .parameter "cr"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    .local v7, result:Z
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    .line 36
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "volume"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 35
    invoke-static/range {v0 .. v5}, Lcom/lx/launcher8/image/ImageManager;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 38
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 39
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 40
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 41
    const-string v0, "external"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 43
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 45
    :cond_1
    return v7
.end method

.method private static query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "resolver"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v1, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 29
    :goto_0
    return-object v1

    .line 26
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method
