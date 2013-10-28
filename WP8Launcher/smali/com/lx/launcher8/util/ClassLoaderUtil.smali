.class public Lcom/lx/launcher8/util/ClassLoaderUtil;
.super Ljava/lang/Object;
.source "ClassLoaderUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createRemoteContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 1
    .parameter "context"
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 74
    .line 75
    const/4 v0, 0x3

    .line 74
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static varargs executeRemote(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ResolveInfo;Z[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21
    .parameter "localContext"
    .parameter "method"
    .parameter "ri"
    .parameter "remoteText"
    .parameter "args"

    .prologue
    .line 23
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 24
    .local v2, ai:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 25
    .local v5, dexPath:Ljava/lang/String;
    const-string v12, ""

    .line 26
    .local v12, libraryPath:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 27
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->hashCode()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 26
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 28
    .local v16, optimizedDirectory:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_0

    .line 30
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    .line 31
    :cond_0
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 32
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "/mnt/asec/"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "-1/lib"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 36
    :goto_0
    new-instance v4, Ldalvik/system/DexClassLoader;

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v18

    .line 36
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v4, v5, v0, v12, v1}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 40
    .local v4, dcl:Ldalvik/system/DexClassLoader;
    :try_start_0
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 41
    .local v3, clz:Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    .line 43
    .local v10, instance:Ljava/lang/Object;
    const/16 v17, 0x0

    check-cast v17, [Ljava/lang/Class;

    .line 44
    .local v17, parameterTypes:[Ljava/lang/Class;
    const/4 v15, 0x0

    check-cast v15, [Ljava/lang/Object;

    .line 45
    .local v15, objs:[Ljava/lang/Object;
    if-nez p3, :cond_1

    if-eqz p4, :cond_4

    .line 46
    :cond_1
    if-eqz p4, :cond_6

    move-object/from16 v0, p4

    array-length v11, v0

    .line 47
    .local v11, len:I
    :goto_1
    if-eqz p3, :cond_2

    add-int/lit8 v11, v11, 0x1

    .line 48
    :cond_2
    new-array v0, v11, [Ljava/lang/Class;

    move-object/from16 v17, v0

    .line 49
    new-array v15, v11, [Ljava/lang/Object;

    .line 50
    const/4 v8, 0x0

    .line 51
    .local v8, index:I
    if-eqz p3, :cond_3

    .line 52
    const-class v18, Landroid/content/Context;

    aput-object v18, v17, v8

    .line 53
    add-int/lit8 v9, v8, 0x1

    .end local v8           #index:I
    .local v9, index:I
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/lx/launcher8/util/ClassLoaderUtil;->createRemoteContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v18

    aput-object v18, v15, v8

    move v8, v9

    .line 55
    .end local v9           #index:I
    .restart local v8       #index:I
    :cond_3
    if-eqz p4, :cond_4

    .line 56
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v19, v0

    const/16 v18, 0x0

    move v9, v8

    .end local v8           #index:I
    .restart local v9       #index:I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    .line 63
    .end local v9           #index:I
    .end local v11           #len:I
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 64
    .local v13, m:Ljava/lang/reflect/Method;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 65
    invoke-virtual {v13, v10, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 70
    .end local v3           #clz:Ljava/lang/Class;
    .end local v10           #instance:Ljava/lang/Object;
    .end local v13           #m:Ljava/lang/reflect/Method;
    .end local v15           #objs:[Ljava/lang/Object;
    .end local v17           #parameterTypes:[Ljava/lang/Class;
    :goto_3
    return-object v18

    .line 34
    .end local v4           #dcl:Ldalvik/system/DexClassLoader;
    :cond_5
    iget-object v12, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    goto :goto_0

    .line 46
    .restart local v3       #clz:Ljava/lang/Class;
    .restart local v4       #dcl:Ldalvik/system/DexClassLoader;
    .restart local v10       #instance:Ljava/lang/Object;
    .restart local v15       #objs:[Ljava/lang/Object;
    .restart local v17       #parameterTypes:[Ljava/lang/Class;
    :cond_6
    const/4 v11, 0x0

    goto :goto_1

    .line 56
    .restart local v9       #index:I
    .restart local v11       #len:I
    :cond_7
    :try_start_1
    aget-object v14, p4, v18

    .line 57
    .local v14, o:Ljava/lang/Object;
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    aput-object v20, v17, v9

    .line 58
    add-int/lit8 v8, v9, 0x1

    .end local v9           #index:I
    .restart local v8       #index:I
    aput-object v14, v15, v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    add-int/lit8 v18, v18, 0x1

    move v9, v8

    .end local v8           #index:I
    .restart local v9       #index:I
    goto :goto_2

    .line 66
    .end local v3           #clz:Ljava/lang/Class;
    .end local v9           #index:I
    .end local v10           #instance:Ljava/lang/Object;
    .end local v11           #len:I
    .end local v14           #o:Ljava/lang/Object;
    .end local v15           #objs:[Ljava/lang/Object;
    .end local v17           #parameterTypes:[Ljava/lang/Class;
    :catch_0
    move-exception v6

    .line 67
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    const/16 v18, 0x0

    goto :goto_3
.end method
